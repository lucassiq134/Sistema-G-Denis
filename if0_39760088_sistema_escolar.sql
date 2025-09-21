-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql210.infinityfree.com
-- Tempo de geração: 21/09/2025 às 10:41
-- Versão do servidor: 11.4.7-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_39760088_sistema_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `nascimento` date NOT NULL,
  `turma` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `turma_id` int(11) DEFAULT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `matricula`, `nascimento`, `turma`, `email`, `turma_id`, `senha`) VALUES
(1, 'Rafael', '4032', '2010-02-05', '2A', 'rafael@gmail.com', 3, ''),
(2, 'Lucas Gabriel', '9067-7', '2005-02-02', '1A', 'lucasgabrielsiq134@gmail.com', 5, ''),
(3, 'Ana', '5632', '2003-06-03', '1A', 'aninha356@gmail.com', 6, ''),
(4, 'Roberto', '2451', '2008-02-23', '', 'roberto@gmail.com', 6, ''),
(5, 'João', '1267', '2001-02-23', '', 'joaozinho45@gmail.com', 2, ''),
(6, 'Ronaldo', '2854', '2008-01-23', '', 'ronaldo23@gmail.com', 5, ''),
(7, 'Rickelmme Barreto', '5050', '2010-10-10', '', 'rickelmme@gmail.com', 9, ''),
(8, 'Otavio', '4092', '2001-04-02', '', 'otavio@gmail.com', 9, ''),
(9, 'Monica', '1111', '2000-01-05', '', 'monica@gmail.com', 4, '7777'),
(10, 'Daniel', '2222', '2001-01-01', '', 'daniel@gmail.com', 1, '2222'),
(11, 'Marcelo', '3333', '2005-02-03', '', 'marcelo@gmail.com', 7, '3333'),
(12, 'Fernando', '4444', '1999-10-02', '', 'fernando@gmail.com', 7, '4444'),
(13, 'Gabriel', '5555', '2001-03-02', '', 'gabriel@gmail.com', 9, '5555');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  `professor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `codigo`, `carga_horaria`, `professor`) VALUES
(1, 'Matemática', '0247', 60, 'Rosica'),
(2, 'Português', '0381', 60, 'Mathias'),
(3, 'História', '0960', 40, 'Dulce'),
(4, 'Geografia', '8080', 60, 'Luan Martins'),
(5, 'Ciências', '9011', 60, 'Maria'),
(6, 'Educação Física', '1854', 60, 'Masson'),
(7, 'Biologia', '6783', 60, 'Rosana'),
(8, 'Artes', '1119', 60, 'Antônio'),
(9, 'Física', '2145', 60, 'Eliane'),
(10, 'Química', '8943', 60, 'Mario'),
(11, 'Filosofia', '2224', 60, 'Rosana'),
(12, 'Sociologia', '1188', 60, 'Edinei'),
(13, 'Projeto de Vida', '2567', 60, 'Claudinei');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas_faltas`
--

