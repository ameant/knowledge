-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 24 août 2024 à 18:13
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `knowledge`
--

-- --------------------------------------------------------

--
-- Structure de la table `certification`
--

DROP TABLE IF EXISTS `certification`;
CREATE TABLE IF NOT EXISTS `certification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `theme_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6C3C6D75A76ED395` (`user_id`),
  KEY `IDX_6C3C6D7559027487` (`theme_id`),
  KEY `IDX_6C3C6D75591CC992` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `theme_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_169E6FB959027487` (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`id`, `theme_id`, `name`, `price`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'Cursus d’initiation à la guitare', 50, '2024-07-24 18:28:58', '2024-07-24 18:28:58', 'Admin', 'Admin'),
(2, 1, 'Cursus d’initiation au piano', 50, '2024-07-24 18:28:58', '2024-07-24 18:28:58', 'Admin', 'Admin'),
(3, 2, 'Cursus d’initiation au développement web', 60, '2024-07-24 18:28:58', '2024-07-24 18:28:58', 'Admin', 'Admin'),
(4, 3, 'Cursus d’initiation au jardinage', 30, '2024-07-24 18:28:58', '2024-07-24 18:28:58', 'Admin', 'Admin'),
(5, 4, 'Cursus d’initiation à la cuisine', 44, '2024-07-24 18:28:58', '2024-07-24 18:28:58', 'Admin', 'Admin'),
(6, 4, 'Cursus d’initiation à l’art du dressage culinaire', 48, '2024-07-24 18:28:58', '2024-07-24 18:28:58', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240724125750', '2024-07-24 12:58:02', 248),
('DoctrineMigrations\\Version20240724164753', '2024-07-24 16:48:04', 281),
('DoctrineMigrations\\Version20240724181057', '2024-07-24 18:11:07', 2633),
('DoctrineMigrations\\Version20240724181226', '2024-07-24 18:12:35', 482),
('DoctrineMigrations\\Version20240724182456', '2024-07-24 18:25:08', 2697),
('DoctrineMigrations\\Version20240724185830', '2024-07-24 18:58:40', 354),
('DoctrineMigrations\\Version20240725102144', '2024-07-25 10:22:16', 2806);

-- --------------------------------------------------------

--
-- Structure de la table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F87474F3591CC992` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lesson`
--

INSERT INTO `lesson` (`id`, `course_id`, `name`, `price`, `created_at`, `updated_at`, `created_by`, `updated_by`, `content`) VALUES
(1, 1, 'Leçon n°1 : Découverte de l’instrument', 26, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 1'),
(2, 1, 'Leçon n°2 : Les accords et les gammes', 26, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 2'),
(3, 2, 'Leçon n°1 : Découverte de l’instrument', 26, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 1'),
(4, 2, 'Leçon n°2 : Les accords et les gammes', 26, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 2'),
(5, 3, 'Leçon n°1 : Les langages Html et CSS', 32, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 1'),
(6, 3, 'Leçon n°2 : Dynamiser votre site avec Javascript', 32, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 2'),
(7, 4, 'Leçon n°1 : Les outils du jardinier', 16, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 1'),
(8, 4, 'Leçon n°2 : Jardiner avec la lune', 16, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 2'),
(9, 5, 'Leçon n°1 : Les modes de cuisson', 23, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 1'),
(10, 5, 'Leçon n°2 : Les saveurs', 23, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 2'),
(11, 6, 'Leçon n°1 : Mettre en œuvre le style dans l’assiette', 26, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 1'),
(12, 6, 'Leçon n°2 : Harmoniser un repas à quatre plats', 26, '2024-07-24 18:37:57', '2024-07-24 21:00:00', 'Admin', 'Admin', 'Vidéo leçon 2');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6117D13BA76ED395` (`user_id`),
  KEY `IDX_6117D13B591CC992` (`course_id`),
  KEY `IDX_6117D13BCDF80196` (`lesson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id`, `name`) VALUES
(1, 'Musique'),
(2, 'Informatique'),
(3, 'Jardinage'),
(4, 'Cuisine');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `is_verified`) VALUES
(1, 'knowledge@example.com', '[\"ROLE_ADMIN\"]', '$2y$13$LtlYZ70DyvaWMs6MX5Qy6u06F4QG4pSkkz4lLQt/dp/3FuqlimpOG', 'Admin', 0),
(2, 'janedoe@example.com', '[\"ROLE_USER\"]', '$2y$13$OdSHCvO71PnjO0UyOOap1.sb19vmPYiR/KZxdI1EP0d1Rr9b.CZVy', 'Jane Doe', 0),
(5, 'simoneveil@example.com', '[\"ROLE_USER\"]', '$2y$13$S6a/rhFAifMDV0zbD6chquY4WQpVtfBwZe5wQBTbAdUsZcTOict.2', 'Simone Veil', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `certification`
--
ALTER TABLE `certification`
  ADD CONSTRAINT `FK_6C3C6D7559027487` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  ADD CONSTRAINT `FK_6C3C6D75591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_6C3C6D75A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_169E6FB959027487` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`);

--
-- Contraintes pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_F87474F3591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Contraintes pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `FK_6117D13B591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_6117D13BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6117D13BCDF80196` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
