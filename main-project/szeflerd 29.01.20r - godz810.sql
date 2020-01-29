-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 29 Sty 2020, 18:09
-- Wersja serwera: 5.5.60
-- Wersja PHP: 5.4.45-0+deb7u14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `szeflerd`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add adres', 1, 'add_adres'),
(2, 'Can change adres', 1, 'change_adres'),
(3, 'Can delete adres', 1, 'delete_adres'),
(4, 'Can view adres', 1, 'view_adres'),
(5, 'Can add kierowcy', 2, 'add_kierowcy'),
(6, 'Can change kierowcy', 2, 'change_kierowcy'),
(7, 'Can delete kierowcy', 2, 'delete_kierowcy'),
(8, 'Can view kierowcy', 2, 'view_kierowcy'),
(9, 'Can add zlecenie', 3, 'add_zlecenie'),
(10, 'Can change zlecenie', 3, 'change_zlecenie'),
(11, 'Can delete zlecenie', 3, 'delete_zlecenie'),
(12, 'Can view zlecenie', 3, 'view_zlecenie'),
(13, 'Can add przydzial', 4, 'add_przydzial'),
(14, 'Can change przydzial', 4, 'change_przydzial'),
(15, 'Can delete przydzial', 4, 'delete_przydzial'),
(16, 'Can view przydzial', 4, 'view_przydzial'),
(17, 'Can add klient', 5, 'add_klient'),
(18, 'Can change klient', 5, 'change_klient'),
(19, 'Can delete klient', 5, 'delete_klient'),
(20, 'Can view klient', 5, 'view_klient'),
(21, 'Can add dane klient', 6, 'add_daneklient'),
(22, 'Can change dane klient', 6, 'change_daneklient'),
(23, 'Can delete dane klient', 6, 'delete_daneklient'),
(24, 'Can view dane klient', 6, 'view_daneklient'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add content type', 11, 'add_contenttype'),
(42, 'Can change content type', 11, 'change_contenttype'),
(43, 'Can delete content type', 11, 'delete_contenttype'),
(44, 'Can view content type', 11, 'view_contenttype'),
(45, 'Can add session', 12, 'add_session'),
(46, 'Can change session', 12, 'change_session'),
(47, 'Can delete session', 12, 'delete_session'),
(48, 'Can view session', 12, 'view_session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$uPaajyZuJ6Cz$nSsFwaQpjyyswPWg7y/w662z4WiZdXkDFk27+FRx+o4=', '2020-01-29 17:04:16', 1, 'admin', '', '', 'admin@admin.pl', 1, 1, '2020-01-23 10:02:38'),
(2, 'pbkdf2_sha256$150000$Dn9WIz78AFlo$8isexw4UsK8FGcQ2fujYL8D3hcZEFHeNKJeRumoNJ0s=', '2020-01-23 10:04:41', 0, 'szeflerd', '', '', '', 0, 1, '2020-01-23 10:03:36'),
(3, 'pbkdf2_sha256$150000$PRvwpEwA9kG4$k6nng0/2q/RmLdLMZXnLxkQV5rctSMqpJqsTA5AWPJg=', '2020-01-23 10:07:37', 0, 'skibap', '', '', '', 0, 1, '2020-01-23 10:04:12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-23 10:03:36', '2', 'szeflerd', 1, '[{"added": {}}]', 10, 1),
(2, '2020-01-23 10:04:12', '3', 'skibap', 1, '[{"added": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(10, 'auth', 'user'),
(11, 'contenttypes', 'contenttype'),
(12, 'sessions', 'session'),
(1, 'trackparc', 'adres'),
(6, 'trackparc', 'daneklient'),
(2, 'trackparc', 'kierowcy'),
(5, 'trackparc', 'klient'),
(4, 'trackparc', 'przydzial'),
(3, 'trackparc', 'zlecenie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-23 10:01:22'),
(2, 'auth', '0001_initial', '2020-01-23 10:01:23'),
(3, 'admin', '0001_initial', '2020-01-23 10:01:23'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-23 10:01:23'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-23 10:01:24'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-23 10:01:24'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-23 10:01:24'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-23 10:01:24'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-23 10:01:24'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-23 10:01:24'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-23 10:01:24'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-23 10:01:24'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-23 10:01:24'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-23 10:01:24'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-23 10:01:24'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-23 10:01:24'),
(17, 'sessions', '0001_initial', '2020-01-23 10:01:24'),
(18, 'trackparc', '0001_initial', '2020-01-23 10:01:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9lyx58mr0cnz8okvwmmnzw8g6gdadl1e', 'MjY4YzgyYzUxNzA1YTljOGY2MjIyZTY4ZjhiZjY5MjA5NDE4NjM4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDczODI4Y2UxNDk0YjBiNTllYjQ1ZTJiZmJhNThjNGY3YWMwNmI5In0=', '2020-02-12 17:04:16'),
('e665z82ckcrn6a3gachvoi8uroahh0ib', 'MThiYTdkYzJjMDdlYzNkYjUwYmRiZmU5Yzc3YTJlZTM2MjU4ODEyMTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MGViNmExZWQ5NTQwNThmZGYyM2UzZDBhMjVmZWQ2M2VlOTg4NzNiIn0=', '2020-02-06 10:07:37');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trackparc_adres`
--

CREATE TABLE IF NOT EXISTS `trackparc_adres` (
  `idAdres` int(11) NOT NULL AUTO_INCREMENT,
  `ulica` varchar(200) NOT NULL,
  `nrdomu` int(11) NOT NULL,
  `nrmieszkania` int(11) NOT NULL,
  `kodpocztowy` varchar(6) NOT NULL,
  `miasto` varchar(45) NOT NULL,
  `poczta` varchar(45) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`idAdres`),
  KEY `trackparc_adres_owner_id_4ac5a86f_fk_auth_user_id` (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `trackparc_adres`
--

INSERT INTO `trackparc_adres` (`idAdres`, `ulica`, `nrdomu`, `nrmieszkania`, `kodpocztowy`, `miasto`, `poczta`, `owner_id`) VALUES
(1, 'pies', 23, 23, '10-564', 'bies', 'pies', 2),
(2, 'pies', 3, 3, '10-567', 'olsztyn', 'pies', 3),
(3, 'Zielona', 8, 0, '11-042', 'Jonkowo', 'Jonkowo', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trackparc_daneklient`
--

CREATE TABLE IF NOT EXISTS `trackparc_daneklient` (
  `idDane` int(11) NOT NULL AUTO_INCREMENT,
  `typ` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `nazwa` varchar(200) NOT NULL,
  `nip` varchar(200) NOT NULL,
  `login` varchar(200) NOT NULL,
  `idKlient_id` int(11) NOT NULL,
  PRIMARY KEY (`idDane`),
  KEY `trackparc_daneklient_idKlient_id_1bc22541_fk_trackparc` (`idKlient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trackparc_kierowcy`
--

CREATE TABLE IF NOT EXISTS `trackparc_kierowcy` (
  `idKierowcy` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(200) NOT NULL,
  `nazwisko` varchar(200) NOT NULL,
  `dataZatrudnienia` date NOT NULL,
  `dataBadanie` date NOT NULL,
  PRIMARY KEY (`idKierowcy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trackparc_klient`
--

CREATE TABLE IF NOT EXISTS `trackparc_klient` (
  `idKlient` int(11) NOT NULL AUTO_INCREMENT,
  `idAdres_id` int(11) NOT NULL,
  PRIMARY KEY (`idKlient`),
  KEY `trackparc_klient_idAdres_id_1dc23048_fk_trackparc_adres_idAdres` (`idAdres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trackparc_przydzial`
--

CREATE TABLE IF NOT EXISTS `trackparc_przydzial` (
  `idPrzydzial` int(11) NOT NULL AUTO_INCREMENT,
  `idKierowcy_id` int(11) NOT NULL,
  `idPaczka_id` int(11) NOT NULL,
  PRIMARY KEY (`idPrzydzial`),
  KEY `trackparc_przydzial_idKierowcy_id_8e4e6f8a_fk_trackparc` (`idKierowcy_id`),
  KEY `trackparc_przydzial_idPaczka_id_7f8f44e3_fk_trackparc` (`idPaczka_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trackparc_zlecenie`
--

CREATE TABLE IF NOT EXISTS `trackparc_zlecenie` (
  `idPaczka` int(11) NOT NULL AUTO_INCREMENT,
  `stanZlecenie` varchar(150) NOT NULL,
  `typPaczka` varchar(150) NOT NULL,
  `komentarz` longtext NOT NULL,
  `idAdresNadawca_id` int(11) NOT NULL,
  `idAdresOdbiorca_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`idPaczka`),
  KEY `trackparc_zlecenie_idAdresNadawca_id_68266804_fk_trackparc` (`idAdresNadawca_id`),
  KEY `trackparc_zlecenie_idAdresOdbiorca_id_fc1e60d6_fk_trackparc` (`idAdresOdbiorca_id`),
  KEY `trackparc_zlecenie_owner_id_9e988920_fk_auth_user_id` (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `trackparc_zlecenie`
--

INSERT INTO `trackparc_zlecenie` (`idPaczka`, `stanZlecenie`, `typPaczka`, `komentarz`, `idAdresNadawca_id`, `idAdresOdbiorca_id`, `owner_id`) VALUES
(1, 'Wyslane', 'Duza', '23', 1, 1, 2);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `trackparc_adres`
--
ALTER TABLE `trackparc_adres`
  ADD CONSTRAINT `trackparc_adres_owner_id_4ac5a86f_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `trackparc_daneklient`
--
ALTER TABLE `trackparc_daneklient`
  ADD CONSTRAINT `trackparc_daneklient_idKlient_id_1bc22541_fk_trackparc` FOREIGN KEY (`idKlient_id`) REFERENCES `trackparc_klient` (`idKlient`);

--
-- Ograniczenia dla tabeli `trackparc_klient`
--
ALTER TABLE `trackparc_klient`
  ADD CONSTRAINT `trackparc_klient_idAdres_id_1dc23048_fk_trackparc_adres_idAdres` FOREIGN KEY (`idAdres_id`) REFERENCES `trackparc_adres` (`idAdres`);

--
-- Ograniczenia dla tabeli `trackparc_przydzial`
--
ALTER TABLE `trackparc_przydzial`
  ADD CONSTRAINT `trackparc_przydzial_idKierowcy_id_8e4e6f8a_fk_trackparc` FOREIGN KEY (`idKierowcy_id`) REFERENCES `trackparc_kierowcy` (`idKierowcy`),
  ADD CONSTRAINT `trackparc_przydzial_idPaczka_id_7f8f44e3_fk_trackparc` FOREIGN KEY (`idPaczka_id`) REFERENCES `trackparc_zlecenie` (`idPaczka`);

--
-- Ograniczenia dla tabeli `trackparc_zlecenie`
--
ALTER TABLE `trackparc_zlecenie`
  ADD CONSTRAINT `trackparc_zlecenie_idAdresNadawca_id_68266804_fk_trackparc` FOREIGN KEY (`idAdresNadawca_id`) REFERENCES `trackparc_adres` (`idAdres`),
  ADD CONSTRAINT `trackparc_zlecenie_idAdresOdbiorca_id_fc1e60d6_fk_trackparc` FOREIGN KEY (`idAdresOdbiorca_id`) REFERENCES `trackparc_adres` (`idAdres`),
  ADD CONSTRAINT `trackparc_zlecenie_owner_id_9e988920_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
