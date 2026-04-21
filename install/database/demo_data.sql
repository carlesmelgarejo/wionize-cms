/**
 * Ionize 1.0.0.x
 * "Demo" theme example data
 *
 * These data are provided as demo content for the theme "Demo"
 * Do not remove the separator after each query :
 * it is used as SQL request separator by the installer
 *
 */


--
-- Base data
--
UPDATE setting SET content='base' WHERE name='theme';
--#--
DELETE FROM setting WHERE name='site_title';
--#--
INSERT INTO setting VALUES('', 'site_title', 'SITE_NAME', 'ca');
INSERT INTO setting VALUES('', 'site_title', 'SITE_NAME', 'es');
INSERT INTO setting VALUES('', 'site_title', 'SITE_NAME', 'en');
--#--
DELETE FROM setting WHERE name='site_email';
--#--
INSERT INTO setting VALUES('', 'site_email', 'no-reply@', '');
--#--
DELETE FROM setting WHERE name='email_technical';
--#--
INSERT INTO setting VALUES('', 'email_technical', 'carles@webelop.es', '');
--#--
DELETE FROM setting WHERE name='meta_keywords';
--#--
INSERT INTO setting VALUES('', 'meta_keywords', '', 'ca');
--#--
DELETE FROM setting WHERE name='meta_description';
--#--
INSERT INTO setting VALUES('', 'meta_description', '', 'ca');
--#--


-- 
-- Article
-- 
TRUNCATE article;
--#--

INSERT INTO article (id_article, name, author, updater, created, publish_on, publish_off, updated, logical_date, indexed, id_category, comment_allow, comment_autovalid, comment_expire, flag, has_url)
VALUES
(1,	'404',	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	NULL,	'0',	'0',	NULL,	0,	1),
(2,	'401',	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	NULL,	'0',	'0',	NULL,	0,	1),
(3,	'403',	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	NULL,	'0',	'0',	NULL,	0,	1);
--#--


-- 
-- Article_lang
-- 
TRUNCATE article_lang;
--#--

