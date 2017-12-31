-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 10.2.3-MariaDB-log - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk professional-rails-lima-development-course_development
CREATE DATABASE IF NOT EXISTS `professional-rails-lima-development-course_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `professional-rails-lima-development-course_development`;

-- membuang struktur untuk table professional-rails-lima-development-course_development.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_development.ar_internal_metadata: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2017-12-07 09:09:56', '2017-12-07 09:09:56');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_development.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `topic_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_blogs_on_slug` (`slug`),
  KEY `index_blogs_on_topic_id` (`topic_id`),
  CONSTRAINT `fk_rails_7f5637ea0d` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_development.blogs: ~14 rows (lebih kurang)
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `title`, `body`, `created_at`, `updated_at`, `slug`, `status`, `topic_id`) VALUES
	(1, 'My Blog Post 0', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:06', '2017-12-25 02:50:40', 'my-blog-post-0', 1, NULL),
	(2, 'My Blog Post 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:06', '2017-12-25 05:22:04', 'my-blog-post-1', 1, NULL),
	(3, 'My Blog Post 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:06', '2017-12-25 05:22:06', 'my-blog-post-2', 1, NULL),
	(4, 'My Blog Post 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:06', '2017-12-25 05:22:07', 'my-blog-post-3', 1, NULL),
	(5, 'My Blog Post 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:06', '2017-12-24 17:25:07', 'my-blog-post-4', 0, NULL),
	(6, 'My Blog Post 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:06', '2017-12-24 17:25:07', 'my-blog-post-5', 0, NULL),
	(7, 'My Blog Post 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:06', '2017-12-24 17:25:07', 'my-blog-post-6', 0, NULL),
	(8, 'My Blog Post 7', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:07', '2017-12-24 17:25:07', 'my-blog-post-7', 0, NULL),
	(9, 'My Blog Post 8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:07', '2017-12-24 17:25:08', 'my-blog-post-8', 0, NULL),
	(10, 'My Blog Post 9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.', '2017-12-10 08:22:07', '2017-12-24 17:25:08', 'my-blog-post-9', 0, NULL),
	(11, 'sadasd', 'asdasd', '2017-12-11 23:36:04', '2017-12-25 18:28:10', 'sadasd', 1, NULL),
	(12, 'My Great Title', 'asdfasd', '2017-12-24 16:52:10', '2017-12-25 18:28:08', 'my-great-title', 1, NULL),
	(13, 'asdfads', 'asdfads', '2017-12-25 02:34:08', '2017-12-25 02:37:16', 'asdfads', 1, NULL),
	(15, 'sadsada', 'asdasd', '2017-12-25 18:27:04', '2017-12-25 18:27:13', 'sadsada', 1, NULL),
	(16, 'Some Cool Ruby Stuff', 'asdfasdf', '2017-12-25 19:39:49', '2017-12-25 19:39:49', 'some-cool-ruby-stuff', 0, 1);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_development.friendly_id_slugs
CREATE TABLE IF NOT EXISTS `friendly_id_slugs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `sluggable_id` int(11) NOT NULL,
  `sluggable_type` varchar(50) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope` (`slug`,`sluggable_type`,`scope`),
  KEY `index_friendly_id_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_friendly_id_slugs_on_slug_and_sluggable_type` (`slug`,`sluggable_type`),
  KEY `index_friendly_id_slugs_on_sluggable_type` (`sluggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_development.friendly_id_slugs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `friendly_id_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendly_id_slugs` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_development.portfolios
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `main_image` text DEFAULT NULL,
  `thumb_image` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_development.portfolios: ~20 rows (lebih kurang)
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` (`id`, `title`, `subtitle`, `body`, `main_image`, `thumb_image`, `created_at`, `updated_at`) VALUES
	(2, 'Portfolio title: 1', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-10 08:22:10'),
	(3, 'Portfolio title: 2', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-10 08:22:10'),
	(4, 'Portfolio title: 3', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-10 08:22:10'),
	(5, 'Portfolio title: dasdsadsad', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-11 23:36:42'),
	(6, 'Portfolio title: 5', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-10 08:22:10'),
	(7, 'Portfolio title: 6', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-10 08:22:10'),
	(8, 'Portfolio title: 7', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-10 08:22:10'),
	(9, 'Portfolio title: 8', 'My Great Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.', 'http://placehold.it/600x400', 'http://placehold.it/350x200', '2017-12-10 08:22:10', '2017-12-10 08:22:10'),
	(10, 'da', 'adad', 'ada', NULL, NULL, '2017-12-10 09:40:03', '2017-12-10 09:40:03'),
	(11, 'asdasd', 'asdsad', 'asdas', NULL, NULL, '2017-12-10 09:40:24', '2017-12-10 09:40:24'),
	(12, 'tes', 'tes', 'tses', NULL, NULL, '2017-12-10 09:41:49', '2017-12-10 09:41:49'),
	(13, 'dada', 'adadad', 'adad', NULL, NULL, '2017-12-10 09:44:32', '2017-12-10 09:44:32'),
	(14, 'tes', 'tes', 'tes', NULL, NULL, '2017-12-10 09:49:02', '2017-12-10 09:49:02'),
	(15, 'sadsadsa', 'sadsa', 'asdas', NULL, NULL, '2017-12-10 09:49:29', '2017-12-10 09:49:29'),
	(16, 'asdasd', 'asdas', 'sadsad', NULL, NULL, '2017-12-11 23:37:24', '2017-12-11 23:37:24'),
	(17, 'asdasd', 'asdasd', 'sadsa', NULL, NULL, '2017-12-12 06:47:34', '2017-12-12 06:47:34'),
	(18, 'asdsad', 'sadas', 'dasda', NULL, NULL, '2017-12-12 06:48:20', '2017-12-12 06:48:20'),
	(19, 'dada', 'dada', 'dada', NULL, NULL, '2017-12-25 18:48:27', '2017-12-25 18:48:27');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_development.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_development.schema_migrations: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20171207090918'),
	('20171210060800'),
	('20171210063121'),
	('20171210075557'),
	('20171210080313'),
	('20171224131142'),
	('20171224155430'),
	('20171225021753'),
	('20171225185632'),
	('20171225192611');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_development.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `percent_utilized` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_development.skills: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`id`, `title`, `percent_utilized`, `created_at`, `updated_at`) VALUES
	(1, 'rails 0', 15, '2017-12-10 08:22:08', '2017-12-10 08:22:08'),
	(2, 'rails 1', 15, '2017-12-10 08:22:08', '2017-12-10 08:22:08'),
	(3, 'rails 2', 15, '2017-12-10 08:22:09', '2017-12-10 08:22:09'),
	(4, 'rails 3', 15, '2017-12-10 08:22:09', '2017-12-10 08:22:09'),
	(5, 'rails 4', 15, '2017-12-10 08:22:09', '2017-12-10 08:22:09');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_development.topics
CREATE TABLE IF NOT EXISTS `topics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_development.topics: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 'Ruby Programming', '2017-12-25 19:36:25', '2017-12-25 19:36:25'),
	(2, 'Software Engineering', '2017-12-25 19:36:36', '2017-12-25 19:36:36');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
