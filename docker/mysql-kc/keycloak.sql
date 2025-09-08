-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: kc-db
-- Gegenereerd op: 08 sep 2025 om 09:16
-- Serverversie: 8.0.29
-- PHP-versie: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keycloak`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ADMIN_EVENT_ENTITY`
--

CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` text,
  `REPRESENTATION` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  `DETAILS_JSON` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ASSOCIATED_POLICY`
--

CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AUTHENTICATION_EXECUTION`
--

CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `AUTHENTICATOR_FLOW` tinyint NOT NULL DEFAULT '0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `AUTHENTICATION_EXECUTION`
--

INSERT INTO `AUTHENTICATION_EXECUTION` (`ID`, `ALIAS`, `AUTHENTICATOR`, `REALM_ID`, `FLOW_ID`, `REQUIREMENT`, `PRIORITY`, `AUTHENTICATOR_FLOW`, `AUTH_FLOW_ID`, `AUTH_CONFIG`) VALUES
('0244f9e7-f6b5-406d-acde-f07e22ec0d0a', NULL, 'client-x509', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '90181ae8-62f2-428a-ab3e-0470cc5379b0', 2, 40, 0, NULL, NULL),
('033ff545-6c0a-469d-9afd-ce910cc98543', NULL, 'conditional-user-configured', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'e8a4b18e-2309-4810-90d8-c814acdac19f', 0, 10, 0, NULL, NULL),
('03f7a87d-8d06-493f-b213-41490e822272', NULL, 'reset-credential-email', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '8744efd3-367f-42ea-9219-44b5e0f113d2', 0, 20, 0, NULL, NULL),
('05ce8457-22ed-492e-9807-a5f3ee9092ff', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'aebb64ae-ac03-4d60-b90f-a0106acde415', 2, 20, 1, '13646a45-d13e-49b0-9cb3-77c8665b76d9', NULL),
('062f31d0-24b2-47f1-9b9d-3effafc4884f', NULL, 'auth-recovery-authn-code-form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'e8a4b18e-2309-4810-90d8-c814acdac19f', 3, 40, 0, NULL, NULL),
('0bfc8a75-d198-4b18-a232-6587f71c19d0', NULL, 'auth-otp-form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '4693faa7-2f39-41e0-95fc-6cf16af39418', 2, 20, 0, NULL, NULL),
('0c28542a-4744-455a-b87f-beb89e1e3050', NULL, 'idp-username-password-form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'e42435ba-d8d2-4c91-abe1-670cd9609cd5', 0, 10, 0, NULL, NULL),
('0e5f7a67-529c-49d7-9795-72639eb56ae1', NULL, 'reset-credentials-choose-user', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '1a704690-6140-4169-9774-9a0b31fd1f5d', 0, 10, 0, NULL, NULL),
('0f7e7425-8c0d-4765-b17e-25b3711b6846', NULL, 'direct-grant-validate-password', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '68eb1497-11b3-40f4-93e3-d03836a6a907', 0, 20, 0, NULL, NULL),
('1861b50e-5387-4d15-843e-ca9261743093', NULL, 'conditional-user-configured', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '8a4d5aae-80f9-4b22-9a9f-709623df3b26', 0, 10, 0, NULL, NULL),
('1b87e916-b40a-4260-9c14-25417c185063', NULL, 'registration-recaptcha-action', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'dc8c4dcb-c584-45f7-9973-39c40910620f', 3, 60, 0, NULL, NULL),
('1cdcdf05-938c-463f-a829-30a3d3e42200', NULL, 'auth-username-password-form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'b8bffdac-bc6d-47bc-851f-acd50c985bc3', 0, 10, 0, NULL, NULL),
('211ad125-5ed2-4024-b3c6-323c62143099', NULL, 'auth-recovery-authn-code-form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '4693faa7-2f39-41e0-95fc-6cf16af39418', 3, 40, 0, NULL, NULL),
('222d69ad-f151-40cc-9541-89bb3ce67867', NULL, 'direct-grant-validate-password', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '6a72f575-fc49-4e00-9063-f636f59b34e2', 0, 20, 0, NULL, NULL),
('22e6ac1a-f1c2-4fa3-bd48-061ff17c165d', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '13646a45-d13e-49b0-9cb3-77c8665b76d9', 1, 20, 1, 'a8a903ff-58fb-4de4-a883-5e6559d6fcc7', NULL),
('2777d716-3646-4231-b8dd-59ea54e1e0dd', NULL, 'auth-recovery-authn-code-form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'a8a903ff-58fb-4de4-a883-5e6559d6fcc7', 3, 40, 0, NULL, NULL),
('27c76a8a-08ad-47fe-a831-84421ff2025f', NULL, 'http-basic-authenticator', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'c337e6a1-448a-40a3-98f8-6f3ebf728ad8', 0, 10, 0, NULL, NULL),
('28577eb0-6d1c-4721-9850-5b3cae1f1182', NULL, 'registration-user-creation', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'dc8c4dcb-c584-45f7-9973-39c40910620f', 0, 20, 0, NULL, NULL),
('290961dc-b51c-4d23-ae40-d3d0075f54b9', NULL, 'http-basic-authenticator', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'c34327c7-b689-47e6-b6d2-d934985b127e', 0, 10, 0, NULL, NULL),
('2d470070-bdf9-46e9-81a7-87c8cc0307d2', NULL, 'auth-cookie', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '1f3ee0af-13d8-4dfc-b8f7-78500b1471b7', 2, 10, 0, NULL, NULL),
('2fd553cc-00b3-4c16-a3e6-f621fb6e3e32', NULL, 'reset-otp', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '8a4d5aae-80f9-4b22-9a9f-709623df3b26', 0, 20, 0, NULL, NULL),
('2fe082ff-8265-4cf0-9201-21654aeb0cd5', NULL, 'registration-recaptcha-action', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'd080dc42-b731-4730-8a9b-18d400111302', 3, 60, 0, NULL, NULL),
('31b34449-8f2a-4827-ad59-630400c2342b', NULL, 'registration-page-form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '031bcdd3-806f-4278-a0af-afefc466f7f4', 0, 10, 1, 'd080dc42-b731-4730-8a9b-18d400111302', NULL),
('3523e549-6a8e-4055-bb07-fc25589b3942', NULL, 'auth-username-password-form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'c575f1c7-f34a-4a17-9f12-01b532925c49', 0, 10, 0, NULL, NULL),
('35484d21-8917-474e-9dc2-80e1835fddb9', NULL, 'conditional-user-configured', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f8feffb2-c478-432a-aaf9-3fad2e851b49', 0, 10, 0, NULL, NULL),
('35e2f0ed-4ca7-4396-b481-898bac152a0c', NULL, 'auth-recovery-authn-code-form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'e54e42f8-3043-4fbb-89e7-465d276e5aa7', 3, 40, 0, NULL, NULL),
('3795abb1-fb1f-4f2c-8fd6-1a228c562567', NULL, 'client-secret', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '90181ae8-62f2-428a-ab3e-0470cc5379b0', 2, 10, 0, NULL, NULL),
('38b6dcfc-cb35-47d9-b0be-bf8aed960d73', NULL, 'idp-confirm-link', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'b7d2f388-72aa-46b2-8584-ba33f52bd7a3', 0, 10, 0, NULL, NULL),
('3f4a4658-3afc-4409-9dcc-885865aab8ec', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '197025a1-84a7-4dd2-9ca1-88bad7e30acd', 0, 20, 1, '4d9d1258-bb4a-43d6-9c79-ccadc8ef6e4b', NULL),
('410b766c-c0bc-4e34-b50f-ed0d8ed6d81b', NULL, 'idp-create-user-if-unique', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '18748d47-c518-4a90-8f95-c1bc3714fc43', 2, 10, 0, NULL, '98ef71a5-79a4-42de-ac57-28bacc3cad50'),
('53179c1f-15f0-401c-b095-d73cedd837b0', NULL, 'conditional-user-configured', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'fffdbde6-2b72-491d-bfd1-cc7f6747c09a', 0, 10, 0, NULL, NULL),
('53b6a73f-41dc-4035-a6ed-1913c18f5758', NULL, 'direct-grant-validate-username', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '68eb1497-11b3-40f4-93e3-d03836a6a907', 0, 10, 0, NULL, NULL),
('54efd2d0-9013-401f-8ab9-40386fa05cd5', NULL, 'client-secret-jwt', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '90181ae8-62f2-428a-ab3e-0470cc5379b0', 2, 30, 0, NULL, NULL),
('55a40ac5-f463-4c97-b017-ef4f9c9b90f8', NULL, 'idp-email-verification', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0911eda7-ea2b-4541-a6bb-82fc227c4c97', 2, 10, 0, NULL, NULL),
('5aa51d1a-8a3a-4400-b058-a5a7ba95c2f5', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '6a72f575-fc49-4e00-9063-f636f59b34e2', 1, 30, 1, 'fffdbde6-2b72-491d-bfd1-cc7f6747c09a', NULL),
('5b93cb49-9a4c-45a9-9b11-6e235b5a7e72', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '68eb1497-11b3-40f4-93e3-d03836a6a907', 1, 30, 1, '6ab3268d-9fcd-4a6b-9aa9-7803ab9a0ce1', NULL),
('5bee3335-5c55-456f-aef4-7fe4b6827b9d', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '1e52b327-0fd3-4201-9bd7-bdcfd10813a2', 1, 10, 1, 'f8feffb2-c478-432a-aaf9-3fad2e851b49', NULL),
('63011b39-b514-413a-b8b8-f463324defea', NULL, 'auth-otp-form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'e8a4b18e-2309-4810-90d8-c814acdac19f', 2, 20, 0, NULL, NULL),
('663e23f5-db9e-48fb-ac8a-de5d8f0fb15d', NULL, 'auth-otp-form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'e54e42f8-3043-4fbb-89e7-465d276e5aa7', 2, 20, 0, NULL, NULL),
('6c92f3fc-b927-4a22-9c32-c56f3510d750', NULL, 'identity-provider-redirector', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'cef27739-2dad-4a00-bf39-4e044f3a3481', 2, 25, 0, NULL, NULL),
('6d0429d6-a295-4725-8986-2ada4d115f64', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'e42435ba-d8d2-4c91-abe1-670cd9609cd5', 1, 20, 1, '4693faa7-2f39-41e0-95fc-6cf16af39418', NULL),
('6f0783f9-740f-4c8c-b563-a79dba439388', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'b8bffdac-bc6d-47bc-851f-acd50c985bc3', 1, 20, 1, 'e8a4b18e-2309-4810-90d8-c814acdac19f', NULL),
('6f1c0a29-ff9a-4977-a410-de8505fda2e2', NULL, 'conditional-user-configured', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '4693faa7-2f39-41e0-95fc-6cf16af39418', 0, 10, 0, NULL, NULL),
('7183a615-b332-4eb0-ad0a-e802899a6ae0', NULL, 'auth-spnego', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'cef27739-2dad-4a00-bf39-4e044f3a3481', 3, 20, 0, NULL, NULL),
('753c637b-e9a0-49e5-b31f-9f5af71b9e38', NULL, 'idp-email-verification', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'aebb64ae-ac03-4d60-b90f-a0106acde415', 2, 10, 0, NULL, NULL),
('7997f8e3-8c78-4fe5-9392-4e3ffb6ca916', NULL, 'registration-terms-and-conditions', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'd080dc42-b731-4730-8a9b-18d400111302', 3, 70, 0, NULL, NULL),
('7f09eb27-7e52-4cca-b76e-20997ecccaf5', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'c575f1c7-f34a-4a17-9f12-01b532925c49', 1, 20, 1, 'e54e42f8-3043-4fbb-89e7-465d276e5aa7', NULL),
('81fc60fb-b5e2-4e46-84c4-5c51d4498939', NULL, 'registration-password-action', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'dc8c4dcb-c584-45f7-9973-39c40910620f', 0, 50, 0, NULL, NULL),
('874080e3-d60a-417c-98d2-6bc0a5abc360', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '18748d47-c518-4a90-8f95-c1bc3714fc43', 2, 20, 1, 'b7d2f388-72aa-46b2-8584-ba33f52bd7a3', NULL),
('8e990756-87ab-4df7-9d1f-b7269bfe8388', NULL, 'direct-grant-validate-otp', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '6ab3268d-9fcd-4a6b-9aa9-7803ab9a0ce1', 0, 20, 0, NULL, NULL),
('92957e97-23fd-4346-9f6e-45869cf50953', NULL, 'identity-provider-redirector', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '1f3ee0af-13d8-4dfc-b8f7-78500b1471b7', 2, 25, 0, NULL, NULL),
('944a84f6-6e1d-4804-b934-dc0713d79de9', NULL, 'reset-credentials-choose-user', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '8744efd3-367f-42ea-9219-44b5e0f113d2', 0, 10, 0, NULL, NULL),
('98a7ddf8-6a49-4ed6-b357-3911e46ab5b9', NULL, 'client-secret-jwt', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '84d0a8bd-66ba-4fd8-b480-dab2278d10bf', 2, 30, 0, NULL, NULL),
('9bb50b30-5634-4546-a86e-0089f4807345', NULL, 'idp-review-profile', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'b659eb7b-48cb-4825-8463-98429875746c', 0, 10, 0, NULL, 'f854eb03-f869-4d3b-a458-ade7ea8a9deb'),
('9be3ed87-b017-4a6d-9314-35322a64bb6d', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '8744efd3-367f-42ea-9219-44b5e0f113d2', 1, 40, 1, '9c612b1a-91c1-41b1-89a1-ba378aaca91d', NULL),
('9c842d91-3f90-4b9f-8f95-06a6b3e435ad', NULL, 'idp-add-organization-member', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0b442d4a-c46d-4dd5-84a6-a945243de8b3', 0, 20, 0, NULL, NULL),
('9c87fa5c-3d87-440c-a096-945445535a8f', NULL, 'conditional-user-configured', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '6ab3268d-9fcd-4a6b-9aa9-7803ab9a0ce1', 0, 10, 0, NULL, NULL),
('9ceadf1e-55ac-4975-b966-6409b8c39d2c', NULL, 'conditional-user-configured', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0b442d4a-c46d-4dd5-84a6-a945243de8b3', 0, 10, 0, NULL, NULL),
('9e865543-4ffc-4b3c-a42a-f201ccc9579d', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '4d9d1258-bb4a-43d6-9c79-ccadc8ef6e4b', 2, 20, 1, 'ca031e53-740a-4ccc-bef0-d8cf5b62aefc', NULL),
('a00b2399-6b54-4833-8730-b80be9c39464', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '1f3ee0af-13d8-4dfc-b8f7-78500b1471b7', 2, 26, 1, '1e52b327-0fd3-4201-9bd7-bdcfd10813a2', NULL),
('a042ded4-e4ed-48c7-b69e-29e20200925d', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'b7d2f388-72aa-46b2-8584-ba33f52bd7a3', 0, 20, 1, 'aebb64ae-ac03-4d60-b90f-a0106acde415', NULL),
('a231dbf0-958f-48c7-8fe0-440921ad0b51', NULL, 'client-x509', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '84d0a8bd-66ba-4fd8-b480-dab2278d10bf', 2, 40, 0, NULL, NULL),
('a6a8375f-cc39-4391-93e5-e4ba6ad9234d', NULL, 'webauthn-authenticator', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'a8a903ff-58fb-4de4-a883-5e6559d6fcc7', 3, 30, 0, NULL, NULL),
('a8700f4d-b14c-433d-96d7-93721a9dc226', NULL, 'registration-password-action', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'd080dc42-b731-4730-8a9b-18d400111302', 0, 50, 0, NULL, NULL),
('abdad914-5405-49c1-8d20-fc1666193c8c', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'cef27739-2dad-4a00-bf39-4e044f3a3481', 2, 30, 1, 'c575f1c7-f34a-4a17-9f12-01b532925c49', NULL),
('afbd43cd-c1b1-441d-925a-d31d7ff4b60e', NULL, 'reset-password', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '8744efd3-367f-42ea-9219-44b5e0f113d2', 0, 30, 0, NULL, NULL),
('aff25639-06c3-4c1d-bf7f-828527bb6585', NULL, 'auth-otp-form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'a8a903ff-58fb-4de4-a883-5e6559d6fcc7', 2, 20, 0, NULL, NULL),
('b30cede3-a1f7-4343-8db9-14eb05c63c0a', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '1f3ee0af-13d8-4dfc-b8f7-78500b1471b7', 2, 30, 1, 'b8bffdac-bc6d-47bc-851f-acd50c985bc3', NULL),
('b7966b2e-43f8-47e2-99d3-39702833f224', NULL, 'auth-spnego', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '1f3ee0af-13d8-4dfc-b8f7-78500b1471b7', 3, 20, 0, NULL, NULL),
('bb1ac3f4-4e12-454d-bcaa-b233db5b4e7c', NULL, 'idp-confirm-link', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'ca031e53-740a-4ccc-bef0-d8cf5b62aefc', 0, 10, 0, NULL, NULL),
('bc04736b-031f-40a4-9d9b-2058d462b354', NULL, 'webauthn-authenticator', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '4693faa7-2f39-41e0-95fc-6cf16af39418', 3, 30, 0, NULL, NULL),
('bdca941d-688f-474e-9641-9f786551c4bb', NULL, 'webauthn-authenticator', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'e8a4b18e-2309-4810-90d8-c814acdac19f', 3, 30, 0, NULL, NULL),
('c1e8b95d-84fe-43e0-9b7a-ff60d97083e7', NULL, 'client-secret', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '84d0a8bd-66ba-4fd8-b480-dab2278d10bf', 2, 10, 0, NULL, NULL),
('c327a1bf-e12f-4106-a1d9-d18b1d2c9ac8', NULL, 'reset-password', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '1a704690-6140-4169-9774-9a0b31fd1f5d', 0, 30, 0, NULL, NULL),
('c790e7af-d821-4663-9877-702ecb822327', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0911eda7-ea2b-4541-a6bb-82fc227c4c97', 2, 20, 1, 'e42435ba-d8d2-4c91-abe1-670cd9609cd5', NULL),
('c796d4df-27c4-45eb-8de7-e10244e8615e', NULL, 'webauthn-authenticator', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'e54e42f8-3043-4fbb-89e7-465d276e5aa7', 3, 30, 0, NULL, NULL),
('cd09e882-66fa-431a-924f-0ef1a729af76', NULL, 'client-jwt', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '90181ae8-62f2-428a-ab3e-0470cc5379b0', 2, 20, 0, NULL, NULL),
('cd1729b6-fb0b-4c65-b0f6-7416e4748f6a', NULL, 'conditional-user-configured', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'e54e42f8-3043-4fbb-89e7-465d276e5aa7', 0, 10, 0, NULL, NULL),
('cdcda44d-6c6b-4199-b85c-7367d409cd33', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'ca031e53-740a-4ccc-bef0-d8cf5b62aefc', 0, 20, 1, '0911eda7-ea2b-4541-a6bb-82fc227c4c97', NULL),
('cdeb564e-090e-4787-8f39-729eb48ae052', NULL, 'reset-otp', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '9c612b1a-91c1-41b1-89a1-ba378aaca91d', 0, 20, 0, NULL, NULL),
('d7bfd0d6-130e-4b30-9636-d122bdd01651', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '1a704690-6140-4169-9774-9a0b31fd1f5d', 1, 40, 1, '8a4d5aae-80f9-4b22-9a9f-709623df3b26', NULL),
('d81ace9f-057d-448f-9bfb-0e875a859a19', NULL, 'auth-cookie', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'cef27739-2dad-4a00-bf39-4e044f3a3481', 2, 10, 0, NULL, NULL),
('d88b1692-bca2-46e7-abe5-5b08b1a86b9b', NULL, 'reset-credential-email', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '1a704690-6140-4169-9774-9a0b31fd1f5d', 0, 20, 0, NULL, NULL),
('da08df7e-2428-45f9-baa6-c55cb37c345d', NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'b659eb7b-48cb-4825-8463-98429875746c', 0, 20, 1, '18748d47-c518-4a90-8f95-c1bc3714fc43', NULL),
('dbf62015-c427-474e-9d61-1e87431e1449', NULL, 'idp-create-user-if-unique', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '4d9d1258-bb4a-43d6-9c79-ccadc8ef6e4b', 2, 10, 0, NULL, '349fd544-5256-45de-9d51-8a783ae32dc6'),
('e218625e-ca5e-45fc-b152-fc04a915a741', NULL, NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '197025a1-84a7-4dd2-9ca1-88bad7e30acd', 1, 50, 1, '0b442d4a-c46d-4dd5-84a6-a945243de8b3', NULL),
('e896c323-89bf-4109-a45c-129e21442871', NULL, 'direct-grant-validate-otp', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'fffdbde6-2b72-491d-bfd1-cc7f6747c09a', 0, 20, 0, NULL, NULL),
('eb5dec74-3d6e-4ab7-98cf-42832b317ea0', NULL, 'registration-page-form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '041a35e4-040c-419a-8fac-3b61bc0b524e', 0, 10, 1, 'dc8c4dcb-c584-45f7-9973-39c40910620f', NULL),
('ec57244b-06b2-477e-8764-6115b9b40856', NULL, 'docker-http-basic-authenticator', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '32cce03f-a2b3-4021-bd92-1fcc87921fd6', 0, 10, 0, NULL, NULL),
('ef893bba-8312-4cab-9ddb-2a580cf68020', NULL, 'idp-review-profile', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '197025a1-84a7-4dd2-9ca1-88bad7e30acd', 0, 10, 0, NULL, '39822d0c-41d2-460e-9027-a0d4f432892b'),
('f1a6d418-5d33-46fd-8caf-0440a123a437', NULL, 'conditional-user-configured', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'a8a903ff-58fb-4de4-a883-5e6559d6fcc7', 0, 10, 0, NULL, NULL),
('f1aaaae3-f4a2-41a6-81c1-074b0555ee27', NULL, 'organization', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f8feffb2-c478-432a-aaf9-3fad2e851b49', 2, 20, 0, NULL, NULL),
('f1e3e720-5412-4ead-86c9-0a827a9129af', NULL, 'client-jwt', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '84d0a8bd-66ba-4fd8-b480-dab2278d10bf', 2, 20, 0, NULL, NULL),
('f2bc07a5-1ba5-4bc5-b069-60f206f67c7f', NULL, 'registration-terms-and-conditions', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'dc8c4dcb-c584-45f7-9973-39c40910620f', 3, 70, 0, NULL, NULL),
('f388ba99-2741-4905-8649-cb9748b61911', NULL, 'conditional-user-configured', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '9c612b1a-91c1-41b1-89a1-ba378aaca91d', 0, 10, 0, NULL, NULL),
('f433a682-9eef-49e5-8e94-1507cafc79f7', NULL, 'registration-user-creation', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'd080dc42-b731-4730-8a9b-18d400111302', 0, 20, 0, NULL, NULL),
('f7b622c1-210d-4eb8-b407-ee02e488320a', NULL, 'docker-http-basic-authenticator', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '4e6db4d0-e6b5-4e28-a1c4-9aae16ebc312', 0, 10, 0, NULL, NULL),
('fb09e5e2-cec8-4fe0-9a87-06249e8983f0', NULL, 'idp-username-password-form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '13646a45-d13e-49b0-9cb3-77c8665b76d9', 0, 10, 0, NULL, NULL),
('fe56b7c9-ea27-4988-af33-b5a52876583b', NULL, 'direct-grant-validate-username', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '6a72f575-fc49-4e00-9063-f636f59b34e2', 0, 10, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AUTHENTICATION_FLOW`
--

CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` tinyint NOT NULL DEFAULT '0',
  `BUILT_IN` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `AUTHENTICATION_FLOW`
--

INSERT INTO `AUTHENTICATION_FLOW` (`ID`, `ALIAS`, `DESCRIPTION`, `REALM_ID`, `PROVIDER_ID`, `TOP_LEVEL`, `BUILT_IN`) VALUES
('031bcdd3-806f-4278-a0af-afefc466f7f4', 'registration', 'Registration flow', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 1, 1),
('041a35e4-040c-419a-8fac-3b61bc0b524e', 'registration', 'Registration flow', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 1, 1),
('0911eda7-ea2b-4541-a6bb-82fc227c4c97', 'Account verification options', 'Method with which to verity the existing account', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('0b442d4a-c46d-4dd5-84a6-a945243de8b3', 'First Broker Login - Conditional Organization', 'Flow to determine if the authenticator that adds organization members is to be used', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('13646a45-d13e-49b0-9cb3-77c8665b76d9', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('18748d47-c518-4a90-8f95-c1bc3714fc43', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('197025a1-84a7-4dd2-9ca1-88bad7e30acd', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 1, 1),
('1a704690-6140-4169-9774-9a0b31fd1f5d', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 1, 1),
('1e52b327-0fd3-4201-9bd7-bdcfd10813a2', 'Organization', NULL, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('1f3ee0af-13d8-4dfc-b8f7-78500b1471b7', 'browser', 'Browser based authentication', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 1, 1),
('32cce03f-a2b3-4021-bd92-1fcc87921fd6', 'docker auth', 'Used by Docker clients to authenticate against the IDP', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 1, 1),
('4693faa7-2f39-41e0-95fc-6cf16af39418', 'First broker login - Conditional 2FA', 'Flow to determine if any 2FA is required for the authentication', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('4d9d1258-bb4a-43d6-9c79-ccadc8ef6e4b', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('4e6db4d0-e6b5-4e28-a1c4-9aae16ebc312', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 1, 1),
('68eb1497-11b3-40f4-93e3-d03836a6a907', 'direct grant', 'OpenID Connect Resource Owner Grant', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 1, 1),
('6a72f575-fc49-4e00-9063-f636f59b34e2', 'direct grant', 'OpenID Connect Resource Owner Grant', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 1, 1),
('6ab3268d-9fcd-4a6b-9aa9-7803ab9a0ce1', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('84d0a8bd-66ba-4fd8-b480-dab2278d10bf', 'clients', 'Base authentication for clients', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'client-flow', 1, 1),
('8744efd3-367f-42ea-9219-44b5e0f113d2', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 1, 1),
('8a4d5aae-80f9-4b22-9a9f-709623df3b26', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('90181ae8-62f2-428a-ab3e-0470cc5379b0', 'clients', 'Base authentication for clients', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'client-flow', 1, 1),
('9c612b1a-91c1-41b1-89a1-ba378aaca91d', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('a8a903ff-58fb-4de4-a883-5e6559d6fcc7', 'First broker login - Conditional 2FA', 'Flow to determine if any 2FA is required for the authentication', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('aebb64ae-ac03-4d60-b90f-a0106acde415', 'Account verification options', 'Method with which to verity the existing account', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('b659eb7b-48cb-4825-8463-98429875746c', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 1, 1),
('b7d2f388-72aa-46b2-8584-ba33f52bd7a3', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('b8bffdac-bc6d-47bc-851f-acd50c985bc3', 'forms', 'Username, password, otp and other auth forms.', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('c337e6a1-448a-40a3-98f8-6f3ebf728ad8', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 1, 1),
('c34327c7-b689-47e6-b6d2-d934985b127e', 'saml ecp', 'SAML ECP Profile Authentication Flow', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 1, 1),
('c575f1c7-f34a-4a17-9f12-01b532925c49', 'forms', 'Username, password, otp and other auth forms.', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('ca031e53-740a-4ccc-bef0-d8cf5b62aefc', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('cef27739-2dad-4a00-bf39-4e044f3a3481', 'browser', 'Browser based authentication', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 1, 1),
('d080dc42-b731-4730-8a9b-18d400111302', 'registration form', 'Registration form', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'form-flow', 0, 1),
('dc8c4dcb-c584-45f7-9973-39c40910620f', 'registration form', 'Registration form', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'form-flow', 0, 1),
('e42435ba-d8d2-4c91-abe1-670cd9609cd5', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('e54e42f8-3043-4fbb-89e7-465d276e5aa7', 'Browser - Conditional 2FA', 'Flow to determine if any 2FA is required for the authentication', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1),
('e8a4b18e-2309-4810-90d8-c814acdac19f', 'Browser - Conditional 2FA', 'Flow to determine if any 2FA is required for the authentication', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('f8feffb2-c478-432a-aaf9-3fad2e851b49', 'Browser - Conditional Organization', 'Flow to determine if the organization identity-first login is to be used', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'basic-flow', 0, 1),
('fffdbde6-2b72-491d-bfd1-cc7f6747c09a', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'basic-flow', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AUTHENTICATOR_CONFIG`
--

CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `AUTHENTICATOR_CONFIG`
--

