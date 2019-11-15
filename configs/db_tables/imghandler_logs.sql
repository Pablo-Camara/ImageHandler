-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Nov-2019 às 20:32
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `imghandler_logs`
--

CREATE TABLE `imghandler_logs` (
  `image_id` int(11) NOT NULL,
  `extension` varchar(4) NOT NULL,
  `destination_screen_width` int(11) NOT NULL,
  `original_width` int(11) DEFAULT NULL,
  `original_height` int(11) DEFAULT NULL,
  `max_width` int(11) NOT NULL,
  `max_height` int(11) NOT NULL,
  `resized_width` int(11) DEFAULT NULL,
  `resized_height` int(11) DEFAULT NULL,
  `fetch_url` varchar(2083) NOT NULL,
  `relative_fetch_url_path` varchar(2083) NOT NULL,
  `original_image_backup_path` varchar(2083) DEFAULT NULL,
  `resized_image_path` varchar(2083) DEFAULT NULL,
  `queued_at` datetime NOT NULL DEFAULT current_timestamp(),
  `resized_at` datetime DEFAULT NULL,
  `backup_saved_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imghandler_logs`
--

INSERT INTO `imghandler_logs` (`image_id`, `extension`, `destination_screen_width`, `original_width`, `original_height`, `max_width`, `max_height`, `resized_width`, `resized_height`, `fetch_url`, `relative_fetch_url_path`, `original_image_backup_path`, `resized_image_path`, `queued_at`, `resized_at`, `backup_saved_at`) VALUES
(1, 'jpg', 1440, NULL, NULL, 362, 385, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/costea-plop.jpg', 'img/galeria/costea-plop.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(2, 'jpg', 1440, NULL, NULL, 362, 483, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/manicure-e-pedicure.jpg', 'img/galeria/manicure-e-pedicure.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(3, 'jpg', 1440, NULL, NULL, 490, 490, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/marcia-cordeiro.jpg', 'img/galeria/marcia-cordeiro.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(4, 'jpg', 1440, NULL, NULL, 362, 483, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/tratamentos-corporais-gessoterapia.jpg', 'img/galeria/tratamentos-corporais-gessoterapia.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(5, 'jpg', 1440, NULL, NULL, 362, 483, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/paola-camara.jpg', 'img/galeria/paola-camara.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(6, 'jpg', 1440, NULL, NULL, 1600, 900, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/cabeleireiro-marcia-cordeiro.jpg', 'img/galeria/cabeleireiro-marcia-cordeiro.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(7, 'jpg', 1440, NULL, NULL, 457, 330, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/26-09-1990.jpg', 'img/galeria/categorias/formacoes/diplomas/26-09-1990.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(8, 'jpg', 1440, NULL, NULL, 457, 323, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/05-01-1996.jpg', 'img/galeria/categorias/formacoes/diplomas/05-01-1996.jpg', NULL, NULL, '2019-11-15 19:08:16', NULL, NULL),
(9, 'jpg', 1440, NULL, NULL, 457, 332, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/28-05-1996.jpg', 'img/galeria/categorias/formacoes/diplomas/28-05-1996.jpg', NULL, NULL, '2019-11-15 19:08:17', NULL, NULL),
(10, 'png', 1440, NULL, NULL, 457, 340, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/30-07-1997.png', 'img/galeria/categorias/formacoes/diplomas/30-07-1997.png', NULL, NULL, '2019-11-15 19:08:17', NULL, NULL),
(11, 'png', 1440, NULL, NULL, 457, 346, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/01-01-1998.png', 'img/galeria/categorias/formacoes/diplomas/01-01-1998.png', NULL, NULL, '2019-11-15 19:08:17', NULL, NULL),
(12, 'jpg', 1440, NULL, NULL, 457, 646, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/10-04-2007.jpg', 'img/galeria/categorias/formacoes/diplomas/10-04-2007.jpg', NULL, NULL, '2019-11-15 19:08:17', NULL, NULL),
(13, 'jpg', 1440, NULL, NULL, 457, 330, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/25-10-2002.jpg', 'img/galeria/categorias/formacoes/diplomas/25-10-2002.jpg', NULL, NULL, '2019-11-15 19:08:17', NULL, NULL),
(14, 'jpg', 1440, NULL, NULL, 457, 313, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/30-03-2009.jpg', 'img/galeria/categorias/formacoes/diplomas/30-03-2009.jpg', NULL, NULL, '2019-11-15 19:08:17', NULL, NULL),
(15, 'jpg', 1440, NULL, NULL, 457, 326, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/13-04-2009.jpg', 'img/galeria/categorias/formacoes/diplomas/13-04-2009.jpg', NULL, NULL, '2019-11-15 19:08:17', NULL, NULL),
(16, 'png', 1440, NULL, NULL, 457, 322, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/17-09-2018.png', 'img/galeria/categorias/formacoes/diplomas/17-09-2018.png', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(17, 'jpg', 1440, NULL, NULL, 457, 316, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/31-10-2018.jpg', 'img/galeria/categorias/formacoes/diplomas/31-10-2018.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(18, 'jpg', 1440, NULL, NULL, 457, 326, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/02-11-2018.jpg', 'img/galeria/categorias/formacoes/diplomas/02-11-2018.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(19, 'jpg', 1440, NULL, NULL, 457, 330, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/18-02-2010.jpg', 'img/galeria/categorias/formacoes/diplomas/18-02-2010.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(20, 'jpg', 1440, NULL, NULL, 457, 327, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/08-04-2019.jpg', 'img/galeria/categorias/formacoes/diplomas/08-04-2019.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(21, 'jpg', 1440, NULL, NULL, 457, 332, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/06-04-2019.jpg', 'img/galeria/categorias/formacoes/diplomas/06-04-2019.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(22, 'jpg', 1440, NULL, NULL, 457, 317, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/08-07-2019.jpg', 'img/galeria/categorias/formacoes/diplomas/08-07-2019.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(23, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-trancas2.jpg', 'img/galeria/inspiracao-trancas2.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(24, 'jpg', 1440, NULL, NULL, 457, 310, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/categorias/formacoes/diplomas/22-07-2019.jpg', 'img/galeria/categorias/formacoes/diplomas/22-07-2019.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(25, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-loiro1.jpg', 'img/galeria/inspiracao-loiro1.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(26, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-trancas1.jpg', 'img/galeria/inspiracao-trancas1.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(27, 'jpg', 1440, NULL, NULL, 221, 235, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/costea-plop.jpg', 'img/galeria/costea-plop.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(28, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/paola-camara.jpg', 'img/galeria/paola-camara.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(29, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-homem2.jpg', 'img/galeria/inspiracao-homem2.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(30, 'jpg', 1440, NULL, NULL, 221, 401, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-loiro2.jpg', 'img/galeria/inspiracao-loiro2.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(31, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-caracois.jpg', 'img/galeria/inspiracao-caracois.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(32, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-alisamento1.jpg', 'img/galeria/inspiracao-alisamento1.jpg', NULL, NULL, '2019-11-15 19:08:18', NULL, NULL),
(33, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-alisamento2.jpg', 'img/galeria/inspiracao-alisamento2.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(34, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cor-cabelo-curto1.jpg', 'img/galeria/inspiracao-cor-cabelo-curto1.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(35, 'jpg', 1440, NULL, NULL, 221, 401, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cor-cabelo-curto2.jpg', 'img/galeria/inspiracao-cor-cabelo-curto2.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(36, 'jpg', 1440, NULL, NULL, 221, 455, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-azul2.jpg', 'img/galeria/inspiracao-cabelo-azul2.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(37, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-curto1.jpg', 'img/galeria/inspiracao-cabelo-curto1.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(38, 'jpg', 1440, NULL, NULL, 221, 401, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-curto2.jpg', 'img/galeria/inspiracao-cabelo-curto2.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(39, 'jpg', 1440, NULL, NULL, 221, 455, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-azul1.jpg', 'img/galeria/inspiracao-cabelo-azul1.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(40, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-curto-3.jpg', 'img/galeria/inspiracao-curto-3.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(41, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-curto4.jpg', 'img/galeria/inspiracao-curto4.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(42, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-curto6.jpg', 'img/galeria/inspiracao-curto6.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(43, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-curto5.jpg', 'img/galeria/inspiracao-curto5.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(44, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-caracois2.jpg', 'img/galeria/inspiracao-caracois2.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(45, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-caracois3.jpg', 'img/galeria/inspiracao-caracois3.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(46, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-liso2.jpg', 'img/galeria/inspiracao-cabelo-liso2.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(47, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-liso1.jpg', 'img/galeria/inspiracao-cabelo-liso1.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(48, 'jpg', 1440, NULL, NULL, 221, 397, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-caracois5.jpg', 'img/galeria/inspiracao-cabelo-caracois5.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(49, 'jpg', 1440, NULL, NULL, 221, 401, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-caracois4.jpg', 'img/galeria/inspiracao-cabelo-caracois4.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(50, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-caracois7.jpg', 'img/galeria/inspiracao-cabelo-caracois7.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(51, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-caracois6.jpg', 'img/galeria/inspiracao-cabelo-caracois6.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(52, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-curto-5.jpg', 'img/galeria/inspiracao-cabelo-curto-5.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(53, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-curto-6.jpg', 'img/galeria/inspiracao-cabelo-curto-6.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(54, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-curto-7.jpg', 'img/galeria/inspiracao-cabelo-curto-7.jpg', NULL, NULL, '2019-11-15 19:08:19', NULL, NULL),
(55, 'jpg', 1440, NULL, NULL, 221, 260, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-azul1.jpg', 'img/galeria/inspiracao-unhas-azul1.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(56, 'jpg', 1440, NULL, NULL, 221, 148, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-preto-e-branco1.jpg', 'img/galeria/inspiracao-unhas-preto-e-branco1.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(57, 'jpg', 1440, NULL, NULL, 221, 455, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-cabelo-curto-8.jpg', 'img/galeria/inspiracao-cabelo-curto-8.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(58, 'jpg', 1440, NULL, NULL, 221, 166, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-preto-e-branco2.jpg', 'img/galeria/inspiracao-unhas-preto-e-branco2.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(59, 'jpg', 1440, NULL, NULL, 221, 295, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-preto-e-branco3.jpg', 'img/galeria/inspiracao-unhas-preto-e-branco3.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(60, 'jpg', 1440, NULL, NULL, 221, 166, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-verde1.jpg', 'img/galeria/inspiracao-unhas-verde1.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(61, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-rosa-2.jpg', 'img/galeria/inspiracao-unhas-rosa-2.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(62, 'jpg', 1440, NULL, NULL, 221, 165, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-laranja1.jpg', 'img/galeria/inspiracao-unhas-laranja1.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(63, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-rosa.jpg', 'img/galeria/inspiracao-unhas-rosa.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(64, 'jpg', 1440, NULL, NULL, 221, 221, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-preto-e-vermelho.jpg', 'img/galeria/inspiracao-unhas-preto-e-vermelho.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(65, 'jpg', 1440, NULL, NULL, 221, 332, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-preto-e-azul.jpg', 'img/galeria/inspiracao-unhas-preto-e-azul.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(66, 'jpg', 1440, NULL, NULL, 221, 392, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-branco.jpg', 'img/galeria/inspiracao-unhas-branco.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL),
(67, 'jpg', 1440, NULL, NULL, 221, 393, NULL, NULL, 'file:///C:/Users/Pablo Calebe/Desktop/projects/marciacabeleireiro.com/img/galeria/inspiracao-unhas-vermelho.jpg', 'img/galeria/inspiracao-unhas-vermelho.jpg', NULL, NULL, '2019-11-15 19:08:20', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `imghandler_logs`
--
ALTER TABLE `imghandler_logs`
  ADD PRIMARY KEY (`image_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imghandler_logs`
--
ALTER TABLE `imghandler_logs`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
