-- Adminer 4.2.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `api_key`;
CREATE TABLE `api_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `api_log`;
CREATE TABLE `api_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `date_log` datetime DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `authorized` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `indexed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_category` int(11) unsigned DEFAULT NULL,
  `comment_allow` char(1) DEFAULT '0',
  `comment_autovalid` char(1) DEFAULT '0',
  `comment_expire` datetime DEFAULT NULL,
  `flag` smallint(1) DEFAULT '0',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`, `has_url`) VALUES
(1,	'404',	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	NULL,	'0',	'0',	NULL,	0,	1),
(2,	'401',	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	NULL,	'0',	'0',	NULL,	0,	1),
(3,	'403',	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	NULL,	'0',	'0',	NULL,	0,	1);

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment` (
  `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `content` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'If comment comes from admin, set to 1',
  PRIMARY KEY (`id_article_comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `article_lang`;
CREATE TABLE `article_lang` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(3) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_article`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `article_lang` (`id_article`, `lang`, `url`, `title`, `subtitle`, `meta_title`, `content`, `meta_keywords`, `meta_description`, `online`) VALUES
(1,	'ca',	'404',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(1,	'en',	'404',	'404',	NULL,	NULL,	'<p>The content you asked for was not found !</p>',	NULL,	NULL,	1),
(1,	'es',	'404',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(2,	'ca',	'401',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(2,	'en',	'401',	'401',	'Please login',	NULL,	'<p>Please login to see this content.</p>',	NULL,	NULL,	1),
(2,	'es',	'401',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(3,	'ca',	'403',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(3,	'en',	'403',	'403',	'Forbidden',	NULL,	'<p>This content is forbidden.</p>',	NULL,	NULL,	1),
(3,	'es',	'403',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1);

DROP TABLE IF EXISTS `article_media`;
CREATE TABLE `article_media` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `url` varchar(255) DEFAULT NULL,
  `lang_display` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_article`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_article`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `description` text,
  `type_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(3) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_captcha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category_lang`;
CREATE TABLE `category_lang` (
  `id_category` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(3) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`id_category`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `element`;
CREATE TABLE `element` (
  `id_element` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_element_definition` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element`),
  KEY `idx_element_id_element_definition` (`id_element_definition`),
  KEY `idx_element_id_parent` (`id_parent`),
  KEY `idx_element_parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `element` (`id_element`, `id_element_definition`, `parent`, `id_parent`, `ordering`) VALUES
(1,	1,	'page',	4,	1);

DROP TABLE IF EXISTS `element_definition`;
CREATE TABLE `element_definition` (
  `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element_definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `element_definition` (`id_element_definition`, `name`, `description`, `ordering`) VALUES
(1,	'home-extend',	'',	0);

DROP TABLE IF EXISTS `element_definition_lang`;
CREATE TABLE `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(3) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_element_definition`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `element_definition_lang` (`id_element_definition`, `lang`, `title`) VALUES
(1,	'ca',	'Contingut extra'),
(1,	'en',	'Extra content'),
(1,	'es',	'Contenido extra');

DROP TABLE IF EXISTS `event_log`;
CREATE TABLE `event_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  `message` text,
  `id_user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `extend_field`;
CREATE TABLE `extend_field` (
  `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `parent` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `translated` char(1) DEFAULT '0',
  `value` text,
  `default_value` varchar(255) DEFAULT NULL,
  `global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parents` varchar(300) NOT NULL DEFAULT '',
  `id_element_definition` int(11) unsigned NOT NULL DEFAULT '0',
  `block` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_extend_field`),
  KEY `idx_extend_field_parent` (`parent`),
  KEY `idx_extend_field_id_element_definition` (`id_element_definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `extend_field` (`id_extend_field`, `name`, `type`, `description`, `parent`, `ordering`, `translated`, `value`, `default_value`, `global`, `parents`, `id_element_definition`, `block`) VALUES
(1,	'content',	'3',	'',	'page',	0,	'1',	'',	'',	0,	'0',	0,	'0'),
(2,	'extra-content',	'3',	'',	'',	0,	'1',	'',	'',	0,	'0',	1,	'0');

DROP TABLE IF EXISTS `extend_fields`;
CREATE TABLE `extend_fields` (
  `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_extend_field` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL,
  `lang` char(3) NOT NULL DEFAULT '',
  `content` text,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `id_element` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_extend_fields`),
  KEY `idx_extend_fields_id_parent` (`id_parent`),
  KEY `idx_extend_fields_lang` (`lang`),
  KEY `idx_extend_fields_id_extend_field` (`id_extend_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `extend_field_lang`;
CREATE TABLE `extend_field_lang` (
  `id_extend_field` int(11) unsigned NOT NULL,
  `lang` char(3) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_extend_field`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ion_sessions`;
CREATE TABLE `ion_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `lang`;
CREATE TABLE `lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `online` char(1) DEFAULT '0',
  `def` char(1) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `direction` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lang` (`lang`, `name`, `online`, `def`, `ordering`, `direction`) VALUES
('ca',	'catalan',	'1',	'1',	1,	1),
('en',	'english',	'1',	'0',	2,	1),
('es',	'castellano',	'1',	'0',	3,	1);

DROP TABLE IF EXISTS `login_tracker`;
CREATE TABLE `login_tracker` (
  `ip_address` varchar(32) NOT NULL,
  `first_time` int(11) unsigned NOT NULL,
  `failures` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'file_name',
  `path` varchar(500) NOT NULL COMMENT 'Complete path to the medium, including media file name, excluding host name',
  `base_path` varchar(500) NOT NULL COMMENT 'medium folder base path, excluding host name',
  `copyright` varchar(128) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Medium date',
  `link` varchar(255) DEFAULT NULL COMMENT 'Link to a resource, attached to this medium',
  `square_crop` enum('tl','m','br') NOT NULL DEFAULT 'm',
  PRIMARY KEY (`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
(1,	'picture',	'en_construccio.gif',	'files/en_construccio/en_construccio.gif',	'files/en_construccio/',	NULL,	'',	'0000-00-00 00:00:00',	NULL,	'm');

DROP TABLE IF EXISTS `media_lang`;
CREATE TABLE `media_lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alt` varchar(500) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id_media`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `menu` (`id_menu`, `name`, `title`, `ordering`) VALUES
(1,	'main',	'Main menu',	NULL),
(2,	'system',	'System menu',	NULL);

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id_module` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `with_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `i_module_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `module_setting`;
CREATE TABLE `module_setting` (
  `id_module_setting` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'Setting name',
  `content` varchar(255) NOT NULL COMMENT 'Setting content',
  `lang` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_module_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id_note` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(10) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_note`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `id_menu` int(11) unsigned NOT NULL DEFAULT '0',
  `id_type` smallint(2) NOT NULL DEFAULT '0',
  `id_subnav` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `appears` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `view` varchar(50) DEFAULT NULL COMMENT 'Page view',
  `view_single` varchar(50) DEFAULT NULL COMMENT 'Single Article Page view',
  `article_list_view` varchar(50) DEFAULT NULL COMMENT 'Article list view for each article linked to this page',
  `article_view` varchar(50) DEFAULT NULL COMMENT 'Article detail view for each article linked to this page',
  `article_order` varchar(50) NOT NULL DEFAULT 'ordering' COMMENT 'Article order in this page. Can be "ordering", "date"',
  `article_order_direction` varchar(50) NOT NULL DEFAULT 'ASC',
  `link` varchar(255) DEFAULT '' COMMENT 'Link to internal / external resource',
  `link_type` varchar(25) DEFAULT NULL COMMENT '''page'', ''article'' or NULL',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `pagination` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Pagination use ?',
  `priority` int(1) unsigned NOT NULL DEFAULT '5' COMMENT 'Page priority',
  `used_by_module` tinyint(1) unsigned DEFAULT NULL,
  `deny_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `idx_page_id_parent` (`id_parent`),
  KEY `idx_page_level` (`level`),
  KEY `idx_page_menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1,	0,	2,	0,	0,	'404',	0,	0,	1,	0,	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	1,	NULL,	NULL,	NULL,	NULL,	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	NULL,	NULL),
(2,	0,	2,	0,	0,	'401',	0,	0,	1,	0,	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	1,	NULL,	NULL,	NULL,	NULL,	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	NULL,	NULL),
(3,	0,	2,	0,	0,	'403',	0,	0,	1,	0,	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	1,	NULL,	NULL,	NULL,	NULL,	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	NULL,	NULL),
(4,	0,	1,	0,	0,	'home',	2,	0,	1,	1,	NULL,	'admin',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'2019-01-18 17:27:50',	'0000-00-00 00:00:00',	1,	1,	'page_home',	'',	NULL,	'',	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	0,	'404'),
(5,	0,	1,	0,	0,	'under-construction',	1,	0,	0,	0,	'admin',	'admin',	'2014-03-20 12:08:06',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'2016-12-05 00:43:27',	'0000-00-00 00:00:00',	0,	1,	'underconstruction',	'',	NULL,	'',	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	0,	'404');

DROP TABLE IF EXISTS `page_article`;
CREATE TABLE `page_article` (
  `id_page` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `view` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `id_type` int(11) unsigned DEFAULT NULL,
  `link_type` varchar(25) NOT NULL DEFAULT '',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `main_parent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`,`id_article`),
  KEY `idx_page_article_id_type` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `page_lang`;
CREATE TABLE `page_lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `subnav_title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_page`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `page_lang` (`lang`, `id_page`, `url`, `link`, `title`, `subtitle`, `nav_title`, `subnav_title`, `meta_title`, `meta_description`, `meta_keywords`, `online`) VALUES
('ca',	1,	'404',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('en',	1,	'404',	'',	'404',	'Can\'t find requested page.',	'',	'',	NULL,	NULL,	NULL,	1),
('es',	1,	'404',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('ca',	2,	'401',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('en',	2,	'401',	'',	'401',	'Login needed',	'',	'',	NULL,	NULL,	NULL,	1),
('es',	2,	'401',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('ca',	3,	'403',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('en',	3,	'403',	'',	'403',	'Forbidden',	'',	'',	NULL,	NULL,	NULL,	1),
('es',	3,	'403',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1);

DROP TABLE IF EXISTS `page_media`;
CREATE TABLE `page_media` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `lang_display` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_page`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `page_media` (`id_page`, `id_media`, `online`, `ordering`, `lang_display`) VALUES
(5,	1,	1,	1,	NULL);

DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id_resource` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) unsigned DEFAULT '0',
  `resource` varchar(255) NOT NULL DEFAULT '',
  `actions` varchar(500) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  PRIMARY KEY (`id_resource`),
  UNIQUE KEY `resource_key` (`resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `resource` (`id_resource`, `id_parent`, `resource`, `actions`, `title`, `description`) VALUES
(1,	NULL,	'admin',	'',	'Backend login',	'Connect to ionize backend'),
(10,	NULL,	'admin/menu',	'create,edit,delete',	'Menu',	'Menus'),
(11,	10,	'admin/menu/permissions/backend',	'',	'Permissions',	'Menu > Backend Permissions'),
(20,	NULL,	'admin/translations',	'',	'Translations',	'Translations'),
(30,	NULL,	'admin/filemanager',	'upload,rename,delete,move',	'Filemanager',	'FileManager'),
(35,	NULL,	'admin/medialist',	'',	'MediaList',	'MediaList'),
(40,	NULL,	'admin/page',	'create,edit,delete',	'Page',	'Page'),
(41,	40,	'admin/page/article',	'add',	'Article',	'Page > Article'),
(42,	40,	'admin/page/element',	'add',	'Content Element',	'Page > Content Element'),
(50,	40,	'admin/page/media',	'',	'Media',	'Page > Media'),
(51,	50,	'admin/page/media/picture',	'link,unlink, edit',	'Pictures',	'Page > Media > Pictures'),
(52,	50,	'admin/page/media/video',	'link,unlink, edit',	'Videos',	'Page > Media > Videos'),
(53,	50,	'admin/page/media/music',	'link,unlink, edit',	'Music',	'Page > Media > Music'),
(54,	50,	'admin/page/media/file',	'link,unlink, edit',	'Files',	'Page > Media > Files'),
(60,	40,	'admin/page/permissions',	'',	'Permission',	'Page > Permission'),
(61,	60,	'admin/page/permissions/backend',	'',	'Backend',	'Page > Permission > Backend'),
(62,	60,	'admin/page/permissions/frontend',	'',	'Frontend',	'Page > Permission > Frontend'),
(70,	NULL,	'admin/article',	'create,edit,delete,move,copy,duplicate',	'Article',	'Article'),
(80,	70,	'admin/article/media',	'',	'Media',	'Article > Media'),
(81,	80,	'admin/article/media/picture',	'link,unlink, edit',	'Pictures',	'Article > Media > Pictures'),
(82,	80,	'admin/article/media/video',	'link,unlink,edit',	'Videos',	'Article > Media > Videos'),
(83,	80,	'admin/article/media/music',	'link,unlink,edit',	'Music',	'Article > Media > Music'),
(84,	80,	'admin/article/media/file',	'link,unlink,edit',	'Files',	'Article > Media > Files'),
(85,	70,	'admin/article/element',	'add',	'Content Element',	'Article > Content Element'),
(86,	70,	'admin/article/category',	'',	'Manage categories',	'Article > Categories'),
(90,	70,	'admin/article/permissions',	'',	'Permission',	'Article > Permission'),
(91,	90,	'admin/article/permissions/backend',	'',	'Backend',	'Article > Permission > Backend'),
(92,	90,	'admin/article/permissions/frontend',	'',	'Frontend',	'Article > Permission > Frontend'),
(93,	70,	'admin/article/tag',	'',	'Manage tags',	'Article > Tags'),
(100,	NULL,	'admin/tree',	'',	'Tree',	''),
(101,	100,	'admin/tree/menu',	'add_page,edit',	'Menus',	''),
(102,	100,	'admin/tree/page',	'status,add_page,add_article,order',	'Pages',	''),
(103,	100,	'admin/tree/article',	'unlink,status,move,copy,order',	'Articles',	''),
(120,	NULL,	'admin/article/type',	'create,edit,delete',	'Article Type',	'Article types'),
(150,	NULL,	'admin/modules',	'install',	'Modules',	'Modules'),
(151,	150,	'admin/modules/permissions',	'',	'Set Permissions',	'Modules > Permissions'),
(180,	NULL,	'admin/element',	'create,edit,delete',	'Content Element',	'Content Elements'),
(210,	NULL,	'admin/extend',	'create,edit,delete',	'Extend Fields',	'Extend Fields'),
(240,	NULL,	'admin/tools',	'',	'Tools',	'Tools'),
(241,	240,	'admin/tools/google_analytics',	'',	'Google Analytics',	'Tools > Google Analytics'),
(250,	240,	'admin/tools/system',	'',	'System Diagnosis',	'Tools > System'),
(251,	250,	'admin/tools/system/information',	'',	'Information',	'Tools > System > Information'),
(252,	250,	'admin/tools/system/repair',	'',	'Repair tools',	'Tools > System > Repair'),
(253,	250,	'admin/tools/system/report',	'',	'Reports',	'Tools > System > Reports'),
(270,	NULL,	'admin/settings',	'',	'Settings',	'Settings'),
(271,	270,	'admin/settings/ionize',	'',	'Ionize UI',	'Settings > UI Settings'),
(272,	270,	'admin/settings/languages',	'',	'Languages Management',	'Settings > Languages'),
(273,	270,	'admin/settings/themes',	'edit',	'Themes',	'Settings > Themes'),
(274,	270,	'admin/settings/website',	'',	'Website settings',	'Settings > Website'),
(275,	270,	'admin/settings/technical',	'',	'Technical settings',	'Settings > Technical'),
(300,	NULL,	'admin/users_roles',	'',	'Users / Roles',	'Users / Roles'),
(301,	300,	'admin/user',	'create,edit,delete',	'Users',	'Users'),
(302,	300,	'admin/role',	'create,edit,delete',	'Roles',	'Roles'),
(303,	302,	'admin/role/permissions',	'',	'Set Permissions',	'See Role\'s permissions');

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id_role` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `role_level` int(11) DEFAULT NULL,
  `role_code` varchar(25) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `role_description` tinytext,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `role_code` (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `role` (`id_role`, `role_level`, `role_code`, `role_name`, `role_description`) VALUES
(1,	10000,	'super-admin',	'Super Admin',	''),
(2,	5000,	'admin',	'Admin',	''),
(3,	1000,	'editor',	'Editor',	''),
(4,	100,	'user',	'User',	''),
(5,	50,	'pending',	'Pending',	''),
(6,	10,	'guest',	'Guest',	''),
(7,	-10,	'banned',	'Banned',	''),
(8,	-100,	'deactivated',	'Deactivated',	'');

DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule` (
  `id_role` int(11) NOT NULL,
  `resource` varchar(100) NOT NULL DEFAULT '',
  `actions` varchar(100) NOT NULL DEFAULT '',
  `permission` smallint(1) DEFAULT NULL,
  `id_element` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_role`,`resource`,`actions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `rule` (`id_role`, `resource`, `actions`, `permission`, `id_element`) VALUES
(1,	'all',	'',	1,	NULL),
(2,	'admin',	'',	1,	NULL),
(2,	'admin/article',	'create,edit,delete,move,copy,duplicate',	1,	NULL),
(2,	'admin/article/category',	'',	1,	NULL),
(2,	'admin/article/element',	'add',	1,	NULL),
(2,	'admin/article/media',	'',	1,	NULL),
(2,	'admin/article/media/file',	'link,unlink,edit',	1,	NULL),
(2,	'admin/article/media/music',	'link,unlink,edit',	1,	NULL),
(2,	'admin/article/media/picture',	'link,unlink,edit',	1,	NULL),
(2,	'admin/article/media/video',	'link,unlink,edit',	1,	NULL),
(2,	'admin/article/permissions',	'',	1,	NULL),
(2,	'admin/article/permissions/backend',	'',	1,	NULL),
(2,	'admin/article/permissions/frontend',	'',	1,	NULL),
(2,	'admin/article/tag',	'',	1,	NULL),
(2,	'admin/article/type',	'create,edit,delete',	1,	NULL),
(2,	'admin/element',	'create,edit,delete',	1,	NULL),
(2,	'admin/extend',	'create,edit,delete',	1,	NULL),
(2,	'admin/filemanager',	'upload,rename,delete,move',	1,	NULL),
(2,	'admin/menu',	'create,edit,delete',	1,	NULL),
(2,	'admin/modules',	'install',	1,	NULL),
(2,	'admin/modules/permissions',	'',	1,	NULL),
(2,	'admin/page',	'create,edit,delete',	1,	NULL),
(2,	'admin/page/article',	'add',	1,	NULL),
(2,	'admin/page/element',	'add',	1,	NULL),
(2,	'admin/page/media',	'',	1,	NULL),
(2,	'admin/page/media/file',	'link,unlink,edit',	1,	NULL),
(2,	'admin/page/media/music',	'link,unlink,edit',	1,	NULL),
(2,	'admin/page/media/picture',	'link,unlink,edit',	1,	NULL),
(2,	'admin/page/media/video',	'link,unlink,edit',	1,	NULL),
(2,	'admin/page/permissions',	'',	1,	NULL),
(2,	'admin/page/permissions/backend',	'',	1,	NULL),
(2,	'admin/page/permissions/frontend',	'',	1,	NULL),
(2,	'admin/role',	'create,edit,delete',	1,	NULL),
(2,	'admin/role/permissions',	'',	1,	NULL),
(2,	'admin/settings',	'',	1,	NULL),
(2,	'admin/settings/ionize',	'',	1,	NULL),
(2,	'admin/settings/languages',	'',	1,	NULL),
(2,	'admin/settings/website',	'',	1,	NULL),
(2,	'admin/tools',	'',	1,	NULL),
(2,	'admin/tools/google_analytics',	'',	1,	NULL),
(2,	'admin/tools/system',	'',	1,	NULL),
(2,	'admin/tools/system/information',	'',	1,	NULL),
(2,	'admin/tools/system/repair',	'',	1,	NULL),
(2,	'admin/tools/system/report',	'',	1,	NULL),
(2,	'admin/translations',	'',	1,	NULL),
(2,	'admin/tree',	'',	1,	NULL),
(2,	'admin/tree/article',	'unlink,status,move,copy,order',	1,	NULL),
(2,	'admin/tree/menu',	'add_page,edit',	1,	NULL),
(2,	'admin/tree/page',	'status,add_page,add_article,order',	1,	NULL),
(2,	'admin/user',	'create,edit,delete',	1,	NULL),
(2,	'admin/users_roles',	'',	1,	NULL),
(3,	'admin',	'',	1,	NULL),
(3,	'admin/article',	'create,edit,delete,move,copy,duplicate',	1,	NULL),
(3,	'admin/article/category',	'',	1,	NULL),
(3,	'admin/article/element',	'add',	1,	NULL),
(3,	'admin/article/media',	'',	1,	NULL),
(3,	'admin/article/media/picture',	'unlink',	1,	NULL),
(3,	'admin/article/media/video',	'unlink,edit',	1,	NULL),
(3,	'admin/article/permissions',	'',	1,	NULL),
(3,	'admin/article/permissions/backend',	'',	1,	NULL),
(3,	'admin/article/permissions/frontend',	'',	1,	NULL),
(3,	'admin/article/tag',	'',	1,	NULL),
(3,	'admin/filemanager',	'upload,rename,delete,move',	1,	NULL),
(3,	'admin/menu',	'create,edit,delete',	1,	NULL),
(3,	'admin/modules',	'',	1,	NULL),
(3,	'admin/page',	'create,edit,delete',	1,	NULL),
(3,	'admin/page/article',	'add',	1,	NULL),
(3,	'admin/page/element',	'add',	1,	NULL),
(3,	'admin/page/media',	'',	1,	NULL),
(3,	'admin/page/media/file',	'link,unlink,edit',	1,	NULL),
(3,	'admin/page/media/music',	'link,unlink,edit',	1,	NULL),
(3,	'admin/page/media/picture',	'link,unlink,edit',	1,	NULL),
(3,	'admin/page/media/video',	'link,unlink,edit',	1,	NULL),
(3,	'admin/page/permissions',	'',	1,	NULL),
(3,	'admin/page/permissions/backend',	'',	1,	NULL),
(3,	'admin/page/permissions/frontend',	'',	1,	NULL),
(3,	'admin/settings',	'',	1,	NULL),
(3,	'admin/settings/ionize',	'',	1,	NULL),
(3,	'admin/settings/languages',	'',	1,	NULL),
(3,	'admin/settings/website',	'',	1,	NULL),
(3,	'admin/tools',	'',	1,	NULL),
(3,	'admin/tools/google_analytics',	'',	1,	NULL),
(3,	'admin/tools/system',	'',	1,	NULL),
(3,	'admin/tools/system/information',	'',	1,	NULL),
(3,	'admin/tools/system/report',	'',	1,	NULL),
(3,	'admin/translations',	'',	1,	NULL),
(3,	'admin/tree',	'',	1,	NULL),
(3,	'admin/tree/article',	'unlink,status,move,copy,order',	1,	NULL),
(3,	'admin/tree/menu',	'add_page,edit',	1,	NULL),
(3,	'admin/tree/page',	'status,add_page,add_article,order',	1,	NULL),
(3,	'admin/user',	'create,edit,delete',	1,	NULL),
(3,	'admin/users_roles',	'',	1,	NULL);

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_setting`),
  UNIQUE KEY `idx_unq_setting` (`name`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(1,	'website_email',	'',	''),
(2,	'files_path',	'files',	''),
(3,	'theme',	'base',	''),
(4,	'theme_admin',	'admin',	''),
(5,	'google_analytics',	'<script>\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\n\n  ga(\'create\', \'UA-7480127-8\', \'auto\');\n  ga(\'send\', \'pageview\');\n\n</script>',	''),
(6,	'filemanager',	'mootools-filemanager',	''),
(7,	'show_help_tips',	'',	''),
(8,	'display_connected_label',	'1',	''),
(9,	'display_dashboard_shortcuts',	'1',	''),
(10,	'display_dashboard_modules',	'1',	''),
(11,	'display_dashboard_users',	'1',	''),
(12,	'display_dashboard_content',	'1',	''),
(13,	'texteditor',	'tinymce',	''),
(14,	'media_thumb_size',	'120',	''),
(15,	'tinybuttons1',	'pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker',	''),
(16,	'tinybuttons2',	'fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror',	''),
(17,	'tinybuttons3',	'tablecontrols',	''),
(18,	'smalltinybuttons1',	'bold,italic,|,bullist,numlist,|,link,unlink,image,|,nonbreaking',	''),
(19,	'smalltinybuttons2',	'',	''),
(20,	'smalltinybuttons3',	'',	''),
(21,	'displayed_admin_languages',	'ca,en,es',	''),
(22,	'date_format',	'%d.%m.%Y',	''),
(23,	'force_lang_urls',	'1',	''),
(24,	'tinyblockformats',	'p,h2,h3,h4,h5,pre,div',	''),
(25,	'article_allowed_tags',	'h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,param,embed,map,p,a,ul,ol,li,br,b,strong',	''),
(26,	'filemanager_file_types',	'gif,jpe,jpeg,jpg,png,flv,mpeg,mpg,mp3,pdf',	''),
(27,	'default_admin_lang',	'es',	''),
(28,	'ionize_version',	'1.0.0',	''),
(29,	'upload_autostart',	'1',	''),
(30,	'resize_on_upload',	'1',	''),
(31,	'picture_max_width',	'1200',	''),
(32,	'picture_max_height',	'1200',	''),
(33,	'upload_mode',	'',	''),
(34,	'no_source_picture',	'default.png',	''),
(35,	'enable_backend_tracker',	'1',	''),
(36,	'backend_ui_style',	'original',	''),
(37,	'site_title',	'SITE_NAME',	'en'),
(38,	'display_dashboard_quick_settings',	'1',	''),
(39,	'display_front_offline_content',	'1',	''),
(40,	'meta_keywords',	'',	'ca'),
(41,	'meta_description',	'',	'ca'),
(42,	'site_title',	'SITE_NAME',	'ca'),
(43,	'meta_keywords',	'',	'en'),
(44,	'meta_description',	'',	'en'),
(45,	'meta_keywords',	'',	'es'),
(46,	'meta_description',	'',	'es'),
(47,	'site_title',	'SITE_NAME',	'es'),
(48,	'google_analytics_id',	'',	''),
(49,	'google_analytics_profile_id',	'',	''),
(50,	'google_analytics_url',	'',	''),
(51,	'google_analytics_email',	'',	''),
(52,	'google_analytics_password',	'',	''),
(53,	'dashboard_google',	'',	''),
(54,	'site_email',	'no-reply@',	''),
(55,	'email_technical',	'carles@webelop.es',	''),
(56,	'email_contact',	'',	''),
(57,	'email_info',	'',	'');

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tracker`;
CREATE TABLE `tracker` (
  `id_user` int(11) unsigned NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `elements` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `parent` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `ordering` smallint(6) NOT NULL,
  `view` varchar(50) DEFAULT NULL COMMENT 'view',
  `flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `url`;
CREATE TABLE `url` (
  `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_entity` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `canonical` smallint(1) NOT NULL DEFAULT '0',
  `active` smallint(1) NOT NULL DEFAULT '0',
  `lang` varchar(3) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `path_ids` varchar(50) DEFAULT NULL,
  `full_path_ids` varchar(50) DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_url`),
  KEY `idx_url_type` (`type`),
  KEY `idx_url_active` (`active`),
  KEY `idx_url_lang` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(1,	5,	'page',	1,	1,	'ca',	'en-construccio',	'5',	'5',	'2016-12-05 00:43:27'),
(2,	5,	'page',	1,	1,	'en',	'under-construction',	'5',	'5',	'2016-12-05 00:43:27'),
(3,	5,	'page',	1,	1,	'es',	'en-construccion',	'5',	'5',	'2016-12-05 00:43:27');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_role` smallint(4) unsigned NOT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_visit` timestamp NULL DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `gender` smallint(1) DEFAULT NULL COMMENT '1: Male, 2 : Female',
  `password` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `salt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  KEY `id_role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id_user`, `id_role`, `join_date`, `last_visit`, `username`, `screen_name`, `firstname`, `lastname`, `birthdate`, `gender`, `password`, `email`, `salt`) VALUES
(1,	1,	'2014-03-19 12:07:08',	'2019-01-19 15:21:56',	'admin',	'Webelop',	'',	'',	NULL,	NULL,	'FF9N55+FtHG+CpONxnqC',	'carles@webelop.es',	'35aade34753d3a32');

-- 2019-01-19 15:43:15
