-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 18 2025 г., 04:41
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `relokia_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint UNSIGNED NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(30, 'action_scheduler/migration_hook', 'complete', '2025-01-17 23:49:23', '2025-01-17 23:49:23', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1737157763;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1737157763;}', 1, 1, '2025-01-17 23:49:59', '2025-01-18 02:49:59', 0, NULL),
(31, 'wp_mail_smtp_summary_report_email', 'pending', '2025-01-20 11:00:00', '2025-01-20 11:00:00', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737370800;s:18:\"\0*\0first_timestamp\";i:1737370800;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737370800;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(32, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-17 23:51:03', '2025-01-17 23:51:03', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737157863;s:18:\"\0*\0first_timestamp\";i:1737157863;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737157863;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-01-17 23:51:05', '2025-01-18 02:51:05', 0, NULL),
(33, 'wp_mail_smtp_admin_notifications_update', 'pending', '2025-01-18 23:51:05', '2025-01-18 23:51:05', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737244265;s:18:\"\0*\0first_timestamp\";i:1737157863;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737244265;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(34, 'easy_wp_smtp_summary_report_email', 'pending', '2025-01-20 11:00:00', '2025-01-20 11:00:00', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737370800;s:18:\"\0*\0first_timestamp\";i:1737370800;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737370800;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(35, 'easy_wp_smtp_admin_notifications_update', 'complete', '2025-01-17 23:52:49', '2025-01-17 23:52:49', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737157969;s:18:\"\0*\0first_timestamp\";i:1737157969;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737157969;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-17 23:53:13', '2025-01-18 02:53:13', 0, NULL),
(36, 'easy_wp_smtp_admin_notifications_update', 'pending', '2025-01-18 23:53:13', '2025-01-18 23:53:13', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737244393;s:18:\"\0*\0first_timestamp\";i:1737157969;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737244393;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp'),
(3, 'easy_wp_smtp');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint UNSIGNED NOT NULL,
  `action_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 30, 'action created', '2025-01-17 23:48:23', '2025-01-17 23:48:23'),
(2, 30, 'action started via WP Cron', '2025-01-17 23:49:59', '2025-01-17 23:49:59'),
(3, 30, 'action complete via WP Cron', '2025-01-17 23:49:59', '2025-01-17 23:49:59'),
(4, 31, 'action created', '2025-01-17 23:50:03', '2025-01-17 23:50:03'),
(5, 32, 'action created', '2025-01-17 23:50:03', '2025-01-17 23:50:03'),
(6, 32, 'action started via WP Cron', '2025-01-17 23:51:05', '2025-01-17 23:51:05'),
(7, 32, 'action complete via WP Cron', '2025-01-17 23:51:05', '2025-01-17 23:51:05'),
(8, 33, 'action created', '2025-01-17 23:51:05', '2025-01-17 23:51:05'),
(9, 34, 'action created', '2025-01-17 23:51:49', '2025-01-17 23:51:49'),
(10, 35, 'action created', '2025-01-17 23:51:49', '2025-01-17 23:51:49'),
(11, 35, 'action started via WP Cron', '2025-01-17 23:53:12', '2025-01-17 23:53:12'),
(12, 35, 'action complete via WP Cron', '2025-01-17 23:53:13', '2025-01-17 23:53:13'),
(13, 36, 'action created', '2025-01-17 23:53:13', '2025-01-17 23:53:13');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2025-01-16 15:36:20', '2025-01-16 12:36:20', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_easywpsmtp_debug_events`
--

CREATE TABLE `wp_easywpsmtp_debug_events` (
  `id` int UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_easywpsmtp_tasks_meta`
--

CREATE TABLE `wp_easywpsmtp_tasks_meta` (
  `id` bigint NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_easywpsmtp_tasks_meta`
--

INSERT INTO `wp_easywpsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'easy_wp_smtp_admin_notifications_update', 'W10=', '2025-01-17 23:51:49');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
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
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1737164063;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1737164179;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737164180;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1737165979;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737167779;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737203780;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737203807;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737203811;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737635914;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1737722180;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://relokia', 'on'),
(3, 'home', 'http://relokia', 'on'),
(4, 'blogname', '', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'cijaydorosh@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'd.m.Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'd.m.Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:2:{i:0;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:1;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:3:{i:0;s:68:\"C:\\OpenServer\\domains\\relokia/wp-content/plugins/akismet/akismet.php\";i:2;s:81:\"C:\\OpenServer\\domains\\relokia/wp-content/themes/twentytwentythree-child/style.css\";i:3;s:0:\"\";}', 'off'),
(41, 'template', 'twentytwentythree', 'on'),
(42, 'stylesheet', 'twentytwentythree-child', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1752582979', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'ru_RU', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1737031123;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(128, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"6922bd6778459a8281c79376cc170a1f\";s:6:\"blocks\";a:52:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:0:\"\";s:14:\"core/pullquote\";s:272:\":root :where(.wp-block-pullquote){border-width: 1px 0;border-style: solid;font-size: clamp(0.984em, 0.984rem + ((1vw - 0.2em) * 0.938), 1.5em);line-height: 1.3;margin-top: var(--wp--preset--spacing--40) !important;margin-bottom: var(--wp--preset--spacing--40) !important;}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:127:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;text-transform: none;}\";s:15:\"core/navigation\";s:83:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--small);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:32:\"d29336949e8ff45ab25278f69ae48aa5\";s:110:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):focus){text-decoration: underline dashed;}\";s:32:\"351cbe3371c430e0059260af4561e940\";s:99:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):active){text-decoration: none;}\";s:16:\"core/post-author\";s:84:\":root :where(.wp-block-post-author){font-size: var(--wp--preset--font-size--small);}\";s:17:\"core/post-content\";s:0:\"\";s:32:\"d81df30b68b32ad91c8a25bce2427ff0\";s:115:\":root :where(.wp-block-post-content a:where(:not(.wp-element-button))){color: var(--wp--preset--color--secondary);}\";s:17:\"core/post-excerpt\";s:86:\":root :where(.wp-block-post-excerpt){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:99:\":root :where(.wp-block-post-date){font-size: var(--wp--preset--font-size--small);font-weight: 400;}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:91:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:15:\"core/post-terms\";s:83:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);}\";s:15:\"core/post-title\";s:96:\":root :where(.wp-block-post-title){font-weight: 400;margin-top: 1.25rem;margin-bottom: 1.25rem;}\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:32:\"db7080b413e40eaaccb138491d6550ee\";s:110:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):focus){text-decoration: underline dashed;}\";s:32:\"6449d53deb0a7a970244f284c6743423\";s:142:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):active){color: var(--wp--preset--color--secondary);text-decoration: none;}\";s:19:\"core/comments-title\";s:133:\":root :where(.wp-block-comments-title){font-size: var(--wp--preset--font-size--large);margin-bottom: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:0:\"\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:101:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:32:\"f8e1a3f238d0ab1fccaff3b4fd131f24\";s:119:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):focus){text-decoration: underline dashed;}\";s:32:\"d0552d8fd858236f51abd8249b8438b7\";s:151:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):active){color: var(--wp--preset--color--secondary);text-decoration: none;}\";s:17:\"core/comment-date\";s:85:\":root :where(.wp-block-comment-date){font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:94:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"7a05169cd0e6c7a5390492b955f8fd3d\";s:105:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:32:\"349941f9bf2b82371084c5557167f361\";s:112:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button)):focus){text-decoration: underline dashed;}\";s:32:\"a8e8be38e88349efcca0e5621507a56e\";s:144:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button)):active){color: var(--wp--preset--color--secondary);text-decoration: none;}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:88:\":root :where(.wp-block-comments-pagination){margin-top: var(--wp--preset--spacing--40);}\";s:32:\"fede273dd696ea58b55b0ff2bcb53c08\";s:101:\":root :where(.wp-block-comments-pagination a:where(:not(.wp-element-button))){text-decoration: none;}\";s:10:\"core/query\";s:0:\"\";s:32:\"8c83951e484ccedf2bb7797ef5c4135f\";s:83:\":root :where(.wp-block-query h2){font-size: var(--wp--preset--font-size--x-large);}\";s:21:\"core/query-pagination\";s:106:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--small);font-weight: 400;}\";s:32:\"13846eb06306dcbaa7c8e94667a2c0eb\";s:98:\":root :where(.wp-block-query-pagination a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"97117f9959d427c62680a83361e38d34\";s:109:\":root :where(.wp-block-query-pagination a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:197:\":root :where(.wp-block-quote){border-left-color: inherit;border-left-width: 1px;border-left-style: solid;padding-right: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--30);}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:102:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:15:\"core/site-title\";s:121:\":root :where(.wp-block-site-title){font-size: var(--wp--preset--font-size--medium);font-weight: normal;line-height: 1.4;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:32:\"7f820b72d910bcef4934213eb41c9295\";s:110:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):focus){text-decoration: underline dashed;}\";s:32:\"3e354d1ec2923ae3c9aef1b41e1c823d\";s:142:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):active){color: var(--wp--preset--color--secondary);text-decoration: none;}\";s:14:\"core/separator\";s:154:\":root :where(.wp-block-separator){}:root :where(.wp-block-separator:not(.is-style-wide):not(.is-style-dots):not(.alignwide):not(.alignfull)){width: 100px}\";}}', 'on'),
(136, '_site_transient_timeout_browser_f51bb482c660d0eeadd1f058058a2b35', '1737635810', 'off'),
(137, '_site_transient_browser_f51bb482c660d0eeadd1f058058a2b35', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"131.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(138, '_site_transient_timeout_php_check_aed3db4e689eca85aa9bbf5642f62aea', '1737635810', 'off'),
(139, '_site_transient_php_check_aed3db4e689eca85aa9bbf5642f62aea', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(143, 'can_compress_scripts', '1', 'on'),
(156, 'finished_updating_comment_type', '1', 'auto'),
(159, 'current_theme', 'TwentyTwentyThree Child', 'auto'),
(160, 'theme_mods_twentytwentythree-child', 'a:4:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(161, 'theme_switched', '', 'auto'),
(176, 'dismissed_update_core', 'a:1:{s:11:\"6.7.1|ru_RU\";b:1;}', 'off'),
(208, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(209, 'recently_activated', 'a:0:{}', 'off'),
(210, '_site_transient_timeout_popular_importers_0835b4917eecd261fa5a0e9e0e81583d', '1737213061', 'off'),
(211, '_site_transient_popular_importers_0835b4917eecd261fa5a0e9e0e81583d', 'a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'off'),
(260, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'auto'),
(261, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'on'),
(369, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(390, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1737168387', 'off'),
(391, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6750;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4864;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2791;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2689;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2101;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1995;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1935;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1810;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1594;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1590;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1569;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1546;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1511;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1507;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1450;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1317;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1190;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1172;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1166;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1160;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1031;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1027;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:999;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:993;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:962;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:962;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:939;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:911;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:907;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:902;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:902;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:896;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:861;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:847;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:822;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:814;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:790;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:779;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:759;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:759;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:756;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:741;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:721;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:706;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:703;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:672;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:662;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:661;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:643;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:641;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:632;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:617;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:615;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:613;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:610;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:608;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:607;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:606;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:601;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:593;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:589;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:584;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:580;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:578;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:574;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:573;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:572;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:563;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:555;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:552;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:548;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:543;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:529;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:529;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:520;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:517;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:505;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:504;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:500;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:497;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:472;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:462;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:458;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:457;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:453;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:453;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:451;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:450;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:449;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:448;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:443;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:430;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:428;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:418;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:418;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:417;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:407;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:400;}s:2:\"ai\";a:3:{s:4:\"name\";s:2:\"AI\";s:4:\"slug\";s:2:\"ai\";s:5:\"count\";i:394;}}', 'off'),
(400, 'action_scheduler_hybrid_store_demarkation', '29', 'auto'),
(401, 'schema-ActionScheduler_StoreSchema', '7.0.1737157703', 'auto'),
(402, 'schema-ActionScheduler_LoggerSchema', '3.0.1737157703', 'auto'),
(403, 'wp_mail_smtp_initial_version', '4.3.0', 'off'),
(404, 'wp_mail_smtp_version', '4.3.0', 'off'),
(405, 'wp_mail_smtp', 'a:3:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:21:\"cijaydorosh@gmail.com\";s:9:\"from_name\";s:0:\"\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}}', 'off'),
(406, 'wp_mail_smtp_activated_time', '1737157703', 'off'),
(407, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1737157703;}', 'auto'),
(408, '_transient_timeout_wp_mail_smtp_just_activated', '1737157763', 'off'),
(409, '_transient_wp_mail_smtp_just_activated', '1', 'off'),
(412, 'action_scheduler_lock_async-request-runner', '678aef0e2ade04.04758253|1737158474', 'no'),
(413, '_transient_timeout_as-post-store-dependencies-met', '1737244103', 'off'),
(414, '_transient_as-post-store-dependencies-met', 'yes', 'off'),
(416, 'wp_mail_smtp_migration_version', '5', 'on'),
(417, 'wp_mail_smtp_debug_events_db_version', '1', 'on'),
(418, 'wp_mail_smtp_activation_prevent_redirect', '1', 'auto'),
(419, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1737157710;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'off'),
(421, 'action_scheduler_migration_status', 'complete', 'auto'),
(422, '_transient_timeout_action_scheduler_last_pastdue_actions_check', '1737179400', 'off'),
(423, '_transient_action_scheduler_last_pastdue_actions_check', '1737157800', 'off'),
(424, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1737157800;s:9:\"dismissed\";b:0;}', 'auto'),
(426, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1737157865;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'auto'),
(433, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1737157907;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}', 'off'),
(434, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1737157908;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"2.9.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.2.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/easy-wp-smtp/assets/icon.svg?rev=3158017\";s:3:\"svg\";s:57:\"https://ps.w.org/easy-wp-smtp/assets/icon.svg?rev=3158017\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/easy-wp-smtp/assets/banner-1544x500.png?rev=3158017\";s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=3158017\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"4.3.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.4.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=3206423\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=3206423\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"5.3.5\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"2.9.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"4.3.0\";}}', 'off'),
(435, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1737157908;s:7:\"checked\";a:4:{s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:23:\"twentytwentythree-child\";s:5:\"1.0.0\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.0.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(436, 'easy_wp_smtp_initial_version', '2.9.0', 'off'),
(437, 'easy_wp_smtp_version', '2.9.0', 'off'),
(438, 'easy_wp_smtp', 'a:3:{s:4:\"mail\";a:5:{s:10:\"from_email\";s:21:\"cijaydorosh@gmail.com\";s:9:\"from_name\";s:0:\"\";s:6:\"mailer\";s:4:\"mail\";s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:2:{s:28:\"domain_check_allowed_domains\";s:7:\"relokia\";s:29:\"summary_report_email_disabled\";b:0;}}', 'off'),
(439, 'easy_wp_smtp_activated_time', '1737157908', 'off'),
(440, 'easy_wp_smtp_activated', 'a:1:{s:4:\"lite\";i:1737157908;}', 'auto'),
(441, '_transient_timeout_easy_wp_smtp_just_activated', '1737157968', 'off'),
(442, '_transient_easy_wp_smtp_just_activated', '1', 'off'),
(445, 'easy_wp_smtp_deprecated_options_migration_version', '1', 'on'),
(446, 'easy_wp_smtp_migration_version', '1', 'on'),
(447, 'easy_wp_smtp_debug_events_db_version', '1', 'on'),
(448, 'easy_wp_smtp_activation_prevent_redirect', '1', 'auto'),
(449, 'easy_wp_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1737157911;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'off'),
(450, 'easy_wp_smtp_user_feedback_notice', 'a:2:{s:4:\"time\";i:1737157926;s:9:\"dismissed\";b:0;}', 'auto'),
(452, 'easy_wp_smtp_notifications', 'a:4:{s:6:\"update\";i:1737157993;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'auto'),
(454, 'wp_mail_smtp_lite_sent_email_counter', '34', 'on'),
(455, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:1:{s:2:\"03\";i:34;}', 'on'),
(456, 'wp_mail_smtp_debug', 'a:34:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;i:27;i:28;i:28;i:29;i:29;i:30;i:30;i:31;i:31;i:32;i:32;i:33;i:33;i:34;}', 'off'),
(498, '_transient_timeout_wp_mail_smtp_initiators_data', '1737165733', 'off'),
(499, '_transient_wp_mail_smtp_initiators_data', 'a:1:{s:85:\"C:\\OpenServer\\domains\\relokia\\wp-content\\themes\\twentytwentythree-child\\functions.php\";a:3:{s:4:\"name\";s:23:\"TwentyTwentyThree Child\";s:4:\"slug\";s:23:\"twentytwentythree-child\";s:4:\"type\";s:5:\"theme\";}}', 'off'),
(511, '_site_transient_timeout_wp_theme_files_patterns-adf1039120a22ce460642bcfad1d83d0', '1737165570', 'off'),
(512, '_site_transient_wp_theme_files_patterns-adf1039120a22ce460642bcfad1d83d0', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:7:{s:18:\"call-to-action.php\";a:6:{s:5:\"title\";s:14:\"Call to action\";s:4:\"slug\";s:21:\"twentytwentythree/cta\";s:11:\"description\";s:52:\"Left-aligned text with a CTA button and a separator.\";s:10:\"categories\";a:1:{i:0;s:8:\"featured\";}s:8:\"keywords\";a:3:{i:0;s:4:\"Call\";i:1;s:2:\"to\";i:2;s:6:\"action\";}s:10:\"blockTypes\";a:1:{i:0;s:12:\"core/buttons\";}}s:18:\"footer-default.php\";a:5:{s:5:\"title\";s:14:\"Default Footer\";s:4:\"slug\";s:32:\"twentytwentythree/footer-default\";s:11:\"description\";s:48:\"Footer with site title and powered by WordPress.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:10:\"Hidden 404\";s:4:\"slug\";s:28:\"twentytwentythree/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:19:\"hidden-comments.php\";a:4:{s:5:\"title\";s:15:\"Hidden Comments\";s:4:\"slug\";s:33:\"twentytwentythree/hidden-comments\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-heading.php\";a:4:{s:5:\"title\";s:27:\"Hidden Heading for Homepage\";s:4:\"slug\";s:32:\"twentytwentythree/hidden-heading\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-no-results.php\";a:4:{s:5:\"title\";s:25:\"Hidden No Results Content\";s:4:\"slug\";s:43:\"twentytwentythree/hidden-no-results-content\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:13:\"post-meta.php\";a:6:{s:5:\"title\";s:9:\"Post Meta\";s:4:\"slug\";s:27:\"twentytwentythree/post-meta\";s:11:\"description\";s:48:\"Post meta information with separator on the top.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:8:\"keywords\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"meta\";}s:10:\"blockTypes\";a:1:{i:0;s:28:\"core/template-part/post-meta\";}}}}', 'off'),
(513, '_site_transient_timeout_wp_theme_files_patterns-d7d17d3ff98ad311d041d02c0afef46e', '1737165570', 'off'),
(514, '_site_transient_wp_theme_files_patterns-d7d17d3ff98ad311d041d02c0afef46e', 'a:2:{s:7:\"version\";s:3:\"1.6\";s:8:\"patterns\";a:7:{s:18:\"call-to-action.php\";a:6:{s:5:\"title\";s:14:\"Call to action\";s:4:\"slug\";s:21:\"twentytwentythree/cta\";s:11:\"description\";s:52:\"Left-aligned text with a CTA button and a separator.\";s:10:\"categories\";a:1:{i:0;s:8:\"featured\";}s:8:\"keywords\";a:3:{i:0;s:4:\"Call\";i:1;s:2:\"to\";i:2;s:6:\"action\";}s:10:\"blockTypes\";a:1:{i:0;s:12:\"core/buttons\";}}s:18:\"footer-default.php\";a:5:{s:5:\"title\";s:14:\"Default Footer\";s:4:\"slug\";s:32:\"twentytwentythree/footer-default\";s:11:\"description\";s:48:\"Footer with site title and powered by WordPress.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:10:\"Hidden 404\";s:4:\"slug\";s:28:\"twentytwentythree/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:19:\"hidden-comments.php\";a:4:{s:5:\"title\";s:15:\"Hidden Comments\";s:4:\"slug\";s:33:\"twentytwentythree/hidden-comments\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-heading.php\";a:4:{s:5:\"title\";s:27:\"Hidden Heading for Homepage\";s:4:\"slug\";s:32:\"twentytwentythree/hidden-heading\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-no-results.php\";a:4:{s:5:\"title\";s:25:\"Hidden No Results Content\";s:4:\"slug\";s:43:\"twentytwentythree/hidden-no-results-content\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:13:\"post-meta.php\";a:6:{s:5:\"title\";s:9:\"Post Meta\";s:4:\"slug\";s:27:\"twentytwentythree/post-meta\";s:11:\"description\";s:48:\"Post meta information with separator on the top.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:8:\"keywords\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"meta\";}s:10:\"blockTypes\";a:1:{i:0;s:28:\"core/template-part/post-meta\";}}}}', 'off'),
(516, '_site_transient_timeout_theme_roots', '1737165832', 'off'),
(517, '_site_transient_theme_roots', 'a:1:{s:23:\"twentytwentythree-child\";s:7:\"/themes\";}', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_edit_lock', '1737031281:1'),
(4, 2, '_edit_lock', '1737031601:1'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1737031749'),
(7, 2, '_wp_desired_post_slug', 'sample-page'),
(8, 8, '_edit_lock', '1737031842:1'),
(9, 8, '_wp_trash_meta_status', 'draft'),
(10, 8, '_wp_trash_meta_time', '1737031846'),
(11, 8, '_wp_desired_post_slug', ''),
(12, 1, '_edit_lock', '1737031818:1'),
(13, 10, '_edit_lock', '1737031847:1'),
(14, 12, 'origin', 'theme'),
(15, 11, 'origin', 'theme'),
(16, 13, 'origin', 'theme'),
(18, 15, '_email', 'cijaydorosh@gmail.com'),
(19, 15, '_quantity', '123'),
(21, 16, '_email', 'cijaydorosh@gmail.com'),
(22, 16, '_quantity', '1000'),
(24, 17, '_name', ''),
(25, 17, '_phone', ''),
(26, 17, '_email', 'cijaydorosh@gmail.com'),
(27, 17, '_quantity', '800'),
(29, 18, '_name', 'Iliya'),
(30, 18, '_phone', '+38095123'),
(31, 18, '_email', 'cijaydorosh@gmail.com'),
(32, 18, '_quantity', '123'),
(34, 19, '_name', 'Ivan'),
(35, 19, '_phone', '+3809542456'),
(36, 19, '_email', 'cijaydorosh@gmail.com'),
(37, 19, '_quantity', '22'),
(39, 20, '_name', 'фывфыв'),
(40, 20, '_phone', '123123123'),
(41, 20, '_email', 'cijaydorosh@gmail.com'),
(42, 20, '_quantity', '22'),
(44, 21, '_name', 'asdasd'),
(45, 21, '_phone', '123123'),
(46, 21, '_email', 'cijaydorosh@gmail.com'),
(47, 21, '_quantity', '123'),
(49, 22, '_name', 'asdasd'),
(50, 22, '_phone', 'asdasd123123'),
(51, 22, '_email', 'cijays@gmail.com'),
(52, 22, '_quantity', '12'),
(54, 23, '_name', 'фывфыв'),
(55, 23, '_phone', '123213'),
(56, 23, '_email', 'cijaydorosh@gmail.com'),
(57, 23, '_quantity', '123'),
(59, 24, '_name', 'asd'),
(60, 24, '_phone', '123'),
(61, 24, '_email', 'cijaydorosh@gmail.com'),
(62, 24, '_quantity', '123'),
(64, 25, '_name', 'qweqwe'),
(65, 25, '_phone', '123'),
(66, 25, '_email', 'cijaydiyz@gmail.com'),
(67, 25, '_quantity', '123'),
(69, 26, '_name', 'asdasd'),
(70, 26, '_phone', 'asdasd'),
(71, 26, '_email', 'cijaydiyz@gmail.com'),
(72, 26, '_quantity', '123'),
(74, 27, '_name', 'фывфыв'),
(75, 27, '_phone', '+38095456'),
(76, 27, '_email', 'cijaydorosh@gmail.com'),
(77, 27, '_quantity', '123'),
(79, 28, '_name', 'qwe'),
(80, 28, '_phone', ''),
(81, 28, '_email', 'cijaydorosh@gmail.com'),
(82, 28, '_quantity', '123'),
(84, 29, '_name', 'фыв'),
(85, 29, '_phone', ''),
(86, 29, '_email', 'cijasyd@gmail.com'),
(87, 29, '_quantity', '123'),
(89, 30, '_name', 'фыв'),
(90, 30, '_phone', ''),
(91, 30, '_email', 'asdsd@gmail.com'),
(92, 30, '_quantity', '123'),
(94, 31, '_name', '123'),
(95, 31, '_phone', ''),
(96, 31, '_email', 'cijaydorosh@gmail.com'),
(97, 31, '_quantity', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-01-16 15:36:20', '2025-01-16 12:36:20', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2025-01-16 15:36:20', '2025-01-16 12:36:20', '', 0, 'http://relokia/?p=1', 0, 'post', '', 1),
(2, 1, '2025-01-16 15:36:20', '2025-01-16 12:36:20', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://relokia/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2025-01-16 15:49:09', '2025-01-16 12:49:09', '', 0, 'http://relokia/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-01-16 15:36:20', '2025-01-16 12:36:20', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://relokia.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-01-16 15:36:20', '2025-01-16 12:36:20', '', 0, 'http://relokia/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-01-16 15:36:24', '2025-01-16 12:36:24', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-01-16 15:36:24', '2025-01-16 12:36:24', '', 0, 'http://relokia/2025/01/16/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-01-16 15:36:51', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-01-16 15:36:51', '0000-00-00 00:00:00', '', 0, 'http://relokia/?p=5', 0, 'post', '', 0),
(6, 1, '2025-01-16 15:43:38', '2025-01-16 12:43:38', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree-child', '', '', '2025-01-16 15:43:38', '2025-01-16 12:43:38', '', 0, 'http://relokia/2025/01/16/wp-global-styles-twentytwentythree-child/', 0, 'wp_global_styles', '', 0),
(7, 1, '2025-01-16 15:49:09', '2025-01-16 12:49:09', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://relokia/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-01-16 15:49:09', '2025-01-16 12:49:09', '', 2, 'http://relokia/?p=7', 0, 'revision', '', 0),
(8, 1, '2025-01-16 15:50:46', '2025-01-16 12:50:46', '<!-- wp:paragraph -->\n<p>[r_test title=\"Test work\"]This is the description[/r_test]</p>\n<!-- /wp:paragraph -->', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2025-01-16 15:50:46', '2025-01-16 12:50:46', '', 0, 'http://relokia/?page_id=8', 0, 'page', '', 0),
(9, 1, '2025-01-16 15:50:46', '2025-01-16 12:50:46', '<!-- wp:paragraph -->\n<p>[r_test title=\"Test work\"]This is the description[/r_test]</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2025-01-16 15:50:46', '2025-01-16 12:50:46', '', 8, 'http://relokia/?p=9', 0, 'revision', '', 0),
(10, 1, '2025-01-16 15:53:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-01-16 15:53:09', '0000-00-00 00:00:00', '', 0, 'http://relokia/?page_id=10', 0, 'page', '', 0),
(11, 1, '2025-01-16 15:55:53', '2025-01-16 12:55:53', '', 'Header', '', 'publish', 'closed', 'closed', '', 'header', '', '', '2025-01-16 15:55:53', '2025-01-16 12:55:53', '', 0, 'http://relokia/2025/01/16/header/', 0, 'wp_template_part', '', 0),
(12, 1, '2025-01-16 15:55:53', '2025-01-16 12:55:53', '<!-- wp:paragraph -->\n<p>[r_test title=\"Test work\"]This is the description[/r_test]</p>\n<!-- /wp:paragraph -->', 'Главная страница блога', 'Отображает последние записи либо как главную страницу сайта, либо как \"страницу записей\", определенную в настройках чтения. Если существует, шаблон главной страницы переопределяет этот шаблон при отображении записей на главной странице.', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-01-16 15:55:53', '2025-01-16 12:55:53', '', 0, 'http://relokia/2025/01/16/home/', 0, 'wp_template', '', 0),
(13, 1, '2025-01-16 15:55:53', '2025-01-16 12:55:53', '', 'Footer', '', 'publish', 'closed', 'closed', '', 'footer', '', '', '2025-01-16 15:55:53', '2025-01-16 12:55:53', '', 0, 'http://relokia/2025/01/16/footer/', 0, 'wp_template_part', '', 0),
(14, 1, '2025-01-16 15:55:53', '2025-01-16 12:55:53', '<!-- wp:paragraph -->\n<p>[r_test title=\"Test work\"]This is the description[/r_test]</p>\n<!-- /wp:paragraph -->', 'Главная страница блога', 'Отображает последние записи либо как главную страницу сайта, либо как \"страницу записей\", определенную в настройках чтения. Если существует, шаблон главной страницы переопределяет этот шаблон при отображении записей на главной странице.', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2025-01-16 15:55:53', '2025-01-16 12:55:53', '', 12, 'http://relokia/?p=14', 0, 'revision', '', 0),
(15, 0, '2025-01-18 02:01:52', '2025-01-17 23:01:52', 'asd', 'asd', '', 'publish', 'open', 'open', '', 'asd', '', '', '2025-01-18 02:01:52', '2025-01-17 23:01:52', '', 0, 'http://relokia/2025/01/18/asd/', 0, 'post', '', 0),
(16, 0, '2025-01-18 02:03:37', '2025-01-17 23:03:37', '+38097854125', 'Ivan', '', 'publish', 'open', 'open', '', 'ivan', '', '', '2025-01-18 02:03:37', '2025-01-17 23:03:37', '', 0, 'http://relokia/2025/01/18/ivan/', 0, 'post', '', 0),
(17, 0, '2025-01-18 02:05:03', '2025-01-17 23:05:03', '+38095412585', 'ivan', '', 'publish', 'open', 'open', '', 'ivan-2', '', '', '2025-01-18 02:05:03', '2025-01-17 23:05:03', '', 0, 'http://relokia/2025/01/18/ivan-2/', 0, 'post', '', 0),
(18, 0, '2025-01-18 02:10:12', '2025-01-17 23:10:12', '+38095123', 'Iliya', '', 'publish', 'open', 'open', '', 'iliya', '', '', '2025-01-18 02:10:12', '2025-01-17 23:10:12', '', 0, 'http://relokia/2025/01/18/iliya/', 0, 'post', '', 0),
(19, 0, '2025-01-18 02:13:23', '2025-01-17 23:13:23', '+3809542456', 'Ivan', '', 'publish', 'open', 'open', '', 'ivan-3', '', '', '2025-01-18 02:13:23', '2025-01-17 23:13:23', '', 0, 'http://relokia/2025/01/18/ivan-3/', 0, 'post', '', 0),
(20, 0, '2025-01-18 02:18:09', '2025-01-17 23:18:09', '123123123', 'фывфыв', '', 'publish', 'open', 'open', '', '%d1%84%d1%8b%d0%b2%d1%84%d1%8b%d0%b2', '', '', '2025-01-18 02:18:09', '2025-01-17 23:18:09', '', 0, 'http://relokia/2025/01/18/%d1%84%d1%8b%d0%b2%d1%84%d1%8b%d0%b2/', 0, 'post', '', 0),
(21, 0, '2025-01-18 02:26:44', '2025-01-17 23:26:44', '123123', 'asdasd', '', 'publish', 'open', 'open', '', 'asdasd', '', '', '2025-01-18 02:26:44', '2025-01-17 23:26:44', '', 0, 'http://relokia/2025/01/18/asdasd/', 0, 'post', '', 0),
(22, 0, '2025-01-18 02:28:44', '2025-01-17 23:28:44', 'asdasd123123', 'asdasd', '', 'publish', 'open', 'open', '', 'asdasd-2', '', '', '2025-01-18 02:28:44', '2025-01-17 23:28:44', '', 0, 'http://relokia/2025/01/18/asdasd-2/', 0, 'post', '', 0),
(23, 0, '2025-01-18 02:31:56', '2025-01-17 23:31:56', '123213', 'фывфыв', '', 'publish', 'open', 'open', '', '%d1%84%d1%8b%d0%b2%d1%84%d1%8b%d0%b2-2', '', '', '2025-01-18 02:31:56', '2025-01-17 23:31:56', '', 0, 'http://relokia/2025/01/18/%d1%84%d1%8b%d0%b2%d1%84%d1%8b%d0%b2-2/', 0, 'post', '', 0),
(24, 0, '2025-01-18 02:33:29', '2025-01-17 23:33:29', '123', 'asd', '', 'publish', 'open', 'open', '', 'asd-2', '', '', '2025-01-18 02:33:29', '2025-01-17 23:33:29', '', 0, 'http://relokia/2025/01/18/asd-2/', 0, 'post', '', 0),
(25, 0, '2025-01-18 02:36:18', '2025-01-17 23:36:18', '123', 'qweqwe', '', 'publish', 'open', 'open', '', 'qweqwe', '', '', '2025-01-18 02:36:18', '2025-01-17 23:36:18', '', 0, 'http://relokia/2025/01/18/qweqwe/', 0, 'post', '', 0),
(26, 0, '2025-01-18 02:39:23', '2025-01-17 23:39:23', 'asdasd', 'asdasd', '', 'publish', 'open', 'open', '', 'asdasd-3', '', '', '2025-01-18 02:39:23', '2025-01-17 23:39:23', '', 0, 'http://relokia/2025/01/18/asdasd-3/', 0, 'post', '', 0),
(27, 0, '2025-01-18 02:42:04', '2025-01-17 23:42:04', '+38095456', 'фывфыв', '', 'publish', 'open', 'open', '', '%d1%84%d1%8b%d0%b2%d1%84%d1%8b%d0%b2-3', '', '', '2025-01-18 02:42:04', '2025-01-17 23:42:04', '', 0, 'http://relokia/2025/01/18/%d1%84%d1%8b%d0%b2%d1%84%d1%8b%d0%b2-3/', 0, 'post', '', 0),
(28, 0, '2025-01-18 02:43:02', '2025-01-17 23:43:02', '', 'qwe', '', 'publish', 'open', 'open', '', 'qwe', '', '', '2025-01-18 02:43:02', '2025-01-17 23:43:02', '', 0, 'http://relokia/2025/01/18/qwe/', 0, 'post', '', 0),
(29, 0, '2025-01-18 02:53:51', '2025-01-17 23:53:51', '', 'фыв', '', 'publish', 'open', 'open', '', '%d1%84%d1%8b%d0%b2', '', '', '2025-01-18 02:53:51', '2025-01-17 23:53:51', '', 0, 'http://relokia/2025/01/18/%d1%84%d1%8b%d0%b2/', 0, 'post', '', 0),
(30, 0, '2025-01-18 03:01:24', '2025-01-18 00:01:24', '', 'фыв', '', 'publish', 'open', 'open', '', '%d1%84%d1%8b%d0%b2-2', '', '', '2025-01-18 03:01:24', '2025-01-18 00:01:24', '', 0, 'http://relokia/2025/01/18/%d1%84%d1%8b%d0%b2-2/', 0, 'post', '', 0),
(31, 0, '2025-01-18 03:11:33', '2025-01-18 00:11:33', '', '123', '', 'publish', 'open', 'open', '', '123', '', '', '2025-01-18 03:11:33', '2025-01-18 00:11:33', '', 0, 'http://relokia/2025/01/18/123/', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'twentytwentythree-child', 'twentytwentythree-child', 0),
(3, 'header', 'header', 0),
(4, 'footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(11, 2, 0),
(11, 3, 0),
(12, 2, 0),
(13, 2, 0),
(13, 4, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 0),
(18, 1, 0),
(19, 1, 0),
(20, 1, 0),
(21, 1, 0),
(22, 1, 0),
(23, 1, 0),
(24, 1, 0),
(25, 1, 0),
(26, 1, 0),
(27, 1, 0),
(28, 1, 0),
(29, 1, 0),
(30, 1, 0),
(31, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 18),
(2, 2, 'wp_theme', '', 0, 4),
(3, 3, 'wp_template_part_area', '', 0, 1),
(4, 4, 'wp_template_part_area', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"e7744e33f127f0e0325e328767011ebd2772a7aa3259816d8a779bd026777975\";a:4:{s:10:\"expiration\";i:1738240606;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1737031006;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:4:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-01-16T12:52:10.207Z\";s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bzj5ZbopJREY4MN49PR7.rvGr.21/u0', 'admin', 'cijaydorosh@gmail.com', 'http://relokia', '2025-01-16 12:36:20', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 21:53:51'),
(2, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:01:24'),
(3, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:11:33'),
(4, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:14:13'),
(5, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:15:58'),
(6, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:29:20'),
(7, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:31:17'),
(8, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:39:53'),
(9, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:42:19'),
(10, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:42:47'),
(11, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:45:00'),
(12, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:46:24'),
(13, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:46:58'),
(14, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:47:34'),
(15, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:49:37'),
(16, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:50:01'),
(17, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:52:27'),
(18, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:55:25'),
(19, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 22:59:30'),
(20, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:00:13'),
(21, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:02:35'),
(22, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:05:25'),
(23, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:08:46'),
(24, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:09:18'),
(25, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:12:58'),
(26, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:13:16'),
(27, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:15:20'),
(28, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:21:53'),
(29, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:23:10'),
(30, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:24:35'),
(31, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:25:38'),
(32, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":44}', 0, '2025-01-17 23:26:07'),
(33, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":37}', 0, '2025-01-17 23:29:31'),
(34, 'Mailer: Google / Gmail\r\nConflicts: Easy WP SMTP\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"C:\\\\OpenServer\\\\domains\\\\relokia\\\\wp-content\\\\themes\\\\twentytwentythree-child\\\\functions.php\",\"line\":37}', 0, '2025-01-17 23:34:02');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2025-01-17 23:50:03');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_easywpsmtp_debug_events`
--
ALTER TABLE `wp_easywpsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_easywpsmtp_tasks_meta`
--
ALTER TABLE `wp_easywpsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_easywpsmtp_debug_events`
--
ALTER TABLE `wp_easywpsmtp_debug_events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_easywpsmtp_tasks_meta`
--
ALTER TABLE `wp_easywpsmtp_tasks_meta`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
