-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Tempo de geração: 11/08/2023 às 01:00
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste_dev`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `cards`
--

INSERT INTO `cards` (`id`, `name`, `description`, `created_at`, `updated_at`, `images`) VALUES
(2, 'Avião', 'Entre os primeiros registros sobre a tentativa do homem voar está um de 400 a.C. Archytas, um estudioso da Grécia Antiga, que construiu um pombo de madeira que podia voar em média 180 metros. Acredita-se que tal pombo usava um jato de ar para alçar voo.', NULL, NULL, '/images/aviao.jpg'),
(3, 'Carro', 'Acho que todo homem que se preze ja teve uma paixão por algum carro, mesmo não tendo um, sempre há um modelo que nos chama atenção.\nComigo não foi diferente, eu ja tive o prazer de desfrutar o conforto de alguns, uns mais marcantes do que outros, porém to', NULL, NULL, '/images/carro.jpg'),
(4, 'Moto', 'Somos motociclistas, não tentem nos entender, nos ame ou nos odeie, não importa, seremos sempre assim, uns loucos outros corretos, caseiros e sem tetos, famílias e puteiros, som alto e som ainda mais alto. ', NULL, NULL, '/images/moto.jpg'),
(5, 'Trator', 'A mecanização no setor agrícola certamente impulsionou o trabalho no campo. Atividades antes executadas pelo ser humano e por animais passaram a ser realizadas por máquinas. E, como a tecnologia não para de se desenvolver, tais aparelhos estão cada vez ma', NULL, NULL, '/images/trator.jpg'),
(6, 'Trem', '\nO trem funciona como uma locomotiva que puxa os outros vagões. Está presente principalmente em subúrbios e regiões metropolitanas, onde há mais espaço para construção de trilhos, que também são utilizados para outras finalidades, como transporte', NULL, NULL, '/images/trem.jpg'),
(7, 'Bahia', 'A Bahia é um estado do Nordeste do Brasil, com capital em Salvador. Reúne a maior população regional, de quase 15 milhões de habitantes, e uma ampla diversidade cultural.', NULL, NULL, '/images/bahia.jpg'),
(8, 'Rio de Janeiro', 'É considerada uma cidade global. Possui clima Tropical úmido e relevo formado por planícies, serras e morros. Uma das suas feições características é o morro do Pão de Açúcar. ', NULL, NULL, '/images/rio.jpg'),
(9, 'Brasília', 'Brasília é a capital federal do Brasil. A sua história está ligada ao desejo de construção de uma capital nacional planejada, localizada no interior do país. A sua fundação data de 1960.', NULL, NULL, '/images/brasilia.jpg'),
(10, 'Manaus', 'Manaus é um município da Região Norte do Brasil. É a capital e principal cidade do estado do Amazonas.', NULL, NULL, '/images/manaus.jpg'),
(11, 'São Paulo', 'São Paulo é o estado mais populoso do Brasil. Seus habitantes são formados por diversos povos, principalmente indígenas, que já estavam na região na época do descobrimento, negros e brancos europeus de várias nacionalidades.', NULL, NULL, '/images/saopaulo.jpg'),
(12, 'Cavalo', 'Os cavalos são mamíferos quadrúpedes, do gênero Equus, que podem apresentar mais de 1,50 m de altura e pesar mais de 500 quilos', NULL, NULL, '/images/cavalo.jpg'),
(13, 'Gato', 'De nome científico Felis catus, o gato é um mamífero carnívoro e quadrúpede, ou seja, que anda sobre quatro patas. Este animal conta com ouvidos e olfações bem aguçadas, unhas retráteis, visão noturna avantajada e um corpo bastante flexível.', NULL, NULL, '/images/gato.jpg'),
(14, 'Cachorro', 'Associado à passagem entre a vida e a morte, guia das almas dos homens no seu percurso até ao paraíso ou guardião das portas do inferno, o cão é um símbolo do oculto e das artes adivinhatórias. Companheiro em vida, cumpre-lhe ser o guia dos seres humanos ', NULL, NULL, '/images/cachorro.jpg'),
(15, 'Boi', 'Mesmo com tanto músculo ele não é um animal de porte grande, mas em questão de peso, pesa muito! Aos 12 meses de idade os machos pesam em média 470 kg e mede um metro e vinte centímetros de altura, já as vacas chegam a pesar 370 kg.', NULL, NULL, '/images/boi.jpg'),
(16, 'Cobra', 'Cobra é o nome dado a répteis rastejantes, de corpo alongado e sem patas. Na verdade, chamar esses animais de “serpentes” é mais correto, já que “cobra”, em alguns países, é uma palavra usada somente para falar das najas, encontradas na África e na Ásia.', NULL, NULL, '/images/cobra.jpg'),
(17, 'Celular', 'A história dos celulares começou em 1973, com o primeiro lançamento de aparelho idealizado pelo engenheiro eletrônico Martin Cooper. Só que, nesta época, os equipamentos eram enormes, pesados e custavam uma grande fortuna. A exemplo do primeiro Motorola, ', NULL, NULL, '/images/celular.jpg'),
(18, 'Tablet', 'O primeiro tablet lançado comercialmente chegou ao mercado em 1987 pela companhia americana Linus Technologies. O Write-Top, no entanto, era muito diferente do que conhecemos por esse tipo de tecnologia hoje. Pesando aproximadamente quatro quilos, sua pri', NULL, NULL, '/images/tablet.jpg'),
(19, 'NoteBook', 'Com um notebook, você pode trabalhar, estudar, se divertir e se comunicar com o mundo a partir de qualquer lugar. Além disso, os notebooks são mais leves e compactos do que os computadores de mesa, o que os torna mais fáceis de transportar. ', NULL, NULL, '/images/notebook.jpg'),
(20, 'Computador', 'O computador, tal qual conhecemos hoje, passou por diversas transformações e foi se aperfeiçoando ao longo do tempo, acompanhando o avanço das áreas da matemática, engenharia, eletrônica. É por isso que não existe somente um inventor.\n\n', NULL, NULL, '/images/computador.jpg'),
(21, 'Televisão', 'A televisão é um dos meios de comunicação mais utilizados atualmente e sua criação se deu no início do século XX. Chegou ao Brasil na década de 1950 com a TV Tupi. ', NULL, NULL, '/images/tv.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
