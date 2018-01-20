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


-- Membuang struktur basisdata untuk professional-rails-lima-development-course_test
CREATE DATABASE IF NOT EXISTS `professional-rails-lima-development-course_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `professional-rails-lima-development-course_test`;

-- membuang struktur untuk table professional-rails-lima-development-course_test.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_test.ar_internal_metadata: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2017-12-10 08:14:44', '2017-12-10 08:14:44');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_test.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_test.blogs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_test.portfolios
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_test.portfolios: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_test.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_test.schema_migrations: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20171207090918'),
	('20171210060800'),
	('20171210075557'),
	('20171210080313');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

-- membuang struktur untuk table professional-rails-lima-development-course_test.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `percent_utilized` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel professional-rails-lima-development-course_test.skills: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
