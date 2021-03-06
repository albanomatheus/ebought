# noinspection SqlNoDataSourceInspectionForFile

-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 27/03/2018 às 09:56
-- Versão do servidor: 5.7.21-0ubuntu0.17.10.1
-- Versão do PHP: 7.1.15-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `daystore`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `cat` varchar(20) NOT NULL,
  `tags` text,
  `price` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cpf` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `birth` timestamp NOT NULL,
  `job` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `street` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `address` (`id`, `postal_code`, `city`, `street`, `block`) VALUES
(1, '38408-720', 'Uberlandia', 'Vasco Mascia', 'Santa Luzia');

INSERT INTO `address` (`id`, `postal_code`, `city`, `street`, `block`) VALUES
(2, '38500-000', 'Uberlandia', 'João da Silva', 'Brazil');

INSERT INTO `address` (`id`, `postal_code`, `city`, `street`, `block`) VALUES
(3, '38500-111', 'Uberlandia', 'Maria Joaquina', 'Centro');

INSERT INTO `address` (`id`, `postal_code`, `city`, `street`, `block`) VALUES
(4, '38500-222', 'Uberlandia', 'Rua dos Carros', 'Custódio Pereira');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices de tabela `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices de tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
