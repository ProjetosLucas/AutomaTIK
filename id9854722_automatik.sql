-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 28-Jun-2019 às 04:50
-- Versão do servidor: 10.3.14-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id9854722_automatik`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipaments`
--

CREATE TABLE `equipaments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `open_cabinet` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `equipaments`
--

INSERT INTO `equipaments` (`id`, `name`, `code`, `description`, `in_stock`, `open_cabinet`) VALUES
(1, 'Kit para Laboratório 1', '134214214214321', 'Kit para Laboratório 1', 1, 0),
(2, 'Kit para Laboratório 2', '1342142142355', 'Kit para Laboratório 2', 1, NULL),
(3, 'Kit para Laboratório 3', '134214214214321', 'Kit para Laboratório 3', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `equipament_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `scheduled_devolution` datetime DEFAULT NULL,
  `real_devolution` datetime DEFAULT NULL,
  `real_borrow` datetime DEFAULT NULL,
  `scheduled_borrow` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `loan`
--

INSERT INTO `loan` (`id`, `student_id`, `equipament_id`, `created`, `modified`, `scheduled_devolution`, `real_devolution`, `real_borrow`, `scheduled_borrow`) VALUES
(1, 2, 2, '2019-05-19 01:12:59', '2019-06-02 21:24:47', '2019-08-24 11:16:00', NULL, '2019-05-30 15:15:00', '2019-05-31 16:16:00'),
(2, 1, 1, '2019-06-02 18:25:26', '2019-06-21 05:18:09', '2019-06-01 11:17:00', '2019-06-21 05:18:09', '2019-05-30 15:15:00', '2019-05-31 22:16:00'),
(4, 1, 1, '2019-06-02 22:34:05', '2019-06-21 16:59:48', '2022-02-04 02:03:00', NULL, '2019-06-21 16:59:48', '2019-06-21 18:03:00'),
(5, 2, 1, '2019-06-02 22:37:15', '2019-06-02 22:37:15', '2021-02-03 03:02:00', NULL, NULL, '2023-01-02 01:01:00'),
(6, 9, 2, '2019-06-28 00:19:23', '2019-06-28 00:19:23', '2019-06-28 00:00:00', NULL, NULL, '2018-06-27 00:00:00'),
(7, 9, 1, '2019-06-28 00:21:56', '2019-06-28 00:21:56', '2018-06-27 23:59:00', NULL, NULL, '2018-06-17 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `role`, `created`, `modified`) VALUES
(1, 'admin', '2019-05-18 21:45:36', '2019-05-18 21:45:36'),
(2, 'moderador', '2019-05-18 21:45:57', '2019-05-18 21:45:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sectors`
--

INSERT INTO `sectors` (`id`, `name`) VALUES
(1, 'Engenharia Elétrica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `fone` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `students`
--

INSERT INTO `students` (`id`, `code`, `cpf`, `sector_id`, `fone`, `name`, `email`, `registration`, `user_id`) VALUES
(1, '134214214151', '16123419773', 1, '(27)996221801', 'Lucas Soares Pessini', 'lucassoarespessini@gmail.com', '2015100655', 1),
(2, '134214211234', '12341235135135', 1, '(27)999832105', 'Thais M Marchesi', 'thais.mmarchesi@gmail.com', '2015100633', 2),
(3, '134214214154', '6264356477647654', 1, '(27)998846735', 'Debora Fortuna', 'deborafortuna28@gmail.com', '2015100677', 3),
(5, '134214214151', '16123419773', 1, '27996459075', 'asdfaf', 'as.pessini@gmail.com', '2015100633', 8),
(6, '2210', '00000000000', 1, '000000000', 'debs', 'debinha22@hotmail.com', '2210', 9),
(7, '134214214151', '16123419773', 1, '12342143412', 'teste31', 'teste31@gmail.com', '12413412341', 10),
(8, '10', '14900636762', 1, '27 999999999', 'Franco Marchiori Louzada', 'franco.louzada@ufes.br', 'franco.louzada', 11),
(9, '13', '0000000', 1, '00000000', 'Fulano', 'fulanodetal@email.com', '0000000', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `roles_id`, `created`, `modified`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '$2y$10$NbwCZuKu9o6BY0TeH8XIpOzyrTNDWH25XSb1H6wNLW1AGsmY.z1Im', 1, '2019-05-18 21:57:39', '2019-05-19 00:08:33'),
(2, 'Teste', 'teste', 'teste@gmail.com', '$2y$10$vC6eMeA.w9U9xshNCI9XTuWvolyrZglqUqgXlO/YeJ1Z4HEiklCc2', 1, '2019-05-18 23:16:42', '2019-05-19 00:08:59'),
(4, 'asd', 'qd', 'asd@adfs.com', 'asd', 1, '2019-05-18 23:54:56', '2019-05-18 23:54:56'),
(5, 'sfd', 'asdf', 'admin2@gmail.com', 'asdf', 1, '2019-05-18 23:58:33', '2019-05-18 23:58:33'),
(6, 'Fulado', 'de Tal', 'fulano@gmail.com', '$2y$10$P6sdegsKba1KptmwipUvleKMwJ2356zpCCvxyfJV9FI5H3MDnSTxC', 2, '2019-06-07 00:07:37', '2019-06-07 00:07:37'),
(7, 'Fulado', 'fulanodetal', 'fulanodetal@gmail.com', '$2y$10$rlujvJ67SD3Pgx9k7UySiuzkGUzu0mJLxw6GtmDVUIEleO53ypny2', 2, '2019-06-07 00:09:27', '2019-06-07 00:09:27'),
(8, 'teste4', 'teste4', 'teste4@gmail.com', '$2y$10$uYTUZy4mHTSiUsFOL0aMhe5cwBf3ijpfKvmCNKOdOsoieZl.F.K7e', 2, '2019-06-07 03:37:46', '2019-06-07 03:37:46'),
(9, 'debs', 'fortuninha', 'debinha22@hotmail.com', '$2y$10$paypEOT8sa/WZLlodXt14.YKcZI.wLD27cv67JUFOtuHkxP.xh4uu', 2, '2019-06-12 20:39:13', '2019-06-12 20:39:13'),
(10, 'teste31', 'teste31', 'teste31@gmail.com', '$2y$10$db5jNfuDXeyioXDrOEvFKe3R9yYzD6lNsFSDLkxW1o9OlVkNL6tQG', 2, '2019-06-14 18:59:54', '2019-06-14 18:59:54'),
(11, 'Franco Marchiori Louzada', 'franco.louzada', 'franco.louzada@ufes.br', '$2y$10$EpwYwyTaVAthZCXWilkb6.63vX55Fm80V3rj1UN3GBNWJ8tlC9tyC', 2, '2019-06-27 12:52:51', '2019-06-27 12:52:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipaments`
--
ALTER TABLE `equipaments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipaments`
--
ALTER TABLE `equipaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
