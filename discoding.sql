-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 28, 2021 at 02:34 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discoding`
CREATE DATABASE discoding;
USE discoding;
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user1_id`, `user2_id`, `updated_at`) VALUES
(10, 70, 11, '2021-05-28 12:43:12'),
(12, 70, 72, '2021-05-28 02:08:27'),
(16, 72, 11, '2021-05-28 16:23:32'),
(17, 11, 73, '2021-05-28 16:13:02'),
(18, 70, 73, '2021-05-28 02:08:58'),
(19, 11, 11, '2021-05-27 21:15:22'),
(20, 70, 80, '2021-05-27 21:16:30'),
(21, 70, 79, '2021-05-27 21:16:38'),
(22, 72, 73, '2021-05-28 02:17:23'),
(23, 11, 79, '2021-05-28 13:13:44'),
(24, 11, 80, '2021-05-28 12:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_user_id`) VALUES
(11, 70, 11),
(24, 70, 72),
(26, 72, 11),
(27, 11, 73),
(29, 70, 73),
(30, 70, 79),
(31, 70, 80),
(32, 72, 73),
(33, 11, 79),
(34, 11, 80);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `content`, `created_at`) VALUES
(17, 16, 72, 'ça va Coding', '2021-05-27 01:46:23'),
(18, 16, 72, 'en forme ?', '2021-05-27 01:46:32'),
(19, 12, 72, 'hello fab', '2021-05-27 01:46:47'),
(25, 10, 70, 'hello mec !', '2021-05-27 13:52:35'),
(37, 16, 11, 'yo', '2021-05-27 19:48:05'),
(40, 16, 11, 'go go', '2021-05-27 20:06:20'),
(41, 18, 70, 'test message', '2021-05-27 20:07:16'),
(64, 20, 70, 'cdsfdsfsd', '2021-05-27 21:16:34'),
(71, 12, 70, 'fab fab', '2021-05-27 22:01:46'),
(77, 21, 70, 'salut fabou', '2021-05-27 22:15:00'),
(79, 12, 70, 'sdsdqsd', '2021-05-27 22:28:34'),
(80, 12, 70, 'qsdqsdqsdqsd', '2021-05-27 22:28:37'),
(81, 12, 70, 'salut bob', '2021-05-27 23:51:33'),
(82, 12, 70, 'yo mec !!', '2021-05-28 01:01:50'),
(83, 18, 70, 'hello', '2021-05-28 01:16:22'),
(84, 12, 70, 'ok pour les avatars', '2021-05-28 02:08:27'),
(85, 18, 70, 'pas mal la photo', '2021-05-28 02:08:58'),
(86, 17, 11, 'hello', '2021-05-28 02:13:33'),
(87, 16, 11, 'ça va?', '2021-05-28 02:13:51'),
(88, 10, 11, 'ça va?', '2021-05-28 02:14:35'),
(89, 16, 11, 'yo mec !!', '2021-05-28 02:26:38'),
(90, 24, 11, 'bonjour monsieur', '2021-05-28 02:28:37'),
(91, 23, 11, 'ça va?', '2021-05-28 02:34:18'),
(92, 16, 11, 'bonjour à tous ', '2021-05-28 08:54:27'),
(94, 17, 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '2021-05-28 12:09:40'),
(95, 24, 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '2021-05-28 12:09:48'),
(96, 10, 70, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '2021-05-28 12:11:06'),
(97, 10, 70, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '2021-05-28 12:11:15'),
(99, 10, 70, 'is unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui', '2021-05-28 12:11:42'),
(100, 16, 72, 'is unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui', '2021-05-28 12:12:25'),
(101, 16, 72, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '2021-05-28 12:12:43'),
(102, 10, 11, 'j\'ai rien compris', '2021-05-28 12:17:43'),
(103, 10, 11, 'mais c\'est pas grave', '2021-05-28 12:17:52'),
(105, 10, 11, 'ok c\'est cool mec', '2021-05-28 12:20:31'),
(106, 10, 11, 'j\'adore ce que tu dis', '2021-05-28 12:43:12'),
(108, 17, 73, 'ok et toi?', '2021-05-28 13:09:26'),
(109, 17, 73, 'on se retrouve à quelle heure?', '2021-05-28 13:09:56'),
(110, 17, 11, 'comme tu veux', '2021-05-28 13:10:23'),
(111, 17, 11, 'pour le dej ?', '2021-05-28 13:10:34'),
(112, 17, 73, 'ok pour moi !', '2021-05-28 13:10:39'),
(113, 23, 79, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', '2021-05-28 13:12:14'),
(114, 23, 11, 'euh what ????????', '2021-05-28 13:13:04'),
(115, 23, 79, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', '2021-05-28 13:13:11'),
(116, 23, 11, 'tu fais un AVC ou quoi?', '2021-05-28 13:13:44'),
(117, 23, 79, 'ok j\'arrête !!!', '2021-05-28 13:13:51'),
(118, 24, 80, 'WTF !!!!', '2021-05-28 13:14:43'),
(120, 17, 11, 'c\'est cool ! à toute ', '2021-05-28 14:57:13'),
(121, 17, 11, 'j\'ai faim !!!!!', '2021-05-28 16:13:02'),
(122, 16, 11, 'cool !!!!', '2021-05-28 16:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `avatar_url`) VALUES
(11, 'coding@factory.fr', 'coding#6067', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0NxqIDTDs_-GvUV67_x-vGn-z5UPbIJIaNQ&usqp=CAU'),
(70, 'fab@fab.com', 'fab#556', 'f2d81a260dea8a100dd517984e53c56a7523d96942a834b9cdc249bd4e8c7aa9', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvWNvxqwJyqQtJQLKuWSGDQaxDG0JQ1LHbV_ffZ1qdFc85UtnfLu1D2IbsKPdIqnUtyE8&usqp=CAU'),
(72, 'test@test.com', 'test#2131', 'f2d81a260dea8a100dd517984e53c56a7523d96942a834b9cdc249bd4e8c7aa9', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXt8monv9D2-0RdNMGuzLGFstIwnrQkX-MBOp4cfPo08zxZT0svduDAD_q8Vf4ji-u8bk&usqp=CAU'),
(73, 'fab@fab.fr', 'fub#9631', '06d6cfa40d7f59df75e38e47403321db270580fa0eb9f4599113e9542c5e97ca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSocIDrPxLHYkljDUOsxZjFbSAkdEhDlHQoEWAbf3iypB3x4-0RskOlLHLwsB2SVYe-0y4&usqp=CAU'),
(79, 'fabulous@test.com', 'fabou#793', 'f2d81a260dea8a100dd517984e53c56a7523d96942a834b9cdc249bd4e8c7aa9', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSxZRrhulORYMZEG9Mrf82ZGFEnQIOFRG5ifIt4tf8A5zszK7hMInr1iS8QwWVgPlUNrI&usqp=CAU'),
(80, 'testdecompte@test.com', 'compte#3532', 'f2d81a260dea8a100dd517984e53c56a7523d96942a834b9cdc249bd4e8c7aa9', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJoBkWxNNHvLpW4knNYlRPtXfn9pRdijE0ow&usqp=CAU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conversations_to_user1_id` (`user1_id`),
  ADD KEY `fk_conversations_to_user2_id` (`user2_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_friends_to_user_id` (`user_id`),
  ADD KEY `fk_friends_to_friend_user_id` (`friend_user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_messages_to_conversation_id` (`conversation_id`),
  ADD KEY `fk_messages_to_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `fk_to_user1_id` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_to_user2_id` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `fk_to_friend_user_id` FOREIGN KEY (`friend_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_to_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_messages_to_conversation_id` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_messages_to_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
