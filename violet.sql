-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 04 2020 г., 09:03
-- Версия сервера: 5.7.28
-- Версия PHP: 7.1.33-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `violet`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-20 09:21:38', '2019-12-20 09:21:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 10, 'ActionScheduler', '', '', '', '2019-12-20 11:30:28', '2019-12-20 11:30:28', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 10, 'ActionScheduler', '', '', '', '2019-12-20 11:31:10', '2019-12-20 11:31:10', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 10, 'ActionScheduler', '', '', '', '2019-12-20 11:31:11', '2019-12-20 11:31:11', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 157, 'WooCommerce', '', '', '', '2019-12-28 08:13:32', '2019-12-28 08:13:32', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 159, 'ActionScheduler', '', '', '', '2019-12-28 08:38:27', '2019-12-28 08:38:27', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 159, 'ActionScheduler', '', '', '', '2019-12-28 08:38:56', '2019-12-28 08:38:56', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(8, 159, 'ActionScheduler', '', '', '', '2019-12-28 08:38:57', '2019-12-28 08:38:57', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress5', 'yes'),
(2, 'home', 'http://localhost/wordpress5', 'yes'),
(3, 'blogname', 'violet', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sinevor13@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:17:"index.php/shop/?$";s:27:"index.php?post_type=product";s:47:"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:42:"index.php/shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"index.php/shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:42:"index.php/category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:39:"index.php/tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:65:"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:60:"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:41:"index.php/product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:53:"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:35:"index.php/product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:62:"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:57:"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:38:"index.php/product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:50:"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:32:"index.php/product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"index.php/product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:38:"index.php/product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:58:"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:53:"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:46:"index.php/product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:53:"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:43:"index.php/product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:49:"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"index.php/product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:34:"index.php/product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=59&cpage=$matches[1]";s:27:"index.php/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:36:"index.php/comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:39:"index.php/search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:42:"index.php/author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"index.php/([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:72:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:72:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:83:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:35:"index.php/(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:38:"index.php/(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:43:"index.php/(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:35:"index.php/(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:39:"index.php/(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:38:"index.php/(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:41:"index.php/(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:41:"index.php/(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:44:"index.php/(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:42:"index.php/(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:44:"index.php/(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:47:"index.php/(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:50:"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:55:"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:41:"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:19:"jetpack/jetpack.php";i:3;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:4;s:45:"woocommerce-services/woocommerce-services.php";i:5;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'be_easy_store', 'yes'),
(41, 'stylesheet', 'be_easy_store', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:"woocommerce-services/woocommerce-services.php";a:2:{i:0;s:17:"WC_Connect_Loader";i:1;s:16:"plugin_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '59', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '118', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1592385697', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:12:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:25:"woocommerce_layered_nav-3";i:1;s:25:"woocommerce_layered_nav-2";i:2;s:32:"woocommerce_product_categories-2";i:3;s:26:"woocommerce_price_filter-2";}s:6:"search";a:0:{}s:4:"logo";a:1:{i:0;s:14:"media_image-10";}s:6:"icon-1";a:1:{i:0;s:13:"media_image-8";}s:6:"icon-2";a:1:{i:0;s:13:"media_image-9";}s:6:"icon-3";a:0:{}s:14:"service-icon-1";a:1:{i:0;s:13:"media_image-5";}s:14:"service-icon-2";a:1:{i:0;s:13:"media_image-6";}s:14:"service-icon-3";a:1:{i:0;s:13:"media_image-7";}s:17:"newsletter-widget";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:14:{i:1578120595;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1578122499;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1578122879;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1578124082;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1578129699;a:4:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578129713;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578129715;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578130013;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578130023;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578140813;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578151613;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1578182400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578355200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:7:{i:5;a:15:{s:4:"size";s:4:"full";s:5:"width";i:32;s:6:"height";i:32;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";s:13:"attachment_id";i:80;s:3:"url";s:66:"http://localhost/wordpress5/wp-content/uploads/2019/12/sales-1.png";s:5:"title";s:0:"";}i:6;a:15:{s:4:"size";s:4:"full";s:5:"width";i:29;s:6:"height";i:27;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";s:13:"attachment_id";i:78;s:3:"url";s:68:"http://localhost/wordpress5/wp-content/uploads/2019/12/voucher-1.png";s:5:"title";s:0:"";}i:7;a:15:{s:4:"size";s:4:"full";s:5:"width";i:34;s:6:"height";i:18;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";s:13:"attachment_id";i:84;s:3:"url";s:69:"http://localhost/wordpress5/wp-content/uploads/2019/12/delivery-1.png";s:5:"title";s:0:"";}i:8;a:15:{s:4:"size";s:4:"full";s:5:"width";i:18;s:6:"height";i:16;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";s:13:"attachment_id";i:85;s:3:"url";s:67:"http://localhost/wordpress5/wp-content/uploads/2019/12/search-1.png";s:5:"title";s:0:"";}i:9;a:15:{s:4:"size";s:4:"full";s:5:"width";i:16;s:6:"height";i:21;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";s:13:"attachment_id";i:86;s:3:"url";s:64:"http://localhost/wordpress5/wp-content/uploads/2019/12/man-1.png";s:5:"title";s:0:"";}i:10;a:15:{s:4:"size";s:4:"full";s:5:"width";i:133;s:6:"height";i:42;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";s:13:"attachment_id";i:120;s:3:"url";s:65:"http://localhost/wordpress5/wp-content/uploads/2019/12/logo-6.png";s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'nonce_key', '!q~7;Iho/_1/=s86a%6Y^/cP9yZNZBdY5B]R]l&pQXt9(Is|ev^?kqT,PTD<w/fg', 'no'),
(111, 'nonce_salt', ':gqR;8@K+3R,OuEQYYX%RRWol|#adv>OBo>Eyy,W)]x+$k0mbJ[fNkAqumw {wpZ', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1578120483;s:15:"version_checked";s:5:"5.3.2";s:12:"translations";a:0:{}}', 'no'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1576833796;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(123, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1578120485;s:7:"checked";a:1:{s:13:"be_easy_store";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(124, 'auth_key', 'q(wTh38l07k[a~{qHdNl;kpkLalSFs$=P68R/t~zl_6Oc.:=<8iniC1.TlZY`40*', 'no'),
(125, 'auth_salt', ',K!d6d:ytPD^`f())qs&vwgU*jMTZ:Zd]}$mQ.fE;Za_0*#]]_iIa.%LRe}oR~{H', 'no'),
(126, 'logged_in_key', 'z&6jG9]TSoO=i(ao2*wL2E.tWamL0L|nzv?!b0)<.kJIF`g&[[3b.AOmyjf_yY1)', 'no'),
(127, 'logged_in_salt', 'e@;$!,iML#|+Vhwv7y~<1wPxZe.1GMhD%lsZIb1O(|$QR..Nj>Qt 9?@WB$~<$c&', 'no'),
(133, 'can_compress_scripts', '0', 'no'),
(146, 'current_theme', 'be_easy_store', 'yes'),
(147, 'theme_mods_be_easy_store', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:6:{s:11:"header-menu";i:30;s:8:"log-menu";i:31;s:8:"about-us";i:32;s:13:"customer-menu";i:33;s:13:"services-menu";i:34;s:16:"information-menu";i:35;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(155, 'woocommerce_store_address', 'pobeda24', 'yes'),
(156, 'woocommerce_store_address_2', 'pobeda24', 'yes'),
(157, 'woocommerce_store_city', 'Zp', 'yes'),
(158, 'woocommerce_default_country', 'GB:*', 'yes'),
(159, 'woocommerce_store_postcode', '69012', 'yes'),
(160, 'woocommerce_allowed_countries', 'all', 'yes'),
(161, 'woocommerce_all_except_countries', '', 'yes'),
(162, 'woocommerce_specific_allowed_countries', '', 'yes'),
(163, 'woocommerce_ship_to_countries', '', 'yes'),
(164, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(165, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(166, 'woocommerce_calc_taxes', 'no', 'yes'),
(167, 'woocommerce_enable_coupons', 'yes', 'yes'),
(168, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(169, 'woocommerce_currency', 'UAH', 'yes'),
(170, 'woocommerce_currency_pos', 'left', 'yes'),
(171, 'woocommerce_price_thousand_sep', ',', 'yes'),
(172, 'woocommerce_price_decimal_sep', '.', 'yes'),
(173, 'woocommerce_price_num_decimals', '2', 'yes'),
(174, 'woocommerce_shop_page_id', '6', 'yes'),
(175, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(176, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(177, 'woocommerce_placeholder_image', '5', 'yes'),
(178, 'woocommerce_weight_unit', 'kg', 'yes'),
(179, 'woocommerce_dimension_unit', 'cm', 'yes'),
(180, 'woocommerce_enable_reviews', 'yes', 'yes'),
(181, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(182, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(183, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(184, 'woocommerce_review_rating_required', 'yes', 'no'),
(185, 'woocommerce_manage_stock', 'yes', 'yes'),
(186, 'woocommerce_hold_stock_minutes', '60', 'no'),
(187, 'woocommerce_notify_low_stock', 'yes', 'no'),
(188, 'woocommerce_notify_no_stock', 'yes', 'no'),
(189, 'woocommerce_stock_email_recipient', 'sinevor13@gmail.com', 'no'),
(190, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(191, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(192, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(193, 'woocommerce_stock_format', '', 'yes'),
(194, 'woocommerce_file_download_method', 'force', 'no'),
(195, 'woocommerce_downloads_require_login', 'no', 'no'),
(196, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(197, 'woocommerce_prices_include_tax', 'no', 'yes'),
(198, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(199, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(200, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(201, 'woocommerce_tax_classes', '', 'yes'),
(202, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(203, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(204, 'woocommerce_price_display_suffix', '', 'yes'),
(205, 'woocommerce_tax_total_display', 'itemized', 'no'),
(206, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(207, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(208, 'woocommerce_ship_to_destination', 'billing', 'no'),
(209, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(210, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(211, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(214, 'woocommerce_registration_generate_username', 'no', 'no'),
(215, 'woocommerce_registration_generate_password', 'no', 'no'),
(216, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(217, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(218, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(219, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(220, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(221, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(222, 'woocommerce_trash_pending_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(223, 'woocommerce_trash_failed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(224, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(225, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(226, 'woocommerce_email_from_name', 'violet', 'no'),
(227, 'woocommerce_email_from_address', 'sinevor13@gmail.com', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(230, 'woocommerce_email_base_color', '#96588a', 'no'),
(231, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(232, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(233, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(234, 'woocommerce_cart_page_id', '7', 'no'),
(235, 'woocommerce_checkout_page_id', '8', 'no'),
(236, 'woocommerce_myaccount_page_id', '9', 'no'),
(237, 'woocommerce_terms_page_id', '', 'no'),
(238, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(239, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(240, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(241, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(242, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(243, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(244, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(245, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(246, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(247, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(248, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(249, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(250, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(251, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(252, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(253, 'woocommerce_api_enabled', 'no', 'yes'),
(254, 'woocommerce_allow_tracking', 'yes', 'no'),
(255, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(256, 'woocommerce_single_image_width', '600', 'yes'),
(257, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(258, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(259, 'woocommerce_demo_store', 'no', 'no'),
(260, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(261, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(262, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(265, 'default_product_cat', '15', 'yes'),
(268, 'woocommerce_version', '3.8.1', 'yes'),
(269, 'woocommerce_db_version', '3.8.1', 'yes'),
(270, 'recently_activated', 'a:0:{}', 'yes'),
(271, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:"no_secure_connection";i:1;s:8:"wc_admin";}', 'yes'),
(272, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(273, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_layered_nav', 'a:3:{i:2;a:4:{s:5:"title";s:15:"Filter By Color";s:9:"attribute";s:5:"color";s:12:"display_type";s:4:"list";s:10:"query_type";s:3:"and";}i:3;a:4:{s:5:"title";s:14:"Filter By Size";s:9:"attribute";s:4:"size";s:12:"display_type";s:4:"list";s:10:"query_type";s:3:"and";}s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:"title";s:18:"Product categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;s:9:"max_depth";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(295, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(298, 'woocommerce_product_type', 'both', 'yes'),
(302, 'woocommerce_stripe_settings', 'a:3:{s:7:"enabled";s:3:"yes";s:14:"create_account";s:3:"yes";s:5:"email";s:19:"sinevor13@gmail.com";}', 'yes'),
(303, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(304, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(305, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(306, '_transient_shipping-transient-version', '1576834074', 'yes'),
(309, 'jetpack_activated', '1', 'yes'),
(312, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(313, 'jetpack_options', 'a:4:{s:7:"version";s:14:"8.0:1576834079";s:11:"old_version";s:14:"8.0:1576834079";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:-1;}', 'yes'),
(314, 'jetpack_sync_settings_disable', '0', 'yes'),
(315, 'jetpack_testimonial', '0', 'yes'),
(316, 'woocommerce_tracker_last_send', '1577520777', 'yes'),
(324, 'do_activate', '0', 'yes'),
(330, 'wc_stripe_show_style_notice', 'no', 'yes'),
(331, 'wc_stripe_show_sca_notice', 'no', 'yes'),
(332, 'wc_stripe_version', '4.3.1', 'yes'),
(344, '_transient_timeout_wc_shipping_method_count_legacy', '1579426159', 'no'),
(345, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:"version";s:10:"1576834074";s:5:"value";i:0;}', 'no'),
(351, 'woocommerce_tracker_ua', 'a:1:{i:0;s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36";}', 'yes'),
(358, '_transient_product_query-transient-version', '1577522307', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(362, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:"suggestions";a:26:{i:0;a:4:{s:4:"slug";s:28:"product-edit-meta-tab-header";s:7:"context";s:28:"product-edit-meta-tab-header";s:5:"title";s:22:"Recommended extensions";s:13:"allow-dismiss";b:0;}i:1;a:6:{s:4:"slug";s:39:"product-edit-meta-tab-footer-browse-all";s:7:"context";s:28:"product-edit-meta-tab-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:2;a:9:{s:4:"slug";s:46:"product-edit-mailchimp-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-mailchimp";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg";s:5:"title";s:25:"Mailchimp for Memberships";s:4:"copy";s:79:"Completely automate your email lists by syncing membership changes to Mailchimp";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/mailchimp-woocommerce-memberships/";}i:3;a:9:{s:4:"slug";s:19:"product-edit-addons";s:7:"product";s:26:"woocommerce-product-addons";s:14:"show-if-active";a:2:{i:0;s:25:"woocommerce-subscriptions";i:1;s:20:"woocommerce-bookings";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg";s:5:"title";s:15:"Product Add-Ons";s:4:"copy";s:93:"Offer add-ons like gift wrapping, special messages or other special options for your products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-add-ons/";}i:4;a:9:{s:4:"slug";s:46:"product-edit-woocommerce-subscriptions-gifting";s:7:"product";s:33:"woocommerce-subscriptions-gifting";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg";s:5:"title";s:25:"Gifting for Subscriptions";s:4:"copy";s:70:"Let customers buy subscriptions for others - they\'re the ultimate gift";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/woocommerce-subscriptions-gifting/";}i:5;a:9:{s:4:"slug";s:42:"product-edit-teams-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-for-teams";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:113:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg";s:5:"title";s:21:"Teams for Memberships";s:4:"copy";s:123:"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/teams-woocommerce-memberships/";}i:6;a:8:{s:4:"slug";s:29:"product-edit-variation-images";s:7:"product";s:39:"woocommerce-additional-variation-images";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg";s:5:"title";s:27:"Additional Variation Images";s:4:"copy";s:72:"Showcase your products in the best light with a image for each variation";s:11:"button-text";s:10:"Learn More";s:3:"url";s:73:"https://woocommerce.com/products/woocommerce-additional-variation-images/";}i:7;a:9:{s:4:"slug";s:47:"product-edit-woocommerce-subscription-downloads";s:7:"product";s:34:"woocommerce-subscription-downloads";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:114:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg";s:5:"title";s:22:"Subscription Downloads";s:4:"copy";s:57:"Give customers special downloads with their subscriptions";s:11:"button-text";s:10:"Learn More";s:3:"url";s:68:"https://woocommerce.com/products/woocommerce-subscription-downloads/";}i:8;a:8:{s:4:"slug";s:31:"product-edit-min-max-quantities";s:7:"product";s:30:"woocommerce-min-max-quantities";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg";s:5:"title";s:18:"Min/Max Quantities";s:4:"copy";s:81:"Specify minimum and maximum allowed product quantities for orders to be completed";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/min-max-quantities/";}i:9;a:8:{s:4:"slug";s:28:"product-edit-name-your-price";s:7:"product";s:27:"woocommerce-name-your-price";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg";s:5:"title";s:15:"Name Your Price";s:4:"copy";s:70:"Let customers pay what they want - useful for donations, tips and more";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/name-your-price/";}i:10;a:8:{s:4:"slug";s:42:"product-edit-woocommerce-one-page-checkout";s:7:"product";s:29:"woocommerce-one-page-checkout";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg";s:5:"title";s:17:"One Page Checkout";s:4:"copy";s:92:"Don\'t make customers click around - let them choose products, checkout & pay all on one page";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/woocommerce-one-page-checkout/";}i:11;a:4:{s:4:"slug";s:19:"orders-empty-header";s:7:"context";s:24:"orders-list-empty-header";s:5:"title";s:20:"Tools for your store";s:13:"allow-dismiss";b:0;}i:12;a:6:{s:4:"slug";s:30:"orders-empty-footer-browse-all";s:7:"context";s:24:"orders-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:13;a:8:{s:4:"slug";s:19:"orders-empty-zapier";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:18:"woocommerce-zapier";s:4:"icon";s:98:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg";s:5:"title";s:6:"Zapier";s:4:"copy";s:88:"Save time and increase productivity by connecting your store to more than 1000+ services";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/woocommerce-zapier/";}i:14;a:8:{s:4:"slug";s:30:"orders-empty-shipment-tracking";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:29:"woocommerce-shipment-tracking";s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg";s:5:"title";s:17:"Shipment Tracking";s:4:"copy";s:86:"Let customers know when their orders will arrive by adding shipment tracking to emails";s:11:"button-text";s:10:"Learn More";s:3:"url";s:51:"https://woocommerce.com/products/shipment-tracking/";}i:15;a:8:{s:4:"slug";s:32:"orders-empty-table-rate-shipping";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:31:"woocommerce-table-rate-shipping";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg";s:5:"title";s:19:"Table Rate Shipping";s:4:"copy";s:122:"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/table-rate-shipping/";}i:16;a:8:{s:4:"slug";s:40:"orders-empty-shipping-carrier-extensions";s:7:"context";s:22:"orders-list-empty-body";s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg";s:5:"title";s:27:"Shipping Carrier Extensions";s:4:"copy";s:116:"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again";s:11:"button-text";s:13:"Find Carriers";s:8:"promoted";s:26:"category-shipping-carriers";s:3:"url";s:99:"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/";}i:17;a:8:{s:4:"slug";s:32:"orders-empty-google-product-feed";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:25:"woocommerce-product-feeds";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg";s:5:"title";s:19:"Google Product Feed";s:4:"copy";s:76:"Increase sales by letting customers find you when they\'re shopping on Google";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/google-product-feed/";}i:18;a:4:{s:4:"slug";s:35:"products-empty-header-product-types";s:7:"context";s:26:"products-list-empty-header";s:5:"title";s:23:"Other types of products";s:13:"allow-dismiss";b:0;}i:19;a:6:{s:4:"slug";s:32:"products-empty-footer-browse-all";s:7:"context";s:26:"products-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:20;a:8:{s:4:"slug";s:30:"products-empty-product-vendors";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-vendors";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg";s:5:"title";s:15:"Product Vendors";s:4:"copy";s:47:"Turn your store into a multi-vendor marketplace";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-vendors/";}i:21;a:8:{s:4:"slug";s:26:"products-empty-memberships";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:23:"woocommerce-memberships";s:4:"icon";s:103:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg";s:5:"title";s:11:"Memberships";s:4:"copy";s:76:"Give members access to restricted content or products, for a fee or for free";s:11:"button-text";s:10:"Learn More";s:3:"url";s:57:"https://woocommerce.com/products/woocommerce-memberships/";}i:22;a:9:{s:4:"slug";s:35:"products-empty-woocommerce-deposits";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-deposits";s:14:"show-if-active";a:1:{i:0;s:20:"woocommerce-bookings";}s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg";s:5:"title";s:8:"Deposits";s:4:"copy";s:75:"Make it easier for customers to pay by offering a deposit or a payment plan";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-deposits/";}i:23;a:8:{s:4:"slug";s:40:"products-empty-woocommerce-subscriptions";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:25:"woocommerce-subscriptions";s:4:"icon";s:105:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg";s:5:"title";s:13:"Subscriptions";s:4:"copy";s:97:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis";s:11:"button-text";s:10:"Learn More";s:3:"url";s:59:"https://woocommerce.com/products/woocommerce-subscriptions/";}i:24;a:8:{s:4:"slug";s:35:"products-empty-woocommerce-bookings";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-bookings";s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg";s:5:"title";s:8:"Bookings";s:4:"copy";s:99:"Allow customers to book appointments, make reservations or rent equipment without leaving your site";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-bookings/";}i:25;a:8:{s:4:"slug";s:30:"products-empty-product-bundles";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-bundles";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg";s:5:"title";s:15:"Product Bundles";s:4:"copy";s:49:"Offer customizable bundles and assembled products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-bundles/";}}s:7:"updated";i:1577522336;}', 'no'),
(366, '_transient_product-transient-version', '1576841541', 'yes'),
(372, 'product_cat_children', 'a:1:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}}', 'yes'),
(374, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";s:5:"Color";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:4:"size";s:15:"attribute_label";s:4:"Size";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(380, 'pa_size_children', 'a:0:{}', 'yes'),
(392, '_transient_timeout_wc_product_children_12', '1579433545', 'no'),
(393, '_transient_wc_product_children_12', 'a:2:{s:3:"all";a:3:{i:0;i:26;i:1;i:27;i:2;i:28;}s:7:"visible";a:3:{i:0;i:26;i:1;i:27;i:2;i:28;}}', 'no'),
(394, '_transient_timeout_wc_var_prices_12', '1579433545', 'no'),
(395, '_transient_wc_var_prices_12', '{"version":"1576841541","f9e544f77b7eac7add281ef28ca5559f":{"price":{"26":"20.00","27":"20.00","28":"15.00"},"regular_price":{"26":"20.00","27":"20.00","28":"15.00"},"sale_price":{"26":"20.00","27":"20.00","28":"15.00"}}}', 'no'),
(396, '_transient_timeout_wc_product_children_13', '1579433545', 'no'),
(397, '_transient_wc_product_children_13', 'a:2:{s:3:"all";a:4:{i:0;i:36;i:1;i:29;i:2;i:30;i:3;i:31;}s:7:"visible";a:4:{i:0;i:36;i:1;i:29;i:2;i:30;i:3;i:31;}}', 'no'),
(398, '_transient_timeout_wc_var_prices_13', '1579433545', 'no'),
(399, '_transient_wc_var_prices_13', '{"version":"1576841541","f9e544f77b7eac7add281ef28ca5559f":{"price":{"36":"45.00","29":"42.00","30":"45.00","31":"45.00"},"regular_price":{"36":"45.00","29":"45.00","30":"45.00","31":"45.00"},"sale_price":{"36":"45.00","29":"42.00","30":"45.00","31":"45.00"}}}', 'no'),
(402, '_transient_timeout_jetpack_file_data_8.0', '1579347318', 'no'),
(403, '_transient_jetpack_file_data_8.0', 'a:51:{s:32:"212a162108f1dc20cc6c768d5b47d4f2";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"d3576702faeb399eb47ad20f586c3804";a:14:{s:4:"name";s:8:"Carousel";s:11:"description";s:75:"Display images and galleries in a gorgeous, full-screen browsing experience";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:80:"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image";s:12:"plan_classes";s:0:"";}s:32:"55409a5f8388b8d33e2350ef80de3ea3";a:14:{s:4:"name";s:13:"Comment Likes";s:11:"description";s:64:"Increase visitor engagement by adding a Like button to comments.";s:4:"sort";s:2:"39";s:20:"recommendation_order";s:2:"17";s:10:"introduced";s:3:"5.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:37:"like widget, like button, like, likes";s:12:"plan_classes";s:0:"";}s:32:"e914e6d31cb61f5a9ef86e1b9573430e";a:14:{s:4:"name";s:8:"Comments";s:11:"description";s:81:"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:53:"comments, comment, facebook, twitter, google+, social";s:12:"plan_classes";s:0:"";}s:32:"f1b8c61705fb18eb8c8584c9f9cdffd9";a:14:{s:4:"name";s:12:"Contact Form";s:11:"description";s:81:"Add a customizable contact form to any post or page using the Jetpack Form Block.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:214:"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free";s:12:"plan_classes";s:0:"";}s:32:"4fca6eb23a793155d69fdb119a094926";a:14:{s:4:"name";s:9:"Copy Post";s:11:"description";s:77:"Enable the option to copy entire posts and pages, including tags and settings";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"7.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:15:"copy, duplicate";s:12:"plan_classes";s:0:"";}s:32:"cfdac01e3c3c529f93a8f49edef1f5db";a:14:{s:4:"name";s:20:"Custom content types";s:11:"description";s:74:"Display different types of content on your site with custom content types.";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:72:"cpt, custom post types, portfolio, portfolios, testimonial, testimonials";s:12:"plan_classes";s:0:"";}s:32:"4b9137ecf507290743735fb1f94535df";a:14:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:88:"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:108:"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet";s:12:"plan_classes";s:0:"";}s:32:"95d75b38d76d2ee1b5b537026eadb8ff";a:14:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:27:"Increase reach and traffic.";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"google, seo, firehose, search, broadcast, broadcasting";s:12:"plan_classes";s:0:"";}s:32:"f1bb571a95c5de1e6adaf9db8567c039";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"822f9ef1281dace3fb7cc420c77d24e0";a:14:{s:4:"name";s:16:"Google Analytics";s:11:"description";s:56:"Set up Google Analytics without touching a line of code.";s:4:"sort";s:2:"37";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"4.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:37:"webmaster, google, analytics, console";s:12:"plan_classes";s:17:"business, premium";}s:32:"c167275f926ef0eefaec9a679bd88d34";a:14:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:20:"gravatar, hovercards";s:12:"plan_classes";s:0:"";}s:32:"58cbd4585a74829a1c88aa9c295f3993";a:14:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:53:"Automatically load new content when a visitor scrolls";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:33:"scroll, infinite, infinite scroll";s:12:"plan_classes";s:0:"";}s:32:"d4a35eabc948caefad71a0d3303b95c8";a:14:{s:4:"name";s:8:"JSON API";s:11:"description";s:51:"Allow applications to securely access your content.";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:50:"api, rest, develop, developers, json, klout, oauth";s:12:"plan_classes";s:0:"";}s:32:"7b0c670bc3f8209dc83abb8610e23a89";a:14:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:74:"Use the LaTeX markup language to write mathematical equations and formulas";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:47:"latex, math, equation, equations, formula, code";s:12:"plan_classes";s:0:"";}s:32:"b00e4e6c109ce6f77b5c83fbaaaead4c";a:14:{s:4:"name";s:11:"Lazy Images";s:11:"description";s:137:"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:5:"5.6.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:23:"Appearance, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:150:"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading";s:12:"plan_classes";s:0:"";}s:32:"8e46c72906c928eca634ac2c8b1bc84f";a:14:{s:4:"name";s:5:"Likes";s:11:"description";s:63:"Give visitors an easy way to show they appreciate your content.";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:26:"like, likes, wordpress.com";s:12:"plan_classes";s:0:"";}s:32:"2df2264a07aff77e0556121e33349dce";a:14:{s:4:"name";s:8:"Markdown";s:11:"description";s:50:"Write posts or pages in plain-text Markdown syntax";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:12:"md, markdown";s:12:"plan_classes";s:0:"";}s:32:"0337eacae47d30c946cb9fc4e5ece649";a:14:{s:4:"name";s:21:"WordPress.com Toolbar";s:11:"description";s:91:"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.";s:4:"sort";s:2:"38";s:20:"recommendation_order";s:2:"16";s:10:"introduced";s:3:"4.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"General";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:19:"adminbar, masterbar";s:12:"plan_classes";s:0:"";}s:32:"cb5d81445061b89d19cb9c7754697a39";a:14:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:31:"Enable the Jetpack Mobile theme";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:24:"mobile, theme, minileven";s:12:"plan_classes";s:0:"";}s:32:"ea0fbbd64080c81a90a784924603588c";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"5c53fdb3633ba3232f60180116900273";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"40b97d9ce396339d3e8e46b833a045b5";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"0739df64747f2d02c140f23ce6c19cd8";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"c54bb0a65b39f1316da8632197a88a4e";a:14:{s:4:"name";s:7:"Monitor";s:11:"description";s:118:"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:123:"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error";s:12:"plan_classes";s:0:"";}s:32:"cc013f4c5480c7bdc1e7edb2f410bf3c";a:14:{s:4:"name";s:13:"Notifications";s:11:"description";s:57:"Receive instant notifications of site comments and likes.";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:62:"notification, notifications, toolbar, adminbar, push, comments";s:12:"plan_classes";s:0:"";}s:32:"b3b34928b1e549bb52f866accc0450c5";a:14:{s:4:"name";s:9:"Asset CDN";s:11:"description";s:154:"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"6.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:23:"Recommended, Appearance";s:25:"additional_search_queries";s:160:"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css";s:12:"plan_classes";s:0:"";}s:32:"714284944f56d6936a40f3309900bc8e";a:14:{s:4:"name";s:9:"Image CDN";s:11:"description";s:141:"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:23:"Recommended, Appearance";s:25:"additional_search_queries";s:171:"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack";s:12:"plan_classes";s:0:"";}s:32:"348754bc914ee02c72d9af445627784c";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"041704e207c4c59eea93e0499c908bff";a:14:{s:4:"name";s:13:"Post by email";s:11:"description";s:33:"Publish posts by sending an email";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:20:"post by email, email";s:12:"plan_classes";s:0:"";}s:32:"26e6cb3e08a6cfd0811c17e7c633c72c";a:14:{s:4:"name";s:7:"Protect";s:11:"description";s:151:"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:173:"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin";s:12:"plan_classes";s:0:"";}s:32:"915a504082f797395713fd01e0e2e713";a:14:{s:4:"name";s:9:"Publicize";s:11:"description";s:128:"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:220:"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting";s:12:"plan_classes";s:0:"";}s:32:"a7b21cc562ee9ffa357bba19701fe45b";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"9243c1a718566213f4eaf3b44cf14b07";a:14:{s:4:"name";s:13:"Related posts";s:11:"description";s:113:"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:360:"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin";s:12:"plan_classes";s:0:"";}s:32:"583e4cda5596ee1b28a19cde33f438be";a:14:{s:4:"name";s:6:"Search";s:11:"description";s:87:"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:6:"Search";s:25:"additional_search_queries";s:110:"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search";s:12:"plan_classes";s:8:"business";}s:32:"15346c1f7f2a5f29d34378774ecfa830";a:14:{s:4:"name";s:9:"SEO Tools";s:11:"description";s:50:"Better results on search engines and social media.";s:4:"sort";s:2:"35";s:20:"recommendation_order";s:2:"15";s:10:"introduced";s:3:"4.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:7:"Traffic";s:25:"additional_search_queries";s:81:"search engine optimization, social preview, meta description, custom title format";s:12:"plan_classes";s:17:"business, premium";}s:32:"72a0ff4cfae86074a7cdd2dcd432ef11";a:14:{s:4:"name";s:7:"Sharing";s:11:"description";s:120:"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:229:"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media";s:12:"plan_classes";s:0:"";}s:32:"bb8c6c190aaec212a7ab6e940165af4d";a:14:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:177:"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:236:"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube";s:12:"plan_classes";s:0:"";}s:32:"1abd31fe07ae4fb0f8bb57dc24592219";a:14:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:82:"Generates shorter links so you can have more space to write on social media sites.";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:17:"shortlinks, wp.me";s:12:"plan_classes";s:0:"";}s:32:"cae5f097f8d658e0b0ae50733d7c6476";a:14:{s:4:"name";s:8:"Sitemaps";s:11:"description";s:50:"Make it easy for search engines to find your site.";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:20:"Recommended, Traffic";s:7:"feature";s:11:"Recommended";s:25:"additional_search_queries";s:39:"sitemap, traffic, search, site map, seo";s:12:"plan_classes";s:0:"";}s:32:"e9b8318133b2f95e7906cedb3557a87d";a:14:{s:4:"name";s:14:"Secure Sign On";s:11:"description";s:63:"Allow users to log in to this site using WordPress.com accounts";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:34:"sso, single sign on, login, log in";s:12:"plan_classes";s:0:"";}s:32:"17e66a12031ccf11d8d45ceee0955f05";a:14:{s:4:"name";s:10:"Site Stats";s:11:"description";s:44:"Collect valuable traffic stats and insights.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:23:"Site Stats, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"statistics, tracking, analytics, views, traffic, stats";s:12:"plan_classes";s:0:"";}s:32:"346cf9756e7c1252acecb9a8ca81a21c";a:14:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:58:"Let visitors subscribe to new posts and comments via email";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:74:"subscriptions, subscription, email, follow, followers, subscribers, signup";s:12:"plan_classes";s:0:"";}s:32:"4f84d218792a6efa06ed6feae09c4dd5";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"ca086af79d0d9dccacc934ccff5b4fd7";a:14:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:61:"Display image galleries in a variety of elegant arrangements.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:43:"gallery, tiles, tiled, grid, mosaic, images";s:12:"plan_classes";s:0:"";}s:32:"43c24feb7c541c376af93e0251c1a261";a:14:{s:4:"name";s:20:"Backups and Scanning";s:11:"description";s:100:"Protect your site with daily or real-time backups and automated virus scanning and threat detection.";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:16:"Security, Health";s:25:"additional_search_queries";s:386:"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security";s:12:"plan_classes";s:27:"personal, business, premium";}s:32:"b9396d8038fc29140b499098d2294d79";a:14:{s:4:"name";s:17:"Site verification";s:11:"description";s:58:"Establish your site\'s authenticity with external services.";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:56:"webmaster, seo, google, bing, pinterest, search, console";s:12:"plan_classes";s:0:"";}s:32:"afe184082e106c1bdfe1ee844f98aef3";a:14:{s:4:"name";s:10:"VideoPress";s:11:"description";s:101:"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:118:"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream";s:12:"plan_classes";s:17:"business, premium";}s:32:"44637d43460370af9a1b31ce3ccec0cd";a:14:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:42:"Control where widgets appear on your site.";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:54:"widget visibility, logic, conditional, widgets, widget";s:12:"plan_classes";s:0:"";}s:32:"694c105a5c3b659acfcddad220048d08";a:14:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:49:"Provides additional widgets for use on your site.";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:65:"widget, widgets, facebook, gallery, twitter, gravatar, image, rss";s:12:"plan_classes";s:0:"";}s:32:"ae15da72c5802d72f320640bad669561";a:14:{s:4:"name";s:3:"Ads";s:11:"description";s:60:"Earn income by allowing Jetpack to display high quality ads.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"4.5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Traffic, Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:26:"advertising, ad codes, ads";s:12:"plan_classes";s:17:"premium, business";}}', 'no'),
(404, 'jetpack_available_modules', 'a:1:{s:3:"8.0";a:42:{s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:9:"copy-post";s:3:"7.0";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:11:"lazy-images";s:5:"5.6.0";s:5:"likes";s:3:"2.2";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:10:"photon-cdn";s:3:"6.6";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(408, '_transient_timeout_wc_low_stock_count', '1579436217', 'no'),
(409, '_transient_wc_low_stock_count', '0', 'no'),
(410, '_transient_timeout_wc_outofstock_count', '1579436217', 'no'),
(411, '_transient_wc_outofstock_count', '0', 'no'),
(412, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(431, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1578120485;s:7:"checked";a:8:{s:30:"advanced-custom-fields/acf.php";s:5:"5.8.7";s:19:"akismet/akismet.php";s:5:"4.1.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.6";s:9:"hello.php";s:5:"1.7.2";s:19:"jetpack/jetpack.php";s:3:"8.0";s:27:"woocommerce/woocommerce.php";s:5:"3.8.1";s:45:"woocommerce-services/woocommerce-services.php";s:6:"1.22.2";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:5:"4.3.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.6";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:19:"jetpack/jetpack.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/jetpack";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:3:"8.0";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/jetpack.8.0.zip";s:5:"icons";a:3:{s:2:"2x";s:60:"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404";s:2:"1x";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";s:3:"svg";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404";s:2:"1x";s:62:"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.8.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035";}s:11:"banners_rtl";a:0:{}}s:45:"woocommerce-services/woocommerce-services.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/woocommerce-services";s:4:"slug";s:20:"woocommerce-services";s:6:"plugin";s:45:"woocommerce-services/woocommerce-services.php";s:11:"new_version";s:6:"1.22.2";s:3:"url";s:51:"https://wordpress.org/plugins/woocommerce-services/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-services.1.22.2.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075";s:2:"1x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920";s:2:"1x";s:75:"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920";}s:11:"banners_rtl";a:0:{}}s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/woocommerce-gateway-stripe";s:4:"slug";s:26:"woocommerce-gateway-stripe";s:6:"plugin";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:11:"new_version";s:5:"4.3.1";s:3:"url";s:57:"https://wordpress.org/plugins/woocommerce-gateway-stripe/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.3.1.zip";s:5:"icons";a:2:{s:2:"2x";s:79:"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495";s:2:"1x";s:79:"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495";}s:7:"banners";a:2:{s:2:"2x";s:82:"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495";s:2:"1x";s:81:"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(432, 'acf_version', '5.8.7', 'yes'),
(433, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1576844691;s:7:"version";s:5:"5.1.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(435, '_transient_timeout_wc_product_loop_228f575e06f596e61be1ac3561602e30', '1579437292', 'no'),
(436, '_transient_wc_product_loop_228f575e06f596e61be1ac3561602e30', 'a:2:{s:7:"version";s:10:"1576845283";s:5:"value";O:8:"stdClass":5:{s:3:"ids";a:5:{i:0;i:24;i:1;i:16;i:2;i:33;i:3;i:17;i:4;i:18;}s:5:"total";i:5;s:11:"total_pages";i:1;s:8:"per_page";i:5;s:12:"current_page";i:1;}}', 'no'),
(449, '_transient_timeout_wc_term_counts', '1579442624', 'no'),
(450, '_transient_wc_term_counts', 'a:7:{i:19;s:1:"5";i:21;s:1:"1";i:18;s:1:"3";i:20;s:1:"2";i:17;s:1:"5";i:16;s:2:"14";i:15;s:1:"0";}', 'no'),
(457, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(583, '_transient_timeout_wc_product_loop_03d2fca238bc094e6762c906b19d0837', '1580114358', 'no'),
(584, '_transient_wc_product_loop_03d2fca238bc094e6762c906b19d0837', 'a:2:{s:7:"version";s:10:"1577522307";s:5:"value";O:8:"stdClass":5:{s:3:"ids";a:4:{i:0;i:24;i:1;i:16;i:2;i:33;i:3;i:17;}s:5:"total";i:4;s:11:"total_pages";i:1;s:8:"per_page";i:4;s:12:"current_page";i:1;}}', 'no'),
(611, '_transient_timeout_wc_child_has_weight_13', '1579442678', 'no'),
(612, '_transient_wc_child_has_weight_13', '0', 'no'),
(613, '_transient_timeout_wc_child_has_dimensions_13', '1579442678', 'no'),
(614, '_transient_wc_child_has_dimensions_13', '0', 'no'),
(670, '_transient_timeout_external_ip_address_::1', '1578125571', 'no'),
(671, '_transient_external_ip_address_::1', '178.133.15.121', 'no'),
(683, '_transient_timeout_external_ip_address_127.0.0.1', '1578125577', 'no'),
(684, '_transient_external_ip_address_127.0.0.1', '178.133.15.121', 'no'),
(692, '_transient_orders-transient-version', '1577520812', 'yes'),
(703, '_site_transient_timeout_browser_54ce89ca7237487f0b8c3586d2bf77de', '1578125645', 'no'),
(704, '_site_transient_browser_54ce89ca7237487f0b8c3586d2bf77de', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"78.0.3904.108";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(705, '_site_transient_timeout_php_check_e63c19ade47f93021c07f04976ed603c', '1578125645', 'no'),
(706, '_site_transient_php_check_e63c19ade47f93021c07f04976ed603c', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(725, 'woocommerce_gateway_stripe_retention', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(738, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(739, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(742, '_transient_timeout__woocommerce_helper_subscriptions', '1578121383', 'no'),
(743, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(744, '_site_transient_timeout_theme_roots', '1578122283', 'no'),
(745, '_site_transient_theme_roots', 'a:1:{s:13:"be_easy_store";s:7:"/themes";}', 'no'),
(746, '_transient_timeout__woocommerce_helper_updates', '1578163683', 'no'),
(747, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1578120483;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(749, '_transient_timeout_jetpack_idc_allowed', '1578124087', 'no'),
(750, '_transient_jetpack_idc_allowed', '1', 'no'),
(754, '_transient_timeout_wc_layered_nav_counts_pa_size', '1578206893', 'no'),
(755, '_transient_wc_layered_nav_counts_pa_size', 'a:2:{i:0;b:0;s:32:"8b23abf10cd200540ea93b7e604f0292";a:3:{i:25;i:1;i:26;i:1;i:27;i:1;}}', 'no'),
(756, '_transient_timeout_wc_layered_nav_counts_pa_color', '1578206893', 'no'),
(757, '_transient_wc_layered_nav_counts_pa_color', 'a:2:{i:0;b:0;s:32:"c356a4ac47e8f8ce6f1d32c5f841fbc8";a:5:{i:22;i:4;i:23;i:3;i:24;i:4;i:28;i:2;i:29;i:1;}}', 'no'),
(758, '_transient_timeout_wc_related_24', '1578206903', 'no'),
(759, '_transient_wc_related_24', 'a:1:{s:50:"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=24";a:1:{i:0;s:2:"25";}}', 'no'),
(761, '_transient_timeout_wc_related_16', '1578206937', 'no'),
(762, '_transient_wc_related_16', 'a:1:{s:50:"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=16";a:4:{i:0;s:2:"17";i:1;s:2:"18";i:2;s:2:"19";i:3;s:2:"33";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:35:"woocommerce-placeholder-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 10, '_action_manager_schedule', 'O:30:"ActionScheduler_SimpleSchedule":1:{s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1576841428;}'),
(8, 12, '_sku', 'woo-vneck-tee'),
(9, 12, 'total_sales', '0'),
(10, 12, '_tax_status', 'taxable'),
(11, 12, '_tax_class', ''),
(12, 12, '_manage_stock', 'no'),
(13, 12, '_backorders', 'no'),
(14, 12, '_sold_individually', 'no'),
(15, 12, '_virtual', 'no'),
(16, 12, '_downloadable', 'no'),
(17, 12, '_download_limit', '0'),
(18, 12, '_download_expiry', '0'),
(19, 12, '_stock', NULL),
(20, 12, '_stock_status', 'instock'),
(21, 12, '_wc_average_rating', '0'),
(22, 12, '_wc_review_count', '0'),
(23, 12, '_product_version', '3.8.1'),
(25, 13, '_sku', 'woo-hoodie'),
(26, 13, 'total_sales', '0'),
(27, 13, '_tax_status', 'taxable'),
(28, 13, '_tax_class', ''),
(29, 13, '_manage_stock', 'no'),
(30, 13, '_backorders', 'no'),
(31, 13, '_sold_individually', 'no'),
(32, 13, '_virtual', 'no'),
(33, 13, '_downloadable', 'no'),
(34, 13, '_download_limit', '0'),
(35, 13, '_download_expiry', '0'),
(36, 13, '_stock', NULL),
(37, 13, '_stock_status', 'instock'),
(38, 13, '_wc_average_rating', '0'),
(39, 13, '_wc_review_count', '0'),
(40, 13, '_product_version', '3.8.1'),
(42, 14, '_sku', 'woo-hoodie-with-logo'),
(43, 14, 'total_sales', '0'),
(44, 14, '_tax_status', 'taxable'),
(45, 14, '_tax_class', ''),
(46, 14, '_manage_stock', 'no'),
(47, 14, '_backorders', 'no'),
(48, 14, '_sold_individually', 'no'),
(49, 14, '_virtual', 'no'),
(50, 14, '_downloadable', 'no'),
(51, 14, '_download_limit', '0'),
(52, 14, '_download_expiry', '0'),
(53, 14, '_stock', NULL),
(54, 14, '_stock_status', 'instock'),
(55, 14, '_wc_average_rating', '0'),
(56, 14, '_wc_review_count', '0'),
(57, 14, '_product_version', '3.8.1'),
(59, 15, '_sku', 'woo-tshirt'),
(60, 15, 'total_sales', '0'),
(61, 15, '_tax_status', 'taxable'),
(62, 15, '_tax_class', ''),
(63, 15, '_manage_stock', 'no'),
(64, 15, '_backorders', 'no'),
(65, 15, '_sold_individually', 'no'),
(66, 15, '_virtual', 'no'),
(67, 15, '_downloadable', 'no'),
(68, 15, '_download_limit', '0'),
(69, 15, '_download_expiry', '0'),
(70, 15, '_stock', NULL),
(71, 15, '_stock_status', 'instock'),
(72, 15, '_wc_average_rating', '0'),
(73, 15, '_wc_review_count', '0'),
(74, 15, '_product_version', '3.8.1'),
(76, 16, '_sku', 'woo-beanie'),
(77, 16, 'total_sales', '0'),
(78, 16, '_tax_status', 'taxable'),
(79, 16, '_tax_class', ''),
(80, 16, '_manage_stock', 'no'),
(81, 16, '_backorders', 'no'),
(82, 16, '_sold_individually', 'no'),
(83, 16, '_virtual', 'no'),
(84, 16, '_downloadable', 'no'),
(85, 16, '_download_limit', '0'),
(86, 16, '_download_expiry', '0'),
(87, 16, '_stock', NULL),
(88, 16, '_stock_status', 'instock'),
(89, 16, '_wc_average_rating', '0'),
(90, 16, '_wc_review_count', '0'),
(91, 16, '_product_version', '3.8.1'),
(93, 17, '_sku', 'woo-belt'),
(94, 17, 'total_sales', '0'),
(95, 17, '_tax_status', 'taxable'),
(96, 17, '_tax_class', ''),
(97, 17, '_manage_stock', 'no'),
(98, 17, '_backorders', 'no'),
(99, 17, '_sold_individually', 'no'),
(100, 17, '_virtual', 'no'),
(101, 17, '_downloadable', 'no'),
(102, 17, '_download_limit', '0'),
(103, 17, '_download_expiry', '0'),
(104, 17, '_stock', NULL),
(105, 17, '_stock_status', 'instock'),
(106, 17, '_wc_average_rating', '0'),
(107, 17, '_wc_review_count', '0'),
(108, 17, '_product_version', '3.8.1'),
(110, 18, '_sku', 'woo-cap'),
(111, 18, 'total_sales', '0'),
(112, 18, '_tax_status', 'taxable'),
(113, 18, '_tax_class', ''),
(114, 18, '_manage_stock', 'no'),
(115, 18, '_backorders', 'no'),
(116, 18, '_sold_individually', 'no'),
(117, 18, '_virtual', 'no'),
(118, 18, '_downloadable', 'no'),
(119, 18, '_download_limit', '0'),
(120, 18, '_download_expiry', '0'),
(121, 18, '_stock', NULL),
(122, 18, '_stock_status', 'instock'),
(123, 18, '_wc_average_rating', '0'),
(124, 18, '_wc_review_count', '0'),
(125, 18, '_product_version', '3.8.1'),
(127, 19, '_sku', 'woo-sunglasses'),
(128, 19, 'total_sales', '0'),
(129, 19, '_tax_status', 'taxable'),
(130, 19, '_tax_class', ''),
(131, 19, '_manage_stock', 'no'),
(132, 19, '_backorders', 'no'),
(133, 19, '_sold_individually', 'no'),
(134, 19, '_virtual', 'no'),
(135, 19, '_downloadable', 'no'),
(136, 19, '_download_limit', '0'),
(137, 19, '_download_expiry', '0'),
(138, 19, '_stock', NULL),
(139, 19, '_stock_status', 'instock'),
(140, 19, '_wc_average_rating', '0'),
(141, 19, '_wc_review_count', '0'),
(142, 19, '_product_version', '3.8.1'),
(144, 20, '_sku', 'woo-hoodie-with-pocket'),
(145, 20, 'total_sales', '0'),
(146, 20, '_tax_status', 'taxable'),
(147, 20, '_tax_class', ''),
(148, 20, '_manage_stock', 'no'),
(149, 20, '_backorders', 'no'),
(150, 20, '_sold_individually', 'no'),
(151, 20, '_virtual', 'no'),
(152, 20, '_downloadable', 'no'),
(153, 20, '_download_limit', '0'),
(154, 20, '_download_expiry', '0'),
(155, 20, '_stock', NULL),
(156, 20, '_stock_status', 'instock'),
(157, 20, '_wc_average_rating', '0'),
(158, 20, '_wc_review_count', '0'),
(159, 20, '_product_version', '3.8.1'),
(161, 21, '_sku', 'woo-hoodie-with-zipper'),
(162, 21, 'total_sales', '0'),
(163, 21, '_tax_status', 'taxable'),
(164, 21, '_tax_class', ''),
(165, 21, '_manage_stock', 'no'),
(166, 21, '_backorders', 'no'),
(167, 21, '_sold_individually', 'no'),
(168, 21, '_virtual', 'no'),
(169, 21, '_downloadable', 'no'),
(170, 21, '_download_limit', '0'),
(171, 21, '_download_expiry', '0'),
(172, 21, '_stock', NULL),
(173, 21, '_stock_status', 'instock'),
(174, 21, '_wc_average_rating', '0'),
(175, 21, '_wc_review_count', '0'),
(176, 21, '_product_version', '3.8.1'),
(178, 22, '_sku', 'woo-long-sleeve-tee'),
(179, 22, 'total_sales', '0'),
(180, 22, '_tax_status', 'taxable'),
(181, 22, '_tax_class', ''),
(182, 22, '_manage_stock', 'no'),
(183, 22, '_backorders', 'no'),
(184, 22, '_sold_individually', 'no'),
(185, 22, '_virtual', 'no'),
(186, 22, '_downloadable', 'no'),
(187, 22, '_download_limit', '0'),
(188, 22, '_download_expiry', '0'),
(189, 22, '_stock', NULL),
(190, 22, '_stock_status', 'instock'),
(191, 22, '_wc_average_rating', '0'),
(192, 22, '_wc_review_count', '0'),
(193, 22, '_product_version', '3.8.1'),
(195, 23, '_sku', 'woo-polo'),
(196, 23, 'total_sales', '0'),
(197, 23, '_tax_status', 'taxable'),
(198, 23, '_tax_class', ''),
(199, 23, '_manage_stock', 'no'),
(200, 23, '_backorders', 'no'),
(201, 23, '_sold_individually', 'no'),
(202, 23, '_virtual', 'no'),
(203, 23, '_downloadable', 'no'),
(204, 23, '_download_limit', '0'),
(205, 23, '_download_expiry', '0'),
(206, 23, '_stock', NULL),
(207, 23, '_stock_status', 'instock'),
(208, 23, '_wc_average_rating', '0'),
(209, 23, '_wc_review_count', '0'),
(210, 23, '_product_version', '3.8.1'),
(212, 24, '_sku', 'woo-album'),
(213, 24, 'total_sales', '0'),
(214, 24, '_tax_status', 'taxable'),
(215, 24, '_tax_class', ''),
(216, 24, '_manage_stock', 'no'),
(217, 24, '_backorders', 'no'),
(218, 24, '_sold_individually', 'no'),
(219, 24, '_virtual', 'yes'),
(220, 24, '_downloadable', 'yes'),
(221, 24, '_download_limit', '1'),
(222, 24, '_download_expiry', '1'),
(223, 24, '_stock', NULL),
(224, 24, '_stock_status', 'instock'),
(225, 24, '_wc_average_rating', '0'),
(226, 24, '_wc_review_count', '0'),
(227, 24, '_product_version', '3.8.1'),
(229, 25, '_sku', 'woo-single'),
(230, 25, 'total_sales', '0'),
(231, 25, '_tax_status', 'taxable'),
(232, 25, '_tax_class', ''),
(233, 25, '_manage_stock', 'no'),
(234, 25, '_backorders', 'no'),
(235, 25, '_sold_individually', 'no'),
(236, 25, '_virtual', 'yes'),
(237, 25, '_downloadable', 'yes'),
(238, 25, '_download_limit', '1'),
(239, 25, '_download_expiry', '1'),
(240, 25, '_stock', NULL),
(241, 25, '_stock_status', 'instock'),
(242, 25, '_wc_average_rating', '0'),
(243, 25, '_wc_review_count', '0'),
(244, 25, '_product_version', '3.8.1'),
(246, 26, '_sku', 'woo-vneck-tee-red'),
(247, 26, 'total_sales', '0'),
(248, 26, '_tax_status', 'taxable'),
(249, 26, '_tax_class', ''),
(250, 26, '_manage_stock', 'no'),
(251, 26, '_backorders', 'no'),
(252, 26, '_sold_individually', 'no'),
(253, 26, '_virtual', 'no'),
(254, 26, '_downloadable', 'no'),
(255, 26, '_download_limit', '0'),
(256, 26, '_download_expiry', '0'),
(257, 26, '_stock', NULL),
(258, 26, '_stock_status', 'instock'),
(259, 26, '_wc_average_rating', '0'),
(260, 26, '_wc_review_count', '0'),
(261, 26, '_product_version', '3.8.1'),
(263, 27, '_sku', 'woo-vneck-tee-green'),
(264, 27, 'total_sales', '0'),
(265, 27, '_tax_status', 'taxable'),
(266, 27, '_tax_class', ''),
(267, 27, '_manage_stock', 'no'),
(268, 27, '_backorders', 'no'),
(269, 27, '_sold_individually', 'no'),
(270, 27, '_virtual', 'no'),
(271, 27, '_downloadable', 'no'),
(272, 27, '_download_limit', '0'),
(273, 27, '_download_expiry', '0'),
(274, 27, '_stock', NULL),
(275, 27, '_stock_status', 'instock'),
(276, 27, '_wc_average_rating', '0'),
(277, 27, '_wc_review_count', '0'),
(278, 27, '_product_version', '3.8.1'),
(280, 28, '_sku', 'woo-vneck-tee-blue'),
(281, 28, 'total_sales', '0'),
(282, 28, '_tax_status', 'taxable'),
(283, 28, '_tax_class', ''),
(284, 28, '_manage_stock', 'no'),
(285, 28, '_backorders', 'no'),
(286, 28, '_sold_individually', 'no'),
(287, 28, '_virtual', 'no'),
(288, 28, '_downloadable', 'no'),
(289, 28, '_download_limit', '0'),
(290, 28, '_download_expiry', '0'),
(291, 28, '_stock', NULL),
(292, 28, '_stock_status', 'instock'),
(293, 28, '_wc_average_rating', '0'),
(294, 28, '_wc_review_count', '0'),
(295, 28, '_product_version', '3.8.1'),
(297, 29, '_sku', 'woo-hoodie-red'),
(298, 29, 'total_sales', '0'),
(299, 29, '_tax_status', 'taxable'),
(300, 29, '_tax_class', ''),
(301, 29, '_manage_stock', 'no'),
(302, 29, '_backorders', 'no'),
(303, 29, '_sold_individually', 'no'),
(304, 29, '_virtual', 'no'),
(305, 29, '_downloadable', 'no'),
(306, 29, '_download_limit', '0'),
(307, 29, '_download_expiry', '0'),
(308, 29, '_stock', NULL),
(309, 29, '_stock_status', 'instock'),
(310, 29, '_wc_average_rating', '0'),
(311, 29, '_wc_review_count', '0'),
(312, 29, '_product_version', '3.8.1'),
(314, 30, '_sku', 'woo-hoodie-green'),
(315, 30, 'total_sales', '0'),
(316, 30, '_tax_status', 'taxable'),
(317, 30, '_tax_class', ''),
(318, 30, '_manage_stock', 'no'),
(319, 30, '_backorders', 'no'),
(320, 30, '_sold_individually', 'no'),
(321, 30, '_virtual', 'no'),
(322, 30, '_downloadable', 'no'),
(323, 30, '_download_limit', '0'),
(324, 30, '_download_expiry', '0'),
(325, 30, '_stock', NULL),
(326, 30, '_stock_status', 'instock'),
(327, 30, '_wc_average_rating', '0'),
(328, 30, '_wc_review_count', '0'),
(329, 30, '_product_version', '3.8.1'),
(331, 31, '_sku', 'woo-hoodie-blue'),
(332, 31, 'total_sales', '0'),
(333, 31, '_tax_status', 'taxable'),
(334, 31, '_tax_class', ''),
(335, 31, '_manage_stock', 'no'),
(336, 31, '_backorders', 'no'),
(337, 31, '_sold_individually', 'no'),
(338, 31, '_virtual', 'no'),
(339, 31, '_downloadable', 'no'),
(340, 31, '_download_limit', '0'),
(341, 31, '_download_expiry', '0'),
(342, 31, '_stock', NULL),
(343, 31, '_stock_status', 'instock'),
(344, 31, '_wc_average_rating', '0'),
(345, 31, '_wc_review_count', '0'),
(346, 31, '_product_version', '3.8.1'),
(348, 32, '_sku', 'Woo-tshirt-logo'),
(349, 32, 'total_sales', '0'),
(350, 32, '_tax_status', 'taxable'),
(351, 32, '_tax_class', ''),
(352, 32, '_manage_stock', 'no'),
(353, 32, '_backorders', 'no'),
(354, 32, '_sold_individually', 'no'),
(355, 32, '_virtual', 'no'),
(356, 32, '_downloadable', 'no'),
(357, 32, '_download_limit', '0'),
(358, 32, '_download_expiry', '0'),
(359, 32, '_stock', NULL),
(360, 32, '_stock_status', 'instock'),
(361, 32, '_wc_average_rating', '0'),
(362, 32, '_wc_review_count', '0'),
(363, 32, '_product_version', '3.8.1'),
(365, 33, '_sku', 'Woo-beanie-logo'),
(366, 33, 'total_sales', '1'),
(367, 33, '_tax_status', 'taxable'),
(368, 33, '_tax_class', ''),
(369, 33, '_manage_stock', 'no'),
(370, 33, '_backorders', 'no'),
(371, 33, '_sold_individually', 'no'),
(372, 33, '_virtual', 'no'),
(373, 33, '_downloadable', 'no'),
(374, 33, '_download_limit', '0'),
(375, 33, '_download_expiry', '0'),
(376, 33, '_stock', NULL),
(377, 33, '_stock_status', 'instock'),
(378, 33, '_wc_average_rating', '0'),
(379, 33, '_wc_review_count', '0'),
(380, 33, '_product_version', '3.8.1'),
(382, 34, '_sku', 'logo-collection'),
(383, 34, 'total_sales', '0'),
(384, 34, '_tax_status', 'taxable'),
(385, 34, '_tax_class', ''),
(386, 34, '_manage_stock', 'no'),
(387, 34, '_backorders', 'no'),
(388, 34, '_sold_individually', 'no'),
(389, 34, '_virtual', 'no'),
(390, 34, '_downloadable', 'no'),
(391, 34, '_download_limit', '0'),
(392, 34, '_download_expiry', '0'),
(393, 34, '_stock', NULL),
(394, 34, '_stock_status', 'instock'),
(395, 34, '_wc_average_rating', '0'),
(396, 34, '_wc_review_count', '0'),
(397, 34, '_product_version', '3.8.1'),
(399, 35, '_sku', 'wp-pennant'),
(400, 35, 'total_sales', '0'),
(401, 35, '_tax_status', 'taxable'),
(402, 35, '_tax_class', ''),
(403, 35, '_manage_stock', 'no'),
(404, 35, '_backorders', 'no'),
(405, 35, '_sold_individually', 'no'),
(406, 35, '_virtual', 'no'),
(407, 35, '_downloadable', 'no'),
(408, 35, '_download_limit', '0'),
(409, 35, '_download_expiry', '0'),
(410, 35, '_stock', NULL),
(411, 35, '_stock_status', 'instock'),
(412, 35, '_wc_average_rating', '0'),
(413, 35, '_wc_review_count', '0'),
(414, 35, '_product_version', '3.8.1'),
(416, 36, '_sku', 'woo-hoodie-blue-logo'),
(417, 36, 'total_sales', '0'),
(418, 36, '_tax_status', 'taxable'),
(419, 36, '_tax_class', ''),
(420, 36, '_manage_stock', 'no'),
(421, 36, '_backorders', 'no'),
(422, 36, '_sold_individually', 'no'),
(423, 36, '_virtual', 'no'),
(424, 36, '_downloadable', 'no'),
(425, 36, '_download_limit', '0'),
(426, 36, '_download_expiry', '0'),
(427, 36, '_stock', NULL),
(428, 36, '_stock_status', 'instock'),
(429, 36, '_wc_average_rating', '0'),
(430, 36, '_wc_review_count', '0'),
(431, 36, '_product_version', '3.8.1'),
(433, 37, '_wp_attached_file', '2019/12/vneck-tee-2-1.jpg'),
(434, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:800;s:4:"file";s:25:"2019/12/vneck-tee-2-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:25:"vneck-tee-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:25:"vneck-tee-2-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:25:"vneck-tee-2-1-600x599.jpg";s:5:"width";i:600;s:6:"height";i:599;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"vneck-tee-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"vneck-tee-2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"vneck-tee-2-1-768x767.jpg";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:25:"vneck-tee-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:25:"vneck-tee-2-1-600x599.jpg";s:5:"width";i:600;s:6:"height";i:599;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"vneck-tee-2-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(435, 37, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(436, 38, '_wp_attached_file', '2019/12/vnech-tee-green-1-1.jpg'),
(437, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:31:"2019/12/vnech-tee-green-1-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"vnech-tee-green-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"vnech-tee-green-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:31:"vnech-tee-green-1-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"vnech-tee-green-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:31:"vnech-tee-green-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"vnech-tee-green-1-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:31:"vnech-tee-green-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:31:"vnech-tee-green-1-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"vnech-tee-green-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(438, 38, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(439, 39, '_wp_attached_file', '2019/12/vnech-tee-blue-1-1.jpg'),
(440, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:30:"2019/12/vnech-tee-blue-1-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"vnech-tee-blue-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"vnech-tee-blue-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:30:"vnech-tee-blue-1-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"vnech-tee-blue-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"vnech-tee-blue-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"vnech-tee-blue-1-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:30:"vnech-tee-blue-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:30:"vnech-tee-blue-1-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"vnech-tee-blue-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(441, 39, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(442, 12, '_wpcom_is_markdown', '1'),
(443, 12, '_wp_old_slug', 'import-placeholder-for-44'),
(444, 12, '_product_image_gallery', '38,39'),
(445, 12, '_thumbnail_id', '37'),
(446, 12, '_product_attributes', 'a:2:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"1";s:11:"is_taxonomy";s:1:"1";}s:7:"pa_size";a:6:{s:4:"name";s:7:"pa_size";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"1";s:11:"is_taxonomy";s:1:"1";}}'),
(447, 40, '_wp_attached_file', '2019/12/hoodie-2.jpg'),
(448, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:20:"2019/12/hoodie-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"hoodie-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"hoodie-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"hoodie-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"hoodie-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"hoodie-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"hoodie-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:20:"hoodie-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:20:"hoodie-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"hoodie-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(449, 40, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(450, 41, '_wp_attached_file', '2019/12/hoodie-blue-1.jpg'),
(451, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:25:"2019/12/hoodie-blue-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:25:"hoodie-blue-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:25:"hoodie-blue-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:25:"hoodie-blue-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie-blue-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie-blue-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie-blue-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:25:"hoodie-blue-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie-blue-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie-blue-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(452, 41, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(453, 42, '_wp_attached_file', '2019/12/hoodie-green-1.jpg'),
(454, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:26:"2019/12/hoodie-green-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"hoodie-green-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"hoodie-green-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:26:"hoodie-green-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie-green-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie-green-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie-green-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:26:"hoodie-green-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie-green-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie-green-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(455, 42, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(456, 43, '_wp_attached_file', '2019/12/hoodie-with-logo-2.jpg'),
(457, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:30:"2019/12/hoodie-with-logo-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"hoodie-with-logo-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"hoodie-with-logo-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:30:"hoodie-with-logo-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"hoodie-with-logo-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"hoodie-with-logo-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"hoodie-with-logo-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:30:"hoodie-with-logo-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:30:"hoodie-with-logo-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"hoodie-with-logo-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(458, 43, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(459, 13, '_wpcom_is_markdown', '1'),
(460, 13, '_wp_old_slug', 'import-placeholder-for-45'),
(461, 13, '_product_image_gallery', '41,42,43'),
(462, 13, '_thumbnail_id', '40'),
(463, 13, '_product_attributes', 'a:2:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"1";s:11:"is_taxonomy";s:1:"1";}s:4:"logo";a:6:{s:4:"name";s:4:"Logo";s:5:"value";s:8:"Yes | No";s:8:"position";s:1:"1";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"1";s:11:"is_taxonomy";s:1:"0";}}'),
(464, 14, '_wpcom_is_markdown', '1'),
(465, 14, '_wp_old_slug', 'import-placeholder-for-46'),
(466, 14, '_regular_price', '45'),
(467, 14, '_thumbnail_id', '43'),
(468, 14, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(469, 14, '_price', '45'),
(470, 44, '_wp_attached_file', '2019/12/tshirt-2.jpg'),
(471, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:20:"2019/12/tshirt-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"tshirt-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"tshirt-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"tshirt-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"tshirt-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"tshirt-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"tshirt-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:20:"tshirt-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:20:"tshirt-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"tshirt-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(472, 44, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(473, 15, '_wpcom_is_markdown', '1'),
(474, 15, '_wp_old_slug', 'import-placeholder-for-47'),
(475, 15, '_regular_price', '18'),
(476, 15, '_thumbnail_id', '44'),
(477, 15, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(478, 15, '_price', '18'),
(479, 45, '_wp_attached_file', '2019/12/beanie-2.jpg'),
(480, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:20:"2019/12/beanie-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"beanie-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"beanie-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"beanie-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"beanie-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"beanie-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"beanie-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:20:"beanie-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:20:"beanie-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"beanie-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(481, 45, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(482, 16, '_wpcom_is_markdown', '1'),
(483, 16, '_wp_old_slug', 'import-placeholder-for-48'),
(484, 16, '_regular_price', '20'),
(485, 16, '_sale_price', '18'),
(486, 16, '_thumbnail_id', '45'),
(487, 16, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(488, 16, '_price', '18'),
(489, 46, '_wp_attached_file', '2019/12/belt-2.jpg'),
(490, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:18:"2019/12/belt-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"belt-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"belt-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"belt-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"belt-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"belt-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"belt-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:18:"belt-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:18:"belt-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"belt-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(491, 46, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(492, 17, '_wpcom_is_markdown', '1'),
(493, 17, '_wp_old_slug', 'import-placeholder-for-58'),
(494, 17, '_regular_price', '65'),
(495, 17, '_sale_price', '55'),
(496, 17, '_thumbnail_id', '46'),
(497, 17, '_price', '55'),
(498, 47, '_wp_attached_file', '2019/12/cap-2.jpg'),
(499, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:17:"2019/12/cap-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:17:"cap-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"cap-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:17:"cap-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"cap-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cap-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cap-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:17:"cap-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:17:"cap-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"cap-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(500, 47, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(501, 18, '_wpcom_is_markdown', '1'),
(502, 18, '_wp_old_slug', 'import-placeholder-for-60'),
(503, 18, '_regular_price', '18'),
(504, 18, '_sale_price', '16'),
(505, 18, '_thumbnail_id', '47'),
(506, 18, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(507, 18, '_price', '16'),
(508, 48, '_wp_attached_file', '2019/12/sunglasses-2.jpg'),
(509, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:24:"2019/12/sunglasses-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:24:"sunglasses-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"sunglasses-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:24:"sunglasses-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"sunglasses-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"sunglasses-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"sunglasses-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:24:"sunglasses-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:24:"sunglasses-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"sunglasses-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(510, 48, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(511, 19, '_wpcom_is_markdown', '1'),
(512, 19, '_wp_old_slug', 'import-placeholder-for-62'),
(513, 19, '_regular_price', '90'),
(514, 19, '_thumbnail_id', '48'),
(515, 19, '_price', '90'),
(516, 49, '_wp_attached_file', '2019/12/hoodie-with-pocket-2.jpg'),
(517, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:32:"2019/12/hoodie-with-pocket-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"hoodie-with-pocket-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-pocket-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"hoodie-with-pocket-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"hoodie-with-pocket-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-pocket-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"hoodie-with-pocket-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"hoodie-with-pocket-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:32:"hoodie-with-pocket-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-pocket-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(518, 49, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(519, 20, '_wpcom_is_markdown', '1'),
(520, 20, '_wp_old_slug', 'import-placeholder-for-64'),
(521, 20, '_regular_price', '45'),
(522, 20, '_sale_price', '35'),
(523, 20, '_thumbnail_id', '49'),
(524, 20, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(525, 20, '_price', '35'),
(526, 50, '_wp_attached_file', '2019/12/hoodie-with-zipper-2.jpg'),
(527, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:32:"2019/12/hoodie-with-zipper-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"hoodie-with-zipper-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-zipper-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"hoodie-with-zipper-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"hoodie-with-zipper-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-zipper-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"hoodie-with-zipper-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"hoodie-with-zipper-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:32:"hoodie-with-zipper-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-zipper-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(528, 50, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(529, 21, '_wpcom_is_markdown', '1'),
(530, 21, '_wp_old_slug', 'import-placeholder-for-66'),
(531, 21, '_regular_price', '45'),
(532, 21, '_thumbnail_id', '50'),
(533, 21, '_price', '45'),
(534, 51, '_wp_attached_file', '2019/12/long-sleeve-tee-2.jpg'),
(535, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:29:"2019/12/long-sleeve-tee-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"long-sleeve-tee-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"long-sleeve-tee-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:29:"long-sleeve-tee-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"long-sleeve-tee-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"long-sleeve-tee-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"long-sleeve-tee-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:29:"long-sleeve-tee-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:29:"long-sleeve-tee-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"long-sleeve-tee-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(536, 51, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(537, 22, '_wpcom_is_markdown', '1'),
(538, 22, '_wp_old_slug', 'import-placeholder-for-68'),
(539, 22, '_regular_price', '25'),
(540, 22, '_thumbnail_id', '51'),
(541, 22, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(542, 22, '_price', '25'),
(543, 52, '_wp_attached_file', '2019/12/polo-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(544, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:800;s:4:"file";s:18:"2019/12/polo-2.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"polo-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"polo-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"polo-2-600x599.jpg";s:5:"width";i:600;s:6:"height";i:599;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"polo-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"polo-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"polo-2-768x767.jpg";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:18:"polo-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:18:"polo-2-600x599.jpg";s:5:"width";i:600;s:6:"height";i:599;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"polo-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(545, 52, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(546, 23, '_wpcom_is_markdown', '1'),
(547, 23, '_wp_old_slug', 'import-placeholder-for-70'),
(548, 23, '_regular_price', '20'),
(549, 23, '_thumbnail_id', '52'),
(550, 23, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(551, 23, '_price', '20'),
(552, 53, '_wp_attached_file', '2019/12/album-1.jpg'),
(553, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:19:"2019/12/album-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"album-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"album-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"album-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"album-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"album-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"album-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:19:"album-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:19:"album-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"album-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(554, 53, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(555, 24, '_wpcom_is_markdown', '1'),
(556, 24, '_wp_old_slug', 'import-placeholder-for-73'),
(557, 24, '_regular_price', '15'),
(558, 24, '_thumbnail_id', '53'),
(559, 24, '_downloadable_files', 'a:2:{s:36:"978a3086-5ba5-471b-a777-068a6014ceaa";a:3:{s:2:"id";s:36:"978a3086-5ba5-471b-a777-068a6014ceaa";s:4:"name";s:8:"Single 1";s:4:"file";s:85:"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg";}s:36:"6fcd03ad-f8bb-4f24-a24b-03ce96534b66";a:3:{s:2:"id";s:36:"6fcd03ad-f8bb-4f24-a24b-03ce96534b66";s:4:"name";s:8:"Single 2";s:4:"file";s:84:"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg";}}'),
(560, 24, '_price', '15'),
(561, 54, '_wp_attached_file', '2019/12/single-1.jpg'),
(562, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:20:"2019/12/single-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"single-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"single-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"single-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"single-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"single-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"single-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:20:"single-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:20:"single-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"single-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(563, 54, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(564, 25, '_wpcom_is_markdown', '1'),
(565, 25, '_wp_old_slug', 'import-placeholder-for-75'),
(566, 25, '_regular_price', '3'),
(567, 25, '_sale_price', '2'),
(568, 25, '_thumbnail_id', '54'),
(569, 25, '_downloadable_files', 'a:1:{s:36:"00bb20e0-342e-4be5-9e3d-55df1d225d36";a:3:{s:2:"id";s:36:"00bb20e0-342e-4be5-9e3d-55df1d225d36";s:4:"name";s:6:"Single";s:4:"file";s:85:"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg";}}'),
(570, 25, '_price', '2'),
(571, 26, '_wpcom_is_markdown', ''),
(572, 26, '_wp_old_slug', 'import-placeholder-for-76'),
(573, 26, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(574, 26, '_regular_price', '20'),
(575, 26, '_thumbnail_id', '37'),
(576, 26, 'attribute_pa_color', 'red'),
(577, 26, 'attribute_pa_size', ''),
(578, 26, '_price', '20'),
(579, 27, '_wpcom_is_markdown', ''),
(580, 27, '_wp_old_slug', 'import-placeholder-for-77'),
(581, 27, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(582, 27, '_regular_price', '20'),
(583, 27, '_thumbnail_id', '38'),
(584, 27, 'attribute_pa_color', 'green'),
(585, 27, 'attribute_pa_size', ''),
(586, 27, '_price', '20'),
(587, 28, '_wpcom_is_markdown', ''),
(588, 28, '_wp_old_slug', 'import-placeholder-for-78'),
(589, 28, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(590, 28, '_regular_price', '15'),
(591, 28, '_thumbnail_id', '39'),
(592, 28, 'attribute_pa_color', 'blue'),
(593, 28, 'attribute_pa_size', ''),
(594, 28, '_price', '15'),
(595, 29, '_wpcom_is_markdown', ''),
(596, 29, '_wp_old_slug', 'import-placeholder-for-79'),
(597, 29, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(598, 29, '_regular_price', '45'),
(599, 29, '_sale_price', '42'),
(600, 29, '_thumbnail_id', '40'),
(601, 29, 'attribute_pa_color', 'red'),
(602, 29, 'attribute_logo', 'No'),
(603, 29, '_price', '42'),
(604, 30, '_wpcom_is_markdown', ''),
(605, 30, '_wp_old_slug', 'import-placeholder-for-80'),
(606, 30, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(607, 30, '_regular_price', '45'),
(608, 30, '_thumbnail_id', '42'),
(609, 30, 'attribute_pa_color', 'green'),
(610, 30, 'attribute_logo', 'No'),
(611, 30, '_price', '45'),
(612, 31, '_wpcom_is_markdown', ''),
(613, 31, '_wp_old_slug', 'import-placeholder-for-81'),
(614, 31, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(615, 31, '_regular_price', '45'),
(616, 31, '_thumbnail_id', '41'),
(617, 31, 'attribute_pa_color', 'blue'),
(618, 31, 'attribute_logo', 'No'),
(619, 31, '_price', '45'),
(620, 55, '_wp_attached_file', '2019/12/t-shirt-with-logo-1.jpg'),
(621, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:31:"2019/12/t-shirt-with-logo-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"t-shirt-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"t-shirt-with-logo-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:31:"t-shirt-with-logo-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"t-shirt-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:31:"t-shirt-with-logo-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"t-shirt-with-logo-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:31:"t-shirt-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:31:"t-shirt-with-logo-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"t-shirt-with-logo-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(622, 55, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(623, 32, '_wpcom_is_markdown', '1'),
(624, 32, '_wp_old_slug', 'import-placeholder-for-83'),
(625, 32, '_regular_price', '18'),
(626, 32, '_thumbnail_id', '55'),
(627, 32, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(628, 32, '_price', '18'),
(629, 56, '_wp_attached_file', '2019/12/beanie-with-logo-1.jpg'),
(630, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:30:"2019/12/beanie-with-logo-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"beanie-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"beanie-with-logo-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:30:"beanie-with-logo-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"beanie-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"beanie-with-logo-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"beanie-with-logo-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:30:"beanie-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:30:"beanie-with-logo-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"beanie-with-logo-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(631, 56, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(632, 33, '_wpcom_is_markdown', '1'),
(633, 33, '_wp_old_slug', 'import-placeholder-for-85'),
(634, 33, '_regular_price', '20'),
(635, 33, '_sale_price', '18'),
(636, 33, '_thumbnail_id', '56'),
(637, 33, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";s:1:"1";s:12:"is_variation";s:1:"0";s:11:"is_taxonomy";s:1:"1";}}'),
(638, 33, '_price', '18'),
(639, 57, '_wp_attached_file', '2019/12/logo-1.jpg'),
(640, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:799;s:4:"file";s:18:"2019/12/logo-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"logo-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"logo-1-600x599.jpg";s:5:"width";i:600;s:6:"height";i:599;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"logo-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"logo-1-768x767.jpg";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:18:"logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:18:"logo-1-600x599.jpg";s:5:"width";i:600;s:6:"height";i:599;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"logo-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(641, 57, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(642, 34, '_wpcom_is_markdown', '1'),
(643, 34, '_wp_old_slug', 'import-placeholder-for-87'),
(644, 34, '_children', 'a:3:{i:0;i:14;i:1;i:15;i:2;i:16;}'),
(645, 34, '_product_image_gallery', '56,55,43'),
(646, 34, '_thumbnail_id', '57'),
(647, 34, '_price', '18'),
(648, 34, '_price', '45'),
(649, 58, '_wp_attached_file', '2019/12/pennant-1.jpg'),
(650, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:21:"2019/12/pennant-1.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"pennant-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"pennant-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"pennant-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"pennant-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"pennant-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"pennant-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:21:"pennant-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:21:"pennant-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"pennant-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(651, 58, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(652, 35, '_wpcom_is_markdown', '1'),
(653, 35, '_wp_old_slug', 'import-placeholder-for-89'),
(654, 35, '_regular_price', '11.05'),
(655, 35, '_thumbnail_id', '58'),
(656, 35, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(657, 35, '_button_text', 'Buy on the WordPress swag store!'),
(658, 35, '_price', '11.05'),
(659, 36, '_wpcom_is_markdown', ''),
(660, 36, '_wp_old_slug', 'import-placeholder-for-90'),
(661, 36, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(662, 36, '_regular_price', '45'),
(663, 36, '_thumbnail_id', '43'),
(664, 36, 'attribute_pa_color', 'blue'),
(665, 36, 'attribute_logo', 'Yes'),
(666, 36, '_price', '45'),
(667, 12, '_price', '15'),
(668, 12, '_price', '20'),
(669, 13, '_price', '42'),
(670, 13, '_price', '45'),
(671, 59, '_edit_lock', '1576849771:1'),
(672, 60, '_edit_lock', '1576850562:1'),
(673, 60, '_wp_page_template', 'contact-page.php'),
(674, 59, '_wp_page_template', 'front-page.php'),
(676, 64, '_menu_item_type', 'post_type'),
(677, 64, '_menu_item_menu_item_parent', '0'),
(678, 64, '_menu_item_object_id', '59'),
(679, 64, '_menu_item_object', 'page'),
(680, 64, '_menu_item_target', ''),
(681, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(682, 64, '_menu_item_xfn', ''),
(683, 64, '_menu_item_url', ''),
(685, 65, '_menu_item_type', 'post_type'),
(686, 65, '_menu_item_menu_item_parent', '0'),
(687, 65, '_menu_item_object_id', '7'),
(688, 65, '_menu_item_object', 'page'),
(689, 65, '_menu_item_target', ''),
(690, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(691, 65, '_menu_item_xfn', ''),
(692, 65, '_menu_item_url', ''),
(694, 66, '_menu_item_type', 'post_type'),
(695, 66, '_menu_item_menu_item_parent', '0'),
(696, 66, '_menu_item_object_id', '8'),
(697, 66, '_menu_item_object', 'page'),
(698, 66, '_menu_item_target', ''),
(699, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(700, 66, '_menu_item_xfn', ''),
(701, 66, '_menu_item_url', ''),
(703, 67, '_menu_item_type', 'post_type'),
(704, 67, '_menu_item_menu_item_parent', '0'),
(705, 67, '_menu_item_object_id', '60'),
(706, 67, '_menu_item_object', 'page'),
(707, 67, '_menu_item_target', ''),
(708, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(709, 67, '_menu_item_xfn', ''),
(710, 67, '_menu_item_url', ''),
(721, 69, '_menu_item_type', 'post_type'),
(722, 69, '_menu_item_menu_item_parent', '0'),
(723, 69, '_menu_item_object_id', '2'),
(724, 69, '_menu_item_object', 'page'),
(725, 69, '_menu_item_target', ''),
(726, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(727, 69, '_menu_item_xfn', ''),
(728, 69, '_menu_item_url', ''),
(729, 69, '_menu_item_orphaned', '1576844238'),
(730, 70, '_menu_item_type', 'post_type'),
(731, 70, '_menu_item_menu_item_parent', '0'),
(732, 70, '_menu_item_object_id', '6'),
(733, 70, '_menu_item_object', 'page'),
(734, 70, '_menu_item_target', ''),
(735, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(736, 70, '_menu_item_xfn', ''),
(737, 70, '_menu_item_url', ''),
(739, 71, '_edit_lock', '1576844257:1'),
(740, 73, '_edit_lock', '1576844290:1'),
(741, 76, '_menu_item_type', 'post_type'),
(742, 76, '_menu_item_menu_item_parent', '0'),
(743, 76, '_menu_item_object_id', '73'),
(744, 76, '_menu_item_object', 'page'),
(745, 76, '_menu_item_target', ''),
(746, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(747, 76, '_menu_item_xfn', ''),
(748, 76, '_menu_item_url', ''),
(750, 77, '_menu_item_type', 'post_type'),
(751, 77, '_menu_item_menu_item_parent', '0'),
(752, 77, '_menu_item_object_id', '71'),
(753, 77, '_menu_item_object', 'page'),
(754, 77, '_menu_item_target', ''),
(755, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(756, 77, '_menu_item_xfn', ''),
(757, 77, '_menu_item_url', ''),
(759, 78, '_wp_attached_file', '2019/12/voucher-1.png'),
(760, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:29;s:6:"height";i:27;s:4:"file";s:21:"2019/12/voucher-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(761, 79, '_wp_attached_file', '2019/12/tshirt-2-600x600-1.jpg'),
(762, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:30:"2019/12/tshirt-2-600x600-1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"tshirt-2-600x600-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"tshirt-2-600x600-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"tshirt-2-600x600-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"tshirt-2-600x600-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:30:"tshirt-2-600x600-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"tshirt-2-600x600-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(763, 80, '_wp_attached_file', '2019/12/sales-1.png'),
(764, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:32;s:6:"height";i:32;s:4:"file";s:19:"2019/12/sales-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(765, 81, '_wp_attached_file', '2019/12/f-delivery-2.png'),
(766, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:103;s:6:"height";i:57;s:4:"file";s:24:"2019/12/f-delivery-2.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"f-delivery-2-100x57.png";s:5:"width";i:100;s:6:"height";i:57;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"f-delivery-2-100x57.png";s:5:"width";i:100;s:6:"height";i:57;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(767, 82, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(768, 82, '_mail', 'a:8:{s:7:"subject";s:23:"violet "[your-subject]"";s:6:"sender";s:28:"violet <sinevor13@gmail.com>";s:4:"body";s:172:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on violet (http://localhost/wordpress5)";s:9:"recipient";s:19:"sinevor13@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(769, 82, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:23:"violet "[your-subject]"";s:6:"sender";s:28:"violet <sinevor13@gmail.com>";s:4:"body";s:114:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on violet (http://localhost/wordpress5)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: sinevor13@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(770, 82, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(771, 82, '_additional_settings', NULL),
(772, 82, '_locale', 'en_US'),
(773, 84, '_wp_attached_file', '2019/12/delivery-1.png'),
(774, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:18;s:4:"file";s:22:"2019/12/delivery-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(775, 85, '_wp_attached_file', '2019/12/search-1.png'),
(776, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:18;s:6:"height";i:16;s:4:"file";s:20:"2019/12/search-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(777, 86, '_wp_attached_file', '2019/12/man-1.png'),
(778, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:21;s:4:"file";s:17:"2019/12/man-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(779, 87, '_menu_item_type', 'post_type'),
(780, 87, '_menu_item_menu_item_parent', '0'),
(781, 87, '_menu_item_object_id', '59'),
(782, 87, '_menu_item_object', 'page'),
(783, 87, '_menu_item_target', ''),
(784, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(785, 87, '_menu_item_xfn', ''),
(786, 87, '_menu_item_url', ''),
(788, 88, '_menu_item_type', 'post_type'),
(789, 88, '_menu_item_menu_item_parent', '0'),
(790, 88, '_menu_item_object_id', '7'),
(791, 88, '_menu_item_object', 'page'),
(792, 88, '_menu_item_target', ''),
(793, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(794, 88, '_menu_item_xfn', ''),
(795, 88, '_menu_item_url', ''),
(797, 89, '_menu_item_type', 'post_type'),
(798, 89, '_menu_item_menu_item_parent', '0'),
(799, 89, '_menu_item_object_id', '8'),
(800, 89, '_menu_item_object', 'page'),
(801, 89, '_menu_item_target', ''),
(802, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(803, 89, '_menu_item_xfn', ''),
(804, 89, '_menu_item_url', ''),
(806, 90, '_menu_item_type', 'post_type'),
(807, 90, '_menu_item_menu_item_parent', '0'),
(808, 90, '_menu_item_object_id', '60'),
(809, 90, '_menu_item_object', 'page'),
(810, 90, '_menu_item_target', ''),
(811, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(812, 90, '_menu_item_xfn', ''),
(813, 90, '_menu_item_url', ''),
(815, 91, '_menu_item_type', 'post_type'),
(816, 91, '_menu_item_menu_item_parent', '0'),
(817, 91, '_menu_item_object_id', '6'),
(818, 91, '_menu_item_object', 'page'),
(819, 91, '_menu_item_target', ''),
(820, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(821, 91, '_menu_item_xfn', ''),
(822, 91, '_menu_item_url', ''),
(824, 92, '_menu_item_type', 'taxonomy'),
(825, 92, '_menu_item_menu_item_parent', '0'),
(826, 92, '_menu_item_object_id', '19'),
(827, 92, '_menu_item_object', 'product_cat'),
(828, 92, '_menu_item_target', ''),
(829, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(830, 92, '_menu_item_xfn', ''),
(831, 92, '_menu_item_url', ''),
(833, 93, '_menu_item_type', 'taxonomy'),
(834, 93, '_menu_item_menu_item_parent', '0'),
(835, 93, '_menu_item_object_id', '18'),
(836, 93, '_menu_item_object', 'product_cat'),
(837, 93, '_menu_item_target', ''),
(838, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(839, 93, '_menu_item_xfn', ''),
(840, 93, '_menu_item_url', ''),
(842, 94, '_menu_item_type', 'taxonomy'),
(843, 94, '_menu_item_menu_item_parent', '0'),
(844, 94, '_menu_item_object_id', '17'),
(845, 94, '_menu_item_object', 'product_cat'),
(846, 94, '_menu_item_target', ''),
(847, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(848, 94, '_menu_item_xfn', ''),
(849, 94, '_menu_item_url', ''),
(851, 95, '_menu_item_type', 'taxonomy'),
(852, 95, '_menu_item_menu_item_parent', '0'),
(853, 95, '_menu_item_object_id', '21'),
(854, 95, '_menu_item_object', 'product_cat'),
(855, 95, '_menu_item_target', ''),
(856, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(857, 95, '_menu_item_xfn', ''),
(858, 95, '_menu_item_url', ''),
(860, 96, '_menu_item_type', 'taxonomy'),
(861, 96, '_menu_item_menu_item_parent', '0'),
(862, 96, '_menu_item_object_id', '20'),
(863, 96, '_menu_item_object', 'product_cat'),
(864, 96, '_menu_item_target', ''),
(865, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(866, 96, '_menu_item_xfn', ''),
(867, 96, '_menu_item_url', ''),
(869, 97, '_menu_item_type', 'taxonomy'),
(870, 97, '_menu_item_menu_item_parent', '0'),
(871, 97, '_menu_item_object_id', '20'),
(872, 97, '_menu_item_object', 'product_cat'),
(873, 97, '_menu_item_target', ''),
(874, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(875, 97, '_menu_item_xfn', ''),
(876, 97, '_menu_item_url', ''),
(877, 97, '_menu_item_orphaned', '1576845228'),
(878, 98, '_menu_item_type', 'taxonomy'),
(879, 98, '_menu_item_menu_item_parent', '0'),
(880, 98, '_menu_item_object_id', '16'),
(881, 98, '_menu_item_object', 'product_cat'),
(882, 98, '_menu_item_target', ''),
(883, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(884, 98, '_menu_item_xfn', ''),
(885, 98, '_menu_item_url', ''),
(887, 99, '_menu_item_type', 'taxonomy'),
(888, 99, '_menu_item_menu_item_parent', '0'),
(889, 99, '_menu_item_object_id', '17'),
(890, 99, '_menu_item_object', 'product_cat'),
(891, 99, '_menu_item_target', ''),
(892, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(893, 99, '_menu_item_xfn', ''),
(894, 99, '_menu_item_url', ''),
(896, 100, '_menu_item_type', 'taxonomy'),
(897, 100, '_menu_item_menu_item_parent', '0'),
(898, 100, '_menu_item_object_id', '19'),
(899, 100, '_menu_item_object', 'product_cat'),
(900, 100, '_menu_item_target', ''),
(901, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(902, 100, '_menu_item_xfn', ''),
(903, 100, '_menu_item_url', ''),
(905, 101, '_menu_item_type', 'taxonomy'),
(906, 101, '_menu_item_menu_item_parent', '0'),
(907, 101, '_menu_item_object_id', '18'),
(908, 101, '_menu_item_object', 'product_cat'),
(909, 101, '_menu_item_target', ''),
(910, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(911, 101, '_menu_item_xfn', ''),
(912, 101, '_menu_item_url', ''),
(914, 102, '_menu_item_type', 'taxonomy'),
(915, 102, '_menu_item_menu_item_parent', '0'),
(916, 102, '_menu_item_object_id', '21'),
(917, 102, '_menu_item_object', 'product_cat'),
(918, 102, '_menu_item_target', ''),
(919, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(920, 102, '_menu_item_xfn', ''),
(921, 102, '_menu_item_url', ''),
(923, 103, '_menu_item_type', 'post_type'),
(924, 103, '_menu_item_menu_item_parent', '0'),
(925, 103, '_menu_item_object_id', '59'),
(926, 103, '_menu_item_object', 'page'),
(927, 103, '_menu_item_target', ''),
(928, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(929, 103, '_menu_item_xfn', ''),
(930, 103, '_menu_item_url', ''),
(932, 104, '_menu_item_type', 'post_type'),
(933, 104, '_menu_item_menu_item_parent', '0'),
(934, 104, '_menu_item_object_id', '7'),
(935, 104, '_menu_item_object', 'page'),
(936, 104, '_menu_item_target', ''),
(937, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(938, 104, '_menu_item_xfn', ''),
(939, 104, '_menu_item_url', ''),
(941, 105, '_menu_item_type', 'post_type'),
(942, 105, '_menu_item_menu_item_parent', '0'),
(943, 105, '_menu_item_object_id', '8'),
(944, 105, '_menu_item_object', 'page'),
(945, 105, '_menu_item_target', ''),
(946, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(947, 105, '_menu_item_xfn', ''),
(948, 105, '_menu_item_url', ''),
(950, 106, '_menu_item_type', 'post_type'),
(951, 106, '_menu_item_menu_item_parent', '0'),
(952, 106, '_menu_item_object_id', '60'),
(953, 106, '_menu_item_object', 'page'),
(954, 106, '_menu_item_target', ''),
(955, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(956, 106, '_menu_item_xfn', ''),
(957, 106, '_menu_item_url', ''),
(959, 107, '_menu_item_type', 'post_type'),
(960, 107, '_menu_item_menu_item_parent', '0'),
(961, 107, '_menu_item_object_id', '73'),
(962, 107, '_menu_item_object', 'page'),
(963, 107, '_menu_item_target', ''),
(964, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(965, 107, '_menu_item_xfn', ''),
(966, 107, '_menu_item_url', ''),
(967, 107, '_menu_item_orphaned', '1576845262'),
(968, 108, '_menu_item_type', 'post_type'),
(969, 108, '_menu_item_menu_item_parent', '0'),
(970, 108, '_menu_item_object_id', '9'),
(971, 108, '_menu_item_object', 'page'),
(972, 108, '_menu_item_target', ''),
(973, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(974, 108, '_menu_item_xfn', ''),
(975, 108, '_menu_item_url', ''),
(977, 109, '_edit_last', '1'),
(978, 109, '_edit_lock', '1576849699:1'),
(979, 113, '_wp_attached_file', '2019/12/slider-3-1.jpg'),
(980, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:826;s:4:"file";s:22:"2019/12/slider-3-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"slider-3-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"slider-3-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"slider-3-1-600x258.jpg";s:5:"width";i:600;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-3-1-300x129.jpg";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"slider-3-1-1024x441.jpg";s:5:"width";i:1024;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"slider-3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slider-3-1-768x330.jpg";s:5:"width";i:768;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:23:"slider-3-1-1536x661.jpg";s:5:"width";i:1536;s:6:"height";i:661;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"slider-3-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:22:"slider-3-1-600x258.jpg";s:5:"width";i:600;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"slider-3-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(981, 114, '_wp_attached_file', '2019/12/slider-2-1.jpg'),
(982, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:826;s:4:"file";s:22:"2019/12/slider-2-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"slider-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"slider-2-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"slider-2-1-600x258.jpg";s:5:"width";i:600;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-2-1-300x129.jpg";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"slider-2-1-1024x441.jpg";s:5:"width";i:1024;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"slider-2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slider-2-1-768x330.jpg";s:5:"width";i:768;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:23:"slider-2-1-1536x661.jpg";s:5:"width";i:1536;s:6:"height";i:661;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"slider-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:22:"slider-2-1-600x258.jpg";s:5:"width";i:600;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"slider-2-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(983, 115, '_wp_attached_file', '2019/12/slider-1-1.jpg'),
(984, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:826;s:4:"file";s:22:"2019/12/slider-1-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"slider-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"slider-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"slider-1-1-600x258.jpg";s:5:"width";i:600;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-1-1-300x129.jpg";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"slider-1-1-1024x441.jpg";s:5:"width";i:1024;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"slider-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slider-1-1-768x330.jpg";s:5:"width";i:768;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:23:"slider-1-1-1536x661.jpg";s:5:"width";i:1536;s:6:"height";i:661;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"slider-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:22:"slider-1-1-600x258.jpg";s:5:"width";i:600;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"slider-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(985, 59, '_edit_last', '1'),
(986, 59, 'slider_image1', '113'),
(987, 59, '_slider_image1', 'field_5dfcc028a23da'),
(988, 59, 'slider_image2', '114'),
(989, 59, '_slider_image2', 'field_5dfcc03ba23db'),
(990, 59, 'slider_image3', '115'),
(991, 59, '_slider_image3', 'field_5dfcc044a23dc'),
(992, 116, 'slider_image1', '113'),
(993, 116, '_slider_image1', 'field_5dfcc028a23da'),
(994, 116, 'slider_image2', '114'),
(995, 116, '_slider_image2', 'field_5dfcc03ba23db'),
(996, 116, 'slider_image3', '115'),
(997, 116, '_slider_image3', 'field_5dfcc044a23dc'),
(998, 117, '_wp_attached_file', '2019/12/logo-5-150x47-1.png'),
(999, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:47;s:4:"file";s:27:"2019/12/logo-5-150x47-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"logo-5-150x47-1-100x47.png";s:5:"width";i:100;s:6:"height";i:47;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"logo-5-150x47-1-100x47.png";s:5:"width";i:100;s:6:"height";i:47;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1000, 118, '_wp_attached_file', '2019/12/cropped-logo-5-150x47-1.png'),
(1001, 118, '_wp_attachment_context', 'site-icon'),
(1002, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:35:"2019/12/cropped-logo-5-150x47-1.png";s:5:"sizes";a:10:{s:6:"medium";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"cropped-logo-5-150x47-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:35:"cropped-logo-5-150x47-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:33:"cropped-logo-5-150x47-1-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1003, 119, '_wp_trash_meta_status', 'publish'),
(1004, 119, '_wp_trash_meta_time', '1576845506'),
(1005, 120, '_wp_attached_file', '2019/12/logo-6.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1006, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:133;s:6:"height";i:42;s:4:"file";s:18:"2019/12/logo-6.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"logo-6-100x42.png";s:5:"width";i:100;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"logo-6-100x42.png";s:5:"width";i:100;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1007, 124, '_wp_attached_file', '2019/12/coin-1.png'),
(1008, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:90;s:6:"height";i:88;s:4:"file";s:18:"2019/12/coin-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1009, 125, '_wp_attached_file', '2019/12/chat-2.png'),
(1010, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:96;s:4:"file";s:18:"2019/12/chat-2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1011, 59, 'service_icon1', '81'),
(1012, 59, '_service_icon1', 'field_5dfccf0e02ae4'),
(1013, 59, 'service_icon2', '124'),
(1014, 59, '_service_icon2', 'field_5dfccf2102ae5'),
(1015, 59, 'service_icon3', '125'),
(1016, 59, '_service_icon3', 'field_5dfccf2b02ae6'),
(1017, 126, 'slider_image1', '113'),
(1018, 126, '_slider_image1', 'field_5dfcc028a23da'),
(1019, 126, 'slider_image2', '114'),
(1020, 126, '_slider_image2', 'field_5dfcc03ba23db'),
(1021, 126, 'slider_image3', '115'),
(1022, 126, '_slider_image3', 'field_5dfcc044a23dc'),
(1023, 126, 'service_icon1', '81'),
(1024, 126, '_service_icon1', 'field_5dfccf0e02ae4'),
(1025, 126, 'service_icon2', '124'),
(1026, 126, '_service_icon2', 'field_5dfccf2102ae5'),
(1027, 126, 'service_icon3', '125'),
(1028, 126, '_service_icon3', 'field_5dfccf2b02ae6'),
(1029, 131, '_wp_attached_file', '2019/12/f-box-1-1.jpg'),
(1030, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:558;s:6:"height";i:413;s:4:"file";s:21:"2019/12/f-box-1-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:21:"f-box-1-1-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"f-box-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"f-box-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"f-box-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"f-box-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"f-box-1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1031, 132, '_wp_attached_file', '2019/12/f-box-2-1.jpg'),
(1032, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:558;s:6:"height";i:413;s:4:"file";s:21:"2019/12/f-box-2-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:21:"f-box-2-1-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"f-box-2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"f-box-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"f-box-2-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"f-box-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"f-box-2-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1033, 133, '_wp_attached_file', '2019/12/f-box-3-1.jpg'),
(1034, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:558;s:6:"height";i:862;s:4:"file";s:21:"2019/12/f-box-3-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:21:"f-box-3-1-194x300.jpg";s:5:"width";i:194;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"f-box-3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"f-box-3-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"f-box-3-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"f-box-3-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"f-box-3-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1035, 59, 'banner_image1', '131'),
(1036, 59, '_banner_image1', 'field_5dfcd00007320'),
(1037, 59, 'banner_image2', '132'),
(1038, 59, '_banner_image2', 'field_5dfcd01107321'),
(1039, 59, 'banner_image3', '133'),
(1040, 59, '_banner_image3', 'field_5dfcd01d07322'),
(1041, 134, 'slider_image1', '113'),
(1042, 134, '_slider_image1', 'field_5dfcc028a23da'),
(1043, 134, 'slider_image2', '114'),
(1044, 134, '_slider_image2', 'field_5dfcc03ba23db'),
(1045, 134, 'slider_image3', '115'),
(1046, 134, '_slider_image3', 'field_5dfcc044a23dc'),
(1047, 134, 'service_icon1', '81'),
(1048, 134, '_service_icon1', 'field_5dfccf0e02ae4'),
(1049, 134, 'service_icon2', '124'),
(1050, 134, '_service_icon2', 'field_5dfccf2102ae5'),
(1051, 134, 'service_icon3', '125'),
(1052, 134, '_service_icon3', 'field_5dfccf2b02ae6'),
(1053, 134, 'banner_image1', '131'),
(1054, 134, '_banner_image1', 'field_5dfcd00007320'),
(1055, 134, 'banner_image2', '132'),
(1056, 134, '_banner_image2', 'field_5dfcd01107321'),
(1057, 134, 'banner_image3', '133'),
(1058, 134, '_banner_image3', 'field_5dfcd01d07322'),
(1059, 136, '_wp_attached_file', '2019/12/lookbok-1.jpg'),
(1060, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:802;s:6:"height";i:637;s:4:"file";s:21:"2019/12/lookbok-1.jpg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:21:"lookbok-1-300x238.jpg";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"lookbok-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"lookbok-1-768x610.jpg";s:5:"width";i:768;s:6:"height";i:610;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"lookbok-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"lookbok-1-600x477.jpg";s:5:"width";i:600;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"lookbok-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"lookbok-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"lookbok-1-600x477.jpg";s:5:"width";i:600;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"lookbok-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1061, 59, 'lookbook_image', '136'),
(1062, 59, '_lookbook_image', 'field_5dfcd084d1c2a'),
(1063, 137, 'slider_image1', '113'),
(1064, 137, '_slider_image1', 'field_5dfcc028a23da'),
(1065, 137, 'slider_image2', '114'),
(1066, 137, '_slider_image2', 'field_5dfcc03ba23db'),
(1067, 137, 'slider_image3', '115'),
(1068, 137, '_slider_image3', 'field_5dfcc044a23dc'),
(1069, 137, 'service_icon1', '81'),
(1070, 137, '_service_icon1', 'field_5dfccf0e02ae4'),
(1071, 137, 'service_icon2', '124'),
(1072, 137, '_service_icon2', 'field_5dfccf2102ae5'),
(1073, 137, 'service_icon3', '125'),
(1074, 137, '_service_icon3', 'field_5dfccf2b02ae6'),
(1075, 137, 'banner_image1', '131'),
(1076, 137, '_banner_image1', 'field_5dfcd00007320'),
(1077, 137, 'banner_image2', '132'),
(1078, 137, '_banner_image2', 'field_5dfcd01107321'),
(1079, 137, 'banner_image3', '133'),
(1080, 137, '_banner_image3', 'field_5dfcd01d07322'),
(1081, 137, 'lookbook_image', '136'),
(1082, 137, '_lookbook_image', 'field_5dfcd084d1c2a'),
(1083, 59, 'lookbook_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1084, 59, '_lookbook_text', 'field_5dfcd0cdd45eb'),
(1085, 139, 'slider_image1', '113'),
(1086, 139, '_slider_image1', 'field_5dfcc028a23da'),
(1087, 139, 'slider_image2', '114'),
(1088, 139, '_slider_image2', 'field_5dfcc03ba23db'),
(1089, 139, 'slider_image3', '115'),
(1090, 139, '_slider_image3', 'field_5dfcc044a23dc'),
(1091, 139, 'service_icon1', '81'),
(1092, 139, '_service_icon1', 'field_5dfccf0e02ae4'),
(1093, 139, 'service_icon2', '124'),
(1094, 139, '_service_icon2', 'field_5dfccf2102ae5'),
(1095, 139, 'service_icon3', '125'),
(1096, 139, '_service_icon3', 'field_5dfccf2b02ae6'),
(1097, 139, 'banner_image1', '131'),
(1098, 139, '_banner_image1', 'field_5dfcd00007320'),
(1099, 139, 'banner_image2', '132'),
(1100, 139, '_banner_image2', 'field_5dfcd01107321'),
(1101, 139, 'banner_image3', '133'),
(1102, 139, '_banner_image3', 'field_5dfcd01d07322'),
(1103, 139, 'lookbook_image', '136'),
(1104, 139, '_lookbook_image', 'field_5dfcd084d1c2a'),
(1105, 139, 'lookbook_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1106, 139, '_lookbook_text', 'field_5dfcd0cdd45eb'),
(1107, 144, '_wp_attached_file', '2019/12/logo-1-2.png'),
(1108, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:116;s:6:"height";i:42;s:4:"file";s:20:"2019/12/logo-1-2.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"logo-1-2-100x42.png";s:5:"width";i:100;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"logo-1-2-100x42.png";s:5:"width";i:100;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1109, 145, '_wp_attached_file', '2019/12/logo-2-2.png'),
(1110, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:63;s:4:"file";s:20:"2019/12/logo-2-2.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"logo-2-2-100x63.png";s:5:"width";i:100;s:6:"height";i:63;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"logo-2-2-100x63.png";s:5:"width";i:100;s:6:"height";i:63;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1111, 146, '_wp_attached_file', '2019/12/logo-2-3.png'),
(1112, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:63;s:4:"file";s:20:"2019/12/logo-2-3.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"logo-2-3-100x63.png";s:5:"width";i:100;s:6:"height";i:63;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"logo-2-3-100x63.png";s:5:"width";i:100;s:6:"height";i:63;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1113, 147, '_wp_attached_file', '2019/12/logo-3-1.png'),
(1114, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:178;s:6:"height";i:33;s:4:"file";s:20:"2019/12/logo-3-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"logo-3-1-150x33.png";s:5:"width";i:150;s:6:"height";i:33;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"logo-3-1-100x33.png";s:5:"width";i:100;s:6:"height";i:33;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"logo-3-1-100x33.png";s:5:"width";i:100;s:6:"height";i:33;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1115, 59, 'logo_icon1', '117'),
(1116, 59, '_logo_icon1', 'field_5dfcd1151e8e8'),
(1117, 59, 'logo_icon2', '144'),
(1118, 59, '_logo_icon2', 'field_5dfcd1321e8e9'),
(1119, 59, 'logo_icon3', '146'),
(1120, 59, '_logo_icon3', 'field_5dfcd13c1e8ea'),
(1121, 59, 'logo_icon4', '147'),
(1122, 59, '_logo_icon4', 'field_5dfcd1481e8eb'),
(1123, 148, 'slider_image1', '113'),
(1124, 148, '_slider_image1', 'field_5dfcc028a23da'),
(1125, 148, 'slider_image2', '114'),
(1126, 148, '_slider_image2', 'field_5dfcc03ba23db'),
(1127, 148, 'slider_image3', '115'),
(1128, 148, '_slider_image3', 'field_5dfcc044a23dc'),
(1129, 148, 'service_icon1', '81'),
(1130, 148, '_service_icon1', 'field_5dfccf0e02ae4'),
(1131, 148, 'service_icon2', '124'),
(1132, 148, '_service_icon2', 'field_5dfccf2102ae5'),
(1133, 148, 'service_icon3', '125'),
(1134, 148, '_service_icon3', 'field_5dfccf2b02ae6'),
(1135, 148, 'banner_image1', '131'),
(1136, 148, '_banner_image1', 'field_5dfcd00007320'),
(1137, 148, 'banner_image2', '132'),
(1138, 148, '_banner_image2', 'field_5dfcd01107321'),
(1139, 148, 'banner_image3', '133'),
(1140, 148, '_banner_image3', 'field_5dfcd01d07322'),
(1141, 148, 'lookbook_image', '136'),
(1142, 148, '_lookbook_image', 'field_5dfcd084d1c2a'),
(1143, 148, 'lookbook_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1144, 148, '_lookbook_text', 'field_5dfcd0cdd45eb'),
(1145, 148, 'logo_icon1', '117'),
(1146, 148, '_logo_icon1', 'field_5dfcd1151e8e8'),
(1147, 148, 'logo_icon2', '144'),
(1148, 148, '_logo_icon2', 'field_5dfcd1321e8e9'),
(1149, 148, 'logo_icon3', '146'),
(1150, 148, '_logo_icon3', 'field_5dfcd13c1e8ea'),
(1151, 148, 'logo_icon4', '147'),
(1152, 148, '_logo_icon4', 'field_5dfcd1481e8eb'),
(1153, 149, '_edit_last', '1'),
(1154, 149, '_edit_lock', '1576850329:1'),
(1155, 60, '_edit_last', '1'),
(1156, 60, 'location1', '1525 Awesome Lane,'),
(1157, 60, '_location1', 'field_5dfcd3c204ca7'),
(1158, 60, 'location2', 'Los Angeles, CA'),
(1159, 60, '_location2', 'field_5dfcd3cfe8306'),
(1160, 60, 'phone1', '+1 (603)535-4592'),
(1161, 60, '_phone1', 'field_5dfcd3e8e8307'),
(1162, 60, 'phone2', '+1 (603)535-4592'),
(1163, 60, '_phone2', 'field_5dfcd3f2e8308'),
(1164, 60, 'e-mail1', 'contact@violetstore.com'),
(1165, 60, '_e-mail1', 'field_5dfcd3fce8309'),
(1166, 60, 'email2', 'contact@violetstore.com'),
(1167, 60, '_email2', 'field_5dfcd402e830a'),
(1168, 156, 'location1', '1525 Awesome Lane,'),
(1169, 156, '_location1', 'field_5dfcd3c204ca7'),
(1170, 156, 'location2', 'Los Angeles, CA'),
(1171, 156, '_location2', 'field_5dfcd3cfe8306'),
(1172, 156, 'phone1', '+1 (603)535-4592'),
(1173, 156, '_phone1', 'field_5dfcd3e8e8307'),
(1174, 156, 'phone2', '+1 (603)535-4592'),
(1175, 156, '_phone2', 'field_5dfcd3f2e8308'),
(1176, 156, 'e-mail1', 'contact@violetstore.com'),
(1177, 156, '_e-mail1', 'field_5dfcd3fce8309'),
(1178, 156, 'email2', 'contact@violetstore.com'),
(1179, 156, '_email2', 'field_5dfcd402e830a'),
(1180, 157, '_order_key', 'wc_order_FZaqJsiD1Gtlx'),
(1181, 157, '_customer_user', '0'),
(1182, 157, '_payment_method', 'cod'),
(1183, 157, '_payment_method_title', 'Cash on delivery'),
(1184, 157, '_customer_ip_address', '::1'),
(1185, 157, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'),
(1186, 157, '_created_via', 'checkout'),
(1187, 157, '_cart_hash', 'f593ba596301b7ff0a17feea803109ee'),
(1188, 157, '_billing_first_name', 'eargfae'),
(1189, 157, '_billing_last_name', 'aergfaesf'),
(1190, 157, '_billing_address_1', '1232 srfgwergwerg'),
(1191, 157, '_billing_city', 'sgdgr'),
(1192, 157, '_billing_postcode', '4534535'),
(1193, 157, '_billing_phone', '234234'),
(1194, 157, '_order_currency', 'UAH'),
(1195, 157, '_cart_discount', '0'),
(1196, 157, '_cart_discount_tax', '0'),
(1197, 157, '_order_shipping', '0.00'),
(1198, 157, '_order_shipping_tax', '0'),
(1199, 157, '_order_tax', '0'),
(1200, 157, '_order_total', '18.00'),
(1201, 157, '_order_version', '3.8.1'),
(1202, 157, '_prices_include_tax', 'no'),
(1203, 157, '_billing_address_index', 'eargfae aergfaesf  1232 srfgwergwerg  sgdgr  4534535   234234'),
(1204, 157, '_shipping_address_index', '        '),
(1205, 157, 'is_vat_exempt', 'no'),
(1206, 157, '_download_permissions_granted', 'yes'),
(1207, 157, '_recorded_sales', 'yes'),
(1208, 157, '_recorded_coupon_usage_counts', 'yes'),
(1209, 157, '_order_stock_reduced', 'yes'),
(1210, 159, '_action_manager_schedule', 'O:30:"ActionScheduler_SimpleSchedule":1:{s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1577522307;}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-20 09:21:38', '2019-12-20 09:21:38', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-12-20 09:21:38', '2019-12-20 09:21:38', '', 0, 'http://localhost/wordpress5/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-20 09:21:38', '2019-12-20 09:21:38', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/wordpress5/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-12-20 09:21:38', '2019-12-20 09:21:38', '', 0, 'http://localhost/wordpress5/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-20 09:21:38', '2019-12-20 09:21:38', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress5.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-20 09:21:38', '2019-12-20 09:21:38', '', 0, 'http://localhost/wordpress5/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-12-20 09:26:53', '2019-12-20 09:26:53', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-12-20 09:26:53', '2019-12-20 09:26:53', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2019-12-20 09:27:42', '2019-12-20 09:27:42', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-12-20 09:27:42', '2019-12-20 09:27:42', '', 0, 'http://localhost/wordpress5/index.php/shop/', 0, 'page', '', 0),
(7, 1, '2019-12-20 09:27:42', '2019-12-20 09:27:42', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-12-20 09:27:42', '2019-12-20 09:27:42', '', 0, 'http://localhost/wordpress5/index.php/cart/', 0, 'page', '', 0),
(8, 1, '2019-12-20 09:27:42', '2019-12-20 09:27:42', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-12-20 09:27:42', '2019-12-20 09:27:42', '', 0, 'http://localhost/wordpress5/index.php/checkout/', 0, 'page', '', 0),
(9, 1, '2019-12-20 09:27:42', '2019-12-20 09:27:42', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-12-20 09:27:42', '2019-12-20 09:27:42', '', 0, 'http://localhost/wordpress5/index.php/my-account/', 0, 'page', '', 0),
(10, 0, '2019-12-20 11:30:28', '2019-12-20 11:30:28', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dfcb0ff073ba7.03249013-EUX3UtxQu5aolcTdQnFahj9nEc7MC048', '', '', '2019-12-20 11:31:11', '2019-12-20 11:31:11', '', 0, 'http://localhost/wordpress5/?post_type=scheduled-action&#038;p=10', 0, 'scheduled-action', '', 3),
(12, 1, '2019-12-20 11:31:19', '2019-12-20 11:31:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2019-12-20 11:32:21', '2019-12-20 11:32:21', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-44/', 0, 'product', '', 0),
(13, 1, '2019-12-20 11:31:19', '2019-12-20 11:31:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2019-12-20 11:32:21', '2019-12-20 11:32:21', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-45/', 0, 'product', '', 0),
(14, 1, '2019-12-20 11:31:19', '2019-12-20 11:31:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2019-12-20 11:31:40', '2019-12-20 11:31:40', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-46/', 0, 'product', '', 0),
(15, 1, '2019-12-20 11:31:19', '2019-12-20 11:31:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2019-12-20 11:31:43', '2019-12-20 11:31:43', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-47/', 0, 'product', '', 0),
(16, 1, '2019-12-20 11:31:20', '2019-12-20 11:31:20', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie', '', '', '2019-12-20 11:31:45', '2019-12-20 11:31:45', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-48/', 0, 'product', '', 0),
(17, 1, '2019-12-20 11:31:20', '2019-12-20 11:31:20', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'publish', 'open', 'closed', '', 'belt', '', '', '2019-12-20 11:31:48', '2019-12-20 11:31:48', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-58/', 0, 'product', '', 0),
(18, 1, '2019-12-20 11:31:20', '2019-12-20 11:31:20', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'publish', 'open', 'closed', '', 'cap', '', '', '2019-12-20 11:31:51', '2019-12-20 11:31:51', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-60/', 0, 'product', '', 0),
(19, 1, '2019-12-20 11:31:21', '2019-12-20 11:31:21', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2019-12-20 11:31:53', '2019-12-20 11:31:53', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-62/', 0, 'product', '', 0),
(20, 1, '2019-12-20 11:31:21', '2019-12-20 11:31:21', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2019-12-20 11:31:56', '2019-12-20 11:31:56', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-64/', 0, 'product', '', 0),
(21, 1, '2019-12-20 11:31:21', '2019-12-20 11:31:21', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2019-12-20 11:31:58', '2019-12-20 11:31:58', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-66/', 0, 'product', '', 0),
(22, 1, '2019-12-20 11:31:21', '2019-12-20 11:31:21', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', 'This is a simple product.', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2019-12-20 11:32:01', '2019-12-20 11:32:01', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-68/', 0, 'product', '', 0),
(23, 1, '2019-12-20 11:31:22', '2019-12-20 11:31:22', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'polo', '', '', '2019-12-20 11:32:03', '2019-12-20 11:32:03', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-70/', 0, 'product', '', 0),
(24, 1, '2019-12-20 11:31:22', '2019-12-20 11:31:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'album', '', '', '2019-12-20 11:32:05', '2019-12-20 11:32:05', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-73/', 0, 'product', '', 0),
(25, 1, '2019-12-20 11:31:22', '2019-12-20 11:31:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'single', '', '', '2019-12-20 11:32:08', '2019-12-20 11:32:08', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-75/', 0, 'product', '', 0),
(26, 1, '2019-12-20 11:31:22', '2019-12-20 11:31:22', '', 'V-Neck T-Shirt - Red', 'Color: Red', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-red', '', '', '2019-12-20 11:32:09', '2019-12-20 11:32:09', '', 12, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-76/', 0, 'product_variation', '', 0),
(27, 1, '2019-12-20 11:31:23', '2019-12-20 11:31:23', '', 'V-Neck T-Shirt - Green', 'Color: Green', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-green', '', '', '2019-12-20 11:32:10', '2019-12-20 11:32:10', '', 12, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-77/', 0, 'product_variation', '', 0),
(28, 1, '2019-12-20 11:31:23', '2019-12-20 11:31:23', '', 'V-Neck T-Shirt - Blue', 'Color: Blue', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-blue', '', '', '2019-12-20 11:32:10', '2019-12-20 11:32:10', '', 12, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-78/', 0, 'product_variation', '', 0),
(29, 1, '2019-12-20 11:31:23', '2019-12-20 11:31:23', '', 'Hoodie - Red, No', 'Color: Red, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-red-no', '', '', '2019-12-20 11:32:10', '2019-12-20 11:32:10', '', 13, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-79/', 1, 'product_variation', '', 0),
(30, 1, '2019-12-20 11:31:23', '2019-12-20 11:31:23', '', 'Hoodie - Green, No', 'Color: Green, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-green-no', '', '', '2019-12-20 11:32:10', '2019-12-20 11:32:10', '', 13, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-80/', 2, 'product_variation', '', 0),
(31, 1, '2019-12-20 11:31:24', '2019-12-20 11:31:24', '', 'Hoodie - Blue, No', 'Color: Blue, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-blue-no', '', '', '2019-12-20 11:32:10', '2019-12-20 11:32:10', '', 13, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-81/', 3, 'product_variation', '', 0),
(32, 1, '2019-12-20 11:31:24', '2019-12-20 11:31:24', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt-with-logo', '', '', '2019-12-20 11:32:12', '2019-12-20 11:32:12', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-83/', 0, 'product', '', 0),
(33, 1, '2019-12-20 11:31:24', '2019-12-20 11:31:24', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie-with-logo', '', '', '2019-12-20 11:32:15', '2019-12-20 11:32:15', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-85/', 0, 'product', '', 0),
(34, 1, '2019-12-20 11:31:24', '2019-12-20 11:31:24', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'publish', 'open', 'closed', '', 'logo-collection', '', '', '2019-12-20 11:32:17', '2019-12-20 11:32:17', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-87/', 0, 'product', '', 0),
(35, 1, '2019-12-20 11:31:25', '2019-12-20 11:31:25', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'publish', 'open', 'closed', '', 'wordpress-pennant', '', '', '2019-12-20 11:32:20', '2019-12-20 11:32:20', '', 0, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-89/', 0, 'product', '', 0),
(36, 1, '2019-12-20 11:31:25', '2019-12-20 11:31:25', '', 'Hoodie - Blue, Yes', 'Color: Blue, Logo: Yes', 'publish', 'closed', 'closed', '', 'hoodie-blue-yes', '', '', '2019-12-20 11:32:21', '2019-12-20 11:32:21', '', 13, 'http://localhost/wordpress5/index.php/product/import-placeholder-for-90/', 0, 'product_variation', '', 0),
(37, 1, '2019-12-20 11:31:28', '2019-12-20 11:31:28', '', 'vneck-tee-2-1.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-1-jpg', '', '', '2019-12-20 11:31:28', '2019-12-20 11:31:28', '', 12, 'http://localhost/wordpress5/wp-content/uploads/2019/12/vneck-tee-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-12-20 11:31:29', '2019-12-20 11:31:29', '', 'vnech-tee-green-1-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-1-jpg', '', '', '2019-12-20 11:31:29', '2019-12-20 11:31:29', '', 12, 'http://localhost/wordpress5/wp-content/uploads/2019/12/vnech-tee-green-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-12-20 11:31:31', '2019-12-20 11:31:31', '', 'vnech-tee-blue-1-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-1-jpg', '', '', '2019-12-20 11:31:31', '2019-12-20 11:31:31', '', 12, 'http://localhost/wordpress5/wp-content/uploads/2019/12/vnech-tee-blue-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-12-20 11:31:34', '2019-12-20 11:31:34', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2019-12-20 11:31:34', '2019-12-20 11:31:34', '', 13, 'http://localhost/wordpress5/wp-content/uploads/2019/12/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-12-20 11:31:35', '2019-12-20 11:31:35', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2019-12-20 11:31:35', '2019-12-20 11:31:35', '', 13, 'http://localhost/wordpress5/wp-content/uploads/2019/12/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-12-20 11:31:37', '2019-12-20 11:31:37', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2019-12-20 11:31:37', '2019-12-20 11:31:37', '', 13, 'http://localhost/wordpress5/wp-content/uploads/2019/12/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-12-20 11:31:39', '2019-12-20 11:31:39', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2019-12-20 11:31:39', '2019-12-20 11:31:39', '', 13, 'http://localhost/wordpress5/wp-content/uploads/2019/12/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-12-20 11:31:42', '2019-12-20 11:31:42', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2019-12-20 11:31:42', '2019-12-20 11:31:42', '', 15, 'http://localhost/wordpress5/wp-content/uploads/2019/12/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-12-20 11:31:44', '2019-12-20 11:31:44', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2019-12-20 11:31:44', '2019-12-20 11:31:44', '', 16, 'http://localhost/wordpress5/wp-content/uploads/2019/12/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-12-20 11:31:48', '2019-12-20 11:31:48', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2019-12-20 11:31:48', '2019-12-20 11:31:48', '', 17, 'http://localhost/wordpress5/wp-content/uploads/2019/12/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-12-20 11:31:50', '2019-12-20 11:31:50', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2019-12-20 11:31:50', '2019-12-20 11:31:50', '', 18, 'http://localhost/wordpress5/wp-content/uploads/2019/12/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-12-20 11:31:53', '2019-12-20 11:31:53', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2019-12-20 11:31:53', '2019-12-20 11:31:53', '', 19, 'http://localhost/wordpress5/wp-content/uploads/2019/12/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-12-20 11:31:55', '2019-12-20 11:31:55', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg', '', '', '2019-12-20 11:31:55', '2019-12-20 11:31:55', '', 20, 'http://localhost/wordpress5/wp-content/uploads/2019/12/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-12-20 11:31:58', '2019-12-20 11:31:58', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg', '', '', '2019-12-20 11:31:58', '2019-12-20 11:31:58', '', 21, 'http://localhost/wordpress5/wp-content/uploads/2019/12/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-12-20 11:32:00', '2019-12-20 11:32:00', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg', '', '', '2019-12-20 11:32:00', '2019-12-20 11:32:00', '', 22, 'http://localhost/wordpress5/wp-content/uploads/2019/12/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-12-20 11:32:02', '2019-12-20 11:32:02', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg', '', '', '2019-12-20 11:32:02', '2019-12-20 11:32:02', '', 23, 'http://localhost/wordpress5/wp-content/uploads/2019/12/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-12-20 11:32:05', '2019-12-20 11:32:05', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2019-12-20 11:32:05', '2019-12-20 11:32:05', '', 24, 'http://localhost/wordpress5/wp-content/uploads/2019/12/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-12-20 11:32:07', '2019-12-20 11:32:07', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2019-12-20 11:32:07', '2019-12-20 11:32:07', '', 25, 'http://localhost/wordpress5/wp-content/uploads/2019/12/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-12-20 11:32:11', '2019-12-20 11:32:11', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg', '', '', '2019-12-20 11:32:11', '2019-12-20 11:32:11', '', 32, 'http://localhost/wordpress5/wp-content/uploads/2019/12/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-12-20 11:32:14', '2019-12-20 11:32:14', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg', '', '', '2019-12-20 11:32:14', '2019-12-20 11:32:14', '', 33, 'http://localhost/wordpress5/wp-content/uploads/2019/12/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-12-20 11:32:17', '2019-12-20 11:32:17', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg', '', '', '2019-12-20 11:32:17', '2019-12-20 11:32:17', '', 34, 'http://localhost/wordpress5/wp-content/uploads/2019/12/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-12-20 11:32:19', '2019-12-20 11:32:19', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg', '', '', '2019-12-20 11:32:19', '2019-12-20 11:32:19', '', 35, 'http://localhost/wordpress5/wp-content/uploads/2019/12/pennant-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-12-20 11:35:47', '2019-12-20 11:35:47', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-12-20 13:51:27', '2019-12-20 13:51:27', '', 0, 'http://localhost/wordpress5/?page_id=59', 0, 'page', '', 0),
(60, 1, '2019-12-20 11:35:44', '2019-12-20 11:35:44', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-20 14:02:42', '2019-12-20 14:02:42', '', 0, 'http://localhost/wordpress5/?page_id=60', 0, 'page', '', 0),
(61, 1, '2019-12-20 11:35:44', '2019-12-20 11:35:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-20 11:35:44', '2019-12-20 11:35:44', '', 60, 'http://localhost/wordpress5/index.php/2019/12/20/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-12-20 11:35:47', '2019-12-20 11:35:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-12-20 11:35:47', '2019-12-20 11:35:47', '', 59, 'http://localhost/wordpress5/index.php/2019/12/20/59-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-12-20 12:17:30', '2019-12-20 12:17:30', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2019-12-20 12:19:08', '2019-12-20 12:19:08', '', 0, 'http://localhost/wordpress5/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2019-12-20 12:17:30', '2019-12-20 12:17:30', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2019-12-20 12:19:08', '2019-12-20 12:19:08', '', 0, 'http://localhost/wordpress5/?p=65', 3, 'nav_menu_item', '', 0),
(66, 1, '2019-12-20 12:17:30', '2019-12-20 12:17:30', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2019-12-20 12:19:08', '2019-12-20 12:19:08', '', 0, 'http://localhost/wordpress5/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2019-12-20 12:17:30', '2019-12-20 12:17:30', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2019-12-20 12:19:08', '2019-12-20 12:19:08', '', 0, 'http://localhost/wordpress5/?p=67', 5, 'nav_menu_item', '', 0),
(69, 1, '2019-12-20 12:17:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-20 12:17:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress5/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2019-12-20 12:17:30', '2019-12-20 12:17:30', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2019-12-20 12:19:08', '2019-12-20 12:19:08', '', 0, 'http://localhost/wordpress5/?p=70', 2, 'nav_menu_item', '', 0),
(71, 1, '2019-12-20 12:19:54', '2019-12-20 12:19:54', '<!-- wp:paragraph -->\n<p>[wc_reg_form]</p>\n<!-- /wp:paragraph -->', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2019-12-20 12:19:54', '2019-12-20 12:19:54', '', 0, 'http://localhost/wordpress5/?page_id=71', 0, 'page', '', 0),
(72, 1, '2019-12-20 12:19:54', '2019-12-20 12:19:54', '<!-- wp:paragraph -->\n<p>[wc_reg_form]</p>\n<!-- /wp:paragraph -->', 'Register', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-20 12:19:54', '2019-12-20 12:19:54', '', 71, 'http://localhost/wordpress5/index.php/2019/12/20/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-12-20 12:20:10', '2019-12-20 12:20:10', '<!-- wp:paragraph -->\n<p>[wc_login_form]</p>\n<!-- /wp:paragraph -->', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2019-12-20 12:20:25', '2019-12-20 12:20:25', '', 0, 'http://localhost/wordpress5/?page_id=73', 0, 'page', '', 0),
(74, 1, '2019-12-20 12:20:10', '2019-12-20 12:20:10', '', 'Login', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-12-20 12:20:10', '2019-12-20 12:20:10', '', 73, 'http://localhost/wordpress5/index.php/2019/12/20/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-12-20 12:20:25', '2019-12-20 12:20:25', '<!-- wp:paragraph -->\n<p>[wc_login_form]</p>\n<!-- /wp:paragraph -->', 'Login', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-12-20 12:20:25', '2019-12-20 12:20:25', '', 73, 'http://localhost/wordpress5/index.php/2019/12/20/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-12-20 12:21:27', '2019-12-20 12:21:27', '', 'Sign In', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2019-12-20 12:21:27', '2019-12-20 12:21:27', '', 0, 'http://localhost/wordpress5/?p=76', 2, 'nav_menu_item', '', 0),
(77, 1, '2019-12-20 12:21:27', '2019-12-20 12:21:27', '', 'Sign Up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2019-12-20 12:21:27', '2019-12-20 12:21:27', '', 0, 'http://localhost/wordpress5/?p=77', 1, 'nav_menu_item', '', 0),
(78, 1, '2019-12-20 12:22:49', '2019-12-20 12:22:49', '', 'voucher', '', 'inherit', 'open', 'closed', '', 'voucher', '', '', '2019-12-20 12:22:49', '2019-12-20 12:22:49', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/voucher-1.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2019-12-20 12:23:17', '2019-12-20 12:23:17', '', 'tshirt-2-600x600', '', 'inherit', 'open', 'closed', '', 'tshirt-2-600x600', '', '', '2019-12-20 12:23:17', '2019-12-20 12:23:17', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/tshirt-2-600x600-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-12-20 12:23:33', '2019-12-20 12:23:33', '', 'sales', '', 'inherit', 'open', 'closed', '', 'sales', '', '', '2019-12-20 12:23:33', '2019-12-20 12:23:33', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/sales-1.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2019-12-20 12:24:05', '2019-12-20 12:24:05', '', 'f-delivery', '', 'inherit', 'open', 'closed', '', 'f-delivery', '', '', '2019-12-20 13:41:51', '2019-12-20 13:41:51', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/f-delivery-2.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2019-12-20 12:24:50', '2019-12-20 12:24:50', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nviolet "[your-subject]"\nviolet <sinevor13@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on violet (http://localhost/wordpress5)\nsinevor13@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nviolet "[your-subject]"\nviolet <sinevor13@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on violet (http://localhost/wordpress5)\n[your-email]\nReply-To: sinevor13@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-12-20 12:24:50', '2019-12-20 12:24:50', '', 0, 'http://localhost/wordpress5/?post_type=wpcf7_contact_form&p=82', 0, 'wpcf7_contact_form', '', 0),
(84, 1, '2019-12-20 12:27:16', '2019-12-20 12:27:16', '', 'delivery', '', 'inherit', 'open', 'closed', '', 'delivery', '', '', '2019-12-20 12:27:16', '2019-12-20 12:27:16', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/delivery-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2019-12-20 12:28:18', '2019-12-20 12:28:18', '', 'search', '', 'inherit', 'open', 'closed', '', 'search', '', '', '2019-12-20 12:28:18', '2019-12-20 12:28:18', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/search-1.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2019-12-20 12:28:39', '2019-12-20 12:28:39', '', 'man', '', 'inherit', 'open', 'closed', '', 'man', '', '', '2019-12-20 12:28:39', '2019-12-20 12:28:39', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/man-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2019-12-20 12:32:12', '2019-12-20 12:32:12', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2019-12-20 12:32:16', '2019-12-20 12:32:16', '', 0, 'http://localhost/wordpress5/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2019-12-20 12:32:12', '2019-12-20 12:32:12', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2019-12-20 12:32:16', '2019-12-20 12:32:16', '', 0, 'http://localhost/wordpress5/?p=88', 3, 'nav_menu_item', '', 0),
(89, 1, '2019-12-20 12:32:12', '2019-12-20 12:32:12', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2019-12-20 12:32:16', '2019-12-20 12:32:16', '', 0, 'http://localhost/wordpress5/?p=89', 4, 'nav_menu_item', '', 0),
(90, 1, '2019-12-20 12:32:12', '2019-12-20 12:32:12', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-12-20 12:32:16', '2019-12-20 12:32:16', '', 0, 'http://localhost/wordpress5/?p=90', 5, 'nav_menu_item', '', 0),
(91, 1, '2019-12-20 12:32:12', '2019-12-20 12:32:12', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2019-12-20 12:32:16', '2019-12-20 12:32:16', '', 0, 'http://localhost/wordpress5/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2019-12-20 12:33:07', '2019-12-20 12:33:07', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2019-12-20 12:33:07', '2019-12-20 12:33:07', '', 16, 'http://localhost/wordpress5/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2019-12-20 12:33:07', '2019-12-20 12:33:07', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2019-12-20 12:33:07', '2019-12-20 12:33:07', '', 16, 'http://localhost/wordpress5/?p=93', 2, 'nav_menu_item', '', 0),
(94, 1, '2019-12-20 12:33:07', '2019-12-20 12:33:07', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2019-12-20 12:33:07', '2019-12-20 12:33:07', '', 16, 'http://localhost/wordpress5/?p=94', 3, 'nav_menu_item', '', 0),
(95, 1, '2019-12-20 12:33:07', '2019-12-20 12:33:07', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2019-12-20 12:33:07', '2019-12-20 12:33:07', '', 0, 'http://localhost/wordpress5/?p=95', 4, 'nav_menu_item', '', 0),
(96, 1, '2019-12-20 12:33:07', '2019-12-20 12:33:07', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2019-12-20 12:33:07', '2019-12-20 12:33:07', '', 0, 'http://localhost/wordpress5/?p=96', 5, 'nav_menu_item', '', 0),
(97, 1, '2019-12-20 12:33:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-20 12:33:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress5/?p=97', 1, 'nav_menu_item', '', 0),
(98, 1, '2019-12-20 12:33:57', '2019-12-20 12:33:57', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2019-12-20 12:33:57', '2019-12-20 12:33:57', '', 0, 'http://localhost/wordpress5/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2019-12-20 12:33:57', '2019-12-20 12:33:57', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2019-12-20 12:33:57', '2019-12-20 12:33:57', '', 16, 'http://localhost/wordpress5/?p=99', 2, 'nav_menu_item', '', 0),
(100, 1, '2019-12-20 12:33:57', '2019-12-20 12:33:57', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2019-12-20 12:33:57', '2019-12-20 12:33:57', '', 16, 'http://localhost/wordpress5/?p=100', 3, 'nav_menu_item', '', 0),
(101, 1, '2019-12-20 12:33:57', '2019-12-20 12:33:57', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2019-12-20 12:33:57', '2019-12-20 12:33:57', '', 16, 'http://localhost/wordpress5/?p=101', 4, 'nav_menu_item', '', 0),
(102, 1, '2019-12-20 12:33:57', '2019-12-20 12:33:57', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2019-12-20 12:33:57', '2019-12-20 12:33:57', '', 0, 'http://localhost/wordpress5/?p=102', 5, 'nav_menu_item', '', 0),
(103, 1, '2019-12-20 12:34:43', '2019-12-20 12:34:43', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2019-12-20 12:34:43', '2019-12-20 12:34:43', '', 0, 'http://localhost/wordpress5/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2019-12-20 12:34:43', '2019-12-20 12:34:43', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2019-12-20 12:34:43', '2019-12-20 12:34:43', '', 0, 'http://localhost/wordpress5/?p=104', 2, 'nav_menu_item', '', 0),
(105, 1, '2019-12-20 12:34:43', '2019-12-20 12:34:43', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2019-12-20 12:34:43', '2019-12-20 12:34:43', '', 0, 'http://localhost/wordpress5/?p=105', 3, 'nav_menu_item', '', 0),
(106, 1, '2019-12-20 12:34:43', '2019-12-20 12:34:43', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2019-12-20 12:34:43', '2019-12-20 12:34:43', '', 0, 'http://localhost/wordpress5/?p=106', 5, 'nav_menu_item', '', 0),
(107, 1, '2019-12-20 12:34:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-20 12:34:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress5/?p=107', 1, 'nav_menu_item', '', 0),
(108, 1, '2019-12-20 12:34:43', '2019-12-20 12:34:43', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2019-12-20 12:34:43', '2019-12-20 12:34:43', '', 0, 'http://localhost/wordpress5/?p=108', 4, 'nav_menu_item', '', 0),
(109, 1, '2019-12-20 12:36:33', '2019-12-20 12:36:33', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"59";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5dfcc01abca55', '', '', '2019-12-20 13:50:42', '2019-12-20 13:50:42', '', 0, 'http://localhost/wordpress5/?post_type=acf-field-group&#038;p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2019-12-20 12:36:33', '2019-12-20 12:36:33', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Slider Image1', 'slider_image1', 'publish', 'closed', 'closed', '', 'field_5dfcc028a23da', '', '', '2019-12-20 12:36:33', '2019-12-20 12:36:33', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=110', 0, 'acf-field', '', 0),
(111, 1, '2019-12-20 12:36:33', '2019-12-20 12:36:33', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Slider Image2', 'slider_image2', 'publish', 'closed', 'closed', '', 'field_5dfcc03ba23db', '', '', '2019-12-20 12:36:33', '2019-12-20 12:36:33', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=111', 1, 'acf-field', '', 0),
(112, 1, '2019-12-20 12:36:33', '2019-12-20 12:36:33', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Slider Image3', 'slider_image3', 'publish', 'closed', 'closed', '', 'field_5dfcc044a23dc', '', '', '2019-12-20 12:36:33', '2019-12-20 12:36:33', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=112', 2, 'acf-field', '', 0),
(113, 1, '2019-12-20 12:36:53', '2019-12-20 12:36:53', '', 'slider-3', '', 'inherit', 'open', 'closed', '', 'slider-3', '', '', '2019-12-20 12:36:53', '2019-12-20 12:36:53', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/slider-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-12-20 12:37:04', '2019-12-20 12:37:04', '', 'slider-2', '', 'inherit', 'open', 'closed', '', 'slider-2', '', '', '2019-12-20 12:37:04', '2019-12-20 12:37:04', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/slider-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2019-12-20 12:37:15', '2019-12-20 12:37:15', '', 'slider-1', '', 'inherit', 'open', 'closed', '', 'slider-1', '', '', '2019-12-20 12:37:15', '2019-12-20 12:37:15', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/slider-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2019-12-20 12:37:20', '2019-12-20 12:37:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-12-20 12:37:20', '2019-12-20 12:37:20', '', 59, 'http://localhost/wordpress5/index.php/2019/12/20/59-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-12-20 12:38:10', '2019-12-20 12:38:10', '', 'logo-5-150x47', '', 'inherit', 'open', 'closed', '', 'logo-5-150x47', '', '', '2019-12-20 13:51:27', '2019-12-20 13:51:27', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/logo-5-150x47-1.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2019-12-20 12:38:21', '2019-12-20 12:38:21', 'http://localhost/wordpress5/wp-content/uploads/2019/12/cropped-logo-5-150x47-1.png', 'cropped-logo-5-150x47-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-5-150x47-1-png', '', '', '2019-12-20 12:38:21', '2019-12-20 12:38:21', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/cropped-logo-5-150x47-1.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2019-12-20 12:38:25', '2019-12-20 12:38:25', '{\n    "site_icon": {\n        "value": 118,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-20 12:38:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '32c704ff-9ec4-4200-86dc-2f2164faba17', '', '', '2019-12-20 12:38:25', '2019-12-20 12:38:25', '', 0, 'http://localhost/wordpress5/index.php/2019/12/20/32c704ff-9ec4-4200-86dc-2f2164faba17/', 0, 'customize_changeset', '', 0),
(120, 1, '2019-12-20 13:12:55', '2019-12-20 13:12:55', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-12-20 13:12:55', '2019-12-20 13:12:55', '', 0, 'http://localhost/wordpress5/wp-content/uploads/2019/12/logo-6.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2019-12-20 13:40:08', '2019-12-20 13:40:08', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Service Icon1', 'service_icon1', 'publish', 'closed', 'closed', '', 'field_5dfccf0e02ae4', '', '', '2019-12-20 13:40:08', '2019-12-20 13:40:08', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=121', 3, 'acf-field', '', 0),
(122, 1, '2019-12-20 13:40:08', '2019-12-20 13:40:08', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Service Icon2', 'service_icon2', 'publish', 'closed', 'closed', '', 'field_5dfccf2102ae5', '', '', '2019-12-20 13:40:08', '2019-12-20 13:40:08', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=122', 4, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2019-12-20 13:40:08', '2019-12-20 13:40:08', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Service Icon3', 'service_icon3', 'publish', 'closed', 'closed', '', 'field_5dfccf2b02ae6', '', '', '2019-12-20 13:40:08', '2019-12-20 13:40:08', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=123', 5, 'acf-field', '', 0),
(124, 1, '2019-12-20 13:41:32', '2019-12-20 13:41:32', '', 'coin', '', 'inherit', 'open', 'closed', '', 'coin', '', '', '2019-12-20 13:41:32', '2019-12-20 13:41:32', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/coin-1.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2019-12-20 13:41:41', '2019-12-20 13:41:41', '', 'chat', '', 'inherit', 'open', 'closed', '', 'chat', '', '', '2019-12-20 13:41:41', '2019-12-20 13:41:41', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/chat-2.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2019-12-20 13:41:51', '2019-12-20 13:41:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-12-20 13:41:51', '2019-12-20 13:41:51', '', 59, 'http://localhost/wordpress5/index.php/2019/12/20/59-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-12-20 13:44:09', '2019-12-20 13:44:09', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner Image1', 'banner_image1', 'publish', 'closed', 'closed', '', 'field_5dfcd00007320', '', '', '2019-12-20 13:44:09', '2019-12-20 13:44:09', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=128', 6, 'acf-field', '', 0),
(129, 1, '2019-12-20 13:44:09', '2019-12-20 13:44:09', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner Image2', 'banner_image2', 'publish', 'closed', 'closed', '', 'field_5dfcd01107321', '', '', '2019-12-20 13:44:09', '2019-12-20 13:44:09', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=129', 7, 'acf-field', '', 0),
(130, 1, '2019-12-20 13:44:09', '2019-12-20 13:44:09', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner Image3', 'banner_image3', 'publish', 'closed', 'closed', '', 'field_5dfcd01d07322', '', '', '2019-12-20 13:44:09', '2019-12-20 13:44:09', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=130', 8, 'acf-field', '', 0),
(131, 1, '2019-12-20 13:44:41', '2019-12-20 13:44:41', '', 'f-box-1', '', 'inherit', 'open', 'closed', '', 'f-box-1', '', '', '2019-12-20 13:44:41', '2019-12-20 13:44:41', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/f-box-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2019-12-20 13:44:51', '2019-12-20 13:44:51', '', 'f-box-2', '', 'inherit', 'open', 'closed', '', 'f-box-2', '', '', '2019-12-20 13:44:51', '2019-12-20 13:44:51', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/f-box-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2019-12-20 13:45:01', '2019-12-20 13:45:01', '', 'f-box-3', '', 'inherit', 'open', 'closed', '', 'f-box-3', '', '', '2019-12-20 13:45:01', '2019-12-20 13:45:01', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/f-box-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2019-12-20 13:45:05', '2019-12-20 13:45:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-12-20 13:45:05', '2019-12-20 13:45:05', '', 59, 'http://localhost/wordpress5/index.php/2019/12/20/59-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-12-20 13:46:02', '2019-12-20 13:46:02', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Lookbook Image', 'lookbook_image', 'publish', 'closed', 'closed', '', 'field_5dfcd084d1c2a', '', '', '2019-12-20 13:46:02', '2019-12-20 13:46:02', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=135', 9, 'acf-field', '', 0),
(136, 1, '2019-12-20 13:46:20', '2019-12-20 13:46:20', '', 'lookbok', '', 'inherit', 'open', 'closed', '', 'lookbok', '', '', '2019-12-20 13:46:20', '2019-12-20 13:46:20', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/lookbok-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2019-12-20 13:46:24', '2019-12-20 13:46:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-12-20 13:46:24', '2019-12-20 13:46:24', '', 59, 'http://localhost/wordpress5/index.php/2019/12/20/59-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2019-12-20 13:47:07', '2019-12-20 13:47:07', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Lookbook Text', 'lookbook_text', 'publish', 'closed', 'closed', '', 'field_5dfcd0cdd45eb', '', '', '2019-12-20 13:47:07', '2019-12-20 13:47:07', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=138', 10, 'acf-field', '', 0),
(139, 1, '2019-12-20 13:47:31', '2019-12-20 13:47:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-12-20 13:47:31', '2019-12-20 13:47:31', '', 59, 'http://localhost/wordpress5/index.php/2019/12/20/59-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2019-12-20 13:49:05', '2019-12-20 13:49:05', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo Icon1', 'logo_icon1', 'publish', 'closed', 'closed', '', 'field_5dfcd1151e8e8', '', '', '2019-12-20 13:49:05', '2019-12-20 13:49:05', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=140', 11, 'acf-field', '', 0),
(141, 1, '2019-12-20 13:49:05', '2019-12-20 13:49:05', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo Icon2', 'logo_icon2', 'publish', 'closed', 'closed', '', 'field_5dfcd1321e8e9', '', '', '2019-12-20 13:49:05', '2019-12-20 13:49:05', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=141', 12, 'acf-field', '', 0),
(142, 1, '2019-12-20 13:49:05', '2019-12-20 13:49:05', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo Icon3', 'logo_icon3', 'publish', 'closed', 'closed', '', 'field_5dfcd13c1e8ea', '', '', '2019-12-20 13:49:05', '2019-12-20 13:49:05', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&p=142', 13, 'acf-field', '', 0),
(143, 1, '2019-12-20 13:49:05', '2019-12-20 13:49:05', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo Icon4', 'logo_icon4', 'publish', 'closed', 'closed', '', 'field_5dfcd1481e8eb', '', '', '2019-12-20 13:50:42', '2019-12-20 13:50:42', '', 109, 'http://localhost/wordpress5/?post_type=acf-field&#038;p=143', 14, 'acf-field', '', 0),
(144, 1, '2019-12-20 13:49:28', '2019-12-20 13:49:28', '', 'logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2019-12-20 13:49:28', '2019-12-20 13:49:28', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/logo-1-2.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2019-12-20 13:49:39', '2019-12-20 13:49:39', '', 'logo-2', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-12-20 13:49:39', '2019-12-20 13:49:39', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/logo-2-2.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2019-12-20 13:51:00', '2019-12-20 13:51:00', '', 'logo-2', '', 'inherit', 'open', 'closed', '', 'logo-2-2', '', '', '2019-12-20 13:51:00', '2019-12-20 13:51:00', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/logo-2-3.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2019-12-20 13:51:24', '2019-12-20 13:51:24', '', 'logo-3', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2019-12-20 13:51:24', '2019-12-20 13:51:24', '', 59, 'http://localhost/wordpress5/wp-content/uploads/2019/12/logo-3-1.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2019-12-20 13:51:27', '2019-12-20 13:51:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-12-20 13:51:27', '2019-12-20 13:51:27', '', 59, 'http://localhost/wordpress5/index.php/2019/12/20/59-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2019-12-20 13:59:41', '2019-12-20 13:59:41', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"60";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Contact page', 'contact-page', 'publish', 'closed', 'closed', '', 'group_5dfcd3bb99227', '', '', '2019-12-20 14:01:11', '2019-12-20 14:01:11', '', 0, 'http://localhost/wordpress5/?post_type=acf-field-group&#038;p=149', 0, 'acf-field-group', '', 0),
(150, 1, '2019-12-20 13:59:41', '2019-12-20 13:59:41', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Location1', 'location1', 'publish', 'closed', 'closed', '', 'field_5dfcd3c204ca7', '', '', '2019-12-20 13:59:41', '2019-12-20 13:59:41', '', 149, 'http://localhost/wordpress5/?post_type=acf-field&p=150', 0, 'acf-field', '', 0),
(151, 1, '2019-12-20 14:00:44', '2019-12-20 14:00:44', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Location2', 'location2', 'publish', 'closed', 'closed', '', 'field_5dfcd3cfe8306', '', '', '2019-12-20 14:00:44', '2019-12-20 14:00:44', '', 149, 'http://localhost/wordpress5/?post_type=acf-field&p=151', 1, 'acf-field', '', 0),
(152, 1, '2019-12-20 14:00:44', '2019-12-20 14:00:44', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone1', 'phone1', 'publish', 'closed', 'closed', '', 'field_5dfcd3e8e8307', '', '', '2019-12-20 14:00:44', '2019-12-20 14:00:44', '', 149, 'http://localhost/wordpress5/?post_type=acf-field&p=152', 2, 'acf-field', '', 0),
(153, 1, '2019-12-20 14:00:44', '2019-12-20 14:00:44', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone2', 'phone2', 'publish', 'closed', 'closed', '', 'field_5dfcd3f2e8308', '', '', '2019-12-20 14:00:44', '2019-12-20 14:00:44', '', 149, 'http://localhost/wordpress5/?post_type=acf-field&p=153', 3, 'acf-field', '', 0),
(154, 1, '2019-12-20 14:00:44', '2019-12-20 14:00:44', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'E-mail1', 'e-mail1', 'publish', 'closed', 'closed', '', 'field_5dfcd3fce8309', '', '', '2019-12-20 14:00:44', '2019-12-20 14:00:44', '', 149, 'http://localhost/wordpress5/?post_type=acf-field&p=154', 4, 'acf-field', '', 0),
(155, 1, '2019-12-20 14:00:44', '2019-12-20 14:00:44', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Email2', 'email2', 'publish', 'closed', 'closed', '', 'field_5dfcd402e830a', '', '', '2019-12-20 14:00:44', '2019-12-20 14:00:44', '', 149, 'http://localhost/wordpress5/?post_type=acf-field&p=155', 5, 'acf-field', '', 0),
(156, 1, '2019-12-20 14:02:42', '2019-12-20 14:02:42', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-20 14:02:42', '2019-12-20 14:02:42', '', 60, 'http://localhost/wordpress5/index.php/2019/12/20/60-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-12-28 08:13:31', '2019-12-28 08:13:31', '', 'Order &ndash; December 28, 2019 @ 08:13 AM', '', 'wc-processing', 'open', 'closed', 'wc_order_NdnTx11ZVaaY5', 'order-dec-28-2019-0813-am', '', '', '2019-12-28 08:13:32', '2019-12-28 08:13:32', '', 0, 'http://localhost/wordpress5/?post_type=shop_order&#038;p=157', 0, 'shop_order', '', 1),
(159, 0, '2019-12-28 08:38:27', '2019-12-28 08:38:27', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e0714a14ff715.92777380-RrlmL6s9mTkddvDIQvAkOSBNsJEKg0ZB', '', '', '2019-12-28 08:38:57', '2019-12-28 08:38:57', '', 0, 'http://localhost/wordpress5/?post_type=scheduled-action&#038;p=159', 0, 'scheduled-action', '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 16, 'order', '0'),
(3, 17, 'order', '0'),
(4, 18, 'order', '0'),
(5, 19, 'order', '0'),
(6, 20, 'order', '0'),
(7, 21, 'order', '0'),
(8, 17, 'product_count_product_cat', '5'),
(9, 16, 'product_count_product_cat', '14'),
(10, 22, 'order_pa_color', '0'),
(11, 23, 'order_pa_color', '0'),
(12, 24, 'order_pa_color', '0'),
(13, 25, 'order_pa_size', '0'),
(14, 26, 'order_pa_size', '0'),
(15, 27, 'order_pa_size', '0'),
(16, 18, 'product_count_product_cat', '3'),
(17, 28, 'order_pa_color', '0'),
(18, 19, 'product_count_product_cat', '5'),
(19, 29, 'order_pa_color', '0'),
(20, 20, 'product_count_product_cat', '2'),
(21, 21, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Clothing', 'clothing', 0),
(17, 'Tshirts', 'tshirts', 0),
(18, 'Hoodies', 'hoodies', 0),
(19, 'Accessories', 'accessories', 0),
(20, 'Music', 'music', 0),
(21, 'Decor', 'decor', 0),
(22, 'Blue', 'blue', 0),
(23, 'Green', 'green', 0),
(24, 'Red', 'red', 0),
(25, 'Large', 'large', 0),
(26, 'Medium', 'medium', 0),
(27, 'Small', 'small', 0),
(28, 'Gray', 'gray', 0),
(29, 'Yellow', 'yellow', 0),
(30, 'Header Menu', 'header-menu', 0),
(31, 'Account Menu', 'account-menu', 0),
(32, 'About Us', 'about-us', 0),
(33, 'Customer Care', 'customer-care', 0),
(34, 'Our Service', 'our-service', 0),
(35, 'Information', 'information', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 4, 0),
(12, 8, 0),
(12, 17, 0),
(12, 22, 0),
(12, 23, 0),
(12, 24, 0),
(12, 25, 0),
(12, 26, 0),
(12, 27, 0),
(13, 4, 0),
(13, 18, 0),
(13, 22, 0),
(13, 23, 0),
(13, 24, 0),
(14, 2, 0),
(14, 18, 0),
(14, 22, 0),
(15, 2, 0),
(15, 17, 0),
(15, 28, 0),
(16, 2, 0),
(16, 19, 0),
(16, 24, 0),
(17, 2, 0),
(17, 19, 0),
(18, 2, 0),
(18, 8, 0),
(18, 19, 0),
(18, 29, 0),
(19, 2, 0),
(19, 8, 0),
(19, 19, 0),
(20, 2, 0),
(20, 6, 0),
(20, 7, 0),
(20, 8, 0),
(20, 18, 0),
(20, 28, 0),
(21, 2, 0),
(21, 8, 0),
(21, 18, 0),
(22, 2, 0),
(22, 17, 0),
(22, 23, 0),
(23, 2, 0),
(23, 17, 0),
(23, 22, 0),
(24, 2, 0),
(24, 20, 0),
(25, 2, 0),
(25, 20, 0),
(26, 15, 0),
(27, 15, 0),
(28, 15, 0),
(29, 15, 0),
(30, 15, 0),
(31, 15, 0),
(32, 2, 0),
(32, 17, 0),
(32, 28, 0),
(33, 2, 0),
(33, 19, 0),
(33, 24, 0),
(34, 3, 0),
(34, 16, 0),
(35, 5, 0),
(35, 21, 0),
(36, 15, 0),
(64, 30, 0),
(65, 30, 0),
(66, 30, 0),
(67, 30, 0),
(70, 30, 0),
(76, 31, 0),
(77, 31, 0),
(87, 32, 0),
(88, 32, 0),
(89, 32, 0),
(90, 32, 0),
(91, 32, 0),
(92, 33, 0),
(93, 33, 0),
(94, 33, 0),
(95, 33, 0),
(96, 33, 0),
(98, 34, 0),
(99, 34, 0),
(100, 34, 0),
(101, 34, 0),
(102, 34, 0),
(103, 35, 0),
(104, 35, 0),
(105, 35, 0),
(106, 35, 0),
(108, 35, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 14),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 1),
(7, 7, 'product_visibility', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 5),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 1),
(17, 17, 'product_cat', '', 16, 5),
(18, 18, 'product_cat', '', 16, 4),
(19, 19, 'product_cat', '', 16, 5),
(20, 20, 'product_cat', '', 0, 2),
(21, 21, 'product_cat', '', 0, 1),
(22, 22, 'pa_color', '', 0, 4),
(23, 23, 'pa_color', '', 0, 3),
(24, 24, 'pa_color', '', 0, 4),
(25, 25, 'pa_size', '', 0, 1),
(26, 26, 'pa_size', '', 0, 1),
(27, 27, 'pa_size', '', 0, 1),
(28, 28, 'pa_color', '', 0, 3),
(29, 29, 'pa_color', '', 0, 1),
(30, 30, 'nav_menu', '', 0, 5),
(31, 31, 'nav_menu', '', 0, 2),
(32, 32, 'nav_menu', '', 0, 5),
(33, 33, 'nav_menu', '', 0, 5),
(34, 34, 'nav_menu', '', 0, 5),
(35, 35, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '158'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:jGjTp0pLy4vF3NpoyQBHv2+o'),
(19, 1, 'jetpack_tracks_anon_id', 'jetpack:kX86VPFDef++7oeVICfVnf/h'),
(20, 1, 'wc_last_active', '1577491200'),
(24, 1, 'wp_woocommerce_product_import_mapping', 'a:51:{i:0;s:2:"id";i:1;s:4:"type";i:2;s:3:"sku";i:3;s:4:"name";i:4;s:9:"published";i:5;s:8:"featured";i:6;s:18:"catalog_visibility";i:7;s:17:"short_description";i:8;s:11:"description";i:9;s:17:"date_on_sale_from";i:10;s:15:"date_on_sale_to";i:11;s:10:"tax_status";i:12;s:9:"tax_class";i:13;s:12:"stock_status";i:14;s:14:"stock_quantity";i:15;s:10:"backorders";i:16;s:17:"sold_individually";i:17;s:0:"";i:18;s:0:"";i:19;s:0:"";i:20;s:0:"";i:21;s:15:"reviews_allowed";i:22;s:13:"purchase_note";i:23;s:10:"sale_price";i:24;s:13:"regular_price";i:25;s:12:"category_ids";i:26;s:7:"tag_ids";i:27;s:17:"shipping_class_id";i:28;s:6:"images";i:29;s:14:"download_limit";i:30;s:15:"download_expiry";i:31;s:9:"parent_id";i:32;s:16:"grouped_products";i:33;s:10:"upsell_ids";i:34;s:14:"cross_sell_ids";i:35;s:11:"product_url";i:36;s:11:"button_text";i:37;s:10:"menu_order";i:38;s:16:"attributes:name1";i:39;s:17:"attributes:value1";i:40;s:19:"attributes:visible1";i:41;s:20:"attributes:taxonomy1";i:42;s:16:"attributes:name2";i:43;s:17:"attributes:value2";i:44;s:19:"attributes:visible2";i:45;s:20:"attributes:taxonomy2";i:46;s:23:"meta:_wpcom_is_markdown";i:47;s:15:"downloads:name1";i:48;s:14:"downloads:url1";i:49;s:15:"downloads:name2";i:50;s:14:"downloads:url2";}'),
(25, 1, 'wp_product_import_error_log', 'a:0:{}'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";}'),
(29, 1, 'nav_menu_recently_edited', '35'),
(30, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(31, 1, 'wp_user-settings-time', '1576849883'),
(32, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(34, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:5:{s:32:"c74d97b01eae257e44aa9d5bade97baf";a:11:{s:3:"key";s:32:"c74d97b01eae257e44aa9d5bade97baf";s:10:"product_id";i:16;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:18;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:18;s:8:"line_tax";i:0;}s:32:"cffec21494524cafcdecc57fbdbb598e";a:11:{s:3:"key";s:32:"cffec21494524cafcdecc57fbdbb598e";s:10:"product_id";i:13;s:12:"variation_id";i:36;s:9:"variation";a:2:{s:18:"attribute_pa_color";s:4:"blue";s:14:"attribute_logo";s:3:"Yes";}s:8:"quantity";i:2;s:9:"data_hash";s:32:"9c9e968ce2b2d6ac0ae17b1f931025a3";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:90;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:90;s:8:"line_tax";i:0;}s:32:"6f4922f45568161a8cdf4ad2299f6d23";a:11:{s:3:"key";s:32:"6f4922f45568161a8cdf4ad2299f6d23";s:10:"product_id";i:18;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:5;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:80;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:80;s:8:"line_tax";i:0;}s:32:"70efdf2ec9b086079795c442636b55fb";a:11:{s:3:"key";s:32:"70efdf2ec9b086079795c442636b55fb";s:10:"product_id";i:17;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:110;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:110;s:8:"line_tax";i:0;}s:32:"1ff1de774005f8da13f42943881c655f";a:11:{s:3:"key";s:32:"1ff1de774005f8da13f42943881c655f";s:10:"product_id";i:24;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:15;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:15;s:8:"line_tax";i:0;}}}'),
(36, 1, 'session_tokens', 'a:1:{s:64:"09dfbf45caecc7db8916357e7c7f158d0a9802949328b7be7aa7cac05422b487";a:4:{s:10:"expiration";i:1577695104;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36";s:5:"login";i:1577522304;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BtwEBvjvsdjJLIYRnVGGM3nRBslga/1', 'root', 'sinevor13@gmail.com', '', '2019-12-20 09:21:38', '', 0, 'root');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(12, 'woo-vneck-tee', 0, 0, '15.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(13, 'woo-hoodie', 0, 0, '42.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(14, 'woo-hoodie-with-logo', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(15, 'woo-tshirt', 0, 0, '18.00', '18.00', 0, NULL, 'instock', 0, '0.00', 0),
(16, 'woo-beanie', 0, 0, '18.00', '18.00', 1, NULL, 'instock', 0, '0.00', 0),
(17, 'woo-belt', 0, 0, '55.00', '55.00', 1, NULL, 'instock', 0, '0.00', 0),
(18, 'woo-cap', 0, 0, '16.00', '16.00', 1, NULL, 'instock', 0, '0.00', 0),
(19, 'woo-sunglasses', 0, 0, '90.00', '90.00', 0, NULL, 'instock', 0, '0.00', 0),
(20, 'woo-hoodie-with-pocket', 0, 0, '35.00', '35.00', 1, NULL, 'instock', 0, '0.00', 0),
(21, 'woo-hoodie-with-zipper', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(22, 'woo-long-sleeve-tee', 0, 0, '25.00', '25.00', 0, NULL, 'instock', 0, '0.00', 0),
(23, 'woo-polo', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(24, 'woo-album', 1, 1, '15.00', '15.00', 0, NULL, 'instock', 0, '0.00', 0),
(25, 'woo-single', 1, 1, '2.00', '2.00', 1, NULL, 'instock', 0, '0.00', 0),
(26, 'woo-vneck-tee-red', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(27, 'woo-vneck-tee-green', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(28, 'woo-vneck-tee-blue', 0, 0, '15.00', '15.00', 0, NULL, 'instock', 0, '0.00', 0),
(29, 'woo-hoodie-red', 0, 0, '42.00', '42.00', 1, NULL, 'instock', 0, '0.00', 0),
(30, 'woo-hoodie-green', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(31, 'woo-hoodie-blue', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(32, 'Woo-tshirt-logo', 0, 0, '18.00', '18.00', 0, NULL, 'instock', 0, '0.00', 0),
(33, 'Woo-beanie-logo', 0, 0, '18.00', '18.00', 1, NULL, 'instock', 0, '0.00', 1),
(34, 'logo-collection', 0, 0, '18.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(35, 'wp-pennant', 0, 0, '11.05', '11.05', 0, NULL, 'instock', 0, '0.00', 0),
(36, 'woo-hoodie-blue-logo', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '33'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '18'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '18'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Beanie with Logo', 'line_item', 157);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'United Kingdom (UK)', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'GB', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=763;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1211;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
