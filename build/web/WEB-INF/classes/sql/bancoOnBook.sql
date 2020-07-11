-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jul-2020 às 09:01
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `onbook`
--

CREATE DATABASE ONBOOK;
USE ONBOOK;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `nome`) VALUES
(2, 'J. K. Rowling'),
(4, 'Ariano Suassuna');

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `idBiblioteca` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `rua` mediumtext NOT NULL,
  `numEnd` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `biblioteca`
--

INSERT INTO `biblioteca` (`idBiblioteca`, `nome`, `rua`, `numEnd`, `bairro`, `cidade`, `estado`, `telefone`, `email`) VALUES
(3, 'Biblioteca Municipal de São José', 'R. Padre Macário', '10', 'Centro', 'São José', 'SC', '(48) 3259-2368', 'bibliotecasaojose@gmail.com'),
(4, 'Biblioteca Pública Municipal de Palhoça', 'R. João Pereira dos Santos', '305', 'Ponte do Imaruim', 'Palhoça', 'SC', '(48) 3242-4381', 'bibliotecapalhoca@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(6) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nome`) VALUES
(1, 'Comedia'),
(3, 'Drama'),
(4, 'Fantasia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `idEmprestimo` int(11) NOT NULL,
  `dataRetirada` date DEFAULT NULL,
  `dataInicioEmprestimo` date NOT NULL,
  `dataFimEmprestimo` date NOT NULL,
  `dataEntrega` date DEFAULT NULL,
  `idUsuarioSolicitante` int(6) DEFAULT NULL,
  `idReferencia` int(6) NOT NULL,
  `idSituacao` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`idEmprestimo`, `dataRetirada`, `dataInicioEmprestimo`, `dataFimEmprestimo`, `dataEntrega`, `idUsuarioSolicitante`, `idReferencia`, `idSituacao`) VALUES
(1, NULL, '2020-07-09', '2020-07-16', '2020-07-08', NULL, 1, 3),
(2, NULL, '2020-07-16', '2020-07-30', '2020-07-31', NULL, 2, 3),
(3, NULL, '2020-07-10', '2020-07-17', NULL, NULL, 7, 3),
(4, NULL, '2020-07-10', '2020-07-17', NULL, NULL, 6, 3),
(8, NULL, '2020-07-11', '2020-07-18', NULL, NULL, 1, 2),
(10, NULL, '2020-07-01', '2020-07-08', NULL, NULL, 2, 1),
(11, NULL, '2020-07-03', '2020-07-10', NULL, NULL, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo_situacao`
--

CREATE TABLE `emprestimo_situacao` (
  `idSituacao` int(6) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `emprestimo_situacao`
--

INSERT INTO `emprestimo_situacao` (`idSituacao`, `nome`) VALUES
(1, 'Em atraso'),
(2, 'Pendente'),
(3, 'Finalizado'),
(4, 'Aguardando retirada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `referencia`
--

CREATE TABLE `referencia` (
  `idReferencia` int(6) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `idAutor` int(6) NOT NULL,
  `idCategoria` int(6) NOT NULL,
  `idBiblioteca` int(6) NOT NULL,
  `imagem` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `referencia`
--

INSERT INTO `referencia` (`idReferencia`, `isbn`, `titulo`, `volume`, `idAutor`, `idCategoria`, `idBiblioteca`, `imagem`) VALUES
(1, '1234567890', 'Harry Potter e a Pedra Filosofal', '1', 2, 4, 4, 'teste.jpg'),
(2, '123456789011', 'Auto da Compadecida', '1', 4, 3, 3, 'teste.png'),
(6, '12345678901', 'Harry Potter e a Camara Secreta', '1', 2, 4, 3, NULL),
(7, '987654321', 'Harry Potter e o Prisoneiro de Azkaban', '1', 2, 4, 4, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `endereco` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Índices para tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`idBiblioteca`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`idEmprestimo`),
  ADD KEY `idUsuarioSolicitante` (`idUsuarioSolicitante`),
  ADD KEY `idReferencia` (`idReferencia`),
  ADD KEY `idSituacao` (`idSituacao`);

--
-- Índices para tabela `emprestimo_situacao`
--
ALTER TABLE `emprestimo_situacao`
  ADD PRIMARY KEY (`idSituacao`);

--
-- Índices para tabela `referencia`
--
ALTER TABLE `referencia`
  ADD PRIMARY KEY (`idReferencia`),
  ADD KEY `idAutor` (`idAutor`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idBiblioteca` (`idBiblioteca`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `idBiblioteca` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `idEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `emprestimo_situacao`
--
ALTER TABLE `emprestimo_situacao`
  MODIFY `idSituacao` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `referencia`
--
ALTER TABLE `referencia`
  MODIFY `idReferencia` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(6) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`idUsuarioSolicitante`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`idReferencia`) REFERENCES `referencia` (`idReferencia`),
  ADD CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`idSituacao`) REFERENCES `emprestimo_situacao` (`idSituacao`);

--
-- Limitadores para a tabela `referencia`
--
ALTER TABLE `referencia`
  ADD CONSTRAINT `referencia_ibfk_1` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`),
  ADD CONSTRAINT `referencia_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  ADD CONSTRAINT `referencia_ibfk_3` FOREIGN KEY (`idBiblioteca`) REFERENCES `biblioteca` (`idBiblioteca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
