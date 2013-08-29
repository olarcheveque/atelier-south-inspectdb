-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 29 Août 2013 à 11:38
-- Version du serveur: 5.1.69
-- Version de PHP: 5.3.2-1ubuntu4.20

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `foad`
--

-- --------------------------------------------------------

--
-- Structure de la table `atelier`
--

CREATE TABLE IF NOT EXISTS `atelier` (
  `id_atelier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_institution` int(10) unsigned NOT NULL,
  `groupe` varchar(44) NOT NULL,
  `niveau` varchar(10) NOT NULL DEFAULT '',
  `nb_annees` int(1) NOT NULL DEFAULT '1',
  `intitule` varchar(100) NOT NULL DEFAULT '',
  `universite` varchar(150) NOT NULL DEFAULT '',
  `commentaire` text NOT NULL,
  PRIMARY KEY (`id_atelier`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=171 ;

--
-- Contenu de la table `atelier`
--

INSERT INTO `atelier` (`id_atelier`, `ref_institution`, `groupe`, `niveau`, `nb_annees`, `intitule`, `universite`, `commentaire`) VALUES
(28, 0, 'Sciences humaines', '4. M1', 1, 'Master (M1) AIGEME', 'Université de Marne la Vallée (France)', ''),
(39, 20, 'Sciences humaines', '3. L3', 1, 'Licence (L3) Sciences de l''information documentaire', 'Université Cheikh Anta Diop - EBAD (Dakar, Sénégal)', ''),
(19, 0, 'Sciences de l''ingénieur', '3. DU', 1, 'STATnet', 'CNAM', ''),
(20, 0, 'Sciences humaines', '3. L3', 1, 'Licence pro (L3) Servicetique', 'Université de Limoges (France)', ''),
(21, 17, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence (L3) E-MIAGE', 'Université Abdelmalek Essaâdi de Tanger-Tétouan (Maroc)', ''),
(22, 17, 'Sciences de l''ingénieur', '4. M1', 1, 'Master pro (M1) E-MIAGE', 'Université Abdelmalek Essaâdi de Tanger-Tétouan (Maroc)', ''),
(23, 0, 'Éducation et formation', '4. M1', 1, 'Microprogramme Intégration pédagogique des TIC', 'Université de Montréal (Canada - Québec)', ''),
(24, 0, 'Sciences de l''ingénieur', '3. DU', 1, 'DU Label Internet', 'Université de Limoges', ''),
(25, 0, 'Droit, économie et gestion', '3. DU', 1, 'D.U. Droit de la Common Law', 'Université Lyon 3', ''),
(26, 0, 'Éducation et formation', '3. L3', 1, 'Licence (L3) Education Promo Santé', 'Université de Besançon', ''),
(27, 10, 'Droit, économie et gestion', '5. M2', 1, 'Master (M2)  Droit  international et comparé de l''environnement (DICE)', 'Université de Limoges (France)', ''),
(29, 3, 'Sciences de l''ingénieur', '5. M2', 1, 'Master pro (M2) E-MIAGE option Systèmes d''informations multimédia (SIMI-MM)', 'Université de Picardie (France)', ''),
(30, 3, 'Sciences de l''ingénieur', '5. M2', 1, 'Master (M2) E-MIAGE SIIN', 'Université de Picardie (France)', ''),
(31, 1, 'Éducation et formation', '5. M2', 1, 'Master recherche (M2) en Sciences de l''éducation (MARDIF)', 'Université de Rouen (France)', ''),
(37, 14, 'Sciences de l''ingénieur', '5. M2', 1, 'Master pro (M2) VCIEL', 'Université Louis Lumière (Lyon 2, France)', ''),
(38, 19, 'Droit, économie et gestion', '5. M2', 1, 'Master pro (M2) Droit du cyber-espace africain', 'Université Gaston Berger (St Louis, Sénégal)', ''),
(33, 0, 'Sciences humaines', '4. M1', 1, 'DESU (M1) TIC et Développement', 'Université de Limoges (France)', ''),
(34, 15, 'Sciences de l''ingénieur', '5. M2', 1, 'Master pro (M2) E-Services', 'Université du 7 novembre à Carthage (Tunis, Tunisie)', ''),
(35, 11, 'Droit, économie et gestion', '3. L3', 1, 'Licence (L3) en sciences de gestion, option Commerce et Vente', 'Université de Montpellier 1 - ISEM (France)', ''),
(67, 0, 'Sciences humaines', '5. M2', 1, 'Master pro (M2) AIGEME Spécialité Audit et Etudes Informatiques', 'Université de Marne la Vallée (France)', ''),
(41, 0, 'Droit, économie et gestion', '3. DU', 1, 'MICROPROGAMME TOURISME', '', ''),
(42, 1, 'Éducation et formation', '5. M2', 1, 'Master pro (M2) Ingéniérie et conseil en formation (ICF)', 'Université de Rouen (France)', ''),
(43, 0, 'Sciences de l''ingénieur', '3. DU', 1, 'DUAP LOGISTIQUE', 'ESSTI Nancy', ''),
(44, 0, 'Sciences de l''ingénieur', '3. DU', 1, 'DUAP MAINTENANCE', 'ESSTI Nancy', ''),
(45, 0, 'Sciences de l''ingénieur', '3. DU', 1, 'DUAP PRODUCTION', 'ESSTI Nancy', ''),
(47, 0, 'Médecine et santé publique', '5. DU', 1, 'D.U. Conseil génétique et diagnostic des maladies génétiques', 'Université de Versailles Saint-Quentin en Yvelines (France)', ''),
(51, 0, 'Éducation et formation', '4. M1', 1, 'Master recherche (M1) Education et promotion de la  santé', 'Université de Besançon', ''),
(48, 0, 'Sciences humaines', '5. M2', 1, 'Master pro (M2) AIGEME spécialité Internet et multimédia', 'Université de Marne la Vallée (France)', ''),
(49, 20, 'Sciences humaines', '5. M2', 1, 'Master pro (M2) Sciences de l''information documentaire', 'Université Cheikh Anta Diop - EBAD (Dakar, Sénégal)', ''),
(50, 0, 'Sciences humaines', '3. DU', 1, 'DU 3MI', 'Université de Limoges (France)', ''),
(7, 0, 'Droit, économie et gestion', '5. M2', 1, 'Master en Droits fondamentaux', 'Université de Nantes (France)', ''),
(17, 0, 'Droit, économie et gestion', '3. DU', 1, 'DU EDH', 'Université de Nantes (France)', ''),
(55, 11, 'Droit, économie et gestion', '4. M1', 1, 'Master pro (M1) Marketing et Vente parcours Marketing et Direction d’Equipes Commerciales', 'Université de Montpellier 1 - ISEM (France)', ''),
(56, 22, 'Médecine et santé publique', '3. DU', 1, 'D.U. Méthodes et pratique en épidémiologie', 'Université de Bordeaux 2 - ISPED (France)', ''),
(57, 22, 'Médecine et santé publique', '3. DU', 1, 'D.U. Méthodes en recherche clinique', 'Université de Bordeaux 2 - ISPED (France)', ''),
(58, 22, 'Médecine et santé publique', '3. DU', 1, 'D.U. Méthodes statistiques en santé', 'Université de Bordeaux 2 - ISPED (France)', ''),
(59, 0, 'Environnement et développement durable', '5. M2', 1, 'D.U. Evolution de la qualité de l''environnement', 'Université de Versailles Saint-Quentin en Yvelines (France)', ''),
(60, 0, 'Médecine et santé publique', '3. L3', 1, 'D.U. Prise en charge des grossesses à haut risque', 'Université de Versailles Saint-Quentin en Yvelines (France)', ''),
(61, 9, 'Médecine et santé publique', '5. M2', 1, 'Master pro (M2) Ingénierie du système de santé', 'Université de Nice - Sophia Antipolis (France)', ''),
(62, 8, 'Médecine et santé publique', '5. M2', 1, 'Master pro (M2) Expertise et ingénierie des systèmes d''information en santé', 'Université de la Méditerranée (Aix - Marseille 2, France)', ''),
(63, 32, 'Droit, économie et gestion', '5. M2', 1, 'Master pro (M2) Statistique et économétrie', 'Université de Toulouse 1 et 3 (France)', ''),
(64, 0, 'Sciences de l''ingénieur', '8. D', 1, 'Doctorat en sciences de la complexité', 'IRD-UCAD', ''),
(65, 0, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence (L3) de Technologie informatique', 'Dschang', ''),
(66, 35, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence pro (L3) Analyste concepteur des systèmes d''informations', 'Institut Africain d''Informatique, Représentation du Cameroun', ''),
(68, 12, 'Sciences humaines', '5. M2', 1, 'Master pro (M2) Conception et gestion de projets numériques territoriaux', 'Université de Paris 10 Nanterre (France)', ''),
(69, 0, 'Éducation et formation', '5. M2', 1, 'Master recherche (M2)  Education et promotion  de la santé', 'Université de Besançon', ''),
(70, 0, 'Éducation et formation', '5. M2', 1, 'Master pro (M2) UTICEF', 'Université de Strasbourg, Université de Mons-Hainaut (Belgique), UNIGE', ''),
(71, 26, 'Éducation et formation', '5. M2', 1, 'Master pro (M2) Ingénierie pédagogique multimédia', 'Université de Lille 1 (France)', ''),
(72, 0, 'Éducation et formation', '5. M2', 1, 'Master pro (M2) Ingénierie de la formation et des systèmes d’emploi', 'Université de Toulouse 1 (France)', ''),
(73, 31, 'Éducation et formation', '5. M2', 1, 'Master pro (M2) AIGEME spécialité Ingénierie de la formation à distance en sciences humaines', 'Université de La Sorbonne Nouvelle Paris 3 (France)', ''),
(74, 0, 'Éducation et formation', '8. D', 1, 'Ph.D. en Sciences de l''éducation', 'Université de Montréal (Canada - Québec)', ''),
(75, 0, 'Éducation et formation', '8. D', 1, 'Doctorat en Sciences de l''éducation', 'Université Cheikh Anta Diop - FASTEF (Dakar, Sénégal)', ''),
(76, 0, 'Sciences de l''ingénieur', '4. M1', 1, 'M1 E-MIAGE, spécial Europe centrale et orientale', 'Nouvelle Université Bulgare (Bulgarie)', ''),
(77, 0, 'Sciences de l''ingénieur', '3. DU', 2, 'Formation de test', 'Université de test', ''),
(78, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master pro (M2) Génie Urbain', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(79, 37, 'Sciences de l''ingénieur', '5. M2', 1, 'Master (M2) en Télécommunications', 'Ecole Nationale Supérieure Polytechnique de Yaoundé (Cameroun)', ''),
(80, 20, 'Sciences humaines', '4. M1', 1, 'Master (M1) en Sciences de l''information documentaire', 'Université Cheikh Anta Diop - EBAD (Dakar, Sénégal)', ''),
(81, 3, 'Droit, économie et gestion', '4. M1', 1, 'Master (M1) Management des Organisations de la NetEconomie (MONE1)', 'Université de Picardie (France)', ''),
(82, 3, 'Droit, économie et gestion', '5. M2', 1, 'Master pro (M2) Management des Organisations de la NetEconomie (MONE2)', 'Université de Picardie (France)', ''),
(83, 0, 'Droit, économie et gestion', '4. M1', 1, 'Master (M1) Europe, Gouvernance, intégration et société civile européennes', 'Université Pierre Mendes France - IEP Grenoble (France)', ''),
(84, 0, 'Droit, économie et gestion', '5. M2', 1, 'Master (M2) Europe, spécialité Gouvernance intégration et société civile européennes', 'Université Pierre Mendes France - IEP Grenoble (France)', ''),
(85, 0, 'Droit, économie et gestion', '5. M2', 1, 'Master (M2) Europe, spécialité Etudes sur l''europe et européanisation', 'Université Pierre Mendes France - IEP Grenoble (France)', ''),
(86, 0, 'Médecine et santé publique', '5. M2', 1, 'Master pro (M2) Qualitologie et management de la qualité dans le domaine de la santé', 'Université de Monastir (Tunisie)', ''),
(87, 8, 'Médecine et santé publique', '4. M1', 1, 'Master pro (M1) Expertise et ingénierie des systèmes d''information en santé', 'Université de la Méditerranée (Aix - Marseille 2, France)', ''),
(88, 13, 'Éducation et formation', '5. M2', 1, 'Master (M2) Gestion des systèmes éducatifs', 'Université Senghor', ''),
(89, 22, 'Médecine et santé publique', '3. DU', 1, 'D.U. Méthodes de gestion de base de données en santé', 'Université de Bordeaux 2 - ISPED (France)', ''),
(90, 1, 'Éducation et formation', '4. M1', 1, 'Master (M1) en sciences de l''éducation', 'Université de Rouen (France)', ''),
(91, 22, 'Médecine et santé publique', '3. DU', 1, 'D.U. Méthodes statistiques de régression en épidémiologie', 'Université de Bordeaux 2 - ISPED (France)', ''),
(92, 22, 'Médecine et santé publique', '4. M1', 1, 'Master (M1) en Santé publique', 'Université de Bordeaux 2 - ISPED (France)', ''),
(93, 22, 'Médecine et santé publique', '5. M2', 1, 'Master (M2) en Santé publique Spécialité Epidémiologie', 'Université de Bordeaux 2 - ISPED (France)', ''),
(94, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master (M2) Gestion intégrée des ressources en eau', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(95, 11, 'Droit, économie et gestion', '5. M2', 1, 'Master pro (M2) Marketing et Vente parcours Négociation et Direction d’Equipes Commerciales', 'Université de Montpellier 1 - ISEM (France)', ''),
(96, 0, 'Droit, économie et gestion', '5. M2', 1, 'M2 Gouvernance et Administration des Etablissements d’Enseigenement Supérieur et de Recherche', 'Université Cheikh Anta Diop - FASEG (Dakar, Sénégal)', ''),
(97, 0, 'Droit, économie et gestion', '4. M1', 1, 'Master (M1) Droit, Spécialité droit public, option Ethique des organisations et professions (METOP)', 'Université de Nantes (France)', ''),
(98, 0, 'Droit, économie et gestion', '5. M2', 1, 'Master (M2) Droit international et européen en droits fondamentaux (MDIEDF)', 'Université de Nantes (France)', ''),
(101, 2, 'Droit, économie et gestion', '5. M2', 1, 'Master (M2) Droit international et européen des Droits fondamentaux MDIEDF', 'Université de Nantes (France)', ''),
(102, 0, 'Sciences humaines', '5. M2', 1, 'Master 2 Recherche Sciences du language, option Informatisation des langues', 'Université de Nantes (France)', ''),
(103, 2, 'Sciences humaines', '5. M2', 1, 'M2 Recherche Histoire des Sciences et des Techniques', 'Université de Nantes (France)', ''),
(104, 0, 'Droit, économie et gestion', '3. L3', 1, 'L3 Commerce et Vente', 'Université Mohamed 1', ''),
(105, 4, 'Droit, économie et gestion', '5. M2', 2, 'Master pro 2 Administration des Entreprises (MAE)', 'Université d''Alexandrie', ''),
(106, 27, 'Droit, économie et gestion', '3. L3', 1, 'Licence pro (L3) Management des ONG et des associations (MOA)', 'Université de Ouagadougou', ''),
(107, 26, 'Éducation et formation', '4. M1', 1, 'Master 1 Sciences de l''éducation / Métier de la formation', 'Université de Lille 1 (France)', ''),
(108, 31, 'Éducation et formation', '5. M2', 1, 'Master pro 2 AIGEME parcours Ingénierie de l’éducation aux médias', 'Université de Paris 3', ''),
(109, 0, 'Éducation et formation', '4. M1', 1, 'Master 1 UTICEF', 'Université de Strasbourg, Université de Mons-Hainaut (Belgique), UNIGE', ''),
(110, 7, 'Environnement et développement durable', '5. M2', 1, 'Master 2 pro Sciences de la Santé, de l''Environnement, du Territoire et de la Société (SSENTS)', 'Université de Versailles Saint-Quentin en Yvelines (France)', ''),
(111, 24, 'Environnement et développement durable', '5. M2', 1, 'Master recherche (M2) en Analyse des populations des espaces fauniques et halieutiques', 'Université Polytechnique de Bobo-Dioulasso', ''),
(112, 0, 'Médecine et santé publique', '5. M2', 1, 'Master (M2) en Santé publique Recherche', 'Université de Bordeaux 2 - ISPED (France)', ''),
(124, 21, 'Éducation et formation', '5. M2', 1, ' Master pro (M2) Ingénierie de la formation et des systèmes d’emploi HUE', 'Université de Huê (Vietnam)', ''),
(114, 5, 'Environnement et développement durable', '4. M1', 1, 'Master 1 - Management Qualité-Sécurité-Environnement', 'Université de Ouagadougou', ''),
(115, 6, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence L3 « Génie Civil et Construction » (GCC)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(116, 6, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence L3 « Eau et Assainissement » (EA)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(117, 6, 'Sciences de l''ingénieur', '5. M2', 2, 'Master 2 Génie civil et Infrastructures  (GCI)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(118, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master 2 Génie électrique, énergétique et énergies renouvelables (GEER)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(119, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master 2  Innovations Développement et Sociétés (IDS)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(120, 30, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence L3 Exploitation logistique et transport', 'Institut Supérieur de Technologie  Madagascar', ''),
(121, 0, 'Sciences humaines', '4. M1', 1, 'Master (M1)  Planification urbaine, gouvernance et développement durable des territoires au Maghreb', 'Université du 7 novembre à Carthage (Tunis, Tunisie)', ''),
(122, 16, 'Sciences de l''ingénieur', '5. M2', 1, 'Master (M2) Informatique Appliquée aux Systèmes d’information géographique (IASIG) ', 'Université de Douala', ''),
(123, 4, 'Médecine et santé publique', '4. M1', 1, 'Master (M1) en Neurobiologie', 'Université d''Alexandrie', ''),
(125, 28, 'Sciences humaines', '5. M2', 2, 'Master (M1-M2) Amenagement et Gouvernance en pays des Suds', 'Université de Besançon', ''),
(126, 18, 'Droit, économie et gestion', '5. M2', 1, 'Master pro (M2) Formation des Accompagnateurs en création d''entreprises (FACE)', 'Université de Sfax', ''),
(127, 4, 'Médecine et santé publique', '5. M2', 1, 'Master 2 Neurobiologie', 'Université d''Alexandrie', ''),
(128, 36, 'Médecine et santé publique', '4. M1', 1, 'Master 1 Santé Publique SPRE', 'Université de Nancy', ''),
(129, 36, 'Médecine et santé publique', '4. M1', 1, 'Master 1 Santé Publique ERCE', 'Université de Nancy', ''),
(130, 36, 'Médecine et santé publique', '4. M1', 1, 'Master 1 Santé Publique IPS', 'Université de Nancy', ''),
(131, 36, 'Médecine et santé publique', '5. M2', 1, 'Master 2 Santé Publique IPS', 'Université de Nancy', ''),
(132, 0, 'Environnement et développement durable', '5. M2', 1, 'Master 2 Gestion des Risques : Santé, Sécurité, Environnement', 'Université de Nantes (France)', ''),
(133, 23, 'Environnement et développement durable', '5. M2', 1, 'Master pro (M2) MODECO', 'Université de Jendouba', ''),
(134, 0, 'Sciences de l''ingénieur', '4. M1', 1, 'Master 1 Statistiques et économétrie', 'Université de Toulouse', ''),
(135, 5, 'Environnement et développement durable', '5. M2', 1, ' Master 2 - Management Qualité-Sécurité-Environnement', 'Université de Ouagadougou', ''),
(136, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master 2 Génie Sanitaire et Environnement', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(137, 6, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence 3 pro Management des collectivités territoriales', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(138, 6, 'Sciences de l''ingénieur', '3. L3', 1, 'L3 Gestion et Maintenance des Installations Industrielles et Energétiques', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(139, 29, 'Éducation et formation', '4. M1', 1, 'Master 1 ACREDITE', 'Université de Cergy, Université de Mons-Hainaut (Belgique), UNIGE', ''),
(140, 29, 'Éducation et formation', '5. M2', 1, 'Master pro (M2) ACREDITE', 'Université de Cergy, Université de Mons-Hainaut (Belgique), UNIGE', ''),
(141, 22, 'Médecine et santé publique', '3. DU', 1, 'DU Epidémiologie nutritionnelle', 'Université de Bordeaux 2 - ISPED (France)', ''),
(142, 26, 'Sciences humaines', '5. M2', 1, 'Master (M2) Management des Medias', 'Université de Lille 1 (France)', ''),
(143, 25, 'Sciences humaines', '4. M1', 1, 'Master 1 Littératures, idées, poétiques, parcours Littératures modernes et contemporaines', 'Université de Clermont-Ferrand 2', ''),
(144, 5, 'Environnement et développement durable', '3. L3', 1, 'Licence 3 Génie de l''Environnement option Eau et Assainissement', 'Université de Ouagadougou', ''),
(145, 5, 'Environnement et développement durable', '3. L3', 1, 'Licence 3 Génie de l’Environnement, option Gestion des Pollutions et Aménagement du Territoire', 'Université de Ouagadougou', ''),
(146, 6, 'Sciences de l''ingénieur', '3. L3', 1, 'Licence Pro (L3) Maitrise de l''Energie et Energies renouvelables (MEER)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(147, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master pro (M2) Hydraulique et gestion des systèmes irrigués (HSI)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(148, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master pro (M2) Qualité, hygiène, sécurité, environnement (QHSE)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(149, 6, 'Sciences de l''ingénieur', '5. M2', 1, 'Master Pro (M2) Management stratégique et Opérationnel (MSO)', 'Institut International d''Ingénierie de l''Eau et de l''Environnement, Ouagadougou (Burkina Faso)', ''),
(150, 9, 'Éducation et formation', '4. M1', 1, 'Master 1 - EFTIS', 'Université de Nice - Sophia Antipolis (France)', ''),
(164, 22, 'Médecine et santé publique', '3. DU', 1, 'DU Recherche bibliographique en santé', 'ISPED', ''),
(161, 22, 'Éducation et formation', '3. DU', 1, 'DU Recherche bibliographique en santé', 'ISPED', ''),
(163, 22, 'Médecine et santé publique', '3. DU', 1, 'DU Epidémiologie des cancers', 'ISPED', ''),
(165, 20, 'Médecine et santé publique', '4. M1', 1, 'Master international de biotechnologies tropicales (MIBIOT)', 'UCAD', ''),
(151, 25, 'Sciences humaines', '5. M2', 1, 'Master 2 Littératures, idées, poétiques, parcours Littératures modernes et contemporaines', 'Université Blaise Pascal (Clermont-Ferrand II)', ''),
(152, 11, 'Droit, économie et gestion', '5. M2', 1, 'Master 2 Négociation et Direction d’Equipes Commerciales', 'Université Montpellier I', ''),
(153, 34, 'Droit, économie et gestion', '3. L3', 1, 'Licence 3 Transit et Commerce International', 'Institut supérieur de technologie d''Antsiranana', ''),
(154, 33, 'Droit, économie et gestion', '3. L3', 1, 'Licence 3 Hôtellerie Tourisme', 'Université libano-française', ''),
(155, 37, 'Sciences de l''ingénieur', '5. M2', 1, 'Master 2 MASSICO', 'Ecole Nationale Supérieure Polytechnique de Yaoundé (Cameroun)', ''),
(156, 5, 'Environnement et développement durable', '3. L3', 1, 'Licence pro (L3) Sciences et technologie, Option Gestion du risque Phytosanitaire', 'Université de Ouagadougou', ''),
(157, 27, 'Droit, économie et gestion', '4. M1', 1, 'Master pro (M1) Management des ONG et des Associations (MOA)', 'Université de Ouagadougou 2', ''),
(158, 19, 'Sciences de l''ingénieur', '5. M2', 1, 'Master 2 Ingénierie Informatique et technologies de l''information et de la communication (2ITIC)', 'Université Gaston Berger de Saint-Louis', ''),
(159, 15, 'Environnement et développement durable', '5. M2', 1, 'Master recherche (M1+M2) Valorisation Alimentaire et gestion durable des ressources animales VAGDRA', 'Université de Carthage', 'xxx'),
(162, 38, 'Médecine et santé publique', '5. M2', 1, 'Master (M2) Immunologie et médecine régénérative', 'Mansourah', ''),
(160, 22, 'Éducation et formation', '3. DU', 1, 'DU Epidémiologie des cancers', 'ISPED', ''),
(166, 8, 'Médecine et santé publique', '4. M1', 1, 'Master (M1) Santé Publique Société et développement (SPSD)', 'Marseille', ''),
(167, 8, 'Médecine et santé publique', '5. M2', 1, 'Master (M2) Santé Publique Société et développement (SPSD)', 'Marseille', ''),
(168, 8, 'Médecine et santé publique', '4. M1', 1, 'Master (M1) Méthodes quantitatives et économétriques pour la recherche en Santé (MQERS)', 'Marseille', ''),
(169, 8, 'Médecine et santé publique', '5. M2', 1, 'Master (M2) Méthodes quantitatives et économétriques pour la recherche en Santé (MQERS)', 'Marseille', ''),
(170, 27, 'Droit, économie et gestion', '5. M2', 1, 'Master 2 pro Management des ONG et des Associations (MOA)', 'Ougadougou 2', 'vvv');