INSERT INTO `AUTHENTICATOR_CONFIG` (`ID`, `ALIAS`, `REALM_ID`) VALUES
('349fd544-5256-45de-9d51-8a783ae32dc6', 'create unique user config', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca'),
('39822d0c-41d2-460e-9027-a0d4f432892b', 'review profile config', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca'),
('98ef71a5-79a4-42de-ac57-28bacc3cad50', 'create unique user config', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2'),
('f854eb03-f869-4d3b-a458-ade7ea8a9deb', 'review profile config', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AUTHENTICATOR_CONFIG_ENTRY`
--

CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `AUTHENTICATOR_CONFIG_ENTRY`
--

INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` (`AUTHENTICATOR_ID`, `VALUE`, `NAME`) VALUES
('349fd544-5256-45de-9d51-8a783ae32dc6', 'false', 'require.password.update.after.registration'),
('39822d0c-41d2-460e-9027-a0d4f432892b', 'missing', 'update.profile.on.first.login'),
('98ef71a5-79a4-42de-ac57-28bacc3cad50', 'false', 'require.password.update.after.registration'),
('f854eb03-f869-4d3b-a458-ade7ea8a9deb', 'missing', 'update.profile.on.first.login');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BROKER_LINK`
--

CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT`
--

CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` tinyint NOT NULL DEFAULT '0',
  `FULL_SCOPE_ALLOWED` tinyint NOT NULL DEFAULT '0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int DEFAULT NULL,
  `PUBLIC_CLIENT` tinyint NOT NULL DEFAULT '0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` tinyint NOT NULL DEFAULT '0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` tinyint NOT NULL DEFAULT '0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int DEFAULT '0',
  `FRONTCHANNEL_LOGOUT` tinyint NOT NULL DEFAULT '0',
  `CONSENT_REQUIRED` tinyint NOT NULL DEFAULT '0',
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` tinyint NOT NULL DEFAULT '0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` tinyint NOT NULL DEFAULT '1',
  `IMPLICIT_FLOW_ENABLED` tinyint NOT NULL DEFAULT '0',
  `DIRECT_ACCESS_GRANTS_ENABLED` tinyint NOT NULL DEFAULT '0',
  `ALWAYS_DISPLAY_IN_CONSOLE` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CLIENT`
--

INSERT INTO `CLIENT` (`ID`, `ENABLED`, `FULL_SCOPE_ALLOWED`, `CLIENT_ID`, `NOT_BEFORE`, `PUBLIC_CLIENT`, `SECRET`, `BASE_URL`, `BEARER_ONLY`, `MANAGEMENT_URL`, `SURROGATE_AUTH_REQUIRED`, `REALM_ID`, `PROTOCOL`, `NODE_REREG_TIMEOUT`, `FRONTCHANNEL_LOGOUT`, `CONSENT_REQUIRED`, `NAME`, `SERVICE_ACCOUNTS_ENABLED`, `CLIENT_AUTHENTICATOR_TYPE`, `ROOT_URL`, `DESCRIPTION`, `REGISTRATION_TOKEN`, `STANDARD_FLOW_ENABLED`, `IMPLICIT_FLOW_ENABLED`, `DIRECT_ACCESS_GRANTS_ENABLED`, `ALWAYS_DISPLAY_IN_CONSOLE`) VALUES
('07a28f28-217f-4e49-ac1b-989700206824', 1, 0, 'account', 0, 1, NULL, '/realms/master/account/', 0, NULL, 0, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'openid-connect', 0, 0, 0, '${client_account}', 0, 'client-secret', '${authBaseUrl}', NULL, NULL, 1, 0, 0, 0),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', 1, 0, 'broker', 0, 0, NULL, NULL, 1, NULL, 0, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'openid-connect', 0, 0, 0, '${client_broker}', 0, 'client-secret', NULL, NULL, NULL, 1, 0, 0, 0),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', 1, 1, 'admin-cli', 0, 1, NULL, NULL, 0, NULL, 0, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'openid-connect', 0, 0, 0, '${client_admin-cli}', 0, 'client-secret', NULL, NULL, NULL, 0, 0, 1, 0),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, 0, 'master-realm', 0, 0, NULL, NULL, 1, NULL, 0, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL, 0, 0, 0, 'master Realm', 0, 'client-secret', NULL, NULL, NULL, 1, 0, 0, 0),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', 1, 0, 'account-console', 0, 1, NULL, '/realms/reprod/account/', 0, NULL, 0, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'openid-connect', 0, 0, 0, '${client_account-console}', 0, 'client-secret', '${authBaseUrl}', NULL, NULL, 1, 0, 0, 0),
('8c9984e4-c313-4be9-bc3a-26309d18a720', 1, 1, 'admin-cli', 0, 1, NULL, NULL, 0, NULL, 0, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'openid-connect', 0, 0, 0, '${client_admin-cli}', 0, 'client-secret', NULL, NULL, NULL, 0, 0, 1, 0),
('91634577-a724-4e2a-95c0-3215d3351862', 1, 1, 'security-admin-console', 0, 1, NULL, '/admin/master/console/', 0, NULL, 0, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'openid-connect', 0, 0, 0, '${client_security-admin-console}', 0, 'client-secret', '${authAdminUrl}', NULL, NULL, 1, 0, 0, 0),
('936a0ce8-b6ad-452a-8a46-19e200278466', 1, 0, 'account', 0, 1, NULL, '/realms/reprod/account/', 0, NULL, 0, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'openid-connect', 0, 0, 0, '${client_account}', 0, 'client-secret', '${authBaseUrl}', NULL, NULL, 1, 0, 0, 0),
('96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, 0, 'reprod-realm', 0, 0, NULL, NULL, 1, NULL, 0, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL, 0, 0, 0, 'reprod Realm', 0, 'client-secret', NULL, NULL, NULL, 1, 0, 0, 0),
('9d7f8cce-2169-4582-8838-2c92bd29716f', 1, 0, 'broker', 0, 0, NULL, NULL, 1, NULL, 0, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'openid-connect', 0, 0, 0, '${client_broker}', 0, 'client-secret', NULL, NULL, NULL, 1, 0, 0, 0),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', 1, 0, 'account-console', 0, 1, NULL, '/realms/master/account/', 0, NULL, 0, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'openid-connect', 0, 0, 0, '${client_account-console}', 0, 'client-secret', '${authBaseUrl}', NULL, NULL, 1, 0, 0, 0),
('cdea269b-d0e3-4500-8305-5c7c56171557', 1, 1, 'security-admin-console', 0, 1, NULL, '/admin/reprod/console/', 0, NULL, 0, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'openid-connect', 0, 0, 0, '${client_security-admin-console}', 0, 'client-secret', '${authAdminUrl}', NULL, NULL, 1, 0, 0, 0),
('f894b01f-6f91-4628-b000-5047460d29ec', 1, 0, 'realm-management', 0, 0, NULL, NULL, 1, NULL, 0, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'openid-connect', 0, 0, 0, '${client_realm-management}', 0, 'client-secret', NULL, NULL, NULL, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_ATTRIBUTES`
--

CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CLIENT_ATTRIBUTES`
--

INSERT INTO `CLIENT_ATTRIBUTES` (`CLIENT_ID`, `NAME`, `VALUE`) VALUES
('07a28f28-217f-4e49-ac1b-989700206824', 'post.logout.redirect.uris', '+'),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', 'client.use.lightweight.access.token.enabled', 'true'),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', 'pkce.code.challenge.method', 'S256'),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', 'post.logout.redirect.uris', '+'),
('8c9984e4-c313-4be9-bc3a-26309d18a720', 'client.use.lightweight.access.token.enabled', 'true'),
('91634577-a724-4e2a-95c0-3215d3351862', 'client.use.lightweight.access.token.enabled', 'true'),
('91634577-a724-4e2a-95c0-3215d3351862', 'pkce.code.challenge.method', 'S256'),
('91634577-a724-4e2a-95c0-3215d3351862', 'post.logout.redirect.uris', '+'),
('936a0ce8-b6ad-452a-8a46-19e200278466', 'post.logout.redirect.uris', '+'),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', 'pkce.code.challenge.method', 'S256'),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', 'post.logout.redirect.uris', '+'),
('cdea269b-d0e3-4500-8305-5c7c56171557', 'client.use.lightweight.access.token.enabled', 'true'),
('cdea269b-d0e3-4500-8305-5c7c56171557', 'pkce.code.challenge.method', 'S256'),
('cdea269b-d0e3-4500-8305-5c7c56171557', 'post.logout.redirect.uris', '+');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_AUTH_FLOW_BINDINGS`
--

CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_INITIAL_ACCESS`
--

CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `EXPIRATION` int DEFAULT NULL,
  `COUNT` int DEFAULT NULL,
  `REMAINING_COUNT` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_NODE_REGISTRATIONS`
--

CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_SCOPE`
--

CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CLIENT_SCOPE`
--

INSERT INTO `CLIENT_SCOPE` (`ID`, `NAME`, `REALM_ID`, `DESCRIPTION`, `PROTOCOL`) VALUES
('0524d6a6-c391-4fc1-9101-af1177b1f7eb', 'basic', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect scope for add all basic claims to the token', 'openid-connect'),
('07eed171-5910-44b7-9106-455c1a6b3e81', 'organization', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'Additional claims about the organization a subject belongs to', 'openid-connect'),
('0eafbe54-8153-4304-a442-8f1461b3f88a', 'microprofile-jwt', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'Microprofile - JWT built-in scope', 'openid-connect'),
('10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 'organization', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'Additional claims about the organization a subject belongs to', 'openid-connect'),
('1133d69a-7b8c-4aca-9f96-c3a2432122f5', 'web-origins', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect'),
('15cfdfe3-a957-4393-931e-201deb91408e', 'acr', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect scope for add acr (authentication context class reference) to the token', 'openid-connect'),
('27e22cb4-2c09-45c1-9c86-c3ae373b3223', 'basic', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect scope for add all basic claims to the token', 'openid-connect'),
('3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 'acr', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect scope for add acr (authentication context class reference) to the token', 'openid-connect'),
('3904ad83-6ace-4a7b-bed3-f66d3f8c6d64', 'role_list', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'SAML role list', 'saml'),
('4e3291bf-175b-4a50-8b1d-d7265feae9eb', 'address', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect built-in scope: address', 'openid-connect'),
('4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 'address', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect built-in scope: address', 'openid-connect'),
('527c901f-413c-4de0-b352-85600a8bdd4c', 'offline_access', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect built-in scope: offline_access', 'openid-connect'),
('54af9da3-7b68-4056-aadb-3aa45a54fd26', 'email', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect built-in scope: email', 'openid-connect'),
('5bd6e246-5da6-49bc-b12f-c3e056ab1482', 'saml_organization', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'Organization Membership', 'saml'),
('5fd24069-3e56-4c18-a6ee-08656f6af405', 'phone', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect built-in scope: phone', 'openid-connect'),
('81d6a408-6a12-4498-b3bb-4fbb743fa4a0', 'role_list', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'SAML role list', 'saml'),
('8215a42a-b2a4-4a37-ae20-500fc9a4038a', 'profile', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect built-in scope: profile', 'openid-connect'),
('9a6e15d9-ee93-4aee-be3e-890fd963e05a', 'web-origins', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect'),
('9bc97bf8-96ed-4702-8da1-7c78a56b1660', 'service_account', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'Specific scope for a client enabled for service accounts', 'openid-connect'),
('a4968040-2571-4d07-beba-f635d3afa567', 'offline_access', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect built-in scope: offline_access', 'openid-connect'),
('a96fa74a-2ce2-4590-9325-b94b0489c345', 'service_account', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'Specific scope for a client enabled for service accounts', 'openid-connect'),
('c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 'microprofile-jwt', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'Microprofile - JWT built-in scope', 'openid-connect'),
('c1086db3-b549-4e51-beb5-38fde43df83e', 'profile', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect built-in scope: profile', 'openid-connect'),
('c6951231-1384-4f95-a260-7f1b92700e89', 'saml_organization', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'Organization Membership', 'saml'),
('d3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 'phone', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect built-in scope: phone', 'openid-connect'),
('d639f562-e76a-4380-b1fc-2d8092b916c8', 'roles', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect scope for add user roles to the access token', 'openid-connect'),
('ecf2988e-6645-4970-bdea-40526841428b', 'email', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'OpenID Connect built-in scope: email', 'openid-connect'),
('fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 'roles', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'OpenID Connect scope for add user roles to the access token', 'openid-connect');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_SCOPE_ATTRIBUTES`
--

CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CLIENT_SCOPE_ATTRIBUTES`
--

INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` (`SCOPE_ID`, `VALUE`, `NAME`) VALUES
('0524d6a6-c391-4fc1-9101-af1177b1f7eb', 'false', 'display.on.consent.screen'),
('0524d6a6-c391-4fc1-9101-af1177b1f7eb', 'false', 'include.in.token.scope'),
('07eed171-5910-44b7-9106-455c1a6b3e81', '${organizationScopeConsentText}', 'consent.screen.text'),
('07eed171-5910-44b7-9106-455c1a6b3e81', 'true', 'display.on.consent.screen'),
('07eed171-5910-44b7-9106-455c1a6b3e81', 'true', 'include.in.token.scope'),
('0eafbe54-8153-4304-a442-8f1461b3f88a', 'false', 'display.on.consent.screen'),
('0eafbe54-8153-4304-a442-8f1461b3f88a', 'true', 'include.in.token.scope'),
('10c5a06e-cf8a-417d-bcdd-f0788897c4c1', '${organizationScopeConsentText}', 'consent.screen.text'),
('10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 'true', 'display.on.consent.screen'),
('10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 'true', 'include.in.token.scope'),
('1133d69a-7b8c-4aca-9f96-c3a2432122f5', '', 'consent.screen.text'),
('1133d69a-7b8c-4aca-9f96-c3a2432122f5', 'false', 'display.on.consent.screen'),
('1133d69a-7b8c-4aca-9f96-c3a2432122f5', 'false', 'include.in.token.scope'),
('15cfdfe3-a957-4393-931e-201deb91408e', 'false', 'display.on.consent.screen'),
('15cfdfe3-a957-4393-931e-201deb91408e', 'false', 'include.in.token.scope'),
('27e22cb4-2c09-45c1-9c86-c3ae373b3223', 'false', 'display.on.consent.screen'),
('27e22cb4-2c09-45c1-9c86-c3ae373b3223', 'false', 'include.in.token.scope'),
('3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 'false', 'display.on.consent.screen'),
('3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 'false', 'include.in.token.scope'),
('3904ad83-6ace-4a7b-bed3-f66d3f8c6d64', '${samlRoleListScopeConsentText}', 'consent.screen.text'),
('3904ad83-6ace-4a7b-bed3-f66d3f8c6d64', 'true', 'display.on.consent.screen'),
('4e3291bf-175b-4a50-8b1d-d7265feae9eb', '${addressScopeConsentText}', 'consent.screen.text'),
('4e3291bf-175b-4a50-8b1d-d7265feae9eb', 'true', 'display.on.consent.screen'),
('4e3291bf-175b-4a50-8b1d-d7265feae9eb', 'true', 'include.in.token.scope'),
('4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', '${addressScopeConsentText}', 'consent.screen.text'),
('4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 'true', 'display.on.consent.screen'),
('4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 'true', 'include.in.token.scope'),
('527c901f-413c-4de0-b352-85600a8bdd4c', '${offlineAccessScopeConsentText}', 'consent.screen.text'),
('527c901f-413c-4de0-b352-85600a8bdd4c', 'true', 'display.on.consent.screen'),
('54af9da3-7b68-4056-aadb-3aa45a54fd26', '${emailScopeConsentText}', 'consent.screen.text'),
('54af9da3-7b68-4056-aadb-3aa45a54fd26', 'true', 'display.on.consent.screen'),
('54af9da3-7b68-4056-aadb-3aa45a54fd26', 'true', 'include.in.token.scope'),
('5bd6e246-5da6-49bc-b12f-c3e056ab1482', 'false', 'display.on.consent.screen'),
('5fd24069-3e56-4c18-a6ee-08656f6af405', '${phoneScopeConsentText}', 'consent.screen.text'),
('5fd24069-3e56-4c18-a6ee-08656f6af405', 'true', 'display.on.consent.screen'),
('5fd24069-3e56-4c18-a6ee-08656f6af405', 'true', 'include.in.token.scope'),
('81d6a408-6a12-4498-b3bb-4fbb743fa4a0', '${samlRoleListScopeConsentText}', 'consent.screen.text'),
('81d6a408-6a12-4498-b3bb-4fbb743fa4a0', 'true', 'display.on.consent.screen'),
('8215a42a-b2a4-4a37-ae20-500fc9a4038a', '${profileScopeConsentText}', 'consent.screen.text'),
('8215a42a-b2a4-4a37-ae20-500fc9a4038a', 'true', 'display.on.consent.screen'),
('8215a42a-b2a4-4a37-ae20-500fc9a4038a', 'true', 'include.in.token.scope'),
('9a6e15d9-ee93-4aee-be3e-890fd963e05a', '', 'consent.screen.text'),
('9a6e15d9-ee93-4aee-be3e-890fd963e05a', 'false', 'display.on.consent.screen'),
('9a6e15d9-ee93-4aee-be3e-890fd963e05a', 'false', 'include.in.token.scope'),
('9bc97bf8-96ed-4702-8da1-7c78a56b1660', 'false', 'display.on.consent.screen'),
('9bc97bf8-96ed-4702-8da1-7c78a56b1660', 'false', 'include.in.token.scope'),
('a4968040-2571-4d07-beba-f635d3afa567', '${offlineAccessScopeConsentText}', 'consent.screen.text'),
('a4968040-2571-4d07-beba-f635d3afa567', 'true', 'display.on.consent.screen'),
('a96fa74a-2ce2-4590-9325-b94b0489c345', 'false', 'display.on.consent.screen'),
('a96fa74a-2ce2-4590-9325-b94b0489c345', 'false', 'include.in.token.scope'),
('c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 'false', 'display.on.consent.screen'),
('c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 'true', 'include.in.token.scope'),
('c1086db3-b549-4e51-beb5-38fde43df83e', '${profileScopeConsentText}', 'consent.screen.text'),
('c1086db3-b549-4e51-beb5-38fde43df83e', 'true', 'display.on.consent.screen'),
('c1086db3-b549-4e51-beb5-38fde43df83e', 'true', 'include.in.token.scope'),
('c6951231-1384-4f95-a260-7f1b92700e89', 'false', 'display.on.consent.screen'),
('d3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', '${phoneScopeConsentText}', 'consent.screen.text'),
('d3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 'true', 'display.on.consent.screen'),
('d3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 'true', 'include.in.token.scope'),
('d639f562-e76a-4380-b1fc-2d8092b916c8', '${rolesScopeConsentText}', 'consent.screen.text'),
('d639f562-e76a-4380-b1fc-2d8092b916c8', 'true', 'display.on.consent.screen'),
('d639f562-e76a-4380-b1fc-2d8092b916c8', 'false', 'include.in.token.scope'),
('ecf2988e-6645-4970-bdea-40526841428b', '${emailScopeConsentText}', 'consent.screen.text'),
('ecf2988e-6645-4970-bdea-40526841428b', 'true', 'display.on.consent.screen'),
('ecf2988e-6645-4970-bdea-40526841428b', 'true', 'include.in.token.scope'),
('fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', '${rolesScopeConsentText}', 'consent.screen.text'),
('fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 'true', 'display.on.consent.screen'),
('fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 'false', 'include.in.token.scope');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_SCOPE_CLIENT`
--

CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CLIENT_SCOPE_CLIENT`
--

INSERT INTO `CLIENT_SCOPE_CLIENT` (`CLIENT_ID`, `SCOPE_ID`, `DEFAULT_SCOPE`) VALUES
('07a28f28-217f-4e49-ac1b-989700206824', '0eafbe54-8153-4304-a442-8f1461b3f88a', 0),
('07a28f28-217f-4e49-ac1b-989700206824', '10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 0),
('07a28f28-217f-4e49-ac1b-989700206824', '1133d69a-7b8c-4aca-9f96-c3a2432122f5', 1),
('07a28f28-217f-4e49-ac1b-989700206824', '27e22cb4-2c09-45c1-9c86-c3ae373b3223', 1),
('07a28f28-217f-4e49-ac1b-989700206824', '3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 1),
('07a28f28-217f-4e49-ac1b-989700206824', '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 0),
('07a28f28-217f-4e49-ac1b-989700206824', '527c901f-413c-4de0-b352-85600a8bdd4c', 0),
('07a28f28-217f-4e49-ac1b-989700206824', '54af9da3-7b68-4056-aadb-3aa45a54fd26', 1),
('07a28f28-217f-4e49-ac1b-989700206824', 'c1086db3-b549-4e51-beb5-38fde43df83e', 1),
('07a28f28-217f-4e49-ac1b-989700206824', 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 0),
('07a28f28-217f-4e49-ac1b-989700206824', 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 1),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', '0524d6a6-c391-4fc1-9101-af1177b1f7eb', 1),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', '07eed171-5910-44b7-9106-455c1a6b3e81', 0),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', '15cfdfe3-a957-4393-931e-201deb91408e', 1),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', '4e3291bf-175b-4a50-8b1d-d7265feae9eb', 0),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', '5fd24069-3e56-4c18-a6ee-08656f6af405', 0),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', '8215a42a-b2a4-4a37-ae20-500fc9a4038a', 1),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', '9a6e15d9-ee93-4aee-be3e-890fd963e05a', 1),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', 'a4968040-2571-4d07-beba-f635d3afa567', 0),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 0),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', 'd639f562-e76a-4380-b1fc-2d8092b916c8', 1),
('24dcf130-2b8b-47fd-b725-dbf54f657c2b', 'ecf2988e-6645-4970-bdea-40526841428b', 1),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', '0524d6a6-c391-4fc1-9101-af1177b1f7eb', 1),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', '07eed171-5910-44b7-9106-455c1a6b3e81', 0),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', '15cfdfe3-a957-4393-931e-201deb91408e', 1),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', '4e3291bf-175b-4a50-8b1d-d7265feae9eb', 0),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', '5fd24069-3e56-4c18-a6ee-08656f6af405', 0),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', '8215a42a-b2a4-4a37-ae20-500fc9a4038a', 1),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', '9a6e15d9-ee93-4aee-be3e-890fd963e05a', 1),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', 'a4968040-2571-4d07-beba-f635d3afa567', 0),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 0),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', 'd639f562-e76a-4380-b1fc-2d8092b916c8', 1),
('3c210c81-171e-4a3f-b06e-c72ae6d1da8b', 'ecf2988e-6645-4970-bdea-40526841428b', 1),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '0eafbe54-8153-4304-a442-8f1461b3f88a', 0),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 0),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '1133d69a-7b8c-4aca-9f96-c3a2432122f5', 1),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '27e22cb4-2c09-45c1-9c86-c3ae373b3223', 1),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 1),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 0),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '527c901f-413c-4de0-b352-85600a8bdd4c', 0),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', '54af9da3-7b68-4056-aadb-3aa45a54fd26', 1),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', 'c1086db3-b549-4e51-beb5-38fde43df83e', 1),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 0),
('44ccf4ba-eae7-4c73-a00f-a314cf41025b', 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 1),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '0524d6a6-c391-4fc1-9101-af1177b1f7eb', 1),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '07eed171-5910-44b7-9106-455c1a6b3e81', 0),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '15cfdfe3-a957-4393-931e-201deb91408e', 1),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '4e3291bf-175b-4a50-8b1d-d7265feae9eb', 0),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '5fd24069-3e56-4c18-a6ee-08656f6af405', 0),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '8215a42a-b2a4-4a37-ae20-500fc9a4038a', 1),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '9a6e15d9-ee93-4aee-be3e-890fd963e05a', 1),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', 'a4968040-2571-4d07-beba-f635d3afa567', 0),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 0),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', 'd639f562-e76a-4380-b1fc-2d8092b916c8', 1),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', 'ecf2988e-6645-4970-bdea-40526841428b', 1),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '0eafbe54-8153-4304-a442-8f1461b3f88a', 0),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 0),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '1133d69a-7b8c-4aca-9f96-c3a2432122f5', 1),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '27e22cb4-2c09-45c1-9c86-c3ae373b3223', 1),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 1),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 0),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '527c901f-413c-4de0-b352-85600a8bdd4c', 0),
('8c9984e4-c313-4be9-bc3a-26309d18a720', '54af9da3-7b68-4056-aadb-3aa45a54fd26', 1),
('8c9984e4-c313-4be9-bc3a-26309d18a720', 'c1086db3-b549-4e51-beb5-38fde43df83e', 1),
('8c9984e4-c313-4be9-bc3a-26309d18a720', 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 0),
('8c9984e4-c313-4be9-bc3a-26309d18a720', 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 1),
('91634577-a724-4e2a-95c0-3215d3351862', '0eafbe54-8153-4304-a442-8f1461b3f88a', 0),
('91634577-a724-4e2a-95c0-3215d3351862', '10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 0),
('91634577-a724-4e2a-95c0-3215d3351862', '1133d69a-7b8c-4aca-9f96-c3a2432122f5', 1),
('91634577-a724-4e2a-95c0-3215d3351862', '27e22cb4-2c09-45c1-9c86-c3ae373b3223', 1),
('91634577-a724-4e2a-95c0-3215d3351862', '3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 1),
('91634577-a724-4e2a-95c0-3215d3351862', '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 0),
('91634577-a724-4e2a-95c0-3215d3351862', '527c901f-413c-4de0-b352-85600a8bdd4c', 0),
('91634577-a724-4e2a-95c0-3215d3351862', '54af9da3-7b68-4056-aadb-3aa45a54fd26', 1),
('91634577-a724-4e2a-95c0-3215d3351862', 'c1086db3-b549-4e51-beb5-38fde43df83e', 1),
('91634577-a724-4e2a-95c0-3215d3351862', 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 0),
('91634577-a724-4e2a-95c0-3215d3351862', 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 1),
('936a0ce8-b6ad-452a-8a46-19e200278466', '0524d6a6-c391-4fc1-9101-af1177b1f7eb', 1),
('936a0ce8-b6ad-452a-8a46-19e200278466', '07eed171-5910-44b7-9106-455c1a6b3e81', 0),
('936a0ce8-b6ad-452a-8a46-19e200278466', '15cfdfe3-a957-4393-931e-201deb91408e', 1),
('936a0ce8-b6ad-452a-8a46-19e200278466', '4e3291bf-175b-4a50-8b1d-d7265feae9eb', 0),
('936a0ce8-b6ad-452a-8a46-19e200278466', '5fd24069-3e56-4c18-a6ee-08656f6af405', 0),
('936a0ce8-b6ad-452a-8a46-19e200278466', '8215a42a-b2a4-4a37-ae20-500fc9a4038a', 1),
('936a0ce8-b6ad-452a-8a46-19e200278466', '9a6e15d9-ee93-4aee-be3e-890fd963e05a', 1),
('936a0ce8-b6ad-452a-8a46-19e200278466', 'a4968040-2571-4d07-beba-f635d3afa567', 0),
('936a0ce8-b6ad-452a-8a46-19e200278466', 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 0),
('936a0ce8-b6ad-452a-8a46-19e200278466', 'd639f562-e76a-4380-b1fc-2d8092b916c8', 1),
('936a0ce8-b6ad-452a-8a46-19e200278466', 'ecf2988e-6645-4970-bdea-40526841428b', 1),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '0eafbe54-8153-4304-a442-8f1461b3f88a', 0),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 0),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '1133d69a-7b8c-4aca-9f96-c3a2432122f5', 1),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '27e22cb4-2c09-45c1-9c86-c3ae373b3223', 1),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 1),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 0),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '527c901f-413c-4de0-b352-85600a8bdd4c', 0),
('9d7f8cce-2169-4582-8838-2c92bd29716f', '54af9da3-7b68-4056-aadb-3aa45a54fd26', 1),
('9d7f8cce-2169-4582-8838-2c92bd29716f', 'c1086db3-b549-4e51-beb5-38fde43df83e', 1),
('9d7f8cce-2169-4582-8838-2c92bd29716f', 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 0),
('9d7f8cce-2169-4582-8838-2c92bd29716f', 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 1),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '0eafbe54-8153-4304-a442-8f1461b3f88a', 0),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 0),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '1133d69a-7b8c-4aca-9f96-c3a2432122f5', 1),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '27e22cb4-2c09-45c1-9c86-c3ae373b3223', 1),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 1),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 0),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '527c901f-413c-4de0-b352-85600a8bdd4c', 0),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '54af9da3-7b68-4056-aadb-3aa45a54fd26', 1),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', 'c1086db3-b549-4e51-beb5-38fde43df83e', 1),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 0),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 1),
('cdea269b-d0e3-4500-8305-5c7c56171557', '0524d6a6-c391-4fc1-9101-af1177b1f7eb', 1),
('cdea269b-d0e3-4500-8305-5c7c56171557', '07eed171-5910-44b7-9106-455c1a6b3e81', 0),
('cdea269b-d0e3-4500-8305-5c7c56171557', '15cfdfe3-a957-4393-931e-201deb91408e', 1),
('cdea269b-d0e3-4500-8305-5c7c56171557', '4e3291bf-175b-4a50-8b1d-d7265feae9eb', 0),
('cdea269b-d0e3-4500-8305-5c7c56171557', '5fd24069-3e56-4c18-a6ee-08656f6af405', 0),
('cdea269b-d0e3-4500-8305-5c7c56171557', '8215a42a-b2a4-4a37-ae20-500fc9a4038a', 1),
('cdea269b-d0e3-4500-8305-5c7c56171557', '9a6e15d9-ee93-4aee-be3e-890fd963e05a', 1),
('cdea269b-d0e3-4500-8305-5c7c56171557', 'a4968040-2571-4d07-beba-f635d3afa567', 0),
('cdea269b-d0e3-4500-8305-5c7c56171557', 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 0),
('cdea269b-d0e3-4500-8305-5c7c56171557', 'd639f562-e76a-4380-b1fc-2d8092b916c8', 1),
('cdea269b-d0e3-4500-8305-5c7c56171557', 'ecf2988e-6645-4970-bdea-40526841428b', 1),
('f894b01f-6f91-4628-b000-5047460d29ec', '0524d6a6-c391-4fc1-9101-af1177b1f7eb', 1),
('f894b01f-6f91-4628-b000-5047460d29ec', '07eed171-5910-44b7-9106-455c1a6b3e81', 0),
('f894b01f-6f91-4628-b000-5047460d29ec', '15cfdfe3-a957-4393-931e-201deb91408e', 1),
('f894b01f-6f91-4628-b000-5047460d29ec', '4e3291bf-175b-4a50-8b1d-d7265feae9eb', 0),
('f894b01f-6f91-4628-b000-5047460d29ec', '5fd24069-3e56-4c18-a6ee-08656f6af405', 0),
('f894b01f-6f91-4628-b000-5047460d29ec', '8215a42a-b2a4-4a37-ae20-500fc9a4038a', 1),
('f894b01f-6f91-4628-b000-5047460d29ec', '9a6e15d9-ee93-4aee-be3e-890fd963e05a', 1),
('f894b01f-6f91-4628-b000-5047460d29ec', 'a4968040-2571-4d07-beba-f635d3afa567', 0),
('f894b01f-6f91-4628-b000-5047460d29ec', 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 0),
('f894b01f-6f91-4628-b000-5047460d29ec', 'd639f562-e76a-4380-b1fc-2d8092b916c8', 1),
('f894b01f-6f91-4628-b000-5047460d29ec', 'ecf2988e-6645-4970-bdea-40526841428b', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CLIENT_SCOPE_ROLE_MAPPING`
--

CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CLIENT_SCOPE_ROLE_MAPPING`
--

INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` (`SCOPE_ID`, `ROLE_ID`) VALUES
('527c901f-413c-4de0-b352-85600a8bdd4c', '8101eeb4-c726-4698-a080-2a08347ea3b4'),
('a4968040-2571-4d07-beba-f635d3afa567', '650dc5c0-8b2d-442f-9e1a-46f5a56a1d3f');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `COMPONENT`
--

CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `COMPONENT`
--

INSERT INTO `COMPONENT` (`ID`, `NAME`, `PARENT_ID`, `PROVIDER_ID`, `PROVIDER_TYPE`, `REALM_ID`, `SUB_TYPE`) VALUES
('2a3c67f3-0273-491b-88e9-eb6c3e7bc28f', 'Allowed Client Scopes', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'anonymous'),
('38e4654c-2175-4c5f-89a2-9d27f372a13f', 'hmac-generated-hs512', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'hmac-generated', 'org.keycloak.keys.KeyProvider', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL),
('42c8c071-051f-4b79-9437-be9f2fbd41cf', 'Consent Required', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'anonymous'),
('4b057111-1edd-459a-973e-f43525d521ba', 'Full Scope Disabled', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'anonymous'),
('4df3c000-c02d-413e-b6ad-0c9c0a751470', 'aes-generated', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'aes-generated', 'org.keycloak.keys.KeyProvider', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL),
('4e2cb05b-bfd2-487b-9ca9-6148acdfedb7', 'Full Scope Disabled', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'anonymous'),
('525231b1-798f-44c3-904a-a4cbe4d71a14', 'hmac-generated-hs512', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL),
('6e41b095-e0d5-432a-b0af-dc05b5e3eebb', 'aes-generated', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL),
('6ecdc1d8-e813-4ca2-90de-497870b06248', 'Allowed Protocol Mapper Types', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'anonymous'),
('7bf2967f-32df-4264-93a6-0a5474aaac6d', 'Consent Required', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'anonymous'),
('8361ccae-8ca0-4eb7-8ed3-1f013b20b083', 'Allowed Client Scopes', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'authenticated'),
('88f242d9-8028-445b-a913-4af3c84375e7', 'Allowed Protocol Mapper Types', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'authenticated'),
('93745d2e-06ac-4ab6-b834-dfda05b718e5', 'rsa-generated', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'rsa-generated', 'org.keycloak.keys.KeyProvider', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL),
('974ce358-207a-415b-80bb-940dda0b7941', 'Max Clients Limit', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'anonymous'),
('9c4d46a2-debe-4cda-bc34-41e014b15044', 'reprod', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'custom-userstore', 'org.keycloak.storage.UserStorageProvider', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL),
('a2e99455-bc57-40cd-9e5b-815c20563db7', 'Max Clients Limit', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'anonymous'),
('ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'Allowed Protocol Mapper Types', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'authenticated'),
('b39c1a9e-531b-43dc-b8f2-86c632e0de7f', 'rsa-enc-generated', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'rsa-enc-generated', 'org.keycloak.keys.KeyProvider', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL),
('c134349e-c3f3-4e68-85ab-b557bb4e812f', 'Allowed Protocol Mapper Types', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'anonymous'),
('c1548715-efc7-49fe-998e-bfd7b90cb728', 'rsa-enc-generated', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'rsa-enc-generated', 'org.keycloak.keys.KeyProvider', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL),
('cd03fd2d-eeb6-4e19-8ca3-278afb45e726', NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'declarative-user-profile', 'org.keycloak.userprofile.UserProfileProvider', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL),
('cd8c92ea-1bd4-4a6b-a36e-1013eec6e972', 'Trusted Hosts', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'anonymous'),
('d12d24b9-bebf-41a3-973f-56d752a38196', 'Allowed Client Scopes', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'authenticated'),
('d1984ba4-1bac-4002-b5d5-e4553c82418f', 'Trusted Hosts', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'anonymous'),
('e3642eeb-bdeb-4a87-8b0a-89f3008766ff', 'rsa-generated', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL),
('f184dd7c-4ba7-4e9f-a4c7-eaaf88aeba89', 'Allowed Client Scopes', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'anonymous');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `COMPONENT_CONFIG`
--

CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `COMPONENT_CONFIG`
--

INSERT INTO `COMPONENT_CONFIG` (`ID`, `COMPONENT_ID`, `NAME`, `VALUE`) VALUES
('000404e8-9689-41ea-b941-fb15f448915d', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('073eb165-7114-474e-a216-50dc4cb1a205', 'c1548715-efc7-49fe-998e-bfd7b90cb728', 'keyUse', 'ENC'),
('116ffe47-44d2-4a4c-8263-afb69cfbc577', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('12185b44-173d-4e4d-bf3f-6745eec197b5', '9c4d46a2-debe-4cda-bc34-41e014b15044', 'enabled', 'true'),
('172eff77-081d-4510-8bf5-443233f02424', 'b39c1a9e-531b-43dc-b8f2-86c632e0de7f', 'priority', '100'),
('19e5633e-e68d-437d-b6fa-51606c8d7bac', 'd12d24b9-bebf-41a3-973f-56d752a38196', 'allow-default-scopes', 'true'),
('1ec173b2-272a-4192-900a-75adeb4e0a05', '9c4d46a2-debe-4cda-bc34-41e014b15044', 'cachePolicy', 'DEFAULT'),
('1f6a4147-d189-4d46-801d-8d27730acbf6', '6e41b095-e0d5-432a-b0af-dc05b5e3eebb', 'kid', '6512db07-b998-47e3-bc4f-686df6504418'),
('21f50027-2841-4c70-88b1-f1f54dfb930f', 'e3642eeb-bdeb-4a87-8b0a-89f3008766ff', 'privateKey', 'MIIEogIBAAKCAQEA7p4Fml82MmG/GQnCZQM5e7p8vBm8Regbsb508OtDYRI+/7PwAhO6wDNzyQjYj1xDXeCh1d7oWFiotYFe70uUOt6z/e0rILPFsbdUJKPhboIfKk5NpwFXCdgddxlLLhBUEhvrngS2SqlbzRwXx+fFMKPLhRMM4tTeCmFN6NZVk1ut8at5juaVVToGp8CLBwAAgqZlO0CLQXXF5Ap0ZhEVtPE2edPaBe2kiuzwtbyKuZTQ+s2wQUztDDjtXutS7D5P2aGdYTxilRNjSzqQMFtYhZJ09GQo60QhvlajLDZg+OGcfw9+aO5iEkuuo5TwhnPEz8Yte6LDGmxRQ0v290AnbQIDAQABAoH/TO7NVdDmqGt49l6RnTrjEp7SrEkCVxF+yKiLqSFsNX1xb+wxYgPmvBE9L875Fz+oAojMuIpNS2nAhRNsEjEkmYeqMdIKn4CRsvXLK0AhWvX7jIDtnBIhTKjDnCx31bD34EFHooOTpPT1pCvNCOHsJ/2TtFQNmHcwqYqObJdLxOeNNmAPPHaa/21uzRMNEX4eV2EG/dBoMJVJvY4LpvEpxcegK7+az7QWJuJ69TYKBsBlf7e114ci082yebiKDif8pJgIKI4o9iNtQ6CfXCLgdmK3MrDuUaI+nvTbJJlKFkU9bD715TVR9Y7mF1Hg4N8BY/YQWWAc+qZpQI3cyAEBAoGBAP2c6OVs1w1saWLdwqLesgV3n+q2dNoRScYvtnoZ1f0PBCucapju995KJLU7vWOeRuELgDKynoZePKYN8+iVgtySVnCLXWnYhb0B5J+vuA6Beg5+AHh1UZ21VBhbmbvq3LNkUnpGdmFOTJJgM771f1Z3BVgCw2jEskVVAC0xdPStAoGBAPDc+sG2/Dg5WqMUhtXSKOXYz6dqkPUsJYGu2cVn8fJn1SROxVPfIUZYA5ZjVYd5PVs8fQkQNYH4IkGt6Q38TJ3kY5CdpxwdNVy/RCib3nB6z8u4aInHdiLbiFb49A6HZEjF9zwAiyMUTJz+OmYnzPKqNrdnDDRBOiYATCYEt5XBAoGBANKlm4PDzTNnEnl9vAZPdgm4fGkVNyVRKrekNapg/y37ZPlcJ+XyxoophyfJANtXQYP2a3qwhZ8Rcspx2F8cn97Y5VcBSot5vkto4R4Jc5UI0fpribSDrVCSpdC9dIly3/FYqHDLSdQ0lsEViqVXf3av0Q5y7R9+EJwpp8XhyETZAoGAY/olr7DHooLUB2smyKwyQ62qDADk6I+JhfnQ9Oq/d/H3e9mieLzeb/dqjcrvnosJl8xUziVHQIqBlaedXCvElalOVqHJ0pahJr1RilWgkCm6BQKnicEcXT2oqwktLLawPrDFfcdv+YCciHHSRcLxhCx5B8mjPDFy9IEdGo7MsUECgYEAjfnSVaSjbU3I6rI47ne5oK/AK4eUBue01yBkbPCCBH2s1cAXv39sw5U/YRQ8sdWYtEtOHx8Fv6Gtvmab/GznS3ZVfibl7NbNI1tosjqWkcJXCZb/EhzsYsRHwDX9+gXGMh9v0nt6kKd+u8tPzm6l+Vskpy4u6+e8w8nm1Ba1te4='),
('2237246e-d831-4324-b4e5-b8e5377407ac', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('248268f6-0983-4dba-89f4-52b3ad4a10f5', '6e41b095-e0d5-432a-b0af-dc05b5e3eebb', 'priority', '100'),
('2a9c540f-deb1-4480-bc88-3707e0521d1b', '93745d2e-06ac-4ab6-b834-dfda05b718e5', 'priority', '100'),
('2b2d4715-ac1a-4b7f-b1aa-bccb1d1f33c3', '4df3c000-c02d-413e-b6ad-0c9c0a751470', 'kid', '4ec6882d-8339-4c21-9921-41f1477b7eb3'),
('2ba25ef0-e17d-434c-a7cf-6ae2bea7c8cb', '4df3c000-c02d-413e-b6ad-0c9c0a751470', 'priority', '100'),
('2f694931-fbe1-4ef7-90ee-31cb48f66f75', 'e3642eeb-bdeb-4a87-8b0a-89f3008766ff', 'priority', '100'),
('2f9b0bab-1b6f-4359-8770-f5900140628c', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('3386f541-5b28-4e6e-beb5-3f31eae0f5b0', 'c1548715-efc7-49fe-998e-bfd7b90cb728', 'privateKey', 'MIIEpQIBAAKCAQEAvGQD9C9s6cifaJ8xKwXgMCuVYjlWPEmMDhB6iD8TV5kHOkVpdIYwquHVYUipHF8bK0uy3XNPC3lmed8C2lZkLH+qVvNQAtk6zKzh9bY7Kqj14veRwofaiD7sGhR5iPHoP8jUZPDuoEKyre00xQX0sya/0D03pEErpbHp2KZoZSy0OupsRIchSh4L8e6OG6tX/pVSjibMoSVQcjoS4guMB7+1bcFlRkHrWtxmjCfGUwNMgYsNCielnpWO4EE4xh9OWx9I1KxhQKAjosUgoQeeF+cUwrA0y9L088zAV1sF22rp5Bn1QIxcb2c/Zl+EHMAjbcNWMLGwDvdDdnEssMludwIDAQABAoIBAAaV7Hl1yvXlOIVcw0hAvVSRwXgcjwIuhAHd25q1scRnKhSEZqpXIo5mtKHg+2BthrKdw9Pv+vxoswdhn2TojjnsAJVnjg17cI3FIWUIiMr1+xqDEwpc22vV30UOIC2EX10TdTFOJtldW4eu+iBFFAfLO/tYmIBact8o+AbF0nJu7ULPFEPgBQz3rrHjHmzZsY9yj3hpL7mSOR2snqRBc0XmV37kcejPjSCf9CQCZYIWJBElxNVqJbAV7N6wPpBlvuU7Vdp1G0RWZQmaPED7lN12agz7lGJYTP4LOhRn9+X58HVxxD5KfyQqy4btnrfOjeFr5iRhWHFnC1WeiEfM3rECgYEA5mhMIFPFaSs2+CbXtxvR42xh94nn2nhsu2c9fdTzy3paPFJGYgmT/PHUE/ExF2kusS11rHaQf8mB8h+yEAQUi9ae2DUyAa6vwV24qoQbkWrEmiSAVLge43AFJwmIMKWurz2FcNOgRV56kYRMap2deWtgR86kN6UlGH72UNm2evkCgYEA0VD1yDPFFGuy7oUMTR0cyiY+po6ezhf3MUTl+aHsHSWhqFkOiKC/l+cRZmNBmqJa5ys0VO9VGNgjCaG0rRmc4pcGaJnIn4xjxWKEmYK8sCY7Om8SyA+aqla5K51g0ojHBPjL+dwFvguuBr+kSp1/qwSI36TR0fJQk7TI+jJZoO8CgYEA01eDzHtKrscW6tQmNi1sfqEh039Jjpm7ksKGIu+8mD4omwAU00RZ3ECt+YTZNNIkJBzAvWsb7DsX2NG98PbtKb+5gDR7JBPp3wJqqu32o5I9t+4XUJ56psBP2ZjitUykSNWzmuRjNH4PC39A4OKmWYNmkzc2ZlwzBJ8grNSmj3ECgYEArp48vIy7v+Js/mDON1KvHtEy+N4IC2Sg2mBg/pUfld079GZ/ImoAC+g/cswhAbCp5yn62VRkCHrfF/zn7nRslfdp6D9KyBdlcFhUyH/xi34JcSESaQXjgHEivwjmqhxi83nfKI1t2PKDdqvPklO8Gt6IlRI53Eyq/d4Wv+rbLM8CgYEAmk5AADpnQCWRZxmSKKh0o5W6XMP5kF1aUh+WQIIr9tYRPs+0lwjwjqCFXKGa/xDSX+/l3cuW57fdPUxGQ0goSSwX/QCOVCTVFAV4zRlg4t4eFwzk4LoKDMeqvPWYjKt0UMJEJUM1eI2E4ZXMy+bJPba7x+6PCP0whDWzXBepI7s='),
('3705ed9f-72a1-45dd-93fd-12bb059ba91b', '525231b1-798f-44c3-904a-a4cbe4d71a14', 'algorithm', 'HS512'),
('39005fc1-fcc6-49e1-9e09-26a366b1222b', '38e4654c-2175-4c5f-89a2-9d27f372a13f', 'algorithm', 'HS512'),
('40cb5ef4-d3a4-4f2a-ac00-4fee955eaed3', '8361ccae-8ca0-4eb7-8ed3-1f013b20b083', 'allow-default-scopes', 'true'),
('42cec419-e7af-40fc-9386-53f86a780295', 'c1548715-efc7-49fe-998e-bfd7b90cb728', 'priority', '100'),
('44726d06-3f10-4480-b072-b761ad1f3fc0', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('45d12950-b533-410d-8ee5-b3c187f6fe3a', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('47aa9ec3-931d-47da-ad0c-5c43fb417f33', 'b39c1a9e-531b-43dc-b8f2-86c632e0de7f', 'keyUse', 'ENC'),
('4b6d6483-fac8-4ffb-b2ee-6fbbf220e261', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('4d2fd2a4-f492-4ae3-a563-ddb3c28942cf', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('4f7b5584-db31-4ca6-b0d2-0678fe45edfe', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('5117c9d0-1bab-47c7-a14e-745c3bc73e94', '93745d2e-06ac-4ab6-b834-dfda05b718e5', 'privateKey', 'MIIEpQIBAAKCAQEArj4gkI2l6PgjHkvdVdVoCP//yzN3UcBpaB4QWSizESyc6YJWgfCUYlkCE9RsAKAoCpAc4y8VkrQsu2kIg5K60vqHsvbnikvqvuoBOPzZ0AvRSjVPYU5am1VypuqsW2sQMQVCO4gLiSxVdfNJf0BGJl5XUnhyIQgz6nUht647YTZXbRUqBnomsWLojapV1Po7ZXU+1iuB4hzLrSSPqKOte2vrKfFhskC+FA8S8EpNQWg6z/4nfiF7iqBcm7gqVFAbMpUfoaSGZlpCZ295H9+PjVjOeAf21FbXUVtTnyDbtGsNYQTEuxTb3dDMS0yGA9u12HH8G/3HcRKXlC0vLI04jQIDAQABAoIBAAbbzv6LQzy0e8MAohTaKO8Y9WT2jY7sJhoHlbj0uniFsYpNhTTP/Zjepdxi9nqSoB2rIFmSK/64CEshbmJ2rAaLy9Vv4gHv5nmFjrvDOpp1kWzvqt3xLobbw7IUHbaEtEDBuYj/XDjiw/bRhBMCupNeQxpHctkGNu9WyGRJcvC3ssB3469Dtia+Dhv0/ItzPa7JkYVnmqJojRJLYWRdyD24mCsQeuYqNTiWpsgfeMvTc0f+hOY7z7Vu1MhO65Rwr3ddVkSueBzLglj2QvgB2U0UX9p8x9NAv8RkF4bWZSs//kxmDk63zKPu/v3eEb+2J/IBXBbtZVtJllcBXMGmSY8CgYEA1IkrVOvj3Ws60PHNMn0VagyN3F9j0stOUaC7ce0tx/u8O53XIRJUKlrHUy19KOvDeBgRxhf9yNCm/STjgMszuwHOM5yI4ClmJ1XJBDmBmPEcEyku0HF0QrsEY/wxtPpLpvdG4iu5UTGB7yq83R2w3AXv9alRDh81/rgq3QFXJ7MCgYEA0eA1MnrbSyoDNfvgGuUKAh5/iG85wx0ekokWBFfMzpMpsB30kOwbcBadYhCElp2GmhtE0g6IVFu0ntUlCPIB0cgK7OQykEpjU1vRjUuWHESGT+iFs2rqdTHgdL/KOYw1sZNQ/gqHcCTYyjTZVMnLlA2VMrp+VR9bIXL1Do7R/r8CgYEAjBCR4/dJRgSC0GxqJJnWYPtBCjg7GxIs3RKmNWBvSVoXJNrSidMAcKE+twxFbZBiU2TZYckx0QPg6PdEjv5bayS3db/1XHUsA0Q/o28af2Z2cBI17dy3F7sUG6h6QaCp9rEDn83c5StRTALIUJhek8G98BHTfxEGjoVkih12CI0CgYEAuZHQF6lPmv8zxZjGx6D6n3MN+rm1zhJCRPjXMdHcMk8mziU+aKGLhSlJ0TqfsXjpWfuAd2cIHebUJph53ZX2C+If3uPK3ZAYkM0f1RofSTFBvQfwp/qCAkuuliw6h3W0yCVkuKrgpETANtJR08l1qpvz7t289FD8R/AYQ93+SYsCgYEAmC9xLzDZCZNFpvIvHm1oitIbnEa1t61TSuhwZN6hvyxaSIoiVW6HiwLGylq1LaiASHthMdS0GnqGe7vv6N4Dp+Yo/A4ndVGTL/b8n7mPOa3LVzotm7ozr51WZDuvQXWfIo9NreolLSvLZr5/ZeeEknCOQvMZRVRQlso1nSd0c10='),
('5b410dd3-29cf-4b95-a920-057c56ced857', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('6944ef79-82f2-46f0-a6ad-c075baa88397', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('699fab16-e694-47bb-9399-e1b41ca69c71', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('6ae92ab1-ac23-4ca7-922f-cc34154c09f3', 'b39c1a9e-531b-43dc-b8f2-86c632e0de7f', 'certificate', 'MIICmzCCAYMCBgGZKEwCPDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZyZXByb2QwHhcNMjUwOTA4MDc0NjM0WhcNMzUwOTA4MDc0ODE0WjARMQ8wDQYDVQQDDAZyZXByb2QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDPb4w/jbM0RqmelgVm5QMHo5wOngmVHLfQZnh+07yeB84Gtq3PepbBBnybi25txLbHx35iloILBEGetFn2YyLgA/PIqc5g2ot6yxiQQEl8na8/UP0VY0KJubeo5SWUjZk99/QAFvl/vXDSnhAy5e7ESSaEER1KOWGCROPykX8gnNuDep2uL4+RllJXSZ7+OqVUi1i0UJUtBUYwTc/9CpEUyhBDXAVHhVuw1M4TwLmtCrdMk2kt6aQwy7X4S55kzN2uDaZUe72svw8Ca7I6u4hr2zGxcQEOAXpMsryQ5Qb9iy1k9aUzeZPtQ0Q/fKi33DaPIxuPqBXt+Dn/RibFmn71AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAKIIji2mNAexJhm2tndusaSxkbEv2u8F3wauPXuROx0YX+2Z819UMmLYTDOfmsxppgdB3UfFKY52LR5C4WVppFu+hrz85q3IKXBLoj7v9xCq8Il0TxrS9v+iC/qSpVoj5F5kHtGKn8NOfD0iI9ybjBYc20ayMkkrCLhpytvTcxZPOjHG02mkzSEyJzWV5dqMNDZYcZwmwsLM8cXny8UVICMmaXDVJK1+af3WSab02Dv+0gJ+Brn7qA5lV4icEmYu6TGbeSeCqWUjupz4hYBAD0FAgSAV2AZ/l7NnHgCJvcEsXrNAt2ST4pV3ZTTXPxtmvlU2p0cUlu+CfsRcr6lVkvI='),
('6dc0c25b-cc7b-453d-adae-b623c9c3ecac', '4df3c000-c02d-413e-b6ad-0c9c0a751470', 'secret', 'uE67_boddBjys66ztRT8-Q'),
('6f3cfa12-be10-45cd-afb3-e7df7d3da3f1', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('7146238f-b664-45e4-b0c3-9540b7da14b5', '6e41b095-e0d5-432a-b0af-dc05b5e3eebb', 'secret', '-DFi-ZvLcZIppGaNm1KIFw'),
('7a416ba5-32f0-4669-834c-86e3257d78a4', '93745d2e-06ac-4ab6-b834-dfda05b718e5', 'certificate', 'MIICmzCCAYMCBgGZKEwBiDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZyZXByb2QwHhcNMjUwOTA4MDc0NjMzWhcNMzUwOTA4MDc0ODEzWjARMQ8wDQYDVQQDDAZyZXByb2QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCuPiCQjaXo+CMeS91V1WgI///LM3dRwGloHhBZKLMRLJzpglaB8JRiWQIT1GwAoCgKkBzjLxWStCy7aQiDkrrS+oey9ueKS+q+6gE4/NnQC9FKNU9hTlqbVXKm6qxbaxAxBUI7iAuJLFV180l/QEYmXldSeHIhCDPqdSG3rjthNldtFSoGeiaxYuiNqlXU+jtldT7WK4HiHMutJI+oo617a+sp8WGyQL4UDxLwSk1BaDrP/id+IXuKoFybuCpUUBsylR+hpIZmWkJnb3kf34+NWM54B/bUVtdRW1OfINu0aw1hBMS7FNvd0MxLTIYD27XYcfwb/cdxEpeULS8sjTiNAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAD5BywZFSABRXsKt4gCt2Y/H3oTUtgUd9NVBVG0qMu/qjeXb1Svl/BuIfGyxvIEJeX/2qBB5/NFkgMrNwVoWqzkrjtvEV/pvL1U+0tRw7r17vFnNNtgjcpA8Z553gTDAEMBYGNdIIMBLrGYt2FixwLzgCBX17jaesJcfjVLz1XaetT8TUnwjPd48HTgYIgKuMCOH2CyaE57rrIc9nt7zpedvP5HuZ7DuTLxI3hSSCboAuOsCsl0d+kSb0/mmde5yW6FDagTRWOA3ghdR9ZYvi9DSiBNBQw15O5773EVFNRpbIfPiTMT3Vlt5r/rSmBWEC+XmuUgS1QrJtSuqY4EamzM='),
('7abfbcbd-3704-4c85-8c1a-a760c94a01e2', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('85cb1b44-dba5-4cd8-90c1-9bd284889d26', 'b39c1a9e-531b-43dc-b8f2-86c632e0de7f', 'privateKey', 'MIIEogIBAAKCAQEAz2+MP42zNEapnpYFZuUDB6OcDp4JlRy30GZ4ftO8ngfOBratz3qWwQZ8m4tubcS2x8d+YpaCCwRBnrRZ9mMi4APzyKnOYNqLessYkEBJfJ2vP1D9FWNCibm3qOUllI2ZPff0ABb5f71w0p4QMuXuxEkmhBEdSjlhgkTj8pF/IJzbg3qdri+PkZZSV0me/jqlVItYtFCVLQVGME3P/QqRFMoQQ1wFR4VbsNTOE8C5rQq3TJNpLemkMMu1+EueZMzdrg2mVHu9rL8PAmuyOruIa9sxsXEBDgF6TLK8kOUG/YstZPWlM3mT7UNEP3yot9w2jyMbj6gV7fg5/0YmxZp+9QIDAQABAoIBAANOI3WyyA917cd3W/ws+3ygbIDmH0B3Pe2N6G8a6Bc7iBqeyAu1iBfoxs0Crn6EwyXRRbAD9mv/BB2ngYR1xW082uJQZFeyO8U33bsUrycTayKu4213EK0ZnrXL+uqQTAgK/qIOu6h/p//PIXJyK/kIMlsp26XeXrGg7+HiVBx8pAEY/NYUj0KFUCdgKzz9P0sk2MBhnPJcPXcKN/YsQvBCBiUBFyZvvtAwlFhjm2+mjrR1gn7+gNxcAqElpzrfNnM9wo5QwtQaFCQEF1Q7shNMWAPWFtqZNuVJmOoY9N0bOfxNXQaTQVtsUcMt1ayy37bXvSDclc+IZFpNGxqGh6kCgYEA7MFsfRh5sOimmftfp8UwT6S7ZOUBM5QGWDBAJTDm5Ai6gZkhoEK7xyvA6W8W8ee4mIL/FtjDj+w1Dx1XptJs54aroGNbV2jZcaVNaEiUkCacYq10ya0SwO+SlDpd0BSQGkA+LDBJxdQtMEutBH10LMb05w5lcqamyTHWlgUTLn0CgYEA4EwENv/jBFUTl5XAgdFIiLR/Qv/SdQhPcZQE12Fh2yGFUMHT4hnVtxooDF2UrchjAoeUs0oORhFCwFABS/WNisnd/03mcm8RAijIZqv4rtlWRDcimOcyofOHMco11WKtN2s8JGOGHXvHJ6BQIxYM/E6JCn997B8AkYtQ8dyBI9kCgYAd9Xfp+H/ln/r8/y8ihrRPT7Qa11OomDGZVTm4uxBsiKI5Jgx4QBmM4X9+ynznzX+xZNospO9SNfyc1gSyamw3e/YZzJjRXcYuOFGsQYrzFr+xSOu/XXRDD83Hjf8zBncZq0lyxAWB0BCLzPeu2sUpqV9yIYM619XBHdpej3PW7QKBgEz0J7oK/wNcgRVP7rVbbWxhqQv+o2E90avhIewXYDCDhq7XYW/Ad1+T3MupS7p39uhGRhFhRhZqE6HRkTBTdhV4/u559qeqTYaVIXSAahjrPjq3Q+p74BZKbEb73o5whYdvBjph3wC8l+6ThQsUpK3n8AKnDTf2xwYoa0Qf6Dq5AoGASdiWiBKJxCdL6sieMPb8zTaosbj/eWP7Qll91XxZby140pq86H4FBoSDn4Ylr/oj4J8ZWx8mUXIL9kyaqjTqFusJTmPlVLfdp0JdpssayJEv657efnXc67sWkinUQew7hlybV1QsMv5UFpvqkNxqQgWXCuey9Kw4GgheCgNCGaQ='),
('89ce86f7-e6d7-48b3-bcda-03ae7f5453ae', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('8bbb3e26-07df-4eaf-96ca-74f0e4aa5a93', '38e4654c-2175-4c5f-89a2-9d27f372a13f', 'priority', '100'),
('986970df-6518-4698-9972-bc87110a895f', '974ce358-207a-415b-80bb-940dda0b7941', 'max-clients', '200'),
('999f538f-7b34-4c46-95dd-cce4a4ca75ba', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('9d6b81d0-5e27-4c3b-a450-1b79b1b87aa0', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('9dda98c9-6a71-4f78-aefc-2c2f5a818c28', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('a3b32971-6a03-4956-a3ce-0da241f3e35d', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('a4a4bd92-135d-4c43-a7f2-8e0866187097', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('a6257d11-e12e-4724-9e18-9c63b4afef09', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('a877daf0-b24c-4d08-8142-f6957b32e8f4', 'a2e99455-bc57-40cd-9e5b-815c20563db7', 'max-clients', '200'),
('a9f07153-6bb7-42ed-b41f-ad4fc39e9925', 'c1548715-efc7-49fe-998e-bfd7b90cb728', 'certificate', 'MIICmzCCAYMCBgGZKEkEXTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUwOTA4MDc0MzE3WhcNMzUwOTA4MDc0NDU3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC8ZAP0L2zpyJ9onzErBeAwK5ViOVY8SYwOEHqIPxNXmQc6RWl0hjCq4dVhSKkcXxsrS7Ldc08LeWZ53wLaVmQsf6pW81AC2TrMrOH1tjsqqPXi95HCh9qIPuwaFHmI8eg/yNRk8O6gQrKt7TTFBfSzJr/QPTekQSulsenYpmhlLLQ66mxEhyFKHgvx7o4bq1f+lVKOJsyhJVByOhLiC4wHv7VtwWVGQeta3GaMJ8ZTA0yBiw0KJ6WelY7gQTjGH05bH0jUrGFAoCOixSChB54X5xTCsDTL0vTzzMBXWwXbaunkGfVAjFxvZz9mX4QcwCNtw1YwsbAO90N2cSywyW53AgMBAAEwDQYJKoZIhvcNAQELBQADggEBADxzLypm312ZJb5MwGDVj7k8+DZJgsMx+46E937ggvtQ71b9qOyyXLsEVg6hSnmyWOXMdjpTZOTAcLo6MSMzUXIoj1kBmEFCAvzb+zPZjzE7PRchDh5prIvLM8sU0GdToJ2mO4L56cdW2EFWqnM8FPN5nOfLOcCirzFbBEE+Vh+4aFKriANn6N+pGZmicGr68LkjYOuPADZqPMnoL/GBcnVgEN7VJXTcim3dLUziQ+pEc6wcc+XbvQ6oEtVEHVNAmFESIz4SwaqTVD29hre0G6xQEHlNwfN7N6diZcP47US8bELLLWWbz8Qs1thXyQJScUGdrsBJO17sNKZMsCyy4ww='),
('aa6764e1-3e22-4e6b-ab77-8967b9d316aa', 'e3642eeb-bdeb-4a87-8b0a-89f3008766ff', 'keyUse', 'SIG'),
('aae9b525-c8d4-4ebc-9cb3-0f9b08d0db95', 'e3642eeb-bdeb-4a87-8b0a-89f3008766ff', 'certificate', 'MIICmzCCAYMCBgGZKEkDjDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUwOTA4MDc0MzE3WhcNMzUwOTA4MDc0NDU3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDungWaXzYyYb8ZCcJlAzl7uny8GbxF6BuxvnTw60NhEj7/s/ACE7rAM3PJCNiPXENd4KHV3uhYWKi1gV7vS5Q63rP97Ssgs8Wxt1Qko+Fugh8qTk2nAVcJ2B13GUsuEFQSG+ueBLZKqVvNHBfH58Uwo8uFEwzi1N4KYU3o1lWTW63xq3mO5pVVOganwIsHAACCpmU7QItBdcXkCnRmERW08TZ509oF7aSK7PC1vIq5lND6zbBBTO0MOO1e61LsPk/ZoZ1hPGKVE2NLOpAwW1iFknT0ZCjrRCG+VqMsNmD44Zx/D35o7mISS66jlPCGc8TPxi17osMabFFDS/b3QCdtAgMBAAEwDQYJKoZIhvcNAQELBQADggEBACVnczq4qBMFMb3uNOJNNcCxUfmvVhgAt4X8EvTAX8U96Wfccy7ckcs9Y6n9Q+nW8ABffDpxzTY4bJxcZWY5laixnofOuj0TBhH1Q8DyG5vhf6xG19U3ReLR5rUlTUeTlibzjbgkBmwkXBSRk6tMv4a/6JMJxf/1x/m7r5S+jC/YB2OxMcmU+puxlQQ/+nQgZWmdLKZCvjl1y0b40uvpkgXHZUp6LYisPHXRg2BVY+pf8lPy0EVT0bGo94TpaeTbYgjkwzKlijzi0BNT0BkAWEzpy2yOatrj6d+l8SnqXhl9ltSC2NBw6klUqrAVd+DmDPuK83lTN6BWQrD0JN3GgNM='),
('abc917ab-98f5-487a-bf73-882f8f438893', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('ac5101e9-94ff-4506-b0e3-5753c46f4a3c', 'cd03fd2d-eeb6-4e19-8ca3-278afb45e726', 'kc.user.profile.config', '{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),
('ae40af90-3f56-46c8-9a33-293d895944cb', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('b046d7a4-a299-4f58-9bd6-41277d18870a', '525231b1-798f-44c3-904a-a4cbe4d71a14', 'priority', '100'),
('bb3f5a9d-ab5b-4479-a724-ae9c79645bd6', '2a3c67f3-0273-491b-88e9-eb6c3e7bc28f', 'allow-default-scopes', 'true'),
('bb48923c-4812-4cac-b5da-7f7df5f386f2', '93745d2e-06ac-4ab6-b834-dfda05b718e5', 'keyUse', 'SIG'),
('bc59ede0-560c-46a7-858f-927f1338957e', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('c719fb66-6578-405a-96d4-5fbeae110806', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('ca472a48-93cf-4a0e-a043-7c920b03bc13', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('cd6261bf-22ce-47d5-82ef-0cee2a324acf', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('ceb260da-993e-41fb-a0ab-deb016b6ce00', 'f184dd7c-4ba7-4e9f-a4c7-eaaf88aeba89', 'allow-default-scopes', 'true'),
('d1b923c2-3368-40fb-aa7d-74bf33a3e038', 'b39c1a9e-531b-43dc-b8f2-86c632e0de7f', 'algorithm', 'RSA-OAEP'),
('d27b266b-4d98-4337-afff-24fbe71caa06', 'c1548715-efc7-49fe-998e-bfd7b90cb728', 'algorithm', 'RSA-OAEP'),
('d51776d8-bc93-4d31-9fb3-ead48790c100', '38e4654c-2175-4c5f-89a2-9d27f372a13f', 'kid', 'd7a9f477-9eab-4b95-b3c4-1b18cb355f3b'),
('dbe9779c-a344-45ca-9aae-083366c8ab0f', '525231b1-798f-44c3-904a-a4cbe4d71a14', 'kid', '4bf40baa-3d99-4b5c-87f2-6bf1ed5c2ded'),
('ddbd5e6f-4359-45f3-ba64-5a28fa8d0cb0', '525231b1-798f-44c3-904a-a4cbe4d71a14', 'secret', '498lDdA4eqgZ7s9_shFLTkY11nq0DXzHN8zoSPDJwgR48QZnFQ1RU5K8H0orkrlOCrdP6lPGsLQsaqELbyz1mD0c9OoTQ-VNdGaveXfmmTqcCx0Bfs3_ejCYLCo8bqS6ErtftkI8lHmJQ-FbkaSK0u7L95zNpqbl7VKd8vo-5EA'),
('de5b6201-16d8-4718-b4cc-799dc09846d6', 'c134349e-c3f3-4e68-85ab-b557bb4e812f', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('e2a708eb-e3b1-4c46-b00f-8e2bbe23d91b', 'cd8c92ea-1bd4-4a6b-a36e-1013eec6e972', 'host-sending-registration-request-must-match', 'true'),
('e47cbfb8-6821-4c5d-b02d-ebcda0ba861d', 'cd8c92ea-1bd4-4a6b-a36e-1013eec6e972', 'client-uris-must-match', 'true'),
('e5410be8-cc88-45e8-b6c4-0ec690636a64', 'ae7c3025-9466-42ea-b990-9ff3c5998eb9', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('e8e944ce-106e-457d-bc5f-941d6a6d5c81', 'd1984ba4-1bac-4002-b5d5-e4553c82418f', 'host-sending-registration-request-must-match', 'true'),
('f1a85b04-d525-4903-b29d-bdbd119d1387', '38e4654c-2175-4c5f-89a2-9d27f372a13f', 'secret', 'mFlO6CAhTNF6mAoctycboJaPwCp4bM0kEyn0AZhh1dEDzeq2_8hRoBDZCT4sYkW06Y_jwnD6pcyR9LCO6hm9STy8nE_d6-zxQGuGj0eRQX470Bt0RwAzagI1UjFBSwkePGmSzbLXCTdsUntNn4o0cdNVrSSEiuvQCGqXub2VTOQ'),
('f22ef0f0-a644-4916-a322-d7e326d33905', '6ecdc1d8-e813-4ca2-90de-497870b06248', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('fb063927-dad5-429e-bc3c-ff2c31aa8050', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('feee06d0-9f44-4154-9b0f-dbf779adad77', '88f242d9-8028-445b-a913-4af3c84375e7', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('ffe1e383-2bcf-4444-83c7-938070f9f2fc', 'd1984ba4-1bac-4002-b5d5-e4553c82418f', 'client-uris-must-match', 'true');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `COMPOSITE_ROLE`
--

CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `COMPOSITE_ROLE`
--

INSERT INTO `COMPOSITE_ROLE` (`COMPOSITE`, `CHILD_ROLE`) VALUES
('0297e68a-0209-4b20-bd32-16a3cb347d49', '4abf68b8-792a-4ed3-a815-be85d7f95e26'),
('0297e68a-0209-4b20-bd32-16a3cb347d49', 'e64d9b5a-d83f-452e-a6db-d5c98ec957ef'),
('0ff992b8-9e62-49f4-9aba-7277a241611a', 'a8990200-6b3e-4a9a-95bf-6e9cb8a9e145'),
('0ff992b8-9e62-49f4-9aba-7277a241611a', 'b0538354-af7c-432a-88f2-478769e96bb6'),
('121419d0-e0a2-452b-a0fe-bc175ab64a8a', '3806a106-7885-48fa-9909-224844a058b8'),
('121419d0-e0a2-452b-a0fe-bc175ab64a8a', '4a55e97e-e676-4307-a684-68077e107f8f'),
('14785fa7-2237-4659-954a-ee83d23d06dc', 'f8509240-1767-49b0-9e2d-ae790de0bbfc'),
('2545de44-0d89-4dac-943d-d63c0c6a9b56', '95655e13-be6d-4e89-a1de-27f3f8f305d6'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '0297e68a-0209-4b20-bd32-16a3cb347d49'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '2b10152d-e75f-4b27-9ebc-ca25121ef3bc'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '2e056f59-a3d8-4892-ba0f-09c17039e4ba'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '4abf68b8-792a-4ed3-a815-be85d7f95e26'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '4f8d833f-df09-4e36-bd97-77b79dbfed2b'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '72702ded-5865-4a72-adc1-4cf11bf2e22b'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '7e98a470-18f7-4598-9b42-27d25f665e44'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '88a4d487-93fa-4259-a649-839f2780c6c8'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '984e578c-a51d-4dc1-9396-d7d98ab5f3b0'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '998cea38-57df-46c8-9376-5c9c07320d46'),
('4212293a-043f-404c-8d0e-1e726114c2d2', '9d22ae3f-706c-4159-97f5-a5118412fa6e'),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'b2ee06ab-6b6e-42d6-aacb-86de56d90b84'),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'b384188e-c4ca-4a86-b275-3cba7472ed68'),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'bd8a1098-2488-48bc-9d6c-32f892e4bd90'),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'c5a1ef84-e22f-40ac-9338-7a599573a100'),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'cce43746-d9a9-49fe-a713-91203fd84896'),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'd345f6f0-aaf5-4bda-8e8c-9f2dc95d7840'),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'e64d9b5a-d83f-452e-a6db-d5c98ec957ef'),
('573e7a89-2a7f-44ea-8a83-25ed99b36b60', '5e11454d-c134-4c51-9242-53480adc9896'),
('7658b195-b70c-4114-9c81-4a9e15c79a21', 'ffdfaedf-21a7-4e08-903a-1d3185fc788c'),
('7e9449a3-cb68-47eb-a70e-3fafa8fbcb62', 'd7f369f0-47d2-42d5-b2b9-f99a86d339e9'),
('998cea38-57df-46c8-9376-5c9c07320d46', '72702ded-5865-4a72-adc1-4cf11bf2e22b'),
('ce25f5e0-c0c0-49aa-ae8a-2856ee2594ed', '0bbcdd27-5ea3-496b-8028-65d1d577a5f6'),
('ce25f5e0-c0c0-49aa-ae8a-2856ee2594ed', '14785fa7-2237-4659-954a-ee83d23d06dc'),
('ce25f5e0-c0c0-49aa-ae8a-2856ee2594ed', '4a26189b-f2b0-4786-bb8e-293c463bb68b'),
('ce25f5e0-c0c0-49aa-ae8a-2856ee2594ed', '8101eeb4-c726-4698-a080-2a08347ea3b4'),
('ddac30a9-9ce5-43bc-81e8-9311e514fdd1', '573e7a89-2a7f-44ea-8a83-25ed99b36b60'),
('ddac30a9-9ce5-43bc-81e8-9311e514fdd1', '650dc5c0-8b2d-442f-9e1a-46f5a56a1d3f'),
('ddac30a9-9ce5-43bc-81e8-9311e514fdd1', '6695bc06-a9f8-4446-a84e-82cb85e1818e'),
('ddac30a9-9ce5-43bc-81e8-9311e514fdd1', 'dc53a6b0-fc1d-4a86-95ce-f4be55bc5a5e'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '00f806f6-14e4-4911-ad70-bb6fc1ca7178'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '04eacd34-272b-4dd2-844e-5d0d4dd9b7fd'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '0d02816d-50d6-4e00-a551-9803d9eeb42b'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '0ff992b8-9e62-49f4-9aba-7277a241611a'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '11fc364b-e309-4b3f-a890-0d59663b1fdd'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '121419d0-e0a2-452b-a0fe-bc175ab64a8a'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '2799aeb2-62c3-4787-9990-eb552d83b058'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '279e15cd-b4c0-459f-8c48-272628623437'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '3806a106-7885-48fa-9909-224844a058b8'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '384c9985-c1ec-4da4-832e-f1b1159f5707'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '3da225a4-1947-4227-a039-ba1f0d7d17d3'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '3e936f7f-f995-4aec-8bd7-4f188e7971ff'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '425482b1-8736-4fac-948a-4fe3be4fc005'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '4a55e97e-e676-4307-a684-68077e107f8f'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '64ca58ce-e23b-4ad4-93f0-5165d9fcbb59'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '7e9449a3-cb68-47eb-a70e-3fafa8fbcb62'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '80c1533d-48a0-4539-a83f-4d417c3e7dde'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '81c90bbb-767d-40d5-a324-761d321d19d8'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '84d8e847-69c7-4d50-9c5a-99c5869b4370'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '87556449-3c08-4ba9-9e51-c27f3a7af13a'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '98605f61-f850-46fa-b854-a0349bd309dd'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'a11f0ab8-0c22-475a-aece-127a7e59ca39'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'a1c8293e-8946-433a-8d05-d6a6294bdb39'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'a8990200-6b3e-4a9a-95bf-6e9cb8a9e145'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'ab1a7e3a-4fd1-4eec-adab-520f581be949'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'ad1da4f2-5086-48e1-83c5-f8eb1e6759b5'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'b0538354-af7c-432a-88f2-478769e96bb6'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'b775def7-7ee4-40d1-b644-47d25e66d710'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'bc672aa5-9a43-4ca8-821e-ae82b8f163e0'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'bf9b698f-10a2-4be2-8b53-92b4b5d85808'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'cd738363-c948-4e90-843a-3a6fa3e37242'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'cfeaded6-376d-4e7e-a17e-773f0af0a53a'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'd7f369f0-47d2-42d5-b2b9-f99a86d339e9'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'db27ec55-4d4c-4780-9969-a1f334aa5014'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'deda3f9c-1607-4fbe-b644-81f6daf1ec92'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'e7d10fd4-a633-42b9-8760-2abcbc308307'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'f4531285-06ac-4a71-88b2-323e528b6cfb'),
('f4531285-06ac-4a71-88b2-323e528b6cfb', 'cfeaded6-376d-4e7e-a17e-773f0af0a53a');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CREDENTIAL`
--

CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int DEFAULT NULL,
  `VERSION` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CREDENTIAL`
--

INSERT INTO `CREDENTIAL` (`ID`, `SALT`, `TYPE`, `USER_ID`, `CREATED_DATE`, `USER_LABEL`, `SECRET_DATA`, `CREDENTIAL_DATA`, `PRIORITY`, `VERSION`) VALUES
('92cee16f-5b7d-4246-b28f-43b56c8ea5e0', NULL, 'password', '72a74b26-55ed-4df0-bb9c-f243db513378', 1757317498232, NULL, '{\"value\":\"cPvuFsQ0r3d0+5I1FGBFSViqRyA8WY58cEjuQ7UDCZg=\",\"salt\":\"23IkTPb3B+vtuSZcdfsS2A==\",\"additionalParameters\":{}}', '{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}', 10, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `DATABASECHANGELOG`
--

CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `DATABASECHANGELOG`
--

INSERT INTO `DATABASECHANGELOG` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/db2-jpa-changelog-1.0.0.Final.xml', '2025-09-08 07:43:23', 2, 'MARK_RAN', '9:828775b1596a07d1200ba1d49e5e3941', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.0.0.Final.xml', '2025-09-08 07:43:22', 1, 'EXECUTED', '9:6f1016664e21e16d26517a4418f5e3df', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.1.0.Beta1', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Beta1.xml', '2025-09-08 07:43:24', 3, 'EXECUTED', '9:5f090e44a7d595883c1fb61f4b41fd38', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.1.0.Final', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Final.xml', '2025-09-08 07:43:24', 4, 'EXECUTED', '9:c07e577387a3d2c04d1adc9aaad8730e', 'renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.Beta1.xml', '2025-09-08 07:43:30', 6, 'MARK_RAN', '9:543b5c9989f024fe35c6f6c5a97de88e', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/jpa-changelog-1.2.0.Beta1.xml', '2025-09-08 07:43:30', 5, 'EXECUTED', '9:b68ce996c655922dbcd2fe6b6ae72686', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.2.0.Final', 'keycloak', 'META-INF/jpa-changelog-1.2.0.Final.xml', '2025-09-08 07:43:36', 9, 'EXECUTED', '9:9d05c7be10cdb873f8bcb41bc3a8ab23', 'update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.CR1.xml', '2025-09-08 07:43:36', 8, 'MARK_RAN', '9:db4a145ba11a6fdaefb397f6dbf829a1', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.2.0.CR1.xml', '2025-09-08 07:43:36', 7, 'EXECUTED', '9:765afebbe21cf5bbca048e632df38336', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.3.0.xml', '2025-09-08 07:43:42', 10, 'EXECUTED', '9:18593702353128d53111f9b1ff0b82b8', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.4.0', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.4.0.xml', '2025-09-08 07:43:45', 12, 'MARK_RAN', '9:e1ff28bf7568451453f844c5d54bb0b5', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.4.0.xml', '2025-09-08 07:43:45', 11, 'EXECUTED', '9:6122efe5f090e41a85c0f1c9e52cbb62', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.5.0.xml', '2025-09-08 07:43:45', 13, 'EXECUTED', '9:7af32cd8957fbc069f796b61217483fd', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.6.1', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2025-09-08 07:43:46', 17, 'EXECUTED', '9:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.6.1_from15', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2025-09-08 07:43:46', 14, 'EXECUTED', '9:6005e15e84714cd83226bf7879f54190', 'addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.6.1_from16', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2025-09-08 07:43:46', 16, 'MARK_RAN', '9:f8dadc9284440469dcf71e25ca6ab99b', 'dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.6.1_from16-pre', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2025-09-08 07:43:46', 15, 'MARK_RAN', '9:bf656f5a2b055d07f314431cae76f06c', 'delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.7.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.7.0.xml', '2025-09-08 07:43:50', 18, 'EXECUTED', '9:3368ff0be4c2855ee2dd9ca813b38d8e', 'createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.8.0', 'mposolda@redhat.com', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2025-09-08 07:43:53', 21, 'MARK_RAN', '9:831e82914316dc8a57dc09d755f23c51', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.8.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.8.0.xml', '2025-09-08 07:43:53', 19, 'EXECUTED', '9:8ac2fb5dd030b24c0570a763ed75ed20', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.8.0-2', 'keycloak', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2025-09-08 07:43:53', 22, 'MARK_RAN', '9:f91ddca9b19743db60e3057679810e6c', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.8.0-2', 'keycloak', 'META-INF/jpa-changelog-1.8.0.xml', '2025-09-08 07:43:53', 20, 'EXECUTED', '9:f91ddca9b19743db60e3057679810e6c', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.9.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.9.0.xml', '2025-09-08 07:43:54', 23, 'EXECUTED', '9:bc3d0f9e823a69dc21e23e94c7a94bb1', 'update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.9.1', 'keycloak', 'META-INF/db2-jpa-changelog-1.9.1.xml', '2025-09-08 07:43:54', 25, 'MARK_RAN', '9:0d6c65c6f58732d81569e77b10ba301d', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.9.1', 'keycloak', 'META-INF/jpa-changelog-1.9.1.xml', '2025-09-08 07:43:54', 24, 'EXECUTED', '9:c9999da42f543575ab790e76439a2679', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('1.9.2', 'keycloak', 'META-INF/jpa-changelog-1.9.2.xml', '2025-09-08 07:43:55', 26, 'EXECUTED', '9:fc576660fc016ae53d2d4778d84d86d0', 'createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('12.1.0-add-realm-localization-table', 'keycloak', 'META-INF/jpa-changelog-12.0.0.xml', '2025-09-08 07:44:46', 88, 'EXECUTED', '9:fffabce2bc01e1a8f5110d5278500065', 'createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('13.0.0-increase-column-size-federated', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:47', 94, 'EXECUTED', '9:43c0c1055b6761b4b3e89de76d612ccf', 'modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('13.0.0-KEYCLOAK-16844', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:46', 91, 'EXECUTED', '9:ad1194d66c937e3ffc82386c050ba089', 'createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('13.0.0-KEYCLOAK-17992-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:46', 93, 'MARK_RAN', '9:544d201116a0fcc5a5da0925fbbc3bde', 'dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('13.0.0-KEYCLOAK-17992-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:47', 95, 'MARK_RAN', '9:8bd711fd0330f4fe980494ca43ab1139', 'addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('14.0.0-KEYCLOAK-11019', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2025-09-08 07:44:47', 97, 'EXECUTED', '9:24fb8611e97f29989bea412aa38d12b7', 'createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('14.0.0-KEYCLOAK-18286', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2025-09-08 07:44:47', 98, 'MARK_RAN', '9:259f89014ce2506ee84740cbf7163aa7', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('14.0.0-KEYCLOAK-18286-revert', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2025-09-08 07:44:47', 99, 'MARK_RAN', '9:04baaf56c116ed19951cbc2cca584022', 'dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('14.0.0-KEYCLOAK-18286-supported-dbs', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2025-09-08 07:44:47', 100, 'EXECUTED', '9:bd2bd0fc7768cf0845ac96a8786fa735', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('14.0.0-KEYCLOAK-18286-unsupported-dbs', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2025-09-08 07:44:47', 101, 'MARK_RAN', '9:d3d977031d431db16e2c181ce49d73e9', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('15.0.0-KEYCLOAK-18467', 'keycloak', 'META-INF/jpa-changelog-15.0.0.xml', '2025-09-08 07:44:48', 104, 'EXECUTED', '9:47a760639ac597360a8219f5b768b4de', 'addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('17.0.0-9562', 'keycloak', 'META-INF/jpa-changelog-17.0.0.xml', '2025-09-08 07:44:48', 105, 'EXECUTED', '9:a6272f0576727dd8cad2522335f5d99e', 'createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('18.0.0-10625-IDX_ADMIN_EVENT_TIME', 'keycloak', 'META-INF/jpa-changelog-18.0.0.xml', '2025-09-08 07:44:48', 106, 'EXECUTED', '9:015479dbd691d9cc8669282f4828c41d', 'createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('18.0.15-30992-index-consent', 'keycloak', 'META-INF/jpa-changelog-18.0.15.xml', '2025-09-08 07:44:48', 107, 'EXECUTED', '9:80071ede7a05604b1f4906f3bf3b00f0', 'createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('19.0.0-10135', 'keycloak', 'META-INF/jpa-changelog-19.0.0.xml', '2025-09-08 07:44:48', 108, 'EXECUTED', '9:9518e495fdd22f78ad6425cc30630221', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.1.0-KEYCLOAK-5461', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.1.0.xml', '2025-09-08 07:44:04', 29, 'EXECUTED', '9:bd88e1f833df0420b01e114533aee5e8', 'createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.2.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.2.0.xml', '2025-09-08 07:44:05', 30, 'EXECUTED', '9:a7022af5267f019d020edfe316ef4371', 'addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.3.0.xml', '2025-09-08 07:44:06', 31, 'EXECUTED', '9:fc155c394040654d6a79227e56f5e25a', 'createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.4.0.xml', '2025-09-08 07:44:06', 32, 'EXECUTED', '9:eac4ffb2a14795e5dc7b426063e54d88', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2025-09-08 07:44:06', 33, 'EXECUTED', '9:54937c05672568c4c64fc9524c1e9462', 'customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.5.0-duplicate-email-support', 'slawomir@dabek.name', 'META-INF/jpa-changelog-2.5.0.xml', '2025-09-08 07:44:11', 36, 'EXECUTED', '9:61b6d3d7a4c0e0024b0c839da283da0c', 'addColumn tableName=REALM', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.5.0-unicode-oracle', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2025-09-08 07:44:06', 34, 'MARK_RAN', '9:737ee933fd399814ed5e24f3b1bbe39d', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.5.0-unicode-other-dbs', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2025-09-08 07:44:11', 35, 'EXECUTED', '9:33d72168746f81f98ae3a1e8e0ca3554', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.5.0-unique-group-names', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2025-09-08 07:44:11', 37, 'EXECUTED', '9:8dcac7bdf7378e7d823cdfddebf72fda', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('2.5.1', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.1.xml', '2025-09-08 07:44:11', 38, 'EXECUTED', '9:a2b870802540cb3faa72098db5388af3', 'addColumn tableName=FED_USER_CONSENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('20.0.0-12964-supported-dbs', 'keycloak', 'META-INF/jpa-changelog-20.0.0.xml', '2025-09-08 07:44:48', 109, 'EXECUTED', '9:f2e1331a71e0aa85e5608fe42f7f681c', 'createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('20.0.0-12964-unsupported-dbs', 'keycloak', 'META-INF/jpa-changelog-20.0.0.xml', '2025-09-08 07:44:48', 110, 'MARK_RAN', '9:1a6fcaa85e20bdeae0a9ce49b41946a5', 'createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('21.0.2-17277', 'keycloak', 'META-INF/jpa-changelog-21.0.2.xml', '2025-09-08 07:44:49', 112, 'EXECUTED', '9:7ee1f7a3fb8f5588f171fb9a6ab623c0', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('21.1.0-19404', 'keycloak', 'META-INF/jpa-changelog-21.1.0.xml', '2025-09-08 07:44:49', 113, 'EXECUTED', '9:3d7e830b52f33676b9d64f7f2b2ea634', 'modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('21.1.0-19404-2', 'keycloak', 'META-INF/jpa-changelog-21.1.0.xml', '2025-09-08 07:44:50', 114, 'MARK_RAN', '9:627d032e3ef2c06c0e1f73d2ae25c26c', 'addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('22.0.0-17484-updated', 'keycloak', 'META-INF/jpa-changelog-22.0.0.xml', '2025-09-08 07:44:50', 115, 'EXECUTED', '9:90af0bfd30cafc17b9f4d6eccd92b8b3', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('22.0.5-24031', 'keycloak', 'META-INF/jpa-changelog-22.0.0.xml', '2025-09-08 07:44:50', 116, 'MARK_RAN', '9:a60d2d7b315ec2d3eba9e2f145f9df28', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('23.0.0-12062', 'keycloak', 'META-INF/jpa-changelog-23.0.0.xml', '2025-09-08 07:44:50', 117, 'EXECUTED', '9:2168fbe728fec46ae9baf15bf80927b8', 'addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('23.0.0-17258', 'keycloak', 'META-INF/jpa-changelog-23.0.0.xml', '2025-09-08 07:44:50', 118, 'EXECUTED', '9:36506d679a83bbfda85a27ea1864dca8', 'addColumn tableName=EVENT_ENTITY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('24.0.0-26618-drop-index-if-present', 'keycloak', 'META-INF/jpa-changelog-24.0.0.xml', '2025-09-08 07:44:50', 121, 'EXECUTED', '9:04baaf56c116ed19951cbc2cca584022', 'dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('24.0.0-26618-reindex', 'keycloak', 'META-INF/jpa-changelog-24.0.0.xml', '2025-09-08 07:44:51', 122, 'EXECUTED', '9:bd2bd0fc7768cf0845ac96a8786fa735', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('24.0.0-9758', 'keycloak', 'META-INF/jpa-changelog-24.0.0.xml', '2025-09-08 07:44:50', 119, 'EXECUTED', '9:502c557a5189f600f0f445a9b49ebbce', 'addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('24.0.0-9758-2', 'keycloak', 'META-INF/jpa-changelog-24.0.0.xml', '2025-09-08 07:44:50', 120, 'EXECUTED', '9:bf0fdee10afdf597a987adbf291db7b2', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('24.0.2-27228', 'keycloak', 'META-INF/jpa-changelog-24.0.2.xml', '2025-09-08 07:44:51', 123, 'EXECUTED', '9:eaee11f6b8aa25d2cc6a84fb86fc6238', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('24.0.2-27967-drop-index-if-present', 'keycloak', 'META-INF/jpa-changelog-24.0.2.xml', '2025-09-08 07:44:51', 124, 'MARK_RAN', '9:04baaf56c116ed19951cbc2cca584022', 'dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('24.0.2-27967-reindex', 'keycloak', 'META-INF/jpa-changelog-24.0.2.xml', '2025-09-08 07:44:51', 125, 'MARK_RAN', '9:d3d977031d431db16e2c181ce49d73e9', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-index-2-mysql', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 132, 'EXECUTED', '9:b7ef76036d3126bb83c2423bf4d449d6', 'createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-index-2-not-mysql', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 133, 'MARK_RAN', '9:23396cf51ab8bc1ae6f0cac7f9f6fcf7', 'createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-index-cleanup-css-preload', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 131, 'EXECUTED', '9:5411d2fb2891d3e8d63ddb55dfa3c0c9', 'dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-index-cleanup-uss-by-usersess', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 130, 'EXECUTED', '9:6eee220d024e38e89c799417ec33667f', 'dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-index-cleanup-uss-createdon', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 128, 'EXECUTED', '9:78ab4fc129ed5e8265dbcc3485fba92f', 'dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-index-cleanup-uss-preload', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 129, 'EXECUTED', '9:de5f7c1f7e10994ed8b62e621d20eaab', 'dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-index-creation', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 127, 'EXECUTED', '9:3e96709818458ae49f3c679ae58d263a', 'createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28265-tables', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:51', 126, 'EXECUTED', '9:deda2df035df23388af95bbd36c17cef', 'addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-28861-index-creation', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:52', 137, 'EXECUTED', '9:b9acb58ac958d9ada0fe12a5d4794ab1', 'createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('25.0.0-org', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:52', 134, 'EXECUTED', '9:5c859965c2c9b9c72136c360649af157', 'createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0-32583-drop-redundant-index-on-client-session', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:54', 145, 'EXECUTED', '9:24972d83bf27317a055d234187bb4af9', 'dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0-33201-org-redirect-url', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:54', 147, 'EXECUTED', '9:4d0e22b0ac68ebe9794fa9cb752ea660', 'addColumn tableName=ORG', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0-idps-for-login', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:54', 144, 'EXECUTED', '9:51f5fffadf986983d4bd59582c6c1604', 'addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0-org-alias', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:52', 138, 'EXECUTED', '9:6ef7d63e4412b3c2d66ed179159886a4', 'addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0-org-group', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:53', 139, 'EXECUTED', '9:da8e8087d80ef2ace4f89d8c5b9ca223', 'addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0-org-group-membership', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:53', 141, 'EXECUTED', '9:a6ace2ce583a421d89b01ba2a28dc2d4', 'addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0-org-indexes', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:53', 140, 'EXECUTED', '9:79b05dcd610a8c7f25ec05135eec0857', 'createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:54', 146, 'EXECUTED', '9:febdc0f47f2ed241c59e60f58c3ceea5', 'dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.1.0-34013', 'keycloak', 'META-INF/jpa-changelog-26.1.0.xml', '2025-09-08 07:44:55', 149, 'EXECUTED', '9:e6b686a15759aef99a6d758a5c4c6a26', 'addColumn tableName=ADMIN_EVENT_ENTITY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.1.0-34380', 'keycloak', 'META-INF/jpa-changelog-26.1.0.xml', '2025-09-08 07:44:55', 150, 'EXECUTED', '9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01', 'dropTable tableName=USERNAME_LOGIN_FAILURE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.2.0-26106', 'keycloak', 'META-INF/jpa-changelog-26.2.0.xml', '2025-09-08 07:44:55', 152, 'EXECUTED', '9:b5877d5dab7d10ff3a9d209d7beb6680', 'addColumn tableName=CREDENTIAL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.2.0-36750', 'keycloak', 'META-INF/jpa-changelog-26.2.0.xml', '2025-09-08 07:44:55', 151, 'EXECUTED', '9:b49ce951c22f7eb16480ff085640a33a', 'createTable tableName=SERVER_CONFIG', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.2.6-39866-duplicate', 'keycloak', 'META-INF/jpa-changelog-26.2.6.xml', '2025-09-08 07:44:55', 153, 'EXECUTED', '9:1dc67ccee24f30331db2cba4f372e40e', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.2.6-39866-uk', 'keycloak', 'META-INF/jpa-changelog-26.2.6.xml', '2025-09-08 07:44:55', 154, 'EXECUTED', '9:b70b76f47210cf0a5f4ef0e219eac7cd', 'addUniqueConstraint constraintName=UK_MIGRATION_VERSION, tableName=MIGRATION_MODEL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.2.6-40088-duplicate', 'keycloak', 'META-INF/jpa-changelog-26.2.6.xml', '2025-09-08 07:44:55', 155, 'EXECUTED', '9:cc7e02ed69ab31979afb1982f9670e8f', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.2.6-40088-uk', 'keycloak', 'META-INF/jpa-changelog-26.2.6.xml', '2025-09-08 07:44:55', 156, 'EXECUTED', '9:5bb848128da7bc4595cc507383325241', 'addUniqueConstraint constraintName=UK_MIGRATION_UPDATE_TIME, tableName=MIGRATION_MODEL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('26.3.0-groups-description', 'keycloak', 'META-INF/jpa-changelog-26.3.0.xml', '2025-09-08 07:44:55', 157, 'EXECUTED', '9:e1a3c05574326fb5b246b73b9a4c4d49', 'addColumn tableName=KEYCLOAK_GROUP', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('29399-jdbc-ping-default', 'keycloak', 'META-INF/jpa-changelog-26.1.0.xml', '2025-09-08 07:44:55', 148, 'EXECUTED', '9:007dbe99d7203fca403b89d4edfdf21e', 'createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.0.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-3.0.0.xml', '2025-09-08 07:44:11', 39, 'EXECUTED', '9:132a67499ba24bcc54fb5cbdcfe7e4c0', 'addColumn tableName=IDENTITY_PROVIDER', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.2.0-fix', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2025-09-08 07:44:11', 40, 'MARK_RAN', '9:938f894c032f5430f2b0fafb1a243462', 'addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.2.0-fix-offline-sessions', 'hmlnarik', 'META-INF/jpa-changelog-3.2.0.xml', '2025-09-08 07:44:11', 42, 'EXECUTED', '9:fc86359c079781adc577c5a217e4d04c', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.2.0-fix-with-keycloak-5416', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2025-09-08 07:44:11', 41, 'MARK_RAN', '9:845c332ff1874dc5d35974b0babf3006', 'dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.2.0-fixed', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2025-09-08 07:44:17', 43, 'EXECUTED', '9:59a64800e3c0d09b825f8a3b444fa8f4', 'addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.3.0', 'keycloak', 'META-INF/jpa-changelog-3.3.0.xml', '2025-09-08 07:44:17', 44, 'EXECUTED', '9:d48d6da5c6ccf667807f633fe489ce88', 'addColumn tableName=USER_ENTITY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.4.0', 'keycloak', 'META-INF/jpa-changelog-3.4.0.xml', '2025-09-08 07:44:25', 50, 'EXECUTED', '9:cfdd8736332ccdd72c5256ccb42335db', 'addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.4.0-KEYCLOAK-5230', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-3.4.0.xml', '2025-09-08 07:44:26', 51, 'EXECUTED', '9:7c84de3d9bd84d7f077607c1a4dcb714', 'createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.4.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-3.4.1.xml', '2025-09-08 07:44:26', 52, 'EXECUTED', '9:5a6bb36cbefb6a9d6928452c0852af2d', 'modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.4.2', 'keycloak', 'META-INF/jpa-changelog-3.4.2.xml', '2025-09-08 07:44:26', 53, 'EXECUTED', '9:8f23e334dbc59f82e0a328373ca6ced0', 'update tableName=REALM', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('3.4.2-KEYCLOAK-5172', 'mkanis@redhat.com', 'META-INF/jpa-changelog-3.4.2.xml', '2025-09-08 07:44:26', 54, 'EXECUTED', '9:9156214268f09d970cdf0e1564d866af', 'update tableName=CLIENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('31296-persist-revoked-access-tokens', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:53', 142, 'EXECUTED', '9:64ef94489d42a358e8304b0e245f0ed4', 'createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('31725-index-persist-revoked-access-tokens', 'keycloak', 'META-INF/jpa-changelog-26.0.0.xml', '2025-09-08 07:44:53', 143, 'EXECUTED', '9:b994246ec2bf7c94da881e1d28782c7b', 'createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.0.0-CLEANUP-UNUSED-TABLE', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2025-09-08 07:44:26', 56, 'EXECUTED', '9:229a041fb72d5beac76bb94a5fa709de', 'dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.0.0-KEYCLOAK-5579-fixed', 'mposolda@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2025-09-08 07:44:35', 58, 'EXECUTED', '9:139b79bcbbfe903bb1c2d2a4dbf001d9', 'dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.0.0-KEYCLOAK-6228', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2025-09-08 07:44:27', 57, 'EXECUTED', '9:079899dade9c1e683f26b2aa9ca6ff04', 'dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.0.0-KEYCLOAK-6335', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2025-09-08 07:44:26', 55, 'EXECUTED', '9:db806613b1ed154826c02610b7dbdf74', 'createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.2.0-KEYCLOAK-6313', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.2.0.xml', '2025-09-08 07:44:38', 63, 'EXECUTED', '9:92143a6daea0a3f3b8f598c97ce55c3d', 'addColumn tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.3.0-KEYCLOAK-7984', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.3.0.xml', '2025-09-08 07:44:38', 64, 'EXECUTED', '9:82bab26a27195d889fb0429003b18f40', 'update tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.6.0-KEYCLOAK-7950', 'psilva@redhat.com', 'META-INF/jpa-changelog-4.6.0.xml', '2025-09-08 07:44:38', 65, 'EXECUTED', '9:e590c88ddc0b38b0ae4249bbfcb5abc3', 'update tableName=RESOURCE_SERVER_RESOURCE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.6.0-KEYCLOAK-8377', 'keycloak', 'META-INF/jpa-changelog-4.6.0.xml', '2025-09-08 07:44:38', 66, 'EXECUTED', '9:5c1f475536118dbdc38d5d7977950cc0', 'createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.6.0-KEYCLOAK-8555', 'gideonray@gmail.com', 'META-INF/jpa-changelog-4.6.0.xml', '2025-09-08 07:44:38', 67, 'EXECUTED', '9:e7c9f5f9c4d67ccbbcc215440c718a17', 'createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.7.0-KEYCLOAK-1267', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.7.0.xml', '2025-09-08 07:44:39', 68, 'EXECUTED', '9:88e0bfdda924690d6f4e430c53447dd5', 'addColumn tableName=REALM', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.7.0-KEYCLOAK-7275', 'keycloak', 'META-INF/jpa-changelog-4.7.0.xml', '2025-09-08 07:44:39', 69, 'EXECUTED', '9:f53177f137e1c46b6a88c59ec1cb5218', 'renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('4.8.0-KEYCLOAK-8835', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.8.0.xml', '2025-09-08 07:44:40', 70, 'EXECUTED', '9:a74d33da4dc42a37ec27121580d1459f', 'addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('8.0.0-adding-credential-columns', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2025-09-08 07:44:40', 72, 'EXECUTED', '9:aa072ad090bbba210d8f18781b8cebf4', 'addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('8.0.0-credential-cleanup-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2025-09-08 07:44:41', 75, 'EXECUTED', '9:2b9cc12779be32c5b40e2e67711a218b', 'dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('8.0.0-resource-tag-support', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2025-09-08 07:44:41', 76, 'EXECUTED', '9:91fa186ce7a5af127a2d7a91ee083cc5', 'addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('8.0.0-updating-credential-data-not-oracle-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2025-09-08 07:44:40', 73, 'EXECUTED', '9:1ae6be29bab7c2aa376f6983b932be37', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('8.0.0-updating-credential-data-oracle-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2025-09-08 07:44:40', 74, 'MARK_RAN', '9:14706f286953fc9a25286dbd8fb30d97', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.0-always-display-client', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2025-09-08 07:44:42', 77, 'EXECUTED', '9:6335e5c94e83a2639ccd68dd24e2e5ad', 'addColumn tableName=CLIENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.0-drop-constraints-for-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2025-09-08 07:44:42', 78, 'MARK_RAN', '9:6bdb5658951e028bfe16fa0a8228b530', 'dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.0-increase-column-size-federated-fk', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2025-09-08 07:44:44', 79, 'EXECUTED', '9:d5bc15a64117ccad481ce8792d4c608f', 'modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.0-recreate-constraints-after-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2025-09-08 07:44:44', 80, 'MARK_RAN', '9:077cba51999515f4d3e7ad5619ab592c', 'addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.1-add-index-to-client.client_id', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2025-09-08 07:44:45', 81, 'EXECUTED', '9:be969f08a163bf47c6b9e9ead8ac2afb', 'createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.1-add-index-to-events', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2025-09-08 07:44:45', 85, 'EXECUTED', '9:7d93d602352a30c0c317e6a609b56599', 'createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.1-KEYCLOAK-12579-add-not-null-constraint', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2025-09-08 07:44:45', 83, 'EXECUTED', '9:966bda61e46bebf3cc39518fbed52fa7', 'addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.1-KEYCLOAK-12579-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2025-09-08 07:44:45', 82, 'MARK_RAN', '9:6d3bb4408ba5a72f39bd8a0b301ec6e3', 'dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('9.0.1-KEYCLOAK-12579-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2025-09-08 07:44:45', 84, 'MARK_RAN', '9:8dcac7bdf7378e7d823cdfddebf72fda', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authn-3.4.0.CR1-refresh-token-max-reuse', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2025-09-08 07:44:21', 49, 'EXECUTED', '9:d198654156881c46bfba39abd7769e69', 'addColumn tableName=REALM', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-2.0.0', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.0.0.xml', '2025-09-08 07:44:00', 27, 'EXECUTED', '9:43ed6b0da89ff77206289e87eaa9c024', 'createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-2.5.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.5.1.xml', '2025-09-08 07:44:00', 28, 'EXECUTED', '9:44bae577f551b3738740281eceb4ea70', 'update tableName=RESOURCE_SERVER_POLICY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-3.4.0.CR1-resource-server-pk-change-part1', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2025-09-08 07:44:17', 45, 'EXECUTED', '9:dde36f7973e80d71fceee683bc5d2951', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2025-09-08 07:44:17', 46, 'EXECUTED', '9:b855e9b0a406b34fa323235a0cf4f640', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2025-09-08 07:44:17', 47, 'MARK_RAN', '9:51abbacd7b416c50c4421a8cabf7927e', 'dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2025-09-08 07:44:21', 48, 'EXECUTED', '9:bdc99e567b3398bac83263d375aad143', 'addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-4.0.0.Beta3', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.Beta3.xml', '2025-09-08 07:44:37', 60, 'EXECUTED', '9:e0057eac39aa8fc8e09ac6cfa4ae15fe', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-4.0.0.CR1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.CR1.xml', '2025-09-08 07:44:36', 59, 'EXECUTED', '9:b55738ad889860c625ba2bf483495a04', 'createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-4.2.0.Final', 'mhajas@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2025-09-08 07:44:37', 61, 'EXECUTED', '9:42a33806f3a0443fe0e7feeec821326c', 'createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-4.2.0.Final-KEYCLOAK-9944', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2025-09-08 07:44:38', 62, 'EXECUTED', '9:9968206fca46eecc1f51db9c024bfe56', 'addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('authz-7.0.0-KEYCLOAK-10443', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-7.0.0.xml', '2025-09-08 07:44:40', 71, 'EXECUTED', '9:fd4ade7b90c3b67fae0bfcfcb42dfb5f', 'addColumn tableName=RESOURCE_SERVER', '', NULL, '4.29.1', NULL, NULL, '7317388906');
INSERT INTO `DATABASECHANGELOG` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('client-attributes-string-accomodation-fixed', 'keycloak', 'META-INF/jpa-changelog-20.0.0.xml', '2025-09-08 07:44:49', 111, 'EXECUTED', '9:3f332e13e90739ed0c35b0b25b7822ca', 'addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('default-roles', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:46', 89, 'EXECUTED', '9:fa8a5b5445e3857f4b010bafb5009957', 'addColumn tableName=REALM; customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('default-roles-cleanup', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:46', 90, 'EXECUTED', '9:67ac3241df9a8582d591c5ed87125f39', 'dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('json-string-accomodation-fixed', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:47', 96, 'EXECUTED', '9:e07d2bc0970c348bb06fb63b1f82ddbf', 'addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('KEYCLOAK-17267-add-index-to-user-attributes', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2025-09-08 07:44:48', 102, 'EXECUTED', '9:0b305d8d1277f3a89a0a53a659ad274c', 'createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('KEYCLOAK-18146-add-saml-art-binding-identifier', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2025-09-08 07:44:48', 103, 'EXECUTED', '9:2c374ad2cdfe20e2905a84c8fac48460', 'customChange', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('map-remove-ri', 'keycloak', 'META-INF/jpa-changelog-11.0.0.xml', '2025-09-08 07:44:45', 86, 'EXECUTED', '9:71c5969e6cdd8d7b6f47cebc86d37627', 'dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('map-remove-ri', 'keycloak', 'META-INF/jpa-changelog-12.0.0.xml', '2025-09-08 07:44:45', 87, 'EXECUTED', '9:a9ba7d47f065f041b7da856a81762021', 'dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('map-remove-ri-13.0.0', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2025-09-08 07:44:46', 92, 'EXECUTED', '9:d9be619d94af5a2f5d07b9f003543b91', 'dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('unique-consentuser', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:52', 135, 'MARK_RAN', '9:5857626a2ea8767e9a6c66bf3a2cb32f', 'customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...', '', NULL, '4.29.1', NULL, NULL, '7317388906'),
('unique-consentuser-mysql', 'keycloak', 'META-INF/jpa-changelog-25.0.0.xml', '2025-09-08 07:44:52', 136, 'EXECUTED', '9:b79478aad5adaa1bc428e31563f55e8e', 'customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...', '', NULL, '4.29.1', NULL, NULL, '7317388906');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `DATABASECHANGELOGLOCK`
--

CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` tinyint NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `DATABASECHANGELOGLOCK`
--

INSERT INTO `DATABASECHANGELOGLOCK` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, 0, NULL, NULL),
(1000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `DEFAULT_CLIENT_SCOPE`
--

CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `DEFAULT_CLIENT_SCOPE`
--

INSERT INTO `DEFAULT_CLIENT_SCOPE` (`REALM_ID`, `SCOPE_ID`, `DEFAULT_SCOPE`) VALUES
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0524d6a6-c391-4fc1-9101-af1177b1f7eb', 1),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '07eed171-5910-44b7-9106-455c1a6b3e81', 0),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '15cfdfe3-a957-4393-931e-201deb91408e', 1),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '4e3291bf-175b-4a50-8b1d-d7265feae9eb', 0),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '5fd24069-3e56-4c18-a6ee-08656f6af405', 0),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '81d6a408-6a12-4498-b3bb-4fbb743fa4a0', 1),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '8215a42a-b2a4-4a37-ae20-500fc9a4038a', 1),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '9a6e15d9-ee93-4aee-be3e-890fd963e05a', 1),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'a4968040-2571-4d07-beba-f635d3afa567', 0),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de', 0),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'c6951231-1384-4f95-a260-7f1b92700e89', 1),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'd639f562-e76a-4380-b1fc-2d8092b916c8', 1),
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'ecf2988e-6645-4970-bdea-40526841428b', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '0eafbe54-8153-4304-a442-8f1461b3f88a', 0),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '10c5a06e-cf8a-417d-bcdd-f0788897c4c1', 0),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '1133d69a-7b8c-4aca-9f96-c3a2432122f5', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '27e22cb4-2c09-45c1-9c86-c3ae373b3223', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '3004c29e-d98e-45d1-b6b1-f17f7af6cd61', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '3904ad83-6ace-4a7b-bed3-f66d3f8c6d64', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d', 0),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '527c901f-413c-4de0-b352-85600a8bdd4c', 0),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '54af9da3-7b68-4056-aadb-3aa45a54fd26', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '5bd6e246-5da6-49bc-b12f-c3e056ab1482', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'c1086db3-b549-4e51-beb5-38fde43df83e', 1),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f', 0),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `EVENT_ENTITY`
--

CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON_LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FEDERATED_IDENTITY`
--

CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FEDERATED_USER`
--

CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FED_USER_ATTRIBUTE`
--

CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text,
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FED_USER_CONSENT`
--

CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FED_USER_CONSENT_CL_SCOPE`
--

CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FED_USER_CREDENTIAL`
--

CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FED_USER_GROUP_MEMBERSHIP`
--

CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FED_USER_REQUIRED_ACTION`
--

CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FED_USER_ROLE_MAPPING`
--

CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GROUP_ATTRIBUTE`
--

CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GROUP_ROLE_MAPPING`
--

CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `IDENTITY_PROVIDER`
--

CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` tinyint NOT NULL DEFAULT '0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` tinyint NOT NULL DEFAULT '0',
  `AUTHENTICATE_BY_DEFAULT` tinyint NOT NULL DEFAULT '0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` tinyint NOT NULL DEFAULT '1',
  `TRUST_EMAIL` tinyint NOT NULL DEFAULT '0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` tinyint NOT NULL DEFAULT '0',
  `ORGANIZATION_ID` varchar(255) DEFAULT NULL,
  `HIDE_ON_LOGIN` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `IDENTITY_PROVIDER_CONFIG`
--

CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `IDENTITY_PROVIDER_MAPPER`
--

CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `IDP_MAPPER_CONFIG`
--

CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `JGROUPS_PING`
--

CREATE TABLE `JGROUPS_PING` (
  `address` varchar(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cluster_name` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `coord` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `JGROUPS_PING`
--

INSERT INTO `JGROUPS_PING` (`address`, `name`, `cluster_name`, `ip`, `coord`) VALUES
('uuid://00000000-0000-0000-0000-000000000001', '(starting)', 'ISPN', '127.0.0.1:0', 0),
('uuid://00000000-0000-0000-0000-000000000002', '(starting)', 'ISPN', '127.0.0.1:0', 0),
('uuid://00000000-0000-0000-0000-000000000003', '(starting)', 'ISPN', '127.0.0.1:0', 0),
('uuid://00000000-0000-0000-0000-000000000004', '(starting)', 'ISPN', '127.0.0.1:0', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `KEYCLOAK_GROUP`
--

CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `TYPE` int NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `KEYCLOAK_ROLE`
--

CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` tinyint DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `KEYCLOAK_ROLE`
--

INSERT INTO `KEYCLOAK_ROLE` (`ID`, `CLIENT_REALM_CONSTRAINT`, `CLIENT_ROLE`, `DESCRIPTION`, `NAME`, `REALM_ID`, `CLIENT`, `REALM`) VALUES
('00f806f6-14e4-4911-ad70-bb6fc1ca7178', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_view-realm}', 'view-realm', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('0297e68a-0209-4b20-bd32-16a3cb347d49', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_view-users}', 'view-users', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('04eacd34-272b-4dd2-844e-5d0d4dd9b7fd', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_manage-realm}', 'manage-realm', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('0bbcdd27-5ea3-496b-8028-65d1d577a5f6', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 0, '${role_uma_authorization}', 'uma_authorization', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL, NULL),
('0d02816d-50d6-4e00-a551-9803d9eeb42b', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_manage-events}', 'manage-events', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('0f9ca6ca-287f-4f7d-8447-630e500cbc71', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_view-groups}', 'view-groups', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('0ff992b8-9e62-49f4-9aba-7277a241611a', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_view-users}', 'view-users', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('11fc364b-e309-4b3f-a890-0d59663b1fdd', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_query-realms}', 'query-realms', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('121419d0-e0a2-452b-a0fe-bc175ab64a8a', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_view-users}', 'view-users', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('14785fa7-2237-4659-954a-ee83d23d06dc', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_manage-account}', 'manage-account', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL),
('2545de44-0d89-4dac-943d-d63c0c6a9b56', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_manage-consent}', 'manage-consent', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('2799aeb2-62c3-4787-9990-eb552d83b058', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_manage-users}', 'manage-users', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('279e15cd-b4c0-459f-8c48-272628623437', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_manage-realm}', 'manage-realm', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('2b10152d-e75f-4b27-9ebc-ca25121ef3bc', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_manage-realm}', 'manage-realm', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('2e056f59-a3d8-4892-ba0f-09c17039e4ba', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_view-events}', 'view-events', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('2fb300ac-1220-43ee-b0af-7793339684a3', '9d7f8cce-2169-4582-8838-2c92bd29716f', 1, '${role_read-token}', 'read-token', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '9d7f8cce-2169-4582-8838-2c92bd29716f', NULL),
('3806a106-7885-48fa-9909-224844a058b8', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_query-groups}', 'query-groups', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('384c9985-c1ec-4da4-832e-f1b1159f5707', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_impersonation}', 'impersonation', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('3da225a4-1947-4227-a039-ba1f0d7d17d3', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_manage-identity-providers}', 'manage-identity-providers', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('3e936f7f-f995-4aec-8bd7-4f188e7971ff', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_manage-users}', 'manage-users', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('4212293a-043f-404c-8d0e-1e726114c2d2', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_realm-admin}', 'realm-admin', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('425482b1-8736-4fac-948a-4fe3be4fc005', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_create-client}', 'create-client', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('4a26189b-f2b0-4786-bb8e-293c463bb68b', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_view-profile}', 'view-profile', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL),
('4a55e97e-e676-4307-a684-68077e107f8f', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_query-users}', 'query-users', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('4abf68b8-792a-4ed3-a815-be85d7f95e26', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_query-groups}', 'query-groups', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('4f8d833f-df09-4e36-bd97-77b79dbfed2b', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_manage-authorization}', 'manage-authorization', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('53d1797f-0a19-4224-a317-2e57687e5b8c', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_view-applications}', 'view-applications', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('573e7a89-2a7f-44ea-8a83-25ed99b36b60', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_manage-account}', 'manage-account', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('579852f6-a7d1-4d96-9a8c-17d13c4cb872', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_view-applications}', 'view-applications', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL),
('5e11454d-c134-4c51-9242-53480adc9896', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_manage-account-links}', 'manage-account-links', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('64ca58ce-e23b-4ad4-93f0-5165d9fcbb59', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_view-identity-providers}', 'view-identity-providers', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('650dc5c0-8b2d-442f-9e1a-46f5a56a1d3f', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 0, '${role_offline-access}', 'offline_access', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL, NULL),
('6695bc06-a9f8-4446-a84e-82cb85e1818e', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_view-profile}', 'view-profile', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('72702ded-5865-4a72-adc1-4cf11bf2e22b', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_query-clients}', 'query-clients', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('7658b195-b70c-4114-9c81-4a9e15c79a21', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_manage-consent}', 'manage-consent', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL),
('7e9449a3-cb68-47eb-a70e-3fafa8fbcb62', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_view-clients}', 'view-clients', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('7e98a470-18f7-4598-9b42-27d25f665e44', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_view-realm}', 'view-realm', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('80c1533d-48a0-4539-a83f-4d417c3e7dde', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_manage-clients}', 'manage-clients', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('8101eeb4-c726-4698-a080-2a08347ea3b4', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 0, '${role_offline-access}', 'offline_access', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL, NULL),
('81c90bbb-767d-40d5-a324-761d321d19d8', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_view-authorization}', 'view-authorization', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('84d8e847-69c7-4d50-9c5a-99c5869b4370', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_view-events}', 'view-events', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('87556449-3c08-4ba9-9e51-c27f3a7af13a', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_view-realm}', 'view-realm', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('88a4d487-93fa-4259-a649-839f2780c6c8', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_query-realms}', 'query-realms', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('8aaa12cf-11a0-4d82-9469-58da433501bd', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_delete-account}', 'delete-account', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('8d4a0535-a491-4d74-9bae-19f49d06098d', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_view-groups}', 'view-groups', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL),
('95655e13-be6d-4e89-a1de-27f3f8f305d6', '936a0ce8-b6ad-452a-8a46-19e200278466', 1, '${role_view-consent}', 'view-consent', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '936a0ce8-b6ad-452a-8a46-19e200278466', NULL),
('984e578c-a51d-4dc1-9396-d7d98ab5f3b0', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_manage-identity-providers}', 'manage-identity-providers', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('98605f61-f850-46fa-b854-a0349bd309dd', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_manage-clients}', 'manage-clients', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('998cea38-57df-46c8-9376-5c9c07320d46', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_view-clients}', 'view-clients', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('9d22ae3f-706c-4159-97f5-a5118412fa6e', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_create-client}', 'create-client', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('a11f0ab8-0c22-475a-aece-127a7e59ca39', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_create-client}', 'create-client', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('a1c8293e-8946-433a-8d05-d6a6294bdb39', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_view-authorization}', 'view-authorization', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('a8990200-6b3e-4a9a-95bf-6e9cb8a9e145', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_query-groups}', 'query-groups', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('ab1a7e3a-4fd1-4eec-adab-520f581be949', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_impersonation}', 'impersonation', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('ad1da4f2-5086-48e1-83c5-f8eb1e6759b5', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_manage-authorization}', 'manage-authorization', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('b0538354-af7c-432a-88f2-478769e96bb6', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_query-users}', 'query-users', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('b2ee06ab-6b6e-42d6-aacb-86de56d90b84', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_manage-clients}', 'manage-clients', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('b384188e-c4ca-4a86-b275-3cba7472ed68', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_manage-events}', 'manage-events', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('b775def7-7ee4-40d1-b644-47d25e66d710', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_manage-authorization}', 'manage-authorization', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('bc672aa5-9a43-4ca8-821e-ae82b8f163e0', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_manage-identity-providers}', 'manage-identity-providers', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('bd8a1098-2488-48bc-9d6c-32f892e4bd90', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_view-authorization}', 'view-authorization', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('bf9b698f-10a2-4be2-8b53-92b4b5d85808', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_view-events}', 'view-events', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('c5a1ef84-e22f-40ac-9338-7a599573a100', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_view-identity-providers}', 'view-identity-providers', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('cce43746-d9a9-49fe-a713-91203fd84896', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_impersonation}', 'impersonation', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('cd738363-c948-4e90-843a-3a6fa3e37242', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_query-realms}', 'query-realms', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('ce25f5e0-c0c0-49aa-ae8a-2856ee2594ed', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 0, '${role_default-roles}', 'default-roles-master', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL, NULL),
('cfeaded6-376d-4e7e-a17e-773f0af0a53a', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_query-clients}', 'query-clients', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('d345f6f0-aaf5-4bda-8e8c-9f2dc95d7840', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_manage-users}', 'manage-users', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('d7f369f0-47d2-42d5-b2b9-f99a86d339e9', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_query-clients}', 'query-clients', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('db27ec55-4d4c-4780-9969-a1f334aa5014', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_view-identity-providers}', 'view-identity-providers', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('dc53a6b0-fc1d-4a86-95ce-f4be55bc5a5e', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 0, '${role_uma_authorization}', 'uma_authorization', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL, NULL),
('ddac30a9-9ce5-43bc-81e8-9311e514fdd1', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 0, '${role_default-roles}', 'default-roles-reprod', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', NULL, NULL),
('deda3f9c-1607-4fbe-b644-81f6daf1ec92', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 0, '${role_create-realm}', 'create-realm', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL, NULL),
('e3bfde5d-68f5-4398-b2e8-0059873fb085', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_delete-account}', 'delete-account', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL),
('e64d9b5a-d83f-452e-a6db-d5c98ec957ef', 'f894b01f-6f91-4628-b000-5047460d29ec', 1, '${role_query-users}', 'query-users', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'f894b01f-6f91-4628-b000-5047460d29ec', NULL),
('e7d10fd4-a633-42b9-8760-2abcbc308307', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1, '${role_manage-events}', 'manage-events', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '44ccf4ba-eae7-4c73-a00f-a314cf41025b', NULL),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 0, '${role_admin}', 'admin', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', NULL, NULL),
('f4531285-06ac-4a71-88b2-323e528b6cfb', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1, '${role_view-clients}', 'view-clients', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', NULL),
('f8509240-1767-49b0-9e2d-ae790de0bbfc', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_manage-account-links}', 'manage-account-links', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL),
('feb8d08d-1f42-4616-9dc4-f84941d07542', '24dcf130-2b8b-47fd-b725-dbf54f657c2b', 1, '${role_read-token}', 'read-token', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '24dcf130-2b8b-47fd-b725-dbf54f657c2b', NULL),
('ffdfaedf-21a7-4e08-903a-1d3185fc788c', '07a28f28-217f-4e49-ac1b-989700206824', 1, '${role_view-consent}', 'view-consent', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '07a28f28-217f-4e49-ac1b-989700206824', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `MIGRATION_MODEL`
--

CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `MIGRATION_MODEL`
--

INSERT INTO `MIGRATION_MODEL` (`ID`, `VERSION`, `UPDATE_TIME`) VALUES
('5if0w', '26.3.3', 1757317496);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `OFFLINE_CLIENT_SESSION`
--

CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `DATA` longtext,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  `VERSION` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `OFFLINE_CLIENT_SESSION`
--

INSERT INTO `OFFLINE_CLIENT_SESSION` (`USER_SESSION_ID`, `CLIENT_ID`, `OFFLINE_FLAG`, `TIMESTAMP`, `DATA`, `CLIENT_STORAGE_PROVIDER`, `EXTERNAL_CLIENT_ID`, `VERSION`) VALUES
('24ec66a9-fefb-434c-b137-bd8aacc1668a', '91634577-a724-4e2a-95c0-3215d3351862', '0', 1757318210, '{\"authMethod\":\"openid-connect\",\"redirectUri\":\"http://localhost:8091/auth/admin/master/console/\",\"notes\":{\"clientId\":\"91634577-a724-4e2a-95c0-3215d3351862\",\"iss\":\"http://localhost:8091/auth/realms/master\",\"startedAt\":\"1757317677\",\"response_type\":\"code\",\"level-of-authentication\":\"-1\",\"code_challenge_method\":\"S256\",\"nonce\":\"78cdec70-aa89-4897-9719-6d6b5b7d0de0\",\"response_mode\":\"query\",\"scope\":\"openid\",\"userSessionStartedAt\":\"1757317677\",\"redirect_uri\":\"http://localhost:8091/auth/admin/master/console/\",\"state\":\"8cb79a17-1e10-4cf7-8f46-a800139cb2c5\",\"code_challenge\":\"hXRsllf_DbuDNq97cTAa2MZiOeOsNZa1opqEtRIVk_Y\",\"prompt\":\"none\",\"SSO_AUTH\":\"true\"}}', 'local', 'local', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `OFFLINE_USER_SESSION`
--

CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext,
  `LAST_SESSION_REFRESH` int NOT NULL DEFAULT '0',
  `BROKER_SESSION_ID` text,
  `VERSION` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `OFFLINE_USER_SESSION`
--

INSERT INTO `OFFLINE_USER_SESSION` (`USER_SESSION_ID`, `USER_ID`, `REALM_ID`, `CREATED_ON`, `OFFLINE_FLAG`, `DATA`, `LAST_SESSION_REFRESH`, `BROKER_SESSION_ID`, `VERSION`) VALUES
('24ec66a9-fefb-434c-b137-bd8aacc1668a', '72a74b26-55ed-4df0-bb9c-f243db513378', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1757317677, '0', '{\"ipAddress\":\"172.27.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjcuMC4xIiwib3MiOiJMaW51eCIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiQ2hyb21lLzEzMS4wLjAiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"AUTH_TIME\":\"1757317677\",\"authenticators-completed\":\"{\\\"3523e549-6a8e-4055-bb07-fc25589b3942\\\":1757317677,\\\"d81ace9f-057d-448f-9bfb-0e875a859a19\\\":1757318123}\"},\"state\":\"LOGGED_IN\"}', 1757318210, NULL, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ORG`
--

CREATE TABLE `ORG` (
  `ID` varchar(255) NOT NULL,
  `ENABLED` tinyint NOT NULL,
  `REALM_ID` varchar(255) NOT NULL,
  `GROUP_ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text,
  `ALIAS` varchar(255) NOT NULL,
  `REDIRECT_URL` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ORG_DOMAIN`
--

CREATE TABLE `ORG_DOMAIN` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VERIFIED` tinyint NOT NULL,
  `ORG_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `POLICY_CONFIG`
--

CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PROTOCOL_MAPPER`
--

CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PROTOCOL_MAPPER`
--

INSERT INTO `PROTOCOL_MAPPER` (`ID`, `NAME`, `PROTOCOL`, `PROTOCOL_MAPPER_NAME`, `CLIENT_ID`, `CLIENT_SCOPE_ID`) VALUES
('02b13905-5899-4d73-80d7-92ac2f809cb1', 'Client ID', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, '9bc97bf8-96ed-4702-8da1-7c78a56b1660'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'family name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('07697a20-c4c8-46df-b80c-8e29a167d902', 'organization', 'saml', 'saml-organization-membership-mapper', NULL, 'c6951231-1384-4f95-a260-7f1b92700e89'),
('0a3bbdda-bb33-4563-9f06-8ae747d3048c', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '62ba4eca-a280-44b3-98d4-78d16ec89c40', NULL),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'username', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'given name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('114196de-5471-4bc7-9cd0-374cbe3545bd', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, 'd639f562-e76a-4380-b1fc-2d8092b916c8'),
('11f4050c-ec30-477a-92c2-e92ca9ab657e', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1'),
('13182a07-26c8-4572-b631-65deca426df1', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'username', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('1d1f8c11-f4c7-421c-9fa5-261d1f696241', 'Client Host', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, 'a96fa74a-2ce2-4590-9325-b94b0489c345'),
('1db77ac0-1d5d-4bd7-b611-a10045f9cfbb', 'sub', 'openid-connect', 'oidc-sub-mapper', NULL, '0524d6a6-c391-4fc1-9101-af1177b1f7eb'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', 'cdea269b-d0e3-4500-8305-5c7c56171557', NULL),
('24c35b37-3910-46e5-b59b-383992ce3666', 'role list', 'saml', 'saml-role-list-mapper', NULL, '81d6a408-6a12-4498-b3bb-4fbb743fa4a0'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'email', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ecf2988e-6645-4970-bdea-40526841428b'),
('3ce8c503-3df3-4825-87e2-753f1a7795d9', 'auth_time', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, '27e22cb4-2c09-45c1-9c86-c3ae373b3223'),
('475c4bfd-63fb-4936-b024-d880a06665e2', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '1133d69a-7b8c-4aca-9f96-c3a2432122f5'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'upn', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '0eafbe54-8153-4304-a442-8f1461b3f88a'),
('4b2bf51a-655e-4bf3-8c38-62007b4eb40c', 'Client Host', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, '9bc97bf8-96ed-4702-8da1-7c78a56b1660'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5fd24069-3e56-4c18-a6ee-08656f6af405'),
('58408b92-6728-4617-9da7-809adf1fb204', 'organization', 'saml', 'saml-organization-membership-mapper', NULL, '5bd6e246-5da6-49bc-b12f-c3e056ab1482'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'address', 'openid-connect', 'oidc-address-mapper', NULL, '4e3291bf-175b-4a50-8b1d-d7265feae9eb'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'family name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('69631c30-0dd3-4773-843e-22dc169f71e3', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', 'ae332425-4ddb-402e-9ee8-120d9ebc27ef', NULL),
('70a733f6-cd25-4f60-aaa6-a0eefbb8b38d', 'sub', 'openid-connect', 'oidc-sub-mapper', NULL, '27e22cb4-2c09-45c1-9c86-c3ae373b3223'),
('754a92c2-ce28-4284-b10f-55470ec57516', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '9a6e15d9-ee93-4aee-be3e-890fd963e05a'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('76cdbc7f-ddfb-420e-8967-b8c5e1332c9e', 'acr loa level', 'openid-connect', 'oidc-acr-mapper', NULL, '15cfdfe3-a957-4393-931e-201deb91408e'),
('79a2e88a-df32-496a-9bfa-034819668309', 'Client IP Address', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, '9bc97bf8-96ed-4702-8da1-7c78a56b1660'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'given name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('7fceb8ef-dbbe-4241-b64e-2105c4bd2e9a', 'role list', 'saml', 'saml-role-list-mapper', NULL, '3904ad83-6ace-4a7b-bed3-f66d3f8c6d64'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'email', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '54af9da3-7b68-4056-aadb-3aa45a54fd26'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('89f7e734-918b-472c-bdaa-34e52d4b157a', 'auth_time', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, '0524d6a6-c391-4fc1-9101-af1177b1f7eb'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('99f6780d-ec02-4c86-b26c-6b1a5531f99a', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'd639f562-e76a-4380-b1fc-2d8092b916c8'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '0eafbe54-8153-4304-a442-8f1461b3f88a'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '54af9da3-7b68-4056-aadb-3aa45a54fd26'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5fd24069-3e56-4c18-a6ee-08656f6af405'),
('b3a9a2e4-873f-426c-a50c-15ba1158ad11', 'Client IP Address', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, 'a96fa74a-2ce2-4590-9325-b94b0489c345'),
('b71158e1-8978-40fd-aad3-1f78502bf148', 'organization', 'openid-connect', 'oidc-organization-membership-mapper', NULL, '07eed171-5910-44b7-9106-455c1a6b3e81'),
('b78d1374-f631-4b0f-8e34-a27367dc60ec', 'organization', 'openid-connect', 'oidc-organization-membership-mapper', NULL, '10c5a06e-cf8a-417d-bcdd-f0788897c4c1'),
('b8675e61-df97-42e6-95e8-5d2af0b7eda7', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('bb782cb5-5c71-4558-bafb-b6f52138fc6a', 'Client ID', 'openid-connect', 'oidc-usersessionmodel-note-mapper', NULL, 'a96fa74a-2ce2-4590-9325-b94b0489c345'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('c2ee2fdf-694a-4745-93e2-9e4486a969aa', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, 'd639f562-e76a-4380-b1fc-2d8092b916c8'),
('c8f2a0a3-4ae4-4dd2-886d-97679fd574e8', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'fd5f9bed-3bdd-4ce1-a423-9115fe7ff8d1'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'address', 'openid-connect', 'oidc-address-mapper', NULL, '4fe8e8cf-aa2e-4163-ba38-c35cb95dfe2d'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd3647900-0e8b-4f1f-bfd6-a8eced5aeb8f'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '91634577-a724-4e2a-95c0-3215d3351862', NULL),
('f028da57-e968-454a-b4b7-39b798d25f15', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'ecf2988e-6645-4970-bdea-40526841428b'),
('f2cd0544-8b4b-43c8-9811-2c7824801671', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '8215a42a-b2a4-4a37-ae20-500fc9a4038a'),
('f694e859-6b32-4729-b060-411f3670c954', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c1086db3-b549-4e51-beb5-38fde43df83e'),
('f8084584-c31c-42d6-a794-85fedfb07e69', 'acr loa level', 'openid-connect', 'oidc-acr-mapper', NULL, '3004c29e-d98e-45d1-b6b1-f17f7af6cd61'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'upn', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'c037a65e-8dc9-4d77-9152-4a2d3c22f2de');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PROTOCOL_MAPPER_CONFIG`
--

CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PROTOCOL_MAPPER_CONFIG`
--

INSERT INTO `PROTOCOL_MAPPER_CONFIG` (`PROTOCOL_MAPPER_ID`, `VALUE`, `NAME`) VALUES
('02b13905-5899-4d73-80d7-92ac2f809cb1', 'true', 'access.token.claim'),
('02b13905-5899-4d73-80d7-92ac2f809cb1', 'client_id', 'claim.name'),
('02b13905-5899-4d73-80d7-92ac2f809cb1', 'true', 'id.token.claim'),
('02b13905-5899-4d73-80d7-92ac2f809cb1', 'true', 'introspection.token.claim'),
('02b13905-5899-4d73-80d7-92ac2f809cb1', 'String', 'jsonType.label'),
('02b13905-5899-4d73-80d7-92ac2f809cb1', 'client_id', 'user.session.note'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'true', 'access.token.claim'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'locale', 'claim.name'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'true', 'id.token.claim'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'true', 'introspection.token.claim'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'String', 'jsonType.label'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'locale', 'user.attribute'),
('048a2cc0-f0d8-40bd-9af5-c0b50e192e67', 'true', 'userinfo.token.claim'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'true', 'access.token.claim'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'family_name', 'claim.name'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'true', 'id.token.claim'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'true', 'introspection.token.claim'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'String', 'jsonType.label'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'lastName', 'user.attribute'),
('05cab335-58ff-425e-9e33-4fe9126c2be8', 'true', 'userinfo.token.claim'),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'true', 'access.token.claim'),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'preferred_username', 'claim.name'),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'true', 'id.token.claim'),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'true', 'introspection.token.claim'),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'String', 'jsonType.label'),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'username', 'user.attribute'),
('0b6d43d0-2be4-45cb-83ba-2108112ecc8d', 'true', 'userinfo.token.claim'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'true', 'access.token.claim'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'groups', 'claim.name'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'true', 'id.token.claim'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'true', 'introspection.token.claim'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'String', 'jsonType.label'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'true', 'multivalued'),
('0b7fe8d2-4a32-40f3-882b-9cb3f056b20f', 'foo', 'user.attribute'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'true', 'access.token.claim'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'given_name', 'claim.name'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'true', 'id.token.claim'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'true', 'introspection.token.claim'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'String', 'jsonType.label'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'firstName', 'user.attribute'),
('1019296a-d948-4f94-a2da-611ae477d69d', 'true', 'userinfo.token.claim'),
('114196de-5471-4bc7-9cd0-374cbe3545bd', 'true', 'access.token.claim'),
('114196de-5471-4bc7-9cd0-374cbe3545bd', 'resource_access.${client_id}.roles', 'claim.name'),
('114196de-5471-4bc7-9cd0-374cbe3545bd', 'true', 'introspection.token.claim'),
('114196de-5471-4bc7-9cd0-374cbe3545bd', 'String', 'jsonType.label'),
('114196de-5471-4bc7-9cd0-374cbe3545bd', 'true', 'multivalued'),
('114196de-5471-4bc7-9cd0-374cbe3545bd', 'foo', 'user.attribute'),
('11f4050c-ec30-477a-92c2-e92ca9ab657e', 'true', 'access.token.claim'),
('11f4050c-ec30-477a-92c2-e92ca9ab657e', 'resource_access.${client_id}.roles', 'claim.name'),
('11f4050c-ec30-477a-92c2-e92ca9ab657e', 'true', 'introspection.token.claim'),
('11f4050c-ec30-477a-92c2-e92ca9ab657e', 'String', 'jsonType.label'),
('11f4050c-ec30-477a-92c2-e92ca9ab657e', 'true', 'multivalued'),
('11f4050c-ec30-477a-92c2-e92ca9ab657e', 'foo', 'user.attribute'),
('13182a07-26c8-4572-b631-65deca426df1', 'true', 'access.token.claim'),
('13182a07-26c8-4572-b631-65deca426df1', 'true', 'introspection.token.claim'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'true', 'access.token.claim'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'preferred_username', 'claim.name'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'true', 'id.token.claim'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'true', 'introspection.token.claim'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'String', 'jsonType.label'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'username', 'user.attribute'),
('191cbfde-57b7-4480-b91f-ac080eb7022b', 'true', 'userinfo.token.claim'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'true', 'access.token.claim'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'zoneinfo', 'claim.name'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'true', 'id.token.claim'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'true', 'introspection.token.claim'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'String', 'jsonType.label'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'zoneinfo', 'user.attribute'),
('1cf39dca-6058-47b1-a30d-fc0d440eb312', 'true', 'userinfo.token.claim'),
('1d1f8c11-f4c7-421c-9fa5-261d1f696241', 'true', 'access.token.claim'),
('1d1f8c11-f4c7-421c-9fa5-261d1f696241', 'clientHost', 'claim.name'),
('1d1f8c11-f4c7-421c-9fa5-261d1f696241', 'true', 'id.token.claim'),
('1d1f8c11-f4c7-421c-9fa5-261d1f696241', 'true', 'introspection.token.claim'),
('1d1f8c11-f4c7-421c-9fa5-261d1f696241', 'String', 'jsonType.label'),
('1d1f8c11-f4c7-421c-9fa5-261d1f696241', 'clientHost', 'user.session.note'),
('1db77ac0-1d5d-4bd7-b611-a10045f9cfbb', 'true', 'access.token.claim'),
('1db77ac0-1d5d-4bd7-b611-a10045f9cfbb', 'true', 'introspection.token.claim'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'true', 'access.token.claim'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'locale', 'claim.name'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'true', 'id.token.claim'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'true', 'introspection.token.claim'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'String', 'jsonType.label'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'locale', 'user.attribute'),
('1fdbe88d-c25a-4949-bf14-0d2ac18b096d', 'true', 'userinfo.token.claim'),
('24c35b37-3910-46e5-b59b-383992ce3666', 'Role', 'attribute.name'),
('24c35b37-3910-46e5-b59b-383992ce3666', 'Basic', 'attribute.nameformat'),
('24c35b37-3910-46e5-b59b-383992ce3666', 'false', 'single'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'true', 'access.token.claim'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'email', 'claim.name'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'true', 'id.token.claim'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'true', 'introspection.token.claim'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'String', 'jsonType.label'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'email', 'user.attribute'),
('33b0e6fc-36be-4a78-95ea-098450b04548', 'true', 'userinfo.token.claim'),
('3ce8c503-3df3-4825-87e2-753f1a7795d9', 'true', 'access.token.claim'),
('3ce8c503-3df3-4825-87e2-753f1a7795d9', 'auth_time', 'claim.name'),
('3ce8c503-3df3-4825-87e2-753f1a7795d9', 'true', 'id.token.claim'),
('3ce8c503-3df3-4825-87e2-753f1a7795d9', 'true', 'introspection.token.claim'),
('3ce8c503-3df3-4825-87e2-753f1a7795d9', 'long', 'jsonType.label'),
('3ce8c503-3df3-4825-87e2-753f1a7795d9', 'AUTH_TIME', 'user.session.note'),
('475c4bfd-63fb-4936-b024-d880a06665e2', 'true', 'access.token.claim'),
('475c4bfd-63fb-4936-b024-d880a06665e2', 'true', 'introspection.token.claim'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'true', 'access.token.claim'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'upn', 'claim.name'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'true', 'id.token.claim'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'true', 'introspection.token.claim'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'String', 'jsonType.label'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'username', 'user.attribute'),
('49acd5ee-552c-4368-810a-9fd6848108d4', 'true', 'userinfo.token.claim'),
('4b2bf51a-655e-4bf3-8c38-62007b4eb40c', 'true', 'access.token.claim'),
('4b2bf51a-655e-4bf3-8c38-62007b4eb40c', 'clientHost', 'claim.name'),
('4b2bf51a-655e-4bf3-8c38-62007b4eb40c', 'true', 'id.token.claim'),
('4b2bf51a-655e-4bf3-8c38-62007b4eb40c', 'true', 'introspection.token.claim'),
('4b2bf51a-655e-4bf3-8c38-62007b4eb40c', 'String', 'jsonType.label'),
('4b2bf51a-655e-4bf3-8c38-62007b4eb40c', 'clientHost', 'user.session.note'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'true', 'access.token.claim'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'phone_number_verified', 'claim.name'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'true', 'id.token.claim'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'true', 'introspection.token.claim'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'boolean', 'jsonType.label'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'phoneNumberVerified', 'user.attribute'),
('4dc61a5a-5b1f-4047-bb8c-b630de2ab266', 'true', 'userinfo.token.claim'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'true', 'access.token.claim'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'true', 'id.token.claim'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'true', 'introspection.token.claim'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'country', 'user.attribute.country'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'formatted', 'user.attribute.formatted'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'locality', 'user.attribute.locality'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'postal_code', 'user.attribute.postal_code'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'region', 'user.attribute.region'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'street', 'user.attribute.street'),
('5946e175-61e4-4385-85c0-5fd5ed467437', 'true', 'userinfo.token.claim'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'true', 'access.token.claim'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'phone_number_verified', 'claim.name'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'true', 'id.token.claim'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'true', 'introspection.token.claim'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'boolean', 'jsonType.label'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'phoneNumberVerified', 'user.attribute'),
('5b25b6e2-efca-4a54-ab50-dff2b1146227', 'true', 'userinfo.token.claim'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'true', 'access.token.claim'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'family_name', 'claim.name'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'true', 'id.token.claim'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'true', 'introspection.token.claim'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'String', 'jsonType.label'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'lastName', 'user.attribute'),
('65f9d099-7a34-43df-916b-f9df1bd9b99b', 'true', 'userinfo.token.claim'),
('70a733f6-cd25-4f60-aaa6-a0eefbb8b38d', 'true', 'access.token.claim'),
('70a733f6-cd25-4f60-aaa6-a0eefbb8b38d', 'true', 'introspection.token.claim'),
('754a92c2-ce28-4284-b10f-55470ec57516', 'true', 'access.token.claim'),
('754a92c2-ce28-4284-b10f-55470ec57516', 'true', 'introspection.token.claim'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'true', 'access.token.claim'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'picture', 'claim.name'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'true', 'id.token.claim'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'true', 'introspection.token.claim'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'String', 'jsonType.label'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'picture', 'user.attribute'),
('76049b5d-0c5d-44a6-8e68-8fc704ad935a', 'true', 'userinfo.token.claim'),
('76cdbc7f-ddfb-420e-8967-b8c5e1332c9e', 'true', 'access.token.claim'),
('76cdbc7f-ddfb-420e-8967-b8c5e1332c9e', 'true', 'id.token.claim'),
('76cdbc7f-ddfb-420e-8967-b8c5e1332c9e', 'true', 'introspection.token.claim'),
('79a2e88a-df32-496a-9bfa-034819668309', 'true', 'access.token.claim'),
('79a2e88a-df32-496a-9bfa-034819668309', 'clientAddress', 'claim.name'),
('79a2e88a-df32-496a-9bfa-034819668309', 'true', 'id.token.claim'),
('79a2e88a-df32-496a-9bfa-034819668309', 'true', 'introspection.token.claim'),
('79a2e88a-df32-496a-9bfa-034819668309', 'String', 'jsonType.label'),
('79a2e88a-df32-496a-9bfa-034819668309', 'clientAddress', 'user.session.note'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'true', 'access.token.claim'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'given_name', 'claim.name'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'true', 'id.token.claim'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'true', 'introspection.token.claim'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'String', 'jsonType.label'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'firstName', 'user.attribute'),
('7c6f378d-bbed-4df3-9131-bb2516780570', 'true', 'userinfo.token.claim'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'true', 'access.token.claim'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'nickname', 'claim.name'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'true', 'id.token.claim'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'true', 'introspection.token.claim'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'String', 'jsonType.label'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'nickname', 'user.attribute'),
('7d99689f-95ac-4614-a3eb-5ce2c098be53', 'true', 'userinfo.token.claim'),
('7fceb8ef-dbbe-4241-b64e-2105c4bd2e9a', 'Role', 'attribute.name'),
('7fceb8ef-dbbe-4241-b64e-2105c4bd2e9a', 'Basic', 'attribute.nameformat'),
('7fceb8ef-dbbe-4241-b64e-2105c4bd2e9a', 'false', 'single'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'true', 'access.token.claim'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'birthdate', 'claim.name'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'true', 'id.token.claim'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'true', 'introspection.token.claim'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'String', 'jsonType.label'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'birthdate', 'user.attribute'),
('8404c3cb-519d-43c7-b392-f3d6f169a54c', 'true', 'userinfo.token.claim'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'true', 'access.token.claim'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'birthdate', 'claim.name'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'true', 'id.token.claim'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'true', 'introspection.token.claim'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'String', 'jsonType.label'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'birthdate', 'user.attribute'),
('841009fb-97ef-426d-9b2b-76a7b25eb1e4', 'true', 'userinfo.token.claim'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'true', 'access.token.claim'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'picture', 'claim.name'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'true', 'id.token.claim'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'true', 'introspection.token.claim'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'String', 'jsonType.label'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'picture', 'user.attribute'),
('8530c5c9-c0bc-44fe-9b79-f45ed482ace8', 'true', 'userinfo.token.claim'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'true', 'access.token.claim'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'email', 'claim.name'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'true', 'id.token.claim'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'true', 'introspection.token.claim'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'String', 'jsonType.label'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'email', 'user.attribute'),
('872a496c-c839-46ab-bf9b-5e45be47228a', 'true', 'userinfo.token.claim'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'true', 'access.token.claim'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'middle_name', 'claim.name'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'true', 'id.token.claim'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'true', 'introspection.token.claim'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'String', 'jsonType.label'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'middleName', 'user.attribute'),
('8989d0fc-7340-4eb4-a89b-c6ce4dbda5b1', 'true', 'userinfo.token.claim'),
('89f7e734-918b-472c-bdaa-34e52d4b157a', 'true', 'access.token.claim'),
('89f7e734-918b-472c-bdaa-34e52d4b157a', 'auth_time', 'claim.name'),
('89f7e734-918b-472c-bdaa-34e52d4b157a', 'true', 'id.token.claim'),
('89f7e734-918b-472c-bdaa-34e52d4b157a', 'true', 'introspection.token.claim'),
('89f7e734-918b-472c-bdaa-34e52d4b157a', 'long', 'jsonType.label'),
('89f7e734-918b-472c-bdaa-34e52d4b157a', 'AUTH_TIME', 'user.session.note'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'true', 'access.token.claim'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'profile', 'claim.name'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'true', 'id.token.claim'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'true', 'introspection.token.claim'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'String', 'jsonType.label'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'profile', 'user.attribute'),
('8a5e1cc2-8fd5-4024-a56a-8544a1ec1c3e', 'true', 'userinfo.token.claim'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'true', 'access.token.claim'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'website', 'claim.name'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'true', 'id.token.claim'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'true', 'introspection.token.claim'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'String', 'jsonType.label'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'website', 'user.attribute'),
('8b8a4ec5-ca5b-4b57-a9c2-d06e78ea0f57', 'true', 'userinfo.token.claim'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'true', 'access.token.claim'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'zoneinfo', 'claim.name'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'true', 'id.token.claim'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'true', 'introspection.token.claim'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'String', 'jsonType.label'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'zoneinfo', 'user.attribute'),
('9252cfc8-8f57-409a-8ad6-d8cc1e3a87af', 'true', 'userinfo.token.claim'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'true', 'access.token.claim'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'middle_name', 'claim.name'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'true', 'id.token.claim'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'true', 'introspection.token.claim'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'String', 'jsonType.label'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'middleName', 'user.attribute'),
('9587077d-9a62-4a52-abe7-2c4335f5dffa', 'true', 'userinfo.token.claim'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'true', 'access.token.claim'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'website', 'claim.name'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'true', 'id.token.claim'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'true', 'introspection.token.claim'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'String', 'jsonType.label'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'website', 'user.attribute'),
('972c7645-146b-4cfb-9b9d-8e75db616f8f', 'true', 'userinfo.token.claim'),
('99f6780d-ec02-4c86-b26c-6b1a5531f99a', 'true', 'access.token.claim'),
('99f6780d-ec02-4c86-b26c-6b1a5531f99a', 'realm_access.roles', 'claim.name'),
('99f6780d-ec02-4c86-b26c-6b1a5531f99a', 'true', 'introspection.token.claim'),
('99f6780d-ec02-4c86-b26c-6b1a5531f99a', 'String', 'jsonType.label'),
('99f6780d-ec02-4c86-b26c-6b1a5531f99a', 'true', 'multivalued'),
('99f6780d-ec02-4c86-b26c-6b1a5531f99a', 'foo', 'user.attribute'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'true', 'access.token.claim'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'groups', 'claim.name'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'true', 'id.token.claim'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'true', 'introspection.token.claim'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'String', 'jsonType.label'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'true', 'multivalued'),
('a946f7f7-b6c1-4f6a-a70e-fa64d88e5ee7', 'foo', 'user.attribute'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'true', 'access.token.claim'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'email_verified', 'claim.name'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'true', 'id.token.claim'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'true', 'introspection.token.claim'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'boolean', 'jsonType.label'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'emailVerified', 'user.attribute'),
('af93b50c-829d-4a40-a021-16ebb986e7f6', 'true', 'userinfo.token.claim'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'true', 'access.token.claim'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'phone_number', 'claim.name'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'true', 'id.token.claim'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'true', 'introspection.token.claim'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'String', 'jsonType.label'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'phoneNumber', 'user.attribute'),
('b3606081-71f8-42f2-92d8-6e0eab216fd4', 'true', 'userinfo.token.claim'),
('b3a9a2e4-873f-426c-a50c-15ba1158ad11', 'true', 'access.token.claim'),
('b3a9a2e4-873f-426c-a50c-15ba1158ad11', 'clientAddress', 'claim.name'),
('b3a9a2e4-873f-426c-a50c-15ba1158ad11', 'true', 'id.token.claim'),
('b3a9a2e4-873f-426c-a50c-15ba1158ad11', 'true', 'introspection.token.claim'),
('b3a9a2e4-873f-426c-a50c-15ba1158ad11', 'String', 'jsonType.label'),
('b3a9a2e4-873f-426c-a50c-15ba1158ad11', 'clientAddress', 'user.session.note'),
('b71158e1-8978-40fd-aad3-1f78502bf148', 'true', 'access.token.claim'),
('b71158e1-8978-40fd-aad3-1f78502bf148', 'organization', 'claim.name'),
('b71158e1-8978-40fd-aad3-1f78502bf148', 'true', 'id.token.claim'),
('b71158e1-8978-40fd-aad3-1f78502bf148', 'true', 'introspection.token.claim'),
('b71158e1-8978-40fd-aad3-1f78502bf148', 'String', 'jsonType.label'),
('b71158e1-8978-40fd-aad3-1f78502bf148', 'true', 'multivalued'),
('b78d1374-f631-4b0f-8e34-a27367dc60ec', 'true', 'access.token.claim'),
('b78d1374-f631-4b0f-8e34-a27367dc60ec', 'organization', 'claim.name'),
('b78d1374-f631-4b0f-8e34-a27367dc60ec', 'true', 'id.token.claim'),
('b78d1374-f631-4b0f-8e34-a27367dc60ec', 'true', 'introspection.token.claim'),
('b78d1374-f631-4b0f-8e34-a27367dc60ec', 'String', 'jsonType.label'),
('b78d1374-f631-4b0f-8e34-a27367dc60ec', 'true', 'multivalued'),
('b8675e61-df97-42e6-95e8-5d2af0b7eda7', 'true', 'access.token.claim'),
('b8675e61-df97-42e6-95e8-5d2af0b7eda7', 'true', 'id.token.claim'),
('b8675e61-df97-42e6-95e8-5d2af0b7eda7', 'true', 'introspection.token.claim'),
('b8675e61-df97-42e6-95e8-5d2af0b7eda7', 'true', 'userinfo.token.claim'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'true', 'access.token.claim'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'gender', 'claim.name'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'true', 'id.token.claim'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'true', 'introspection.token.claim'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'String', 'jsonType.label'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'gender', 'user.attribute'),
('b8afa960-fcfe-446f-ad82-d9587591515f', 'true', 'userinfo.token.claim'),
('bb782cb5-5c71-4558-bafb-b6f52138fc6a', 'true', 'access.token.claim'),
('bb782cb5-5c71-4558-bafb-b6f52138fc6a', 'client_id', 'claim.name'),
('bb782cb5-5c71-4558-bafb-b6f52138fc6a', 'true', 'id.token.claim'),
('bb782cb5-5c71-4558-bafb-b6f52138fc6a', 'true', 'introspection.token.claim'),
('bb782cb5-5c71-4558-bafb-b6f52138fc6a', 'String', 'jsonType.label'),
('bb782cb5-5c71-4558-bafb-b6f52138fc6a', 'client_id', 'user.session.note'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'true', 'access.token.claim'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'locale', 'claim.name'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'true', 'id.token.claim'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'true', 'introspection.token.claim'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'String', 'jsonType.label'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'locale', 'user.attribute'),
('c2882185-0226-4e8e-a006-c1b0d6579b3b', 'true', 'userinfo.token.claim'),
('c2ee2fdf-694a-4745-93e2-9e4486a969aa', 'true', 'access.token.claim'),
('c2ee2fdf-694a-4745-93e2-9e4486a969aa', 'true', 'introspection.token.claim'),
('c8f2a0a3-4ae4-4dd2-886d-97679fd574e8', 'true', 'access.token.claim'),
('c8f2a0a3-4ae4-4dd2-886d-97679fd574e8', 'realm_access.roles', 'claim.name'),
('c8f2a0a3-4ae4-4dd2-886d-97679fd574e8', 'true', 'introspection.token.claim'),
('c8f2a0a3-4ae4-4dd2-886d-97679fd574e8', 'String', 'jsonType.label'),
('c8f2a0a3-4ae4-4dd2-886d-97679fd574e8', 'true', 'multivalued'),
('c8f2a0a3-4ae4-4dd2-886d-97679fd574e8', 'foo', 'user.attribute'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'true', 'access.token.claim'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'true', 'id.token.claim'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'true', 'introspection.token.claim'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'country', 'user.attribute.country'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'formatted', 'user.attribute.formatted'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'locality', 'user.attribute.locality'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'postal_code', 'user.attribute.postal_code'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'region', 'user.attribute.region'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'street', 'user.attribute.street'),
('cb2a009f-df2e-48e0-a6c2-0a4e516ae70c', 'true', 'userinfo.token.claim'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'true', 'access.token.claim'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'gender', 'claim.name'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'true', 'id.token.claim'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'true', 'introspection.token.claim'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'String', 'jsonType.label'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'gender', 'user.attribute'),
('cdac3e6f-b2d7-4f9c-858b-0e640a116405', 'true', 'userinfo.token.claim'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'true', 'access.token.claim'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'updated_at', 'claim.name'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'true', 'id.token.claim'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'true', 'introspection.token.claim'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'long', 'jsonType.label'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'updatedAt', 'user.attribute'),
('cfb81a9b-dc8c-426f-ab1a-b88d0bd9dec3', 'true', 'userinfo.token.claim'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'true', 'access.token.claim'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'phone_number', 'claim.name'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'true', 'id.token.claim'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'true', 'introspection.token.claim'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'String', 'jsonType.label'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'phoneNumber', 'user.attribute'),
('d3ec3c0f-48c4-4848-93e5-48eb3f2d5792', 'true', 'userinfo.token.claim'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'true', 'access.token.claim'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'updated_at', 'claim.name'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'true', 'id.token.claim'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'true', 'introspection.token.claim'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'long', 'jsonType.label'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'updatedAt', 'user.attribute'),
('e0465244-4d3e-4f3a-997e-00a82f0e36d9', 'true', 'userinfo.token.claim'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'true', 'access.token.claim'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'nickname', 'claim.name'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'true', 'id.token.claim'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'true', 'introspection.token.claim'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'String', 'jsonType.label'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'nickname', 'user.attribute'),
('ee5be3d3-410e-41a6-8d1d-3f05cbf61bf6', 'true', 'userinfo.token.claim'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'true', 'access.token.claim'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'locale', 'claim.name'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'true', 'id.token.claim'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'true', 'introspection.token.claim'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'String', 'jsonType.label'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'locale', 'user.attribute'),
('ef4b6cd9-62b7-43db-844a-f2fbaee977d1', 'true', 'userinfo.token.claim'),
('f028da57-e968-454a-b4b7-39b798d25f15', 'true', 'access.token.claim'),
('f028da57-e968-454a-b4b7-39b798d25f15', 'email_verified', 'claim.name'),
('f028da57-e968-454a-b4b7-39b798d25f15', 'true', 'id.token.claim'),
('f028da57-e968-454a-b4b7-39b798d25f15', 'true', 'introspection.token.claim'),
('f028da57-e968-454a-b4b7-39b798d25f15', 'boolean', 'jsonType.label'),
('f028da57-e968-454a-b4b7-39b798d25f15', 'emailVerified', 'user.attribute'),
('f028da57-e968-454a-b4b7-39b798d25f15', 'true', 'userinfo.token.claim'),
('f2cd0544-8b4b-43c8-9811-2c7824801671', 'true', 'access.token.claim'),
('f2cd0544-8b4b-43c8-9811-2c7824801671', 'true', 'id.token.claim'),
('f2cd0544-8b4b-43c8-9811-2c7824801671', 'true', 'introspection.token.claim'),
('f2cd0544-8b4b-43c8-9811-2c7824801671', 'true', 'userinfo.token.claim'),
('f694e859-6b32-4729-b060-411f3670c954', 'true', 'access.token.claim'),
('f694e859-6b32-4729-b060-411f3670c954', 'profile', 'claim.name'),
('f694e859-6b32-4729-b060-411f3670c954', 'true', 'id.token.claim'),
('f694e859-6b32-4729-b060-411f3670c954', 'true', 'introspection.token.claim'),
('f694e859-6b32-4729-b060-411f3670c954', 'String', 'jsonType.label'),
('f694e859-6b32-4729-b060-411f3670c954', 'profile', 'user.attribute'),
('f694e859-6b32-4729-b060-411f3670c954', 'true', 'userinfo.token.claim'),
('f8084584-c31c-42d6-a794-85fedfb07e69', 'true', 'access.token.claim'),
('f8084584-c31c-42d6-a794-85fedfb07e69', 'true', 'id.token.claim'),
('f8084584-c31c-42d6-a794-85fedfb07e69', 'true', 'introspection.token.claim'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'true', 'access.token.claim'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'upn', 'claim.name'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'true', 'id.token.claim'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'true', 'introspection.token.claim'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'String', 'jsonType.label'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'username', 'user.attribute'),
('ffbbb84a-8071-4b29-93bf-3d75523029d8', 'true', 'userinfo.token.claim');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM`
--

CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` tinyint NOT NULL DEFAULT '0',
  `EVENTS_ENABLED` tinyint NOT NULL DEFAULT '0',
  `EVENTS_EXPIRATION` bigint DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int DEFAULT NULL,
  `PASSWORD_POLICY` text,
  `REGISTRATION_ALLOWED` tinyint NOT NULL DEFAULT '0',
  `REMEMBER_ME` tinyint NOT NULL DEFAULT '0',
  `RESET_PASSWORD_ALLOWED` tinyint NOT NULL DEFAULT '0',
  `SOCIAL` tinyint NOT NULL DEFAULT '0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` tinyint NOT NULL DEFAULT '0',
  `VERIFY_EMAIL` tinyint NOT NULL DEFAULT '0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` tinyint NOT NULL DEFAULT '0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` tinyint NOT NULL DEFAULT '0',
  `ADMIN_EVENTS_ENABLED` tinyint NOT NULL DEFAULT '0',
  `ADMIN_EVENTS_DETAILS_ENABLED` tinyint NOT NULL DEFAULT '0',
  `EDIT_USERNAME_ALLOWED` tinyint NOT NULL DEFAULT '0',
  `OTP_POLICY_COUNTER` int DEFAULT '0',
  `OTP_POLICY_WINDOW` int DEFAULT '1',
  `OTP_POLICY_PERIOD` int DEFAULT '30',
  `OTP_POLICY_DIGITS` int DEFAULT '6',
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int DEFAULT '0',
  `REVOKE_REFRESH_TOKEN` tinyint NOT NULL DEFAULT '0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int DEFAULT '0',
  `LOGIN_WITH_EMAIL_ALLOWED` tinyint NOT NULL DEFAULT '1',
  `DUPLICATE_EMAILS_ALLOWED` tinyint NOT NULL DEFAULT '0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int DEFAULT '0',
  `ALLOW_USER_MANAGED_ACCESS` tinyint NOT NULL DEFAULT '0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `REALM`
--

INSERT INTO `REALM` (`ID`, `ACCESS_CODE_LIFESPAN`, `USER_ACTION_LIFESPAN`, `ACCESS_TOKEN_LIFESPAN`, `ACCOUNT_THEME`, `ADMIN_THEME`, `EMAIL_THEME`, `ENABLED`, `EVENTS_ENABLED`, `EVENTS_EXPIRATION`, `LOGIN_THEME`, `NAME`, `NOT_BEFORE`, `PASSWORD_POLICY`, `REGISTRATION_ALLOWED`, `REMEMBER_ME`, `RESET_PASSWORD_ALLOWED`, `SOCIAL`, `SSL_REQUIRED`, `SSO_IDLE_TIMEOUT`, `SSO_MAX_LIFESPAN`, `UPDATE_PROFILE_ON_SOC_LOGIN`, `VERIFY_EMAIL`, `MASTER_ADMIN_CLIENT`, `LOGIN_LIFESPAN`, `INTERNATIONALIZATION_ENABLED`, `DEFAULT_LOCALE`, `REG_EMAIL_AS_USERNAME`, `ADMIN_EVENTS_ENABLED`, `ADMIN_EVENTS_DETAILS_ENABLED`, `EDIT_USERNAME_ALLOWED`, `OTP_POLICY_COUNTER`, `OTP_POLICY_WINDOW`, `OTP_POLICY_PERIOD`, `OTP_POLICY_DIGITS`, `OTP_POLICY_ALG`, `OTP_POLICY_TYPE`, `BROWSER_FLOW`, `REGISTRATION_FLOW`, `DIRECT_GRANT_FLOW`, `RESET_CREDENTIALS_FLOW`, `CLIENT_AUTH_FLOW`, `OFFLINE_SESSION_IDLE_TIMEOUT`, `REVOKE_REFRESH_TOKEN`, `ACCESS_TOKEN_LIFE_IMPLICIT`, `LOGIN_WITH_EMAIL_ALLOWED`, `DUPLICATE_EMAILS_ALLOWED`, `DOCKER_AUTH_FLOW`, `REFRESH_TOKEN_MAX_REUSE`, `ALLOW_USER_MANAGED_ACCESS`, `SSO_MAX_LIFESPAN_REMEMBER_ME`, `SSO_IDLE_TIMEOUT_REMEMBER_ME`, `DEFAULT_ROLE`) VALUES
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 60, 300, 300, NULL, NULL, NULL, 1, 0, 0, NULL, 'reprod', 0, NULL, 0, 0, 0, 0, 'EXTERNAL', 1800, 36000, 0, 0, '96f5f42a-6f9b-4c5e-8eb0-2c2e0bfacbcb', 1800, 0, NULL, 0, 0, 0, 0, 0, 1, 30, 6, 'HmacSHA1', 'totp', '1f3ee0af-13d8-4dfc-b8f7-78500b1471b7', '041a35e4-040c-419a-8fac-3b61bc0b524e', '68eb1497-11b3-40f4-93e3-d03836a6a907', '8744efd3-367f-42ea-9219-44b5e0f113d2', '90181ae8-62f2-428a-ab3e-0470cc5379b0', 2592000, 0, 900, 1, 0, '32cce03f-a2b3-4021-bd92-1fcc87921fd6', 0, 0, 0, 0, 'ddac30a9-9ce5-43bc-81e8-9311e514fdd1'),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 60, 300, 60, NULL, NULL, NULL, 1, 0, 0, NULL, 'master', 0, NULL, 0, 0, 0, 0, 'EXTERNAL', 1800, 36000, 0, 0, '44ccf4ba-eae7-4c73-a00f-a314cf41025b', 1800, 0, NULL, 0, 0, 0, 0, 0, 1, 30, 6, 'HmacSHA1', 'totp', 'cef27739-2dad-4a00-bf39-4e044f3a3481', '031bcdd3-806f-4278-a0af-afefc466f7f4', '6a72f575-fc49-4e00-9063-f636f59b34e2', '1a704690-6140-4169-9774-9a0b31fd1f5d', '84d0a8bd-66ba-4fd8-b480-dab2278d10bf', 2592000, 0, 900, 1, 0, '4e6db4d0-e6b5-4e28-a1c4-9aae16ebc312', 0, 0, 0, 0, 'ce25f5e0-c0c0-49aa-ae8a-2856ee2594ed');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_ATTRIBUTE`
--

CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `REALM_ATTRIBUTE`
--

INSERT INTO `REALM_ATTRIBUTE` (`NAME`, `REALM_ID`, `VALUE`) VALUES
('_browser_header.contentSecurityPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),
('_browser_header.contentSecurityPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),
('_browser_header.contentSecurityPolicyReportOnly', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', ''),
('_browser_header.contentSecurityPolicyReportOnly', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', ''),
('_browser_header.referrerPolicy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'no-referrer'),
('_browser_header.referrerPolicy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'no-referrer'),
('_browser_header.strictTransportSecurity', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'max-age=31536000; includeSubDomains'),
('_browser_header.strictTransportSecurity', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'max-age=31536000; includeSubDomains'),
('_browser_header.xContentTypeOptions', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'nosniff'),
('_browser_header.xContentTypeOptions', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'nosniff'),
('_browser_header.xFrameOptions', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'SAMEORIGIN'),
('_browser_header.xFrameOptions', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'SAMEORIGIN'),
('_browser_header.xRobotsTag', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'none'),
('_browser_header.xRobotsTag', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'none'),
('actionTokenGeneratedByAdminLifespan', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '43200'),
('actionTokenGeneratedByUserLifespan', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '300'),
('bruteForceProtected', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'false'),
('bruteForceProtected', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'false'),
('bruteForceStrategy', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'MULTIPLE'),
('bruteForceStrategy', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'MULTIPLE'),
('cibaAuthRequestedUserHint', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'login_hint'),
('cibaBackchannelTokenDeliveryMode', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'poll'),
('cibaExpiresIn', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '120'),
('cibaInterval', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '5'),
('defaultSignatureAlgorithm', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'RS256'),
('defaultSignatureAlgorithm', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'RS256'),
('displayName', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'Keycloak'),
('displayNameHtml', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),
('failureFactor', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '30'),
('failureFactor', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '30'),
('firstBrokerLoginFlowId', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '197025a1-84a7-4dd2-9ca1-88bad7e30acd'),
('firstBrokerLoginFlowId', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'b659eb7b-48cb-4825-8463-98429875746c'),
('maxDeltaTimeSeconds', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '43200'),
('maxDeltaTimeSeconds', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '43200'),
('maxFailureWaitSeconds', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '900'),
('maxFailureWaitSeconds', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '900'),
('maxTemporaryLockouts', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0'),
('maxTemporaryLockouts', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '0'),
('minimumQuickLoginWaitSeconds', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '60'),
('minimumQuickLoginWaitSeconds', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '60'),
('oauth2DeviceCodeLifespan', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '600'),
('oauth2DevicePollingInterval', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '5'),
('offlineSessionMaxLifespan', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '5184000'),
('offlineSessionMaxLifespan', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '5184000'),
('offlineSessionMaxLifespanEnabled', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'false'),
('offlineSessionMaxLifespanEnabled', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'false'),
('parRequestUriLifespan', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '60'),
('permanentLockout', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'false'),
('permanentLockout', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'false'),
('quickLoginCheckMilliSeconds', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '1000'),
('quickLoginCheckMilliSeconds', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '1000'),
('realmReusableOtpCode', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'false'),
('realmReusableOtpCode', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'false'),
('waitIncrementSeconds', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '60'),
('waitIncrementSeconds', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', '60'),
('webAuthnPolicyAttestationConveyancePreference', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified'),
('webAuthnPolicyAttestationConveyancePreferencePasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified'),
('webAuthnPolicyAuthenticatorAttachment', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified'),
('webAuthnPolicyAuthenticatorAttachmentPasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified'),
('webAuthnPolicyAvoidSameAuthenticatorRegister', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'false'),
('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'false'),
('webAuthnPolicyCreateTimeout', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0'),
('webAuthnPolicyCreateTimeoutPasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', '0'),
('webAuthnPolicyRequireResidentKey', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified'),
('webAuthnPolicyRequireResidentKeyPasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified'),
('webAuthnPolicyRpEntityName', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'keycloak'),
('webAuthnPolicyRpEntityNamePasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'keycloak'),
('webAuthnPolicyRpId', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', ''),
('webAuthnPolicyRpIdPasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', ''),
('webAuthnPolicySignatureAlgorithms', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'ES256,RS256'),
('webAuthnPolicySignatureAlgorithmsPasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'ES256,RS256'),
('webAuthnPolicyUserVerificationRequirement', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified'),
('webAuthnPolicyUserVerificationRequirementPasswordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'not specified');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_DEFAULT_GROUPS`
--

CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_ENABLED_EVENT_TYPES`
--

CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_EVENTS_LISTENERS`
--

CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `REALM_EVENTS_LISTENERS`
--

INSERT INTO `REALM_EVENTS_LISTENERS` (`REALM_ID`, `VALUE`) VALUES
('865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 'jboss-logging'),
('d7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'jboss-logging');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_LOCALIZATIONS`
--

CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_REQUIRED_CREDENTIAL`
--

CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` tinyint NOT NULL DEFAULT '0',
  `SECRET` tinyint NOT NULL DEFAULT '0',
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `REALM_REQUIRED_CREDENTIAL`
--

INSERT INTO `REALM_REQUIRED_CREDENTIAL` (`TYPE`, `FORM_LABEL`, `INPUT`, `SECRET`, `REALM_ID`) VALUES
('password', 'password', 1, 1, '865234ec-f6b3-44a8-b4b3-6a592d8e19ca'),
('password', 'password', 1, 1, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_SMTP_CONFIG`
--

CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REALM_SUPPORTED_LOCALES`
--

CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REDIRECT_URIS`
--

CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `REDIRECT_URIS`
--

INSERT INTO `REDIRECT_URIS` (`CLIENT_ID`, `VALUE`) VALUES
('07a28f28-217f-4e49-ac1b-989700206824', '/realms/master/account/*'),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '/realms/reprod/account/*'),
('91634577-a724-4e2a-95c0-3215d3351862', '/admin/master/console/*'),
('936a0ce8-b6ad-452a-8a46-19e200278466', '/realms/reprod/account/*'),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '/realms/master/account/*'),
('cdea269b-d0e3-4500-8305-5c7c56171557', '/admin/reprod/console/*');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REQUIRED_ACTION_CONFIG`
--

CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REQUIRED_ACTION_PROVIDER`
--

CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` tinyint NOT NULL DEFAULT '0',
  `DEFAULT_ACTION` tinyint NOT NULL DEFAULT '0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `REQUIRED_ACTION_PROVIDER`
--

INSERT INTO `REQUIRED_ACTION_PROVIDER` (`ID`, `ALIAS`, `NAME`, `REALM_ID`, `ENABLED`, `DEFAULT_ACTION`, `PROVIDER_ID`, `PRIORITY`) VALUES
('1969de57-24e0-43a0-9c1f-533b45372b0e', 'delete_credential', 'Delete Credential', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'delete_credential', 100),
('19a460e0-732f-4483-a672-74fa4ec66624', 'webauthn-register', 'Webauthn Register', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'webauthn-register', 70),
('1a9957d3-65fb-402b-ac72-4002086203cc', 'delete_credential', 'Delete Credential', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'delete_credential', 100),
('2145f75f-8b01-4120-92e7-697db72e5a2d', 'UPDATE_PROFILE', 'Update Profile', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'UPDATE_PROFILE', 40),
('23df09a5-0929-4bc7-a593-f76ff9f6bd82', 'TERMS_AND_CONDITIONS', 'Terms and Conditions', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 0, 0, 'TERMS_AND_CONDITIONS', 20),
('36b88d52-0503-4416-8092-b9b748936507', 'UPDATE_PASSWORD', 'Update Password', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'UPDATE_PASSWORD', 30),
('37dfc521-3f83-4902-ae6b-f51c4530ab03', 'TERMS_AND_CONDITIONS', 'Terms and Conditions', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 0, 0, 'TERMS_AND_CONDITIONS', 20),
('412d93b7-f034-430c-9467-476525c236bc', 'update_user_locale', 'Update User Locale', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'update_user_locale', 1000),
('4abc7b68-9942-4bbe-a62b-ace99bff2ea5', 'VERIFY_PROFILE', 'Verify Profile', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'VERIFY_PROFILE', 90),
('57777798-6d47-4bbf-aedf-b940f75e8f37', 'delete_account', 'Delete Account', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 0, 0, 'delete_account', 60),
('6cc8210a-4c2f-418c-8948-91b613e8bdfa', 'UPDATE_PROFILE', 'Update Profile', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'UPDATE_PROFILE', 40),
('83cc0fdb-9ac1-4126-87c3-db6209edca67', 'delete_account', 'Delete Account', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 0, 0, 'delete_account', 60),
('85de97b4-1b36-4685-861f-0b37c3fc556f', 'webauthn-register-passwordless', 'Webauthn Register Passwordless', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'webauthn-register-passwordless', 80),
('8a5317c1-91c6-46bc-81d3-f4c82e1d95d6', 'VERIFY_EMAIL', 'Verify Email', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'VERIFY_EMAIL', 50),
('8b05df62-6876-453e-99b5-5ecf4de80e4b', 'webauthn-register', 'Webauthn Register', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'webauthn-register', 70),
('8b259a87-c5d7-4975-a1fe-04d184be6587', 'CONFIGURE_RECOVERY_AUTHN_CODES', 'Recovery Authentication Codes', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'CONFIGURE_RECOVERY_AUTHN_CODES', 120),
('8b3ce6ae-14e1-4c88-b654-b1b81acdd04a', 'UPDATE_EMAIL', 'Update Email', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'UPDATE_EMAIL', 70),
('92285558-9efe-4af2-b516-37e9710d1f52', 'VERIFY_EMAIL', 'Verify Email', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'VERIFY_EMAIL', 50),
('aa78043b-3788-4222-8bdd-8288c39fde36', 'UPDATE_PASSWORD', 'Update Password', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'UPDATE_PASSWORD', 30),
('acb8a5b4-e625-4c95-8d46-2e7d841cc3e5', 'update_user_locale', 'Update User Locale', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'update_user_locale', 1000),
('ae21231a-1868-45ea-a040-e34fb9cac222', 'CONFIGURE_TOTP', 'Configure OTP', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'CONFIGURE_TOTP', 10),
('b0c01d3d-b4b7-4d25-a640-df292dbdc750', 'idp_link', 'Linking Identity Provider', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'idp_link', 110),
('bcd8226b-fe84-4ace-865f-5260ae409db2', 'CONFIGURE_TOTP', 'Configure OTP', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'CONFIGURE_TOTP', 10),
('bd1c6915-8338-4377-b8dd-1fa7170f2328', 'webauthn-register-passwordless', 'Webauthn Register Passwordless', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'webauthn-register-passwordless', 80),
('c1599c53-f253-4c0d-843f-a072a40a9cff', 'VERIFY_PROFILE', 'Verify Profile', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'VERIFY_PROFILE', 90),
('e017e0c1-bf5a-4f93-be2a-dd56c5f17fe4', 'UPDATE_EMAIL', 'Update Email', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'UPDATE_EMAIL', 70),
('e210cce7-dd97-4f83-a41b-a6df8a2a02e2', 'CONFIGURE_RECOVERY_AUTHN_CODES', 'Recovery Authentication Codes', 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 1, 0, 'CONFIGURE_RECOVERY_AUTHN_CODES', 120),
('f505c403-9385-495e-b307-ac1335376e6a', 'idp_link', 'Linking Identity Provider', '865234ec-f6b3-44a8-b4b3-6a592d8e19ca', 1, 0, 'idp_link', 110);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_ATTRIBUTE`
--

CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_POLICY`
--

CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_SCOPE`
--

CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_SERVER`
--

CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` tinyint NOT NULL DEFAULT '0',
  `POLICY_ENFORCE_MODE` tinyint DEFAULT NULL,
  `DECISION_STRATEGY` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_SERVER_PERM_TICKET`
--

CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint NOT NULL,
  `GRANTED_TIMESTAMP` bigint DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_SERVER_POLICY`
--

CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` tinyint DEFAULT NULL,
  `LOGIC` tinyint DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_SERVER_RESOURCE`
--

CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` tinyint NOT NULL DEFAULT '0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_SERVER_SCOPE`
--

CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RESOURCE_URIS`
--

CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `REVOKED_TOKEN`
--

CREATE TABLE `REVOKED_TOKEN` (
  `ID` varchar(255) NOT NULL,
  `EXPIRE` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ROLE_ATTRIBUTE`
--

CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SCOPE_MAPPING`
--

CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `SCOPE_MAPPING`
--

INSERT INTO `SCOPE_MAPPING` (`CLIENT_ID`, `ROLE_ID`) VALUES
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '0f9ca6ca-287f-4f7d-8447-630e500cbc71'),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '14785fa7-2237-4659-954a-ee83d23d06dc'),
('62ba4eca-a280-44b3-98d4-78d16ec89c40', '573e7a89-2a7f-44ea-8a83-25ed99b36b60'),
('ae332425-4ddb-402e-9ee8-120d9ebc27ef', '8d4a0535-a491-4d74-9bae-19f49d06098d');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SCOPE_POLICY`
--

CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SERVER_CONFIG`
--

CREATE TABLE `SERVER_CONFIG` (
  `SERVER_CONFIG_KEY` varchar(255) NOT NULL,
  `VALUE` longtext NOT NULL,
  `VERSION` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `SERVER_CONFIG`
--

INSERT INTO `SERVER_CONFIG` (`SERVER_CONFIG_KEY`, `VALUE`, `VERSION`) VALUES
('JGROUPS_ADDRESS_SEQUENCE', '4', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_ATTRIBUTE`
--

CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `USER_ATTRIBUTE`
--

INSERT INTO `USER_ATTRIBUTE` (`NAME`, `VALUE`, `USER_ID`, `ID`, `LONG_VALUE_HASH`, `LONG_VALUE_HASH_LOWER_CASE`, `LONG_VALUE`) VALUES
('is_temporary_admin', 'true', '72a74b26-55ed-4df0-bb9c-f243db513378', 'badc5259-a24f-459c-b302-9325860a2316', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_CONSENT`
--

CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_CONSENT_CLIENT_SCOPE`
--

CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_ENTITY`
--

CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` tinyint NOT NULL DEFAULT '0',
  `ENABLED` tinyint NOT NULL DEFAULT '0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `USER_ENTITY`
--

INSERT INTO `USER_ENTITY` (`ID`, `EMAIL`, `EMAIL_CONSTRAINT`, `EMAIL_VERIFIED`, `ENABLED`, `FEDERATION_LINK`, `FIRST_NAME`, `LAST_NAME`, `REALM_ID`, `USERNAME`, `CREATED_TIMESTAMP`, `SERVICE_ACCOUNT_CLIENT_LINK`, `NOT_BEFORE`) VALUES
('72a74b26-55ed-4df0-bb9c-f243db513378', NULL, 'e97b4bbf-acf1-46d7-a777-26f00e07a719', 0, 1, NULL, NULL, NULL, 'd7ba41cb-6538-4bac-a6ac-8f85727a2cb2', 'kc-admin', 1757317498035, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_FEDERATION_CONFIG`
--

CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_FEDERATION_MAPPER`
--

CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_FEDERATION_MAPPER_CONFIG`
--

CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_FEDERATION_PROVIDER`
--

CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int DEFAULT NULL,
  `LAST_SYNC` int DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_GROUP_MEMBERSHIP`
--

CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `MEMBERSHIP_TYPE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_REQUIRED_ACTION`
--

CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `USER_ROLE_MAPPING`
--

CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `USER_ROLE_MAPPING`
--

INSERT INTO `USER_ROLE_MAPPING` (`ROLE_ID`, `USER_ID`) VALUES
('ce25f5e0-c0c0-49aa-ae8a-2856ee2594ed', '72a74b26-55ed-4df0-bb9c-f243db513378'),
('eb8fb8da-fce6-4af2-b126-d4439c7960b8', '72a74b26-55ed-4df0-bb9c-f243db513378');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WEB_ORIGINS`
--

CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `WEB_ORIGINS`
--

INSERT INTO `WEB_ORIGINS` (`CLIENT_ID`, `VALUE`) VALUES
('91634577-a724-4e2a-95c0-3215d3351862', '+'),
('cdea269b-d0e3-4500-8305-5c7c56171557', '+');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `ADMIN_EVENT_ENTITY`
--
ALTER TABLE `ADMIN_EVENT_ENTITY`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ADMIN_EVENT_TIME` (`REALM_ID`,`ADMIN_EVENT_TIME`);

--
-- Indexen voor tabel `ASSOCIATED_POLICY`
--
ALTER TABLE `ASSOCIATED_POLICY`
  ADD PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  ADD KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`);

--
-- Indexen voor tabel `AUTHENTICATION_EXECUTION`
--
ALTER TABLE `AUTHENTICATION_EXECUTION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  ADD KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`);

--
-- Indexen voor tabel `AUTHENTICATION_FLOW`
--
ALTER TABLE `AUTHENTICATION_FLOW`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `AUTHENTICATOR_CONFIG`
--
ALTER TABLE `AUTHENTICATOR_CONFIG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `AUTHENTICATOR_CONFIG_ENTRY`
--
ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY`
  ADD PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`);

--
-- Indexen voor tabel `BROKER_LINK`
--
ALTER TABLE `BROKER_LINK`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`);

--
-- Indexen voor tabel `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  ADD KEY `IDX_CLIENT_ID` (`CLIENT_ID`);

--
-- Indexen voor tabel `CLIENT_ATTRIBUTES`
--
ALTER TABLE `CLIENT_ATTRIBUTES`
  ADD PRIMARY KEY (`CLIENT_ID`,`NAME`),
  ADD KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`(255));

--
-- Indexen voor tabel `CLIENT_AUTH_FLOW_BINDINGS`
--
ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS`
  ADD PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`);

--
-- Indexen voor tabel `CLIENT_INITIAL_ACCESS`
--
ALTER TABLE `CLIENT_INITIAL_ACCESS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `CLIENT_NODE_REGISTRATIONS`
--
ALTER TABLE `CLIENT_NODE_REGISTRATIONS`
  ADD PRIMARY KEY (`CLIENT_ID`,`NAME`);

--
-- Indexen voor tabel `CLIENT_SCOPE`
--
ALTER TABLE `CLIENT_SCOPE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  ADD KEY `IDX_REALM_CLSCOPE` (`REALM_ID`);

--
-- Indexen voor tabel `CLIENT_SCOPE_ATTRIBUTES`
--
ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES`
  ADD PRIMARY KEY (`SCOPE_ID`,`NAME`),
  ADD KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`);

--
-- Indexen voor tabel `CLIENT_SCOPE_CLIENT`
--
ALTER TABLE `CLIENT_SCOPE_CLIENT`
  ADD PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  ADD KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  ADD KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`);

--
-- Indexen voor tabel `CLIENT_SCOPE_ROLE_MAPPING`
--
ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING`
  ADD PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  ADD KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  ADD KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`);

--
-- Indexen voor tabel `COMPONENT`
--
ALTER TABLE `COMPONENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  ADD KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`);

--
-- Indexen voor tabel `COMPONENT_CONFIG`
--
ALTER TABLE `COMPONENT_CONFIG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`);

--
-- Indexen voor tabel `COMPOSITE_ROLE`
--
ALTER TABLE `COMPOSITE_ROLE`
  ADD PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  ADD KEY `IDX_COMPOSITE` (`COMPOSITE`),
  ADD KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`);

--
-- Indexen voor tabel `CREDENTIAL`
--
ALTER TABLE `CREDENTIAL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USER_CREDENTIAL` (`USER_ID`);

--
-- Indexen voor tabel `DATABASECHANGELOG`
--
ALTER TABLE `DATABASECHANGELOG`
  ADD PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`);

--
-- Indexen voor tabel `DATABASECHANGELOGLOCK`
--
ALTER TABLE `DATABASECHANGELOGLOCK`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `DEFAULT_CLIENT_SCOPE`
--
ALTER TABLE `DEFAULT_CLIENT_SCOPE`
  ADD PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  ADD KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  ADD KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`);

--
-- Indexen voor tabel `EVENT_ENTITY`
--
ALTER TABLE `EVENT_ENTITY`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`);

--
-- Indexen voor tabel `FEDERATED_IDENTITY`
--
ALTER TABLE `FEDERATED_IDENTITY`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  ADD KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  ADD KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`);

--
-- Indexen voor tabel `FEDERATED_USER`
--
ALTER TABLE `FEDERATED_USER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `FED_USER_ATTRIBUTE`
--
ALTER TABLE `FED_USER_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`),
  ADD KEY `FED_USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  ADD KEY `FED_USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`);

--
-- Indexen voor tabel `FED_USER_CONSENT`
--
ALTER TABLE `FED_USER_CONSENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  ADD KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  ADD KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`);

--
-- Indexen voor tabel `FED_USER_CONSENT_CL_SCOPE`
--
ALTER TABLE `FED_USER_CONSENT_CL_SCOPE`
  ADD PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`);

--
-- Indexen voor tabel `FED_USER_CREDENTIAL`
--
ALTER TABLE `FED_USER_CREDENTIAL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  ADD KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexen voor tabel `FED_USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `FED_USER_GROUP_MEMBERSHIP`
  ADD PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  ADD KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  ADD KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexen voor tabel `FED_USER_REQUIRED_ACTION`
--
ALTER TABLE `FED_USER_REQUIRED_ACTION`
  ADD PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  ADD KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  ADD KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexen voor tabel `FED_USER_ROLE_MAPPING`
--
ALTER TABLE `FED_USER_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  ADD KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  ADD KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexen voor tabel `GROUP_ATTRIBUTE`
--
ALTER TABLE `GROUP_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  ADD KEY `IDX_GROUP_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`);

--
-- Indexen voor tabel `GROUP_ROLE_MAPPING`
--
ALTER TABLE `GROUP_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  ADD KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`);

--
-- Indexen voor tabel `IDENTITY_PROVIDER`
--
ALTER TABLE `IDENTITY_PROVIDER`
  ADD PRIMARY KEY (`INTERNAL_ID`),
  ADD UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  ADD KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  ADD KEY `IDX_IDP_REALM_ORG` (`REALM_ID`,`ORGANIZATION_ID`),
  ADD KEY `IDX_IDP_FOR_LOGIN` (`REALM_ID`,`ENABLED`,`LINK_ONLY`,`HIDE_ON_LOGIN`,`ORGANIZATION_ID`);

--
-- Indexen voor tabel `IDENTITY_PROVIDER_CONFIG`
--
ALTER TABLE `IDENTITY_PROVIDER_CONFIG`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`);

--
-- Indexen voor tabel `IDENTITY_PROVIDER_MAPPER`
--
ALTER TABLE `IDENTITY_PROVIDER_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `IDP_MAPPER_CONFIG`
--
ALTER TABLE `IDP_MAPPER_CONFIG`
  ADD PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`);

--
-- Indexen voor tabel `JGROUPS_PING`
--
ALTER TABLE `JGROUPS_PING`
  ADD PRIMARY KEY (`address`);

--
-- Indexen voor tabel `KEYCLOAK_GROUP`
--
ALTER TABLE `KEYCLOAK_GROUP`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`);

--
-- Indexen voor tabel `KEYCLOAK_ROLE`
--
ALTER TABLE `KEYCLOAK_ROLE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  ADD KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  ADD KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`);

--
-- Indexen voor tabel `MIGRATION_MODEL`
--
ALTER TABLE `MIGRATION_MODEL`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_MIGRATION_UPDATE_TIME` (`UPDATE_TIME`),
  ADD UNIQUE KEY `UK_MIGRATION_VERSION` (`VERSION`),
  ADD KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`);

--
-- Indexen voor tabel `OFFLINE_CLIENT_SESSION`
--
ALTER TABLE `OFFLINE_CLIENT_SESSION`
  ADD PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`);

--
-- Indexen voor tabel `OFFLINE_USER_SESSION`
--
ALTER TABLE `OFFLINE_USER_SESSION`
  ADD PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  ADD KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  ADD KEY `IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH` (`REALM_ID`,`OFFLINE_FLAG`,`LAST_SESSION_REFRESH`),
  ADD KEY `IDX_OFFLINE_USS_BY_BROKER_SESSION_ID` (`BROKER_SESSION_ID`(255),`REALM_ID`);

--
-- Indexen voor tabel `ORG`
--
ALTER TABLE `ORG`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_ORG_NAME` (`REALM_ID`,`NAME`),
  ADD UNIQUE KEY `UK_ORG_GROUP` (`GROUP_ID`),
  ADD UNIQUE KEY `UK_ORG_ALIAS` (`REALM_ID`,`ALIAS`);

--
-- Indexen voor tabel `ORG_DOMAIN`
--
ALTER TABLE `ORG_DOMAIN`
  ADD PRIMARY KEY (`ID`,`NAME`),
  ADD KEY `IDX_ORG_DOMAIN_ORG_ID` (`ORG_ID`);

--
-- Indexen voor tabel `POLICY_CONFIG`
--
ALTER TABLE `POLICY_CONFIG`
  ADD PRIMARY KEY (`POLICY_ID`,`NAME`);

--
-- Indexen voor tabel `PROTOCOL_MAPPER`
--
ALTER TABLE `PROTOCOL_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  ADD KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`);

--
-- Indexen voor tabel `PROTOCOL_MAPPER_CONFIG`
--
ALTER TABLE `PROTOCOL_MAPPER_CONFIG`
  ADD PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`);

--
-- Indexen voor tabel `REALM`
--
ALTER TABLE `REALM`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  ADD KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`);

--
-- Indexen voor tabel `REALM_ATTRIBUTE`
--
ALTER TABLE `REALM_ATTRIBUTE`
  ADD PRIMARY KEY (`NAME`,`REALM_ID`),
  ADD KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `REALM_DEFAULT_GROUPS`
--
ALTER TABLE `REALM_DEFAULT_GROUPS`
  ADD PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  ADD UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  ADD KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `REALM_ENABLED_EVENT_TYPES`
--
ALTER TABLE `REALM_ENABLED_EVENT_TYPES`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `REALM_EVENTS_LISTENERS`
--
ALTER TABLE `REALM_EVENTS_LISTENERS`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `REALM_LOCALIZATIONS`
--
ALTER TABLE `REALM_LOCALIZATIONS`
  ADD PRIMARY KEY (`REALM_ID`,`LOCALE`);

--
-- Indexen voor tabel `REALM_REQUIRED_CREDENTIAL`
--
ALTER TABLE `REALM_REQUIRED_CREDENTIAL`
  ADD PRIMARY KEY (`REALM_ID`,`TYPE`);

--
-- Indexen voor tabel `REALM_SMTP_CONFIG`
--
ALTER TABLE `REALM_SMTP_CONFIG`
  ADD PRIMARY KEY (`REALM_ID`,`NAME`);

--
-- Indexen voor tabel `REALM_SUPPORTED_LOCALES`
--
ALTER TABLE `REALM_SUPPORTED_LOCALES`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `REDIRECT_URIS`
--
ALTER TABLE `REDIRECT_URIS`
  ADD PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  ADD KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`);

--
-- Indexen voor tabel `REQUIRED_ACTION_CONFIG`
--
ALTER TABLE `REQUIRED_ACTION_CONFIG`
  ADD PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`);

--
-- Indexen voor tabel `REQUIRED_ACTION_PROVIDER`
--
ALTER TABLE `REQUIRED_ACTION_PROVIDER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `RESOURCE_ATTRIBUTE`
--
ALTER TABLE `RESOURCE_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`);

--
-- Indexen voor tabel `RESOURCE_POLICY`
--
ALTER TABLE `RESOURCE_POLICY`
  ADD PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  ADD KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`);

--
-- Indexen voor tabel `RESOURCE_SCOPE`
--
ALTER TABLE `RESOURCE_SCOPE`
  ADD PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  ADD KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`);

--
-- Indexen voor tabel `RESOURCE_SERVER`
--
ALTER TABLE `RESOURCE_SERVER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `RESOURCE_SERVER_PERM_TICKET`
--
ALTER TABLE `RESOURCE_SERVER_PERM_TICKET`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  ADD KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  ADD KEY `IDX_PERM_TICKET_REQUESTER` (`REQUESTER`),
  ADD KEY `IDX_PERM_TICKET_OWNER` (`OWNER`);

--
-- Indexen voor tabel `RESOURCE_SERVER_POLICY`
--
ALTER TABLE `RESOURCE_SERVER_POLICY`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`);

--
-- Indexen voor tabel `RESOURCE_SERVER_RESOURCE`
--
ALTER TABLE `RESOURCE_SERVER_RESOURCE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`);

--
-- Indexen voor tabel `RESOURCE_SERVER_SCOPE`
--
ALTER TABLE `RESOURCE_SERVER_SCOPE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`);

--
-- Indexen voor tabel `RESOURCE_URIS`
--
ALTER TABLE `RESOURCE_URIS`
  ADD PRIMARY KEY (`RESOURCE_ID`,`VALUE`);

--
-- Indexen voor tabel `REVOKED_TOKEN`
--
ALTER TABLE `REVOKED_TOKEN`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_REV_TOKEN_ON_EXPIRE` (`EXPIRE`);

--
-- Indexen voor tabel `ROLE_ATTRIBUTE`
--
ALTER TABLE `ROLE_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`);

--
-- Indexen voor tabel `SCOPE_MAPPING`
--
ALTER TABLE `SCOPE_MAPPING`
  ADD PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  ADD KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`);

--
-- Indexen voor tabel `SCOPE_POLICY`
--
ALTER TABLE `SCOPE_POLICY`
  ADD PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  ADD KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`);

--
-- Indexen voor tabel `SERVER_CONFIG`
--
ALTER TABLE `SERVER_CONFIG`
  ADD PRIMARY KEY (`SERVER_CONFIG_KEY`);

--
-- Indexen voor tabel `USER_ATTRIBUTE`
--
ALTER TABLE `USER_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  ADD KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  ADD KEY `USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  ADD KEY `USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`);

--
-- Indexen voor tabel `USER_CONSENT`
--
ALTER TABLE `USER_CONSENT`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_LOCAL_CONSENT` (`CLIENT_ID`,`USER_ID`),
  ADD UNIQUE KEY `UK_EXTERNAL_CONSENT` (`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  ADD KEY `IDX_USER_CONSENT` (`USER_ID`);

--
-- Indexen voor tabel `USER_CONSENT_CLIENT_SCOPE`
--
ALTER TABLE `USER_CONSENT_CLIENT_SCOPE`
  ADD PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  ADD KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  ADD KEY `IDX_USCONSENT_SCOPE_ID` (`SCOPE_ID`);

--
-- Indexen voor tabel `USER_ENTITY`
--
ALTER TABLE `USER_ENTITY`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  ADD UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  ADD KEY `IDX_USER_EMAIL` (`EMAIL`),
  ADD KEY `IDX_USER_SERVICE_ACCOUNT` (`REALM_ID`,`SERVICE_ACCOUNT_CLIENT_LINK`);

--
-- Indexen voor tabel `USER_FEDERATION_CONFIG`
--
ALTER TABLE `USER_FEDERATION_CONFIG`
  ADD PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`);

--
-- Indexen voor tabel `USER_FEDERATION_MAPPER`
--
ALTER TABLE `USER_FEDERATION_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  ADD KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `USER_FEDERATION_MAPPER_CONFIG`
--
ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG`
  ADD PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`);

--
-- Indexen voor tabel `USER_FEDERATION_PROVIDER`
--
ALTER TABLE `USER_FEDERATION_PROVIDER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`);

--
-- Indexen voor tabel `USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `USER_GROUP_MEMBERSHIP`
  ADD PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  ADD KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`);

--
-- Indexen voor tabel `USER_REQUIRED_ACTION`
--
ALTER TABLE `USER_REQUIRED_ACTION`
  ADD PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  ADD KEY `IDX_USER_REQACTIONS` (`USER_ID`);

--
-- Indexen voor tabel `USER_ROLE_MAPPING`
--
ALTER TABLE `USER_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  ADD KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`);

--
-- Indexen voor tabel `WEB_ORIGINS`
--
ALTER TABLE `WEB_ORIGINS`
  ADD PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  ADD KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `ASSOCIATED_POLICY`
--
ALTER TABLE `ASSOCIATED_POLICY`
  ADD CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  ADD CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Beperkingen voor tabel `AUTHENTICATION_EXECUTION`
--
ALTER TABLE `AUTHENTICATION_EXECUTION`
  ADD CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  ADD CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `AUTHENTICATION_FLOW`
--
ALTER TABLE `AUTHENTICATION_FLOW`
  ADD CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `AUTHENTICATOR_CONFIG`
--
ALTER TABLE `AUTHENTICATOR_CONFIG`
  ADD CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `CLIENT_ATTRIBUTES`
--
ALTER TABLE `CLIENT_ATTRIBUTES`
  ADD CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Beperkingen voor tabel `CLIENT_INITIAL_ACCESS`
--
ALTER TABLE `CLIENT_INITIAL_ACCESS`
  ADD CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `CLIENT_NODE_REGISTRATIONS`
--
ALTER TABLE `CLIENT_NODE_REGISTRATIONS`
  ADD CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Beperkingen voor tabel `CLIENT_SCOPE_ATTRIBUTES`
--
ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES`
  ADD CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Beperkingen voor tabel `CLIENT_SCOPE_ROLE_MAPPING`
--
ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING`
  ADD CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Beperkingen voor tabel `COMPONENT`
--
ALTER TABLE `COMPONENT`
  ADD CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `COMPONENT_CONFIG`
--
ALTER TABLE `COMPONENT_CONFIG`
  ADD CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`);

--
-- Beperkingen voor tabel `COMPOSITE_ROLE`
--
ALTER TABLE `COMPOSITE_ROLE`
  ADD CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  ADD CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Beperkingen voor tabel `CREDENTIAL`
--
ALTER TABLE `CREDENTIAL`
  ADD CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Beperkingen voor tabel `DEFAULT_CLIENT_SCOPE`
--
ALTER TABLE `DEFAULT_CLIENT_SCOPE`
  ADD CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `FEDERATED_IDENTITY`
--
ALTER TABLE `FEDERATED_IDENTITY`
  ADD CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Beperkingen voor tabel `GROUP_ATTRIBUTE`
--
ALTER TABLE `GROUP_ATTRIBUTE`
  ADD CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`);

--
-- Beperkingen voor tabel `GROUP_ROLE_MAPPING`
--
ALTER TABLE `GROUP_ROLE_MAPPING`
  ADD CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`);

--
-- Beperkingen voor tabel `IDENTITY_PROVIDER`
--
ALTER TABLE `IDENTITY_PROVIDER`
  ADD CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `IDENTITY_PROVIDER_CONFIG`
--
ALTER TABLE `IDENTITY_PROVIDER_CONFIG`
  ADD CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`);

--
-- Beperkingen voor tabel `IDENTITY_PROVIDER_MAPPER`
--
ALTER TABLE `IDENTITY_PROVIDER_MAPPER`
  ADD CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `IDP_MAPPER_CONFIG`
--
ALTER TABLE `IDP_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`);

--
-- Beperkingen voor tabel `KEYCLOAK_ROLE`
--
ALTER TABLE `KEYCLOAK_ROLE`
  ADD CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `POLICY_CONFIG`
--
ALTER TABLE `POLICY_CONFIG`
  ADD CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Beperkingen voor tabel `PROTOCOL_MAPPER`
--
ALTER TABLE `PROTOCOL_MAPPER`
  ADD CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  ADD CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Beperkingen voor tabel `PROTOCOL_MAPPER_CONFIG`
--
ALTER TABLE `PROTOCOL_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`);

--
-- Beperkingen voor tabel `REALM_ATTRIBUTE`
--
ALTER TABLE `REALM_ATTRIBUTE`
  ADD CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `REALM_DEFAULT_GROUPS`
--
ALTER TABLE `REALM_DEFAULT_GROUPS`
  ADD CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `REALM_ENABLED_EVENT_TYPES`
--
ALTER TABLE `REALM_ENABLED_EVENT_TYPES`
  ADD CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `REALM_EVENTS_LISTENERS`
--
ALTER TABLE `REALM_EVENTS_LISTENERS`
  ADD CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `REALM_REQUIRED_CREDENTIAL`
--
ALTER TABLE `REALM_REQUIRED_CREDENTIAL`
  ADD CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `REALM_SMTP_CONFIG`
--
ALTER TABLE `REALM_SMTP_CONFIG`
  ADD CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `REALM_SUPPORTED_LOCALES`
--
ALTER TABLE `REALM_SUPPORTED_LOCALES`
  ADD CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `REDIRECT_URIS`
--
ALTER TABLE `REDIRECT_URIS`
  ADD CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Beperkingen voor tabel `REQUIRED_ACTION_PROVIDER`
--
ALTER TABLE `REQUIRED_ACTION_PROVIDER`
  ADD CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_ATTRIBUTE`
--
ALTER TABLE `RESOURCE_ATTRIBUTE`
  ADD CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_POLICY`
--
ALTER TABLE `RESOURCE_POLICY`
  ADD CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_SCOPE`
--
ALTER TABLE `RESOURCE_SCOPE`
  ADD CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_SERVER_PERM_TICKET`
--
ALTER TABLE `RESOURCE_SERVER_PERM_TICKET`
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_SERVER_POLICY`
--
ALTER TABLE `RESOURCE_SERVER_POLICY`
  ADD CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_SERVER_RESOURCE`
--
ALTER TABLE `RESOURCE_SERVER_RESOURCE`
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_SERVER_SCOPE`
--
ALTER TABLE `RESOURCE_SERVER_SCOPE`
  ADD CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Beperkingen voor tabel `RESOURCE_URIS`
--
ALTER TABLE `RESOURCE_URIS`
  ADD CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`);

--
-- Beperkingen voor tabel `ROLE_ATTRIBUTE`
--
ALTER TABLE `ROLE_ATTRIBUTE`
  ADD CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Beperkingen voor tabel `SCOPE_MAPPING`
--
ALTER TABLE `SCOPE_MAPPING`
  ADD CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Beperkingen voor tabel `SCOPE_POLICY`
--
ALTER TABLE `SCOPE_POLICY`
  ADD CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  ADD CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`);

--
-- Beperkingen voor tabel `USER_ATTRIBUTE`
--
ALTER TABLE `USER_ATTRIBUTE`
  ADD CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Beperkingen voor tabel `USER_CONSENT`
--
ALTER TABLE `USER_CONSENT`
  ADD CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Beperkingen voor tabel `USER_CONSENT_CLIENT_SCOPE`
--
ALTER TABLE `USER_CONSENT_CLIENT_SCOPE`
  ADD CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`);

--
-- Beperkingen voor tabel `USER_FEDERATION_CONFIG`
--
ALTER TABLE `USER_FEDERATION_CONFIG`
  ADD CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`);

--
-- Beperkingen voor tabel `USER_FEDERATION_MAPPER`
--
ALTER TABLE `USER_FEDERATION_MAPPER`
  ADD CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  ADD CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `USER_FEDERATION_MAPPER_CONFIG`
--
ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`);

--
-- Beperkingen voor tabel `USER_FEDERATION_PROVIDER`
--
ALTER TABLE `USER_FEDERATION_PROVIDER`
  ADD CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Beperkingen voor tabel `USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `USER_GROUP_MEMBERSHIP`
  ADD CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Beperkingen voor tabel `USER_REQUIRED_ACTION`
--
ALTER TABLE `USER_REQUIRED_ACTION`
  ADD CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Beperkingen voor tabel `USER_ROLE_MAPPING`
--
ALTER TABLE `USER_ROLE_MAPPING`
  ADD CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Beperkingen voor tabel `WEB_ORIGINS`
--
ALTER TABLE `WEB_ORIGINS`
  ADD CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;