INSERT INTO article_lang (id_article, lang, url, title, subtitle, meta_title, content, meta_keywords, meta_description, online)
VALUES
(1,	'ca',	'404',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(1,	'en',	'404',	'404',	NULL,	NULL,	'<p>The content you asked for was not found !</p>',	NULL,	NULL,	1),
(1,	'es',	'404',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(2,	'ca',	'401',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(2,	'en',	'401',	'401',	'Please login',	NULL,	'<p>Please login to see this content.</p>',	NULL,	NULL,	1),
(2,	'es',	'401',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(3,	'ca',	'403',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1),
(3,	'en',	'403',	'403',	'Forbidden',	NULL,	'<p>This content is forbidden.</p>',	NULL,	NULL,	1),
(3,	'es',	'403',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1);
--#--


-- 
-- Media
-- 
TRUNCATE media;
--#--

INSERT INTO media (id_media, type, file_name, path, base_path, copyright, date, link, square_crop)
VALUES
(1,	'picture',	'en_construccio.gif',	'files/en_construccio/en_construccio.gif',	'files/en_construccio/',	NULL,	'',	'0000-00-00 00:00:00',	NULL,	'm');

--#--


-- 
-- Menu
-- 
TRUNCATE menu;
--#--

INSERT INTO menu (id_menu, name, title, ordering)
VALUES
(1,	'main',	'Main menu',	NULL),
(2,	'system',	'System menu',	NULL);
--#--



-- 
-- Page
-- 
TRUNCATE page;
--#--

INSERT INTO page (id_page, id_parent, id_menu, id_type, id_subnav, name, ordering, level, online, home, author, updater, created, publish_on, publish_off, updated, logical_date, appears, has_url, view, view_single, article_list_view, article_view, article_order, article_order_direction, link, link_type, link_id, pagination, priority, used_by_module)
VALUES
(1,	0,	2,	0,	0,	'404',	0,	0,	1,	0,	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	1,	NULL,	NULL,	NULL,	NULL,	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	NULL,	NULL),
(2,	0,	2,	0,	0,	'401',	0,	0,	1,	0,	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	1,	NULL,	NULL,	NULL,	NULL,	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	NULL,	NULL),
(3,	0,	2,	0,	0,	'403',	0,	0,	1,	0,	NULL,	NULL,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	1,	NULL,	NULL,	NULL,	NULL,	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	NULL,	NULL),
(4,	0,	1,	0,	0,	'home',	2,	0,	1,	1,	NULL,	'admin',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'2019-01-18 17:27:50',	'0000-00-00 00:00:00',	1,	1,	'page_home',	'',	NULL,	'',	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	0,	'404'),
(5,	0,	1,	0,	0,	'under-construction',	1,	0,	0,	0,	'admin',	'admin',	'2014-03-20 12:08:06',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'2016-12-05 00:43:27',	'0000-00-00 00:00:00',	0,	1,	'underconstruction',	'',	NULL,	'',	'ordering',	'ASC',	'',	NULL,	'',	0,	5,	0,	'404');
--#--


-- 
-- Page_lang
-- 
		
TRUNCATE page_lang;
--#--

INSERT INTO page_lang (lang, id_page, url, link, title, subtitle, nav_title, subnav_title, meta_title, meta_description, meta_keywords, online)
VALUES
('ca',	1,	'404',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('en',	1,	'404',	'',	'404',	'Can\'t find requested page.',	'',	'',	NULL,	NULL,	NULL,	1),
('es',	1,	'404',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('ca',	2,	'401',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('en',	2,	'401',	'',	'401',	'Login needed',	'',	'',	NULL,	NULL,	NULL,	1),
('es',	2,	'401',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('ca',	3,	'403',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1),
('en',	3,	'403',	'',	'403',	'Forbidden',	'',	'',	NULL,	NULL,	NULL,	1),
('es',	3,	'403',	'',	NULL,	NULL,	'',	'',	NULL,	NULL,	NULL,	1);
--#--


-- 
-- Page_media
-- 
TRUNCATE page_media;
--#--

INSERT INTO page_media (id_page, id_media, online, ordering, lang_display)
VALUES
(5,	1,	1,	1,	NULL);
--#--



--
-- URL
--
TRUNCATE url;
--#--

INSERT INTO url (id_url, id_entity, type, canonical, active, lang, path, path_ids, full_path_ids, creation_date)
VALUES
(1,	5,	'page',	1,	1,	'ca',	'en-construccio',	'5',	'5',	'2016-12-05 00:43:27'),
(2,	5,	'page',	1,	1,	'en',	'under-construction',	'5',	'5',	'2016-12-05 00:43:27'),
(3,	5,	'page',	1,	1,	'es',	'en-construccion',	'5',	'5',	'2016-12-05 00:43:27');
--#--


--
-- ELEMENT
--
TRUNCATE element;
--#--

INSERT INTO `element` (`id_element`, `id_element_definition`, `parent`, `id_parent`, `ordering`) VALUES
(1,	1,	'page',	4,	1);
--#--


--
-- ELEMENT DEFINITION
--
TRUNCATE element_definition;
--#--

INSERT INTO `element_definition` (`id_element_definition`, `name`, `description`, `ordering`) VALUES
(1,	'home-extend',	'',	0);
--#--



--
-- ELEMENT DEFINITION LANG
--
TRUNCATE element_definition_lang;
--#--

INSERT INTO `element_definition_lang` (`id_element_definition`, `lang`, `title`) VALUES
(1,	'ca',	'Contingut extra'),
(1,	'en',	'Extra content'),
(1,	'es',	'Contenido extra');
--#--


--
-- EXTEND FIELD
--
TRUNCATE extend_field;
--#--

INSERT INTO `extend_field` (`id_extend_field`, `name`, `type`, `description`, `parent`, `ordering`, `translated`, `value`, `default_value`, `global`, `parents`, `id_element_definition`, `block`) VALUES
(1,	'content',	'3',	'',	'page',	0,	'1',	'',	'',	0,	'0',	0,	'0'),
(2,	'extra-content',	'3',	'',	'',	0,	'1',	'',	'',	0,	'0',	1,	'0');
--#--



--
-- LANG
--
TRUNCATE lang;
--#--

INSERT INTO `lang` (`lang`, `name`, `online`, `def`, `ordering`, `direction`) VALUES
('ca',	'catalan',	'1',	'1',	1,	1),
('en',	'english',	'1',	'0',	2,	1),
('es',	'castellano',	'1',	'0',	3,	1);
--#--



--
-- URL
--
TRUNCATE url;
--#--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(1,	5,	'page',	1,	1,	'ca',	'en-construccio',	'5',	'5',	'2016-12-05 00:43:27'),
(2,	5,	'page',	1,	1,	'en',	'under-construction',	'5',	'5',	'2016-12-05 00:43:27'),
(3,	5,	'page',	1,	1,	'es',	'en-construccion',	'5',	'5',	'2016-12-05 00:43:27');
--#--


--
-- USER
--
TRUNCATE user;
--#--

INSERT INTO `user` (`id_user`, `id_role`, `join_date`, `last_visit`, `username`, `screen_name`, `firstname`, `lastname`, `birthdate`, `gender`, `password`, `email`, `salt`) VALUES
(1,	1,	'2014-03-19 12:07:08',	'2019-01-19 15:21:56',	'admin',	'Webelop',	'',	'',	NULL,	NULL,	'FF9N55+FtHG+CpONxnqC',	'carles@webelop.es',	'35aade34753d3a32');

--#--