CREATE TABLE `notas_faltas` (
  `id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `bimestre` varchar(20) NOT NULL,
  `nota` decimal(5,2) NOT NULL,
  `faltas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notas_faltas`
--

INSERT INTO `notas_faltas` (`id`, `aluno_id`, `disciplina_id`, `bimestre`, `nota`, `faltas`) VALUES
(1, 1, 2, '3º Bimestre', '10.00', 2),
(2, 2, 1, '4º Bimestre', '10.00', 3),
(3, 3, 2, '4º Bimestre', '8.00', 5),
(4, 5, 1, '4º Bimestre', '7.00', 1),
(5, 2, 2, '3º Bimestre', '8.00', 5),
(6, 6, 2, '3º Bimestre', '10.00', 1),
(7, 4, 1, '4º Bimestre', '7.00', 2),
(8, 7, 3, '1º Bimestre', '9.00', 2),
(9, 2, 3, '1º Bimestre', '10.00', 1),
(10, 7, 5, '1º Bimestre', '0.00', 0),
(11, 7, 3, '4º Bimestre', '10.00', 0),
(12, 13, 13, '1º Bimestre', '10.00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `presencas`
--

CREATE TABLE `presencas` (
  `id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `turma_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `presente` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `presencas`
--

INSERT INTO `presencas` (`id`, `aluno_id`, `turma_id`, `disciplina_id`, `professor_id`, `data`, `presente`) VALUES
(1, 1, 3, 3, 1, '2025-09-06', 1),
(2, 1, 3, 1, 1, '2025-09-07', 1),
(3, 2, 5, 5, 1, '2025-09-06', 1),
(4, 6, 5, 5, 1, '2025-09-06', 1),
(5, 5, 2, 3, 1, '2025-09-07', 1),
(6, 8, 9, 1, 1, '2025-09-07', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `materia`, `email`, `data_nascimento`) VALUES
(1, 'Rosica', 'Matemática', 'rosicao@gmail.com', NULL),
(2, 'Mathias', 'Português', 'mathias@gmail.com', NULL),
(3, 'Luan Martins', 'Geografia', 'luanmartins@gmail.com', NULL),
(4, 'Dulce', 'História', 'dulcehelena@gmail.com', NULL),
(5, 'Maria', 'Ciências', 'Maria@gmail.com', NULL),
(6, 'Masson', 'Educação Física', 'masson@gmail.com', NULL),
(7, 'Rosana', 'Biologia', 'Rosana@gmail.com', NULL),
(8, 'Antônio', 'Artes', 'Antonio@gmail.com', NULL),
(9, 'Eliane', 'Física', 'eliane@gmail.com', NULL),
(10, 'Mario', 'Química', 'mario@gmail.com', NULL),
(11, 'Edinei', 'Sociologia', 'edinei@gmail.com', NULL),
(13, 'Claudinei', 'Projeto de Vida', 'claudinei@gmail.com', '2002-02-02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `serie` varchar(50) NOT NULL,
  `ano_letivo` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id`, `nome`, `serie`, `ano_letivo`) VALUES
(1, 'Fatec Mirim', '2ºB', 2025),
(2, 'LendasDoChicoPereira', '3ºB', 2025),
(3, 'MelhoresDaFatec', '1ºA', 2025),
(4, 'Desbravadores', '2ºA', 2025),
(5, 'Estudiosos', '1ºB', 2025),
(6, 'TurmaDoFundão', '1ºC', 2025),
(7, 'TurmaDaProvaSurpresa', '2ºC', 2025),
(8, 'FatecMaster', '3ºA', 2025),
(9, 'Finalizantes', '3ºC', 2025),
(10, 'Pós Graduados', '4ºA', 2026),
(11, 'PrimeiroF', '4ºB', 2026);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('admin','professor','aluno') NOT NULL DEFAULT 'aluno'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'rafa', 'rafa@gmail.com', '1234', 'aluno'),
(2, 'Lucas Gabriel', 'lucasgabrielsiq134@gmail.com', '1234', 'aluno'),
(3, 'Ana', 'aninha356@gmail.com', '1234', 'aluno'),
(4, 'Roberto', 'roberto@gmail.com', '1234', 'aluno'),
(5, 'João', 'joaozinho45@gmail.com', '1234', 'aluno'),
(6, 'Ronaldo', 'ronaldo23@gmail.com', '1234', 'aluno'),
(7, 'Rickelmme Barreto', 'rickelmme@gmail.com', '1234', 'aluno'),
(8, 'Rosica', 'rosicao@gmail.com', '1234', 'professor'),
(9, 'Mathias', 'mathias@gmail.com', '1234', 'professor'),
(10, 'Administrador', 'admin@gmail.com', '1234', 'admin'),
(11, 'Luan Martins', 'luanmartins@gmail.com', '1234', 'professor'),
(12, 'Daniel', 'daniel@gmail.com', '2222', 'aluno'),
(13, 'Marcelo', 'marcelo@gmail.com', '3333', 'aluno'),
(14, 'Fernando', 'fernando@gmail.com', '4444', 'aluno'),
(15, 'Gabriel', 'gabriel@gmail.com', '5555', 'aluno'),
(16, 'Monica', 'monica@gmail.com', '7777', 'aluno'),
(18, 'Claudinei', 'claudinei@gmail.com', '02022002', 'professor');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notas_faltas`
--
ALTER TABLE `notas_faltas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aluno_id` (`aluno_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Índices de tabela `presencas`
--
ALTER TABLE `presencas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aluno_id` (`aluno_id`),
  ADD KEY `turma_id` (`turma_id`),
  ADD KEY `disciplina_id` (`disciplina_id`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `notas_faltas`
--
ALTER TABLE `notas_faltas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `presencas`
--
ALTER TABLE `presencas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `notas_faltas`
--
ALTER TABLE `notas_faltas`
  ADD CONSTRAINT `notas_faltas_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `notas_faltas_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
