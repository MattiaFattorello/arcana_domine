-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: mysql.netsons.com:3306
-- Creato il: Lug 10, 2017 alle 20:48
-- Versione del server: 10.0.31-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arcana_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `aree_talenti`
--

CREATE TABLE `aree_talenti` (
  `id_area_talenti` int(10) NOT NULL,
  `nome_area_telenti` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `aree_talenti`
--

INSERT INTO `aree_talenti` (`id_area_talenti`, `nome_area_telenti`) VALUES
(1, 'Talenti Base'),
(2, 'Vicolo'),
(3, 'Resistenza'),
(4, 'Combattimento'),
(5, 'Disciplina'),
(6, 'Intelligenza'),
(7, 'Tiro'),
(8, 'Destrezza'),
(9, 'Forza'),
(10, 'Rari'),
(11, 'Abilità Arcane'),
(14, 'Incantesimi'),
(15, 'Svantaggi'),
(16, 'Talenti Speciali'),
(17, 'Patti Misterici'),
(18, 'Tratti Raziali'),
(19, 'Tratti Inumani'),
(20, 'Apoteosi');

-- --------------------------------------------------------

--
-- Struttura della tabella `aree_talenti_razze`
--

CREATE TABLE `aree_talenti_razze` (
  `id_razza` int(10) NOT NULL,
  `id_area` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `aree_talenti_razze`
--

INSERT INTO `aree_talenti_razze` (`id_razza`, `id_area`) VALUES
(1, 1),
(1, 2),
(1, 11),
(1, 14),
(2, 1),
(2, 2),
(2, 11),
(2, 14),
(3, 1),
(3, 2),
(3, 11),
(3, 14),
(4, 1),
(4, 2),
(4, 11),
(4, 14),
(5, 1),
(5, 3),
(5, 4),
(5, 5),
(5, 11),
(5, 14),
(6, 1),
(6, 3),
(6, 4),
(6, 5),
(6, 11),
(6, 14),
(7, 1),
(7, 3),
(7, 4),
(7, 5),
(7, 11),
(7, 14),
(8, 1),
(8, 4),
(8, 7),
(8, 8),
(8, 11),
(8, 14),
(9, 1),
(9, 4),
(9, 7),
(9, 8),
(9, 11),
(9, 14),
(10, 1),
(10, 4),
(10, 7),
(10, 8),
(10, 11),
(10, 14),
(11, 1),
(11, 4),
(11, 7),
(11, 8),
(11, 11),
(11, 14),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 9),
(20, 11),
(20, 14),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 9),
(21, 11),
(21, 14),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 9),
(22, 11),
(22, 14);

-- --------------------------------------------------------

--
-- Struttura della tabella `azioni_economiche`
--

CREATE TABLE `azioni_economiche` (
  `id_azione` int(10) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descrizione` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `azioni_economiche`
--

INSERT INTO `azioni_economiche` (`id_azione`, `nome`, `descrizione`) VALUES
(1, 'Lavorare', 'Il personaggio ottiene una rendita fissa decisa dallo Staff (solitamente in denaro)'),
(2, 'Cercare', 'Un giocatore può chiedere che lo Staff inserisca in gioco durante l’evento uno tra: informazioni su un argomento desiderato, un determinato oggetto, un personaggio non giocante (solitamente un Maestro con dati talenti), una specifica creatura rara. Lo Staff s’impegnerà al meglio per attuare la richiesta, ma non è assolutamente certo che il personaggio ottenga automaticamente ciò che sta cercando. Un dato oggetto potrebbe essere in mano ad un nemico o nascosto, un personaggio non giocante potrebbe entrare in gioco per un periodo di tempo limitato, le informazioni cercate potrebbero essere in mano ad altri. Si consiglia di impegnarsi comunque al meglio per non lasciarsi sfuggire l’occasione e impedire di essere battuti sul tempo da altri.'),
(3, 'Attivare Talento', 'Un personaggio può attivare uno o più tra i seguenti talenti (Conoscenze, Raccattasoldi, Mercato Nero, Voce Suadente, le Arti e i Talenti per la Creazione come spiegati nel Sommo Compendio). Si ricorda che un personaggio DEVE possedere le risorse necessarie alla creazione degli oggetti alla fine dell’ultimo evento a cui ha partecipato (Ufficiale o Cena in Gioco), e deve consegnarli durante la Segreteria Pre-Evento, prima di ricevere altre risorse o rendite. NON è possibile aiutare un altro personaggio nella creazione di oggetti. Mercato Nero consente inoltre di mettere all’asta oggetti posseduti, lasciandoli temporaneamente allo Staff, che provvederà a metterli in lista per l’evento successivo a quello in cui il talento è stato attivato.'),
(4, 'Attivare Privilegi', 'Se un personaggio possiede Privilegi che hanno effetto tra un evento e l’altro, il giocatore può utilizzare quest’azione per attivarli. (Le Conoscenze specifiche delle Organizzazioni o simili).'),
(5, 'Concentrazione', 'Aumenta di 1 la capacità di incamerare stille di un mago che possieda un Incanto Maggiore ma non Volontà. Se il personaggio finisce l’evento con una Stilla incamerata, entro quello successivo deve apprendere Volontà o utilizzare nuovamente Concentrazione. (Pena la morte tramite violenta esplosione a inizio evento).'),
(6, 'Intercettare Missive', 'Spendendo una quantità di denaro a scelta dell’Intercettatore, è possibile tentare di ottenere le trascrizioni delle missive che un personaggio ha inviato o ricevuto tra un evento e l’altro. La somma deve essere maggiore della quantità di denaro utilizzata per proteggere la missiva. Nel caso di missive multiple e diverse somme di denaro usate per proteggerle, starà allo Staff scegliere quali saranno intercettate con successo.'),
(7, 'Acquistare Oggetti', 'Ad ogni evento sarà disponibile una selezione di oggetti acquistabile da qualunque personaggio effettui quest’azione. Essi non saranno in numero limitato e un personaggio può decidere di acquistarne la quantità che preferisce, ma li avrà addosso (o in un suo sacco portatutto) a inizio evento. Gli acquisti possono essere effettuati unicamente in denaro (da consegnare durante la Segreteria Pre Evento).'),
(8, 'Nessuna', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `cartellini`
--

CREATE TABLE `cartellini` (
  `id_cartellino` int(10) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `fattura` varchar(255) DEFAULT NULL,
  `requisiti` varchar(255) DEFAULT NULL,
  `testo` text,
  `tipologia` int(11) DEFAULT NULL,
  `formato` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `domande_feedback`
--

CREATE TABLE `domande_feedback` (
  `id_evento` int(11) NOT NULL,
  `id_domanda` int(11) NOT NULL,
  `domanda` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `eventi`
--

CREATE TABLE `eventi` (
  `id_evento` int(10) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `descrizione` text,
  `luogo` varchar(45) DEFAULT NULL,
  `pp` int(2) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `stato` tinyint(1) NOT NULL DEFAULT '0',
  `costo` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `feedback`
--

CREATE TABLE `feedback` (
  `id_domanda` int(10) NOT NULL,
  `id_utente` bigint(20) NOT NULL,
  `risposta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `organizzazioni`
--

CREATE TABLE `organizzazioni` (
  `id_org` int(10) NOT NULL,
  `nome_org` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `organizzazioni`
--

INSERT INTO `organizzazioni` (`id_org`, `nome_org`) VALUES
(0, 'Libero'),
(1, 'Chiesa della Sacra Mano'),
(2, 'Tribù del lupo guardiano'),
(3, 'Congrega della Fiamma Eterna'),
(4, 'L\'Occhio e la Spada'),
(5, 'Patto d\'Acciaio');

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipanti`
--

CREATE TABLE `partecipanti` (
  `id_evento` int(10) NOT NULL,
  `id_azione` int(10) NOT NULL,
  `id_pg` int(10) NOT NULL,
  `id_utente` bigint(20) NOT NULL,
  `stato` bit(1) DEFAULT b'0',
  `note_iscrizione` text,
  `note_azione` text,
  `data_iscrizione_evento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `personaggi`
--

CREATE TABLE `personaggi` (
  `id_personaggio` int(10) NOT NULL,
  `nome_pg` varchar(45) NOT NULL,
  `background` text NOT NULL,
  `note_pg` text,
  `note_staff` text,
  `stato` int(1) NOT NULL DEFAULT '0',
  `id_utente` bigint(20) NOT NULL,
  `razza` int(10) NOT NULL,
  `religione` int(10) NOT NULL,
  `organizzazione` int(10) NOT NULL DEFAULT '0',
  `grado` int(1) NOT NULL DEFAULT '0',
  `nome_giocatore` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `punti_presenza`
--

CREATE TABLE `punti_presenza` (
  `id` int(10) NOT NULL,
  `id_utente` bigint(20) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `descrizione` varchar(50) NOT NULL,
  `pp` int(5) NOT NULL DEFAULT '0',
  `data` datetime NOT NULL,
  `stato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `razze`
--

CREATE TABLE `razze` (
  `id_razza` int(10) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `razze`
--

INSERT INTO `razze` (`id_razza`, `nome`) VALUES
(1, 'Umano Fargan'),
(2, 'Umano Salman'),
(3, 'Umano Ayame'),
(4, 'Umano delle Terre Barbariche'),
(5, 'Nano Sottomonteo'),
(6, 'Nano degli Altipiani'),
(7, 'Nano Nero'),
(8, 'Elfo Bianco'),
(9, 'Elfo Nero'),
(10, 'Elfo Verde'),
(11, 'Elfo delle Terre Barbariche'),
(12, 'Gnomo della Pietra Nera'),
(13, 'Gnomo del Quadrifoglio'),
(14, 'Goblin del clan Pastori'),
(15, 'Goblin del clan Coltivatori'),
(16, 'Goblin Jhaviti'),
(17, 'Hobgoblin Nomadi '),
(18, 'Hobgoblin di Fossa'),
(19, 'Goblin Ayame'),
(20, 'Orco dei Fiordi Scarlatti'),
(21, 'Orco delle Terre Barbariche'),
(22, 'Orco Celti'),
(23, 'Mezzuomo Agricoltori'),
(24, 'Mezzuomoi Gitani'),
(25, 'Mezzuomo del Quadrifoglio'),
(26, 'Ogre delle Terre Barbariche'),
(27, 'Ogre Nomadi'),
(28, 'Minotauro delle Città Sacre degli Avi'),
(29, 'Minotauro clan Nomadi'),
(30, 'Troll Comune delle Montagne'),
(31, 'Troll Comune delle Foreste'),
(32, 'Troll Comune dei Cunicoli'),
(33, 'Troll Comune delle Paludi'),
(34, 'Coboldo Atlantideo'),
(35, 'Coboldo delle Terre Barbariche'),
(36, 'Troll Ombroso dei Boschi'),
(37, 'Troll Ombroso delle Montagne Ghiacciate'),
(38, 'Troll Ombroso del Quadrifoglio');

-- --------------------------------------------------------

--
-- Struttura della tabella `razze_campagna`
--

CREATE TABLE `razze_campagna` (
  `id_razza` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `razze_campagna`
--

INSERT INTO `razze_campagna` (`id_razza`) VALUES
(1),
(4),
(5),
(6),
(9),
(10),
(21);

-- --------------------------------------------------------

--
-- Struttura della tabella `religioni`
--

CREATE TABLE `religioni` (
  `id` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `religioni`
--

INSERT INTO `religioni` (`id`, `nome`) VALUES
(1, 'Chiesa della Sacra Mano'),
(2, 'Culto di Ze`ev e G'),
(3, 'Dogma d\'acciaio'),
(4, 'Ortodossia patriarcale'),
(5, 'Culto degli Avi'),
(6, 'Culto Eterno'),
(7, 'Figli segreti'),
(8, 'Setta della Fauce Nera'),
(99, 'Altro'),
(102, 'Nessuna');

-- --------------------------------------------------------

--
-- Struttura della tabella `requisiti`
--

CREATE TABLE `requisiti` (
  `id_talento` int(10) NOT NULL,
  `id_talento_requisito` int(10) NOT NULL,
  `flag_alternativo` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `requisiti`
--

INSERT INTO `requisiti` (`id_talento`, `id_talento_requisito`, `flag_alternativo`) VALUES
(11, 10, b'0'),
(12, 10, b'0'),
(14, 13, b'0'),
(17, 10, b'0'),
(17, 16, b'0'),
(25, 18, b'0'),
(27, 26, b'0'),
(31, 30, b'0'),
(33, 32, b'0'),
(34, 43, b'0'),
(36, 45, b'0'),
(39, 45, b'0'),
(40, 46, b'0'),
(42, 38, b'0'),
(42, 47, b'0'),
(48, 47, b'0'),
(49, 47, b'0'),
(50, 43, b'0'),
(50, 49, b'0'),
(51, 34, b'0'),
(51, 48, b'0'),
(51, 50, b'0'),
(53, 52, b'0'),
(54, 52, b'0'),
(55, 52, b'0'),
(56, 52, b'0'),
(57, 52, b'0'),
(58, 52, b'0'),
(59, 52, b'0'),
(60, 52, b'0'),
(61, 52, b'0'),
(62, 52, b'0'),
(63, 53, b'0'),
(64, 54, b'0'),
(65, 55, b'0'),
(66, 56, b'0'),
(67, 57, b'0'),
(68, 58, b'0'),
(69, 59, b'0'),
(70, 60, b'0'),
(71, 61, b'0'),
(72, 62, b'0'),
(74, 73, b'0'),
(75, 74, b'0'),
(76, 75, b'0'),
(77, 78, b'0'),
(79, 78, b'0'),
(80, 42, b'0'),
(81, 18, b'0'),
(81, 32, b'0'),
(83, 30, b'0'),
(83, 95, b'0'),
(84, 45, b'0'),
(88, 87, b'0'),
(93, 19, b'0'),
(98, 97, b'0'),
(99, 98, b'0'),
(100, 99, b'0'),
(101, 100, b'0'),
(102, 101, b'0'),
(103, 102, b'0'),
(104, 103, b'0'),
(105, 104, b'0'),
(107, 10, b'0'),
(109, 10, b'0'),
(110, 10, b'0'),
(111, 11, b'0'),
(112, 11, b'0'),
(113, 11, b'0'),
(114, 12, b'0'),
(115, 12, b'0'),
(116, 107, b'1'),
(116, 108, b'1'),
(116, 109, b'1'),
(116, 110, b'1'),
(116, 111, b'1'),
(116, 112, b'1'),
(116, 113, b'1'),
(116, 114, b'1'),
(116, 115, b'1'),
(117, 11, b'0'),
(117, 159, b'0'),
(118, 47, b'0'),
(119, 118, b'0'),
(121, 120, b'0'),
(123, 122, b'0'),
(123, 125, b'0'),
(125, 124, b'0'),
(127, 126, b'0'),
(128, 127, b'0'),
(129, 128, b'0'),
(130, 129, b'0'),
(131, 73, b'0'),
(132, 19, b'0'),
(132, 73, b'0'),
(133, 34, b'0'),
(134, 34, b'0'),
(135, 34, b'0'),
(135, 47, b'0'),
(136, 34, b'0'),
(137, 45, b'0'),
(139, 138, b'0'),
(141, 140, b'0'),
(143, 14, b'0'),
(144, 34, b'0'),
(144, 148, b'0'),
(145, 15, b'0'),
(145, 159, b'0'),
(146, 34, b'0'),
(146, 143, b'0'),
(147, 13, b'0'),
(148, 15, b'0'),
(149, 143, b'0'),
(149, 146, b'0'),
(152, 151, b'0'),
(153, 152, b'0'),
(156, 155, b'0'),
(157, 156, b'0'),
(158, 11, b'0'),
(158, 19, b'0'),
(158, 159, b'0'),
(158, 160, b'0'),
(158, 162, b'0'),
(161, 15, b'0'),
(171, 73, b'0'),
(181, 180, b'0'),
(182, 181, b'0'),
(184, 116, b'0'),
(184, 126, b'0'),
(185, 116, b'0'),
(185, 126, b'0'),
(186, 116, b'0'),
(186, 126, b'0'),
(187, 116, b'0'),
(187, 126, b'0'),
(188, 116, b'0'),
(188, 126, b'0'),
(189, 116, b'0'),
(189, 126, b'0'),
(190, 63, b'0'),
(191, 64, b'0'),
(192, 65, b'0'),
(193, 66, b'0'),
(194, 67, b'0'),
(195, 68, b'0'),
(196, 69, b'0'),
(197, 70, b'0'),
(198, 71, b'0'),
(199, 72, b'0'),
(200, 190, b'0'),
(201, 191, b'0'),
(202, 192, b'0'),
(204, 193, b'0'),
(205, 194, b'0'),
(206, 195, b'0'),
(207, 196, b'0'),
(208, 197, b'0'),
(209, 198, b'0'),
(210, 199, b'0'),
(211, 59, b'1'),
(211, 60, b'1'),
(212, 56, b'1'),
(212, 60, b'1'),
(212, 62, b'1'),
(213, 53, b'1'),
(213, 54, b'1'),
(213, 55, b'1'),
(213, 56, b'1'),
(213, 57, b'1'),
(213, 58, b'1'),
(213, 59, b'1'),
(213, 60, b'1'),
(213, 61, b'1'),
(213, 62, b'1'),
(214, 68, b'0'),
(214, 226, b'0'),
(215, 58, b'0'),
(215, 137, b'0'),
(216, 53, b'1'),
(216, 57, b'1'),
(216, 58, b'1'),
(216, 59, b'1'),
(217, 53, b'1'),
(217, 54, b'1'),
(217, 61, b'1'),
(218, 54, b'1'),
(218, 58, b'1'),
(218, 62, b'1'),
(219, 54, b'1'),
(219, 56, b'1'),
(219, 57, b'1'),
(219, 60, b'1'),
(220, 63, b'0'),
(221, 62, b'0'),
(222, 53, b'1'),
(222, 54, b'1'),
(222, 55, b'1'),
(222, 56, b'1'),
(222, 57, b'1'),
(222, 58, b'1'),
(222, 59, b'1'),
(222, 60, b'1'),
(222, 61, b'1'),
(222, 62, b'1'),
(222, 287, b'1'),
(223, 53, b'1'),
(223, 54, b'1'),
(223, 55, b'1'),
(223, 56, b'1'),
(223, 57, b'1'),
(223, 58, b'1'),
(223, 59, b'1'),
(223, 60, b'1'),
(223, 61, b'1'),
(223, 62, b'1'),
(223, 222, b'0'),
(224, 59, b'1'),
(224, 61, b'1'),
(225, 63, b'0'),
(226, 53, b'1'),
(226, 54, b'1'),
(226, 55, b'1'),
(226, 56, b'1'),
(226, 57, b'1'),
(226, 58, b'1'),
(226, 59, b'1'),
(226, 60, b'1'),
(226, 61, b'1'),
(226, 62, b'1'),
(227, 53, b'1'),
(227, 54, b'1'),
(227, 55, b'1'),
(227, 56, b'1'),
(227, 57, b'1'),
(227, 58, b'1'),
(227, 59, b'1'),
(227, 60, b'1'),
(227, 61, b'1'),
(227, 62, b'1'),
(228, 53, b'1'),
(228, 60, b'1'),
(229, 60, b'0'),
(230, 205, b'1'),
(230, 207, b'1'),
(230, 208, b'1'),
(230, 209, b'1'),
(231, 57, b'0'),
(232, 57, b'0'),
(233, 54, b'1'),
(233, 59, b'1'),
(233, 62, b'1'),
(234, 66, b'1'),
(234, 191, b'1'),
(235, 53, b'1'),
(235, 54, b'1'),
(235, 55, b'1'),
(235, 56, b'1'),
(235, 57, b'1'),
(235, 58, b'1'),
(235, 59, b'1'),
(235, 60, b'1'),
(235, 61, b'1'),
(235, 62, b'1'),
(236, 56, b'1'),
(236, 57, b'1'),
(237, 56, b'1'),
(237, 58, b'1'),
(237, 60, b'1'),
(238, 58, b'1'),
(238, 190, b'1'),
(238, 191, b'1'),
(238, 192, b'1'),
(238, 193, b'1'),
(238, 194, b'1'),
(238, 196, b'1'),
(238, 197, b'1'),
(238, 198, b'1'),
(238, 199, b'1'),
(239, 53, b'1'),
(239, 54, b'1'),
(239, 55, b'1'),
(239, 56, b'1'),
(239, 57, b'1'),
(239, 59, b'1'),
(239, 60, b'1'),
(239, 61, b'1'),
(239, 62, b'1'),
(240, 58, b'1'),
(240, 60, b'1'),
(241, 70, b'1'),
(241, 190, b'1'),
(241, 196, b'1'),
(242, 54, b'1'),
(242, 57, b'1'),
(243, 64, b'1'),
(243, 67, b'1'),
(244, 200, b'1'),
(244, 201, b'1'),
(244, 202, b'1'),
(244, 204, b'1'),
(244, 205, b'1'),
(244, 206, b'1'),
(244, 207, b'1'),
(244, 208, b'1'),
(244, 209, b'1'),
(244, 210, b'1'),
(245, 55, b'1'),
(245, 60, b'1'),
(245, 61, b'1'),
(246, 53, b'1'),
(246, 54, b'1'),
(246, 55, b'1'),
(246, 56, b'1'),
(246, 57, b'1'),
(246, 58, b'1'),
(246, 59, b'1'),
(246, 60, b'1'),
(246, 61, b'1'),
(246, 62, b'1'),
(247, 53, b'0'),
(248, 53, b'1'),
(248, 57, b'1'),
(248, 59, b'1'),
(248, 62, b'1'),
(249, 55, b'1'),
(249, 59, b'1'),
(250, 53, b'1'),
(250, 54, b'1'),
(250, 56, b'1'),
(250, 58, b'1'),
(250, 59, b'1'),
(250, 60, b'1'),
(250, 61, b'1'),
(250, 62, b'1'),
(251, 53, b'1'),
(251, 59, b'1'),
(251, 60, b'1'),
(251, 61, b'1'),
(252, 54, b'1'),
(252, 56, b'1'),
(253, 64, b'1'),
(253, 65, b'0'),
(253, 67, b'1'),
(254, 64, b'1'),
(254, 67, b'1'),
(255, 66, b'0'),
(256, 59, b'1'),
(256, 64, b'1'),
(256, 66, b'1'),
(256, 71, b'1'),
(257, 59, b'1'),
(257, 64, b'1'),
(257, 66, b'1'),
(257, 71, b'1'),
(258, 59, b'0'),
(259, 63, b'1'),
(259, 64, b'1'),
(259, 65, b'1'),
(259, 66, b'1'),
(259, 67, b'1'),
(259, 68, b'1'),
(259, 69, b'1'),
(259, 70, b'1'),
(259, 71, b'1'),
(259, 72, b'1'),
(260, 55, b'1'),
(260, 61, b'1'),
(260, 245, b'0'),
(261, 53, b'1'),
(261, 54, b'1'),
(261, 57, b'1'),
(261, 59, b'1'),
(261, 60, b'1'),
(261, 61, b'1'),
(262, 53, b'1'),
(262, 54, b'1'),
(262, 55, b'1'),
(262, 56, b'1'),
(262, 57, b'1'),
(262, 58, b'1'),
(262, 59, b'1'),
(262, 60, b'1'),
(262, 61, b'1'),
(262, 62, b'1'),
(263, 72, b'0'),
(264, 53, b'1'),
(264, 54, b'1'),
(264, 65, b'1'),
(265, 53, b'1'),
(265, 54, b'1'),
(265, 55, b'1'),
(265, 56, b'1'),
(265, 57, b'1'),
(265, 58, b'1'),
(265, 59, b'1'),
(265, 60, b'1'),
(265, 61, b'1'),
(265, 62, b'1'),
(266, 63, b'1'),
(266, 64, b'1'),
(266, 65, b'1'),
(266, 66, b'1'),
(266, 67, b'1'),
(266, 68, b'1'),
(266, 69, b'1'),
(266, 70, b'1'),
(266, 71, b'1'),
(266, 72, b'1'),
(267, 56, b'1'),
(268, 56, b'0'),
(269, 53, b'1'),
(269, 60, b'1'),
(270, 59, b'1'),
(270, 60, b'1'),
(270, 61, b'1'),
(270, 62, b'1'),
(271, 62, b'0'),
(272, 53, b'1'),
(272, 55, b'1'),
(273, 54, b'1'),
(273, 57, b'1'),
(273, 61, b'1'),
(274, 53, b'1'),
(274, 54, b'1'),
(274, 55, b'1'),
(274, 56, b'1'),
(274, 57, b'1'),
(274, 58, b'1'),
(274, 59, b'1'),
(274, 60, b'1'),
(274, 61, b'1'),
(274, 62, b'1'),
(275, 202, b'0'),
(275, 260, b'0'),
(275, 272, b'0'),
(276, 63, b'0'),
(276, 213, b'0'),
(277, 55, b'1'),
(277, 56, b'1'),
(278, 53, b'1'),
(278, 57, b'1'),
(278, 60, b'1'),
(278, 61, b'1'),
(279, 68, b'0'),
(294, 293, b'0'),
(295, 294, b'0'),
(296, 295, b'0'),
(298, 297, b'0'),
(300, 300, b'0'),
(301, 300, b'0'),
(305, 304, b'0'),
(307, 306, b'0'),
(308, 307, b'0'),
(310, 309, b'0'),
(311, 310, b'0'),
(319, 325, b'0'),
(320, 319, b'0'),
(321, 320, b'0');

-- --------------------------------------------------------

--
-- Struttura della tabella `talenti`
--

CREATE TABLE `talenti` (
  `id_talento` int(10) NOT NULL,
  `nome` varchar(45) CHARACTER SET ucs2 NOT NULL,
  `descrizione` text,
  `area` int(10) DEFAULT NULL,
  `flag_campagna` bit(1) DEFAULT b'0',
  `flag_requisiti` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `talenti`
--

INSERT INTO `talenti` (`id_talento`, `nome`, `descrizione`, `area`, `flag_campagna`, `flag_requisiti`) VALUES
(10, 'Armi comuni', 'il personaggio sa utilizzare ogni arma a una mano di lunghezza pari o inferiore ai 110 cm (chiunque può usare armi al di sotto dei 50 cm)', 1, b'0', b'0'),
(11, 'Armi Grandi', 'il personaggio sa utilizzare ogni arma a due mani di lunghezza pari o inferiore ai 200 cm con una sola estremità colpente, non è mai possibile usare un’arma grande con una sola mano o con lo scudo', 1, b'0', b'1'),
(12, 'Armi doppie', 'il personaggio sa utilizzare bastoni ferrati, doppie spade, asce o mazze di lunghezza inferiore ai 200 cm con due estremità colpenti e impugnatura al centro', 1, b'0', b'1'),
(13, 'Armi da tiro', 'il personaggio sa utilizzare archi (massimo 30 lbs) ma non balestre (per cui è richiesto ingegneria). Con le frecce che tira causa \"colpo\" e possono essere di qualsiasi colore eccetto: rosso, verde, nero, oro, argento e bianco', 1, b'0', b'0'),
(14, 'Arciere esperto I', 'Le frecce del personaggio causano Perforante! seguendo le regole di Armi da Tiro', 1, b'0', b'1'),
(15, 'Armi da lancio', 'il personaggio sa utilizzare coltelli ed asce da lancio, e tira con precisione anche sassi o massi. Le armi da lancio non devono avere al loro interno un’anima rigida', 1, b'0', b'0'),
(16, 'Ambidestria I', 'il personaggio sa utilizzare contemporaneamente un’Arma fino a 110 cm e un’Arma Piccola (max 50 cm), inoltre può utilizzare anche due armi da lancio contemporaneamente. Il personaggio è inoltre in grado di parare colpi con una mano che impugna un\'arma da mischia, e contemporaneamente lanciare un incantesimo con l’altra mano se libera. Per utilizzare le armi è necessario disporre dei relativi talenti.', 1, b'0', b'0'),
(17, 'Ambidestria II', 'il personaggio sa utilizzare contemporaneamente due Armi Comuni (max 110 cm)', 1, b'0', b'1'),
(18, 'Tempra', 'le ferite sono locazionali e non corporee. Le locazioni sono: testa (non colpibile), torso, 2 gambe e 2 braccia', 1, b'0', b'0'),
(19, 'Robustezza I', 'il personaggio guadagna una ferita addizionale corporea o locazionale se dispone del talento Tempra', 1, b'0', b'0'),
(20, 'Lavoro duro [Taglialegna]', 'Il personaggio ha usato per anni dei dati attrezzi (asce), diventando con il tempo resistente a goffaggine quando impugna ESCLUSIVAMENTE tali oggetti. Bonus: dopo aver effettuato 10 colpi ben caricati e urlati può causare su PG legati, addormentati o in coma od oggetti di gioco Colpo intenso!, Spacca! o Fatale!', 1, b'0', b'0'),
(21, 'Lavoro duro [Spaccapietre]', 'Il personaggio ha usato per anni dei dati attrezzi (martelli), diventando con il tempo resistente a goffaggine quando impugna ESCLUSIVAMENTE tali oggetti. Bonus: dopo aver effettuato 10 colpi ben caricati e urlati può causare su PG legati, addormentati o in coma od oggetti di gioco Colpo intenso!, Spacca! o Fatale!', 1, b'0', b'0'),
(22, 'Lavoro duro [Viandante]', 'Il personaggio ha usato per anni dei dati attrezzi (randelli e bastoni), diventando con il tempo resistente a goffaggine quando impugna ESCLUSIVAMENTE tali oggetti. ', 1, b'0', b'0'),
(23, 'Lavoro duro [Rustico]', 'Il personaggio ha usato per anni dei dati attrezzi (armi ad asta o doppie che simulino attrezzi agricoli), diventando con il tempo resistente a goffaggine quando impugna ESCLUSIVAMENTE tali oggetti. Bonus: può raccogliere erbe e ciuffi senza malus, ma non può trattarli come un erborista.', 1, b'0', b'0'),
(24, 'Lavoro duro [Cuciniere]', 'Il personaggio ha usato per anni dei dati attrezzi (armi a una mano o piccole simulanti mannaie, padelle e attrezzi da cucina), diventando con il tempo resistente a goffaggine quando impugna ESCLUSIVAMENTE tali oggetti. Bonus: durante le perquisizioni  riconosce gli oggetti arte culinaria e gli ingredienti', 1, b'0', b'0'),
(25, 'Uso armature', 'il personaggio sa utilizzare armature. Per utilizzare questo talento il personaggio deve effettivamente indossare un’armatura. Le armature si dividono in tre categorie: leggere, medie e pesanti. Le leggere sono armature in cuoio che aggiungono un punto armatura, le medie sono armature in simil-metallo (ad es. plastica o cuoio dipinto) o in cuoio borchiato e aggiungono due punti armatura, mentre le pesanti sono armature in metallo vero che aggiungono tre punti armatura. Il bonus dato dalle armature su una locazione vale se l’armatura ne copre almeno il 50%', 1, b'0', b'1'),
(26, 'Uso scudi I', 'il personaggio sa usare gli scudi. Lo scudo deve essere unico e di dimensioni massime 70  x 70 cm. Gli scudi parano danni ed effetti causati da qualunque arma tranne Urto! e Spacca! (quest’ultimo rende anche inservibile lo scudo fino a fine combattimento) o potenziati con Artiglieria!', 1, b'0', b'0'),
(27, 'Uso scudi II', 'il personaggio può usare scudi di dimensioni massime 150 x 80 cm', 1, b'0', b'1'),
(28, 'Duro a morire', 'il personaggio dopo i 5 minuti di coma non muore ma recupera 1 punto ferita corporeo o nelle locazioni vitali (testa o torso). Non nelle altre locazioni che se azzerate rimangono tali. Questo talento non ha effetto se il personaggio riceve un danno Fatale! o effetti di morte istantanea, o se si trova in zone a lui avverse (come foreste oscure, cimiteri, o luoghi sacri a divinità sfavorevoli al personaggio). Queste zone verranno segnalate ad ogni evento mediante cartelli. Il personaggio può andare FG dal coma (morte apparente) quando il suo corpo non è più rilevante per il gioco e nessuno con Pronto Soccorso ne abbia controllato lo stato. In tal caso segue le regole della fuga.', 1, b'0', b'0'),
(29, 'Coscritto', 'Il personaggio è un contadino che è stato reclutato in fretta e furia e mandato a combattere con gli attrezzi da lavoro. In alternativa egli coltivava un campo infestato da animali feroci, o peggio. In ogni caso si sente a suo agio a difendersi utilizzando gli strumenti da lavoro (falci, ronche, pale, aratri, ecc.), e ottiene +1 gloria utilizzando queste armi', 1, b'0', b'0'),
(30, 'Marinaio', 'il personaggio sa andare in barca e in qualche modo saprà sempre procurarsene una. Questo talento può essere usato solo quando la zona di gioco è divisa in 2 sezioni distanti IG, collegate da un tratto d’acqua sempre IG. I master spiegheranno come utilizzarlo ad ogni evento. Il marinaio può portare con se altre 2 persone.', 1, b'0', b'0'),
(31, 'Timoniere', 'questo talento è l’evoluzione di Marinaio. Funziona allo stesso modo ma si possono portare con se 5 persone. I master spiegheranno come utilizzarlo ad ogni evento', 1, b'0', b'1'),
(32, 'Cavaliere', 'il personaggio sa cavalcare e in qualche modo saprà sempre procurarsi un destriero. Questo talento può essere usato solo quando la zona di gioco è divisa in 2 sezioni distanti IG, collegate da un tratto di terra. I master spiegheranno come utilizzarlo ad ogni evento. Il cavaliere può portare con se altre 2 persone', 1, b'0', b'0'),
(33, 'Cocchiere', 'questo talento è l’evoluzione di Cavaliere. Funziona allo stesso modo ma si possono portare con se 5 persone. I master spiegheranno come utilizzarlo ad ogni evento', 1, b'0', b'1'),
(34, 'Alchimia', 'si possono creare semplici pozioni mischiando vari reagenti. Vedi Sommo Compendio', 1, b'0', b'1'),
(35, 'Arte culinaria', 'disponendo  giusti ingredienti il personaggio può produrre pasti e bevande di qualità. Vedi sommo Compendio', 1, b'0', b'0'),
(36, 'Arte dell\'amanuense', 'il personaggio può produrre libri e pergamene. Vedi sommo Compendio', 1, b'0', b'1'),
(37, 'Arte del fabbro', 'il personaggio è esperto nel lavorare i metalli e sa curare la propria armatura (se si tratta di un’armatura almeno simile ad una metallica), che concede un PA addizionale. Vedi sommo Compendio', 1, b'0', b'0'),
(38, 'Arte silvana', 'il personaggio è esperto nel lavorare il cuoio, il legno e altri materiali della selva. Sa curare la propria armatura (se in cuoio o pelli), che concede un PA addizionale.  Vedi sommo Compendio', 1, b'0', b'0'),
(39, 'Arti lussuose', 'Il personaggio sa creare oggetti di valore, principalmente vestiti e gioielli. Se perquisisce, il personaggio individua tutti gli oggetti di valore, come le gemme o i gioielli, ma non gli oggetti magici o i componenti per le pozioni. Vedi sommo Compendio', 1, b'0', b'1'),
(40, 'Artista', 'l\'artigiano ha sviluppato una sensibilità unica per i materiali, che quasi gli parlano. Può creare oggetti di superba fattura in varie arti (Vedi sommo compendio). Il personaggio è anche “resistente” a Veritas Inganno quando legge cartellini o cartelli.', 1, b'0', b'1'),
(41, 'Artigliere', 'consente al personaggio di usare macchine da guerra come arieti, baliste o catapulte. Senza questo talento non è possibile usare macchine da guerra e proiettili durante il combattimento. Vedi sommo Compendio', 1, b'0', b'0'),
(42, 'Dissezione', 'il personaggio ha una certa esperienza nel sezionare le creature viventi, per lavoro o per piacere. Usare questo talento richiede almeno 30 secondi di lavoro su una creatura in coma o morta (ma non disintegrata) e causa sempre un danno Fatale! Trascorso questo periodo il PG può raccogliere parti anatomiche o andare un master che deciderà se ha effettivamente trovato parti corporee utilizzabili (se cercava qualcosa di particolare il PG deve dirlo ai master, come cuore umanoide, denti di draconico o altro)', 1, b'0', b'1'),
(43, 'Erboristeria', 'il personaggio può raccogliere e trattare sempre e senza alcuna conseguenza i ciuffi di erbe misteriose da cui trae erbe a lui utili', 1, b'0', b'0'),
(44, 'Esploratore', 'il personaggio ignora le zone di terrore e la maggior parte delle zone speciali.', 1, b'0', b'0'),
(45, 'Istruzione', 'il  personaggio è istruito, sa leggere, scrivere e contare. Senza questo talento il personaggio non saprebbe scrivere il suo nome e verrebbe automaticamente ingannato in questioni relative ai numeri (come le paghe).', 1, b'0', b'0'),
(46, 'Maestro', 'il personaggio può insegnare un talento che conosce a qualcun altro tra un live e l’altro. L’allievo dovrà soddisfare i requisiti del talento che intende apprendere e spendere i 6 punti presenza. Maestro non permette di insegnare talenti razziali come Rigenerazione né tratti inumani come Squame.', 1, b'0', b'0'),
(47, 'Pronto soccorso', 'utilizzando questo talento è possibile stabilizzare un essere morente evitando che muoia dopo i 5 minuti di coma. Se non viene curato ulteriormente con metodi più efficaci (incantesimi, unguenti o le talenti di Medicina), il morente rimarrà stabile in coma fino al giorno successivo quando si sveglierà con il massimo dei punti ferita. Se la benda viene strappata via dal corpo il conteggio dei 5 minuti ripartirà da capo. Per utilizzare questo talento è necessario utilizzare una benda reale o, meglio, dei rettangoli di stoffa sul paziente di dimensione sufficiente a fasciare la locazione azzerata. Se qualcuno si finge morto egli se ne accorge sempre.', 1, b'0', b'0'),
(48, 'Indagine medica', 'Il personaggio ha avanzate conoscenze di anatomia e dei fenomeni che influenzano la salute o le alterazioni fisiologiche o traumatiche dei corpi viventi. Analizzando il corpo  di un essere di ossa, carne e sangue  puoi dichiarare “Veritas percezione viventi/cadaveri” e una delle seguenti domande: “Descrivi dettagliatamente l\'effetto che ti ha ucciso e le tue ferite, se da arma da taglio o da botta, artiglio o morso” “capisco tutto il possibile su malattie e veleni che ti hanno colpito” “Il tuo corpo  in cosa è diverso da quello di un normale [nome razza]” “Come si diffonde la malattia che ti ha colpito” Colpendo il cadavere con un effetto “Rivela se in vita eri sensibile o subivi questo effetto” “Che svantaggi comportamentali o fisici hai?”. Il personaggio con indagine medica può spendere la sua azione inter-evento per fare studi approfonditi su fenomeni legati a ciò che potrebbe curare.', 1, b'0', b'1'),
(49, 'Medicina I', 'Può riconoscere anche se la vittima presenta degli effetti di infetto, mutazioni o malattie (nel caso delle malattie più rare e particolari l\'identificazione può essere imprecisa, nel caso di malattie magiche non nota nulla se non eventuali sintomi). Può rimuovere malattie di livello I comuni o qualsiasi malattia di cui abbia la ricetta. Inoltre è in grado di usare bende, erbe, polveri, pomate e liquidi per curare. Dopo un intervento di 5 minuti guarisce un punto ferita nella locazione trattata o rimuove l’effetto di infetto in 15 minuti. Questo talento si può usare a volontà, anche su più persone contemporaneamente a patto che siano sdraiate vicino e bendate (ospedale da campo)\r\n', 1, b'0', b'1'),
(50, 'Medicina II', 'come Medicina I, ma cura 1 ferita in tutte le locazioni contemporaneamente. Inoltre consente di fermare l’effetto dei veleni per ingestione, stabilizzando il paziente finché resta sdraiato sotto le cure del medico (alla fine del giorno il veleno avrà immediatamente effetto). Può rimuovere malattie di livello I di ogni tipo e quelle di livello II comuni o qualsiasi malattia di cui abbia la ricetta', 1, b'0', b'1'),
(51, 'Medicina III', 'come Medicina II, ma cura tutte le ferite anziché 1 per locazione. In mezz’ora di cure rimuove veleni senza sigillo e non magici di qualsiasi tipo. Può rimuovere tutte le malattie comuni e quelle rare di livello I o qualsiasi malattia di cui abbia la ricetta. Può ricercare nuove cure. Non può in ogni caso curare alcune malattie allo stadio avanzato, come la mutazione o il morbo del ghoul. Inoltre può riportare in vita i morti da dissanguamento (dopo i 5 minuti di coma) disponendo di un donatore di sangue della medesima razza e di 10 reagenti, la persona deve essere operata entro 10 minuti dalla morte e sia il curato che il donatore subiranno lo stato “sfinito” fino all\'alba successiva. Il medico può anche usare il talento “fare a pezzi i corpi” sostituendo a urla e invocazioni 5 minuti di fredda e precisa dissertazione scientifica mentre disseziona il corpo', 1, b'0', b'1'),
(52, 'Occultismo', 'Questo talento serve da prerequisito per acquisire una o più sfere di magia. \r\n•	Nelle perquisizioni si può dichiarare questo talento per trafugare gli oggetti magici. \r\n•	Se possiedi qualche sfera, quando leghi qualcuno puoi dichiarare “Veritas percezione: finché sarai legato non potrai usare la tua magia in modo attivo” \r\n•	Nel momento in cui un PG con occultismo vede una runa od un oggetto capisce se sono magici ed a che sfera di magia corrispondano così come zone rituali attive o trappole magiche. \r\n•	Non si possono percepire automaticamente scuole di magia su un personaggio, se non in base al colore delle palline lanciate. \r\n•	In tutti gli altri casi l\'incantatore può sapere se un dato incantesimo appartiene a più scuole, ma non può sapere con certezza da quale di esse ne sia generato. \r\n•	Ricordate che tutte le vostre dichiarazioni sono eclatanti e che qualunque personaggio può capirne gli effetti derivanti. \r\n•	Inoltre il PG fuori da un combattimento e se non viene ostacolato con 30 secondi di contatto  può esaminare altri personaggi per verificare se sono portatori di uno spirito [e farsi mostrare il cartellino...] “Veritas percezione rivela se hai spiriti e fammeli vedere”\r\n', 1, b'0', b'0'),
(53, 'Egomanzia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere.  Egomanzia: E\' legata alla forza primordiale dell\'ordine, l\'idea pura, il concetto ideale.', 1, b'0', b'1'),
(54, 'Demonologia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere.  Demonologia: E\' legata alla forza primordiale del caos, l\'emozione pura, il sogno.', 1, b'0', b'1'),
(55, 'Taumaturgia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere. Taumaturgia: E\' legata alla forza primordiale della vita', 1, b'0', b'1'),
(56, 'Negromanzia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere. Negromanzia: E\' legata alla forza primordiale dell\'ombra', 1, b'0', b'1'),
(57, 'Animanzia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere. Animanzia: E\' generata da un mix delle altre sfere presente nel piano materiale, è legata alle forze naturali e spirituali di Arcana Domine.', 1, b'0', b'1'),
(58, 'Alchimanzia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere.  Alchimanzia: E\' generata da un mix delle altre sfere presente nel piano materiale, è legata ai materiali concreti presenti nel mondo e alla creatività finalizzata alla concretezza. Gli spiriti legati a questa sfera sono praticamente inesistenti', 1, b'0', b'1'),
(59, 'Aeromanzia I', ' L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere. Aeromanzia: E\'legata alla forza primordiale dell\'aria.', 1, b'0', b'1'),
(60, 'Geomanzia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere.  Geomanzia: E\'legata alla forza primordiale della terra', 1, b'0', b'1'),
(61, 'Idromanzia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere.  Idromanzia: E\'legata alla forza primordiale dell\'acqua', 1, b'0', b'1'),
(62, 'Piromanzia I', 'L\'acquisto di questo talento rende “incantatori” capaci di canalizzare le energie magiche e di imporsi su frammenti delle forze primordiali che compongono il tutto. Ci sono 10 sfere, puoi prendere questo talento una volta per ogni sfera. Se il talento viene preso alla creazione, puoi averlo ottenuto a causa di un evento pesantemente traumatico o meditando profondamente e intensamente su qualcosa. Il talento dona una sensibilità agli eventi magici più intensi e la sfera di livello più alto equivale al valore CCA dell\'incantatore (vedi capitolo Magia). Questo talento NON consente di percepire altri maghi, ma di percepire forti effetti magici e luoghi di potere. Piromanzia: E\'legata alla forza primordiale del fuoco ', 1, b'0', b'1'),
(63, 'Egomanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(64, 'Demonologia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(65, 'Taumaturgia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(66, 'Negromanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(67, 'Animanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(68, 'Alchimanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(69, 'Aeromanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(70, 'Geomanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(71, 'Idromanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(72, 'Piromanzia II', 'il personaggio ottiene il II livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta.', 1, b'0', b'1'),
(73, 'Volontà I', 'Il personaggio può assorbire un numero di stille pari al doppio del grado acquisito in questo talento.', 1, b'0', b'0'),
(74, 'Volontà II', 'il personaggio può assorbire un numero di stille pari al doppio del grado acquisito in questo talento.', 1, b'0', b'1'),
(75, 'Volontà III', 'il personaggio può assorbire un numero di stille pari al doppio del grado acquisito in questo talento.', 1, b'0', b'1'),
(76, 'Volontà IV', 'il personaggio può assorbire un numero di stille pari al doppio del grado acquisito in questo talento.', 1, b'0', b'1'),
(77, 'Arte sacra', 'il personaggio sa creare talismani, acqua e olio santo', 1, b'0', b'1'),
(78, 'Confessore', 'L\'utilizzatore del talento deve essere sacerdote riconosciuto di un culto approvato nella campagna o presente nell\'ambientazione mondiale. Il confessore può usare il potere solo sui fedeli, e questi saranno devoti alla sua parola e a quella del culto di riferimento per tutto il live. Il confessore può utilizzare illimitatamente questo talento, ma ogni fedele può confessarsi una volta sola per evento.\r\nGrazie a questo talento il bersaglio dopo una confessione sincera e intima di almeno 5 minuti col sacerdote può ignorare i malus dovuti a un singolo svantaggio mentale fino all\'alba successiva. Lo svantaggio c\'è ancora, ma il supporto morale del sacerdote da al fedele la forza di resistere [effetto Veritas Ispirazione, non ha effetto su troll comuni e troll ombrosi, può essere subito dai singoli giocatori grazie a questo talento solo una volta per evento]', 1, b'0', b'0'),
(79, 'Predicatore', 'Su un beneficiario di \"confessione\" il sacerdote può impartire una benedizione  alla fine della confessione (donando una resistenza mentale fino al prossimo combattimento). Si tratta di un effetto Veritas Ispirazione. Esistono dei testi sacri o dei privilegi che i predicatori possono sfruttare per aumentare il tipo di effetti di questo talento (Vedi Sommo Compendio)', 1, b'0', b'1'),
(80, 'Grazia', 'il personaggio può dichiarare Fatale! con un’arma sotto i 50 cm.', 2, b'0', b'1'),
(81, 'Impeto', 'il primo colpo in combattimento che causi con un martello, mazza o ascia di almeno 100 cm può essere \"Spacca\" ', 2, b'0', b'1'),
(82, 'Lercio', 'In corpo a corpo con armi da taglio il personaggio può usare il potenziamento Infetto!, ma solo se indossa al massimo armature leggere e veste da pezzente', 2, b'0', b'0'),
(83, 'Lupo di mare', 'immunità a urto e confusione N! ', 2, b'0', b'1'),
(84, 'Mercato Nero', 'In un dato momento prima o durante un evento tutti i personaggi che possiedono questo talento partecipano a un’asta su degli oggetti casuali (Vedi Guida di campagna). Il personaggio è anche “resistente” a Veritas Inganno quando legge cartellini o cartelli.', 2, b'0', b'1'),
(85, 'Raccattasoldi', 'il personaggio ottiene 1 rendita in più a partita (la rendita varia di partita in partita). Questo talento rappresenta una particolare capacità nell\'arrangiarsi più che un vero talento professionale.', 2, b'0', b'0'),
(86, 'Saccheggiatore', 'quando il personaggio perquisisce è come se identificasse tutti gli oggetti e impiega 30 secondi anziché i normali 2 minuti', 2, b'0', b'0'),
(87, 'Scaramanzia I', 'il personaggio è incredibilmente superstizioso e incapace di capire i meccanismi che regolano la magia. Ci crede così intensamente che ottiene una resistenza agli effetti numerici. Il personaggio aumenta la sua gloria di +2. Questo talento va interpretato! Deve creare una propria visione del mondo, rigorosamente sbagliata (convinzioni strane sulle altre razze, o sulla magia) e difenderla con tutte le proprie forze, oppure sviluppare paura od odio verso maghi e creature arcane.', 2, b'0', b'0'),
(88, 'Scaramanzia II', 'La gloria concessa da scaramanzia aumenta a +4 quando è ben evidente lo stemma della propria fede sulla propria persona, eccetto verso creature legate allo stesso dio. Se si nota una creatura arcana di aspetto differente ad un normale animale o la si teme o la si vuole distruggere. Lo stesso vale per gli incantatori o gli oggetti che non sono legati alla fede del personaggio. Il personaggio deve obbedire ai sacerdoti riconosciuti della sua fede. Non può essere ateo, deve seguire un dio o un pantheon specifico. Di magia continua a non capire nulla: se ha idee a riguardo sono clamorosamente sbagliate.', 2, b'0', b'1'),
(89, 'Torturare', 'La tortura richiede sempre la presenza di un master. Questo talento non funziona su chi ha già svantaggi mentali o su chi non è vivo (non morti e costrutti).\r\nIniziare la tortura: il torturatore spiega il talento o passa un foglio con la spiegazione del talento alla vittima.\r\nMediante 30 secondi di \"lavoro\" con un pugnale o uno strumento di tortura su un personaggio cosciente, legato e inerme, il torturatore può causare a contatto Dolore 2!\r\nLa tortura inizia quando il torturato riceve la prima chiamata Dolore N! da parte del torturatore o di suoi assistenti, causata in qualsiasi modo.\r\nSubito il dolore, la vittima subisce un effetto \"Veritas viventi: dimmi se sei disposto a morire per difendere i tuoi segreti\".\r\nLa vittima può scegliere di essere pronta a morire (si suicida ingoiando la lingua) piuttosto che rispondere alle domande. Se la vittima risponde \"Piuttosto preferisco morire\", il torturatore continua e la vittima muore. In caso contrario, il torturatore dichiara \"Veritas viventi: rispondi onestamente si o no alle mie prossime 3 domande\".\r\nFatte le tre domande il torturatore può fermarsi o scavare ulteriormente continuando la tortura, nel qual caso il torturato può:\r\na) Usare la frase “Non ce la faccio più”. In tal caso, se il torturatore continua, la vittima va fuori di testa e subisce uno svantaggio mentale permanente a scelta del master.\r\nb) Usare la frase \"Ti prego basta! Ti dirò tutto!\" e cedere. Se il torturatore continua per 5 minuti di tortura ininterrotta e causa sulla vittima \"Veritas viventi: rispondi sinceramente ad ogni domanda del tuo torturatore fino a fine giornata\" (non è più necessaria la presenza del master). \r\n', 2, b'0', b'0'),
(90, 'Mendace', 'quando ti  viene fatto un Comando! per strapparti informazioni dichiari Immune. Solo se possiedi anche “Mercato Nero” ignori la chiamata, ma non devi dichiarare immune: semplicemente per te la verità non esiste e non tradisci che quello che dici è una bugia.', 2, b'0', b'0'),
(91, 'Contrabbandiere', 'il PG nasconde alle perquisizioni normali ma non a quelle mirate i cartellini-oggetto di oggetti da 50 cm o meno.', 2, b'0', b'0'),
(92, 'Offesa imperdonabile', 'il personaggio deve offendere in modo pesante con almeno 15 parole i bersagli, dopodiché può \r\ndichiarare al loro indirizzo: \"Voce! Comando! Voi che ho offeso venite ad uccidermi!\". Non usabile verso nemici in fuga o disarmati.\r\n', 3, b'0', b'0'),
(93, 'Robustezza II', 'il personaggio guadagna un’ulteriore ferita locazionale o corporea.', 3, b'0', b'1'),
(94, 'Scorza dura', 'Il personaggio può dichiarare Resisto! alle chiamate colpo! e perforante! ', 3, b'0', b'0'),
(95, 'Stomacaccio', 'il PG è immune veleni/ effetti Veritas alchemico che danno effetti negativi per ingestione e alle malattie non magiche, inoltre non subisce conseguenze per la chiamata infetto!. Non muore prendendo veleni o pozioni negative, ma gli causano diarrea e mal di pancia.', 3, b'0', b'0'),
(96, 'Testa dura', 'il personaggio è immune a confusione N', 3, b'0', b'0'),
(97, 'Vigore I', 'il PG guadagna 2 ferite corporee addizionali.', 3, b'0', b'0'),
(98, 'Vigore II', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(99, 'Vigore III', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(100, 'Vigore IV', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(101, 'Vigore V', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(102, 'Vigore VI', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(103, 'Vigore VII', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(104, 'Vigore VIII', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(105, 'Vigore IX', 'il personaggio guadagna una ferita in più per ogni modificatore', 3, b'0', b'1'),
(106, 'Disarmare', 'il personaggio può causare l’effetto Disarma! con le armi a una mano, ma non può usare questo talento se durante il combattimento sta utilizzando armature, scudi o due armi.', 4, b'0', b'0'),
(107, 'Esperto con [Spade a 1 mano]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(108, 'Esperto con [Pugnali]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'0'),
(109, 'Esperto con [Mazze a 1 mano]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(110, 'Esperto con [Martelli a 1 mano]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(111, 'Esperto con [Spade a 2 mani]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(112, 'Esperto con [Mazze a 2 mani]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(113, 'Esperto con [Martelli a 2 mani]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(114, 'Esperto con [Bastoni]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(115, 'Esperto con [Armi Doppie]', 'il personaggio causa danno Colpo Intenso! con l’arma da corpo a corpo prescelta. L’arma deve essere ben specificata. Non è possibile, ad esempio, usare Esperto con la Spada usando uno spadone a due mani (più di 110 cm),  una daga (meno di 50 cm) o con una mazza (meno di 110 cm, ma tipologia diversa)', 4, b'0', b'1'),
(116, 'Maestria', 'il personaggio potenzia con Intenso! un qualunque danno che può fare con le armi in ha esperto (Spacca!, Fuoco!, ecc.) a rappresentare la maggior precisione, Inoltre potenzia di 2 gli eventuali effetti numerici, ed in caso arrivassero ad 11, diventano intenso!', 4, b'0', b'1'),
(117, 'Sbilanciare', 'il personaggio può dichiarare, in aggiunta o sostituzione al proprio danno, l’effetto Urto! con le armi della categoria Armi Grandi. ', 4, b'0', b'1'),
(118, 'Precisione I', 'in mischia coi pugnali e con gli attrezzi di tortura causi +4 con gli effetti numerici, se arrivi a 11 l’effetto diventa intenso! ', 4, b'0', b'1'),
(119, 'Precisione II', 'in mischia coi pugnali e con gli attrezzi di tortura causi +7 con gli effetti numerici, se arrivi a 11 l’effetto diventa intenso! ', 4, b'0', b'1'),
(120, 'Presa salda I', 'dichiara Resisto! Se subisce Goffaggine! ', 4, b'0', b'0'),
(121, 'Presa salda II', 'dichiara Resisto! parando Spacca! Con lo scudo ed Immune! a Goffaggine!. ', 4, b'0', b'1'),
(122, 'Autocontrollo I', 'Il personaggio dichiara resisto a possessione N!, ed a Veritas che lo costringerebbero ad innamorarsi o ad avere reazioni istantanee (Voce Suadente, Ispirare Rabbia, Offesa Imperdonabile)', 5, b'0', b'0'),
(123, 'Autocontrollo II', 'Il personaggio dichiara Resisto! a tutti gli effetti mentali. ', 4, b'0', b'1'),
(124, 'Coraggio I', 'può dichiarare Resisto! a Terrore N!', 5, b'0', b'0'),
(125, 'Coraggio II', 'dichiara Immune! a Terrore N!', 5, b'0', b'1'),
(126, 'Gloria I', 'Il personaggio aumenta il suo valore di gloria di 1', 5, b'0', b'0'),
(127, 'Gloria II', 'il personaggio si considera avere tanti Gloria extra pari al grado raggiunto in questo talento', 5, b'0', b'1'),
(128, 'Gloria III', 'il personaggio si considera avere tanti Gloria extra pari al grado raggiunto in questo talento', 5, b'0', b'1'),
(129, 'Gloria IV', 'il personaggio si considera avere tanti Gloria extra pari al grado raggiunto in questo talento', 5, b'0', b'1'),
(130, 'Gloria V', 'il personaggio si considera avere tanti Gloria extra pari al grado raggiunto in questo talento', 5, b'0', b'1'),
(131, 'Indomabile', 'Il personaggio sacrifica un cartellino stilla dichiarando immune ad un effetto mentale e per tutta la durata del combattimento ne resterà immune', 5, b'0', b'1'),
(132, 'Tenacia', 'il personaggio sacrifica un cartellino stilla e per il prossimo combattimento ottiene l\'immunità a tutti i danni cui è resistente, ma non può lasciare il combattimento.', 5, b'0', b'1'),
(133, 'Ammaliatore', 'consente di creare pozioni che influenzano la mente.', 6, b'0', b'1'),
(134, 'Elementalista', 'consente di creare pozioni legate agli elementi.', 6, b'0', b'1'),
(135, 'Tossine', 'consente di creare veleni', 6, b'0', b'1'),
(136, 'Sublimatore', 'L\'alchimista usa i reagenti di tipo “quintessenza” come se fossero 5 reagenti quando crea prodotti alchemici o medicinali. Se dispone di un laboratorio portatile (un contenitore per l\'acqua, un pestello, alcune boccette colorate), almeno 5 reagenti di qualsiasi tipo (che non verranno consumati) e passa almeno un minuto a lavorare utilizzando tutti gli oggetti obbligatori, può fare alcune azioni particolari durante il live (Vedi sommo compendio). ', 6, b'0', b'1'),
(137, 'Ingegneria', 'consente di usare balestre, cannoni, archibugi e altre armi avanzate. Vedi sommo Compendio', 6, b'0', b'1'),
(138, 'Meditazione I', 'il personaggio può assorbire stille di ogni sfera. Solo elfi, gnomi, fomori, coboldi e draconici possono acquisire questo talento.', 6, b'0', b'0'),
(139, 'Meditazione II', 'il personaggio se partecipa a un rituale  può donare l\'equivalente di una stilla gratuitamente, non funziona per i cerimoniali. ', 6, b'0', b'1'),
(140, 'Vista acuta I', 'Si può dire toccando un personaggio non in combattimento “Veritas percezione! Rivela la tua razza, la tua stirpe e se sei mascherato”.  Dopo 3 minuti di analisi può dire “Veritas percezione! Rivela se hai mentito sul tuo nome”. Il PG studia la persona e poi nella dichiarazione specifica che le informazioni devono essere rivelate solo a lui. inoltre se c’è un personaggio nascosto ne percepisce vagamente la presenza, pur non potendo effettuare azioni contro l’occultato. ', 6, b'0', b'0'),
(141, 'Vista acuta II', 'consente di individuare i personaggi sotto Occultamento, ma non quelli sotto Occultamento Intenso!', 6, b'0', b'1'),
(142, 'Voce suadente', 'se contratti con qualcuno per più di cinque minuti su un oggetto puoi usare “Veritas Inganno” con ravvicinato per obbligarlo a comprarlo se gli è possibile. La discussione deve esser stata fatta in modo volontario. Se parli per più di cinque minuti con qualcuno della tua razza facendo apprezzamenti sentimentali od erotici puoi usare “Comando! su [tua razza]” per farlo innamorare di te, nel comando va sottolineato che dovrà essere geloso e che  il comando durerà fino al prossimo evento. Se a livello narrativo una delle tue “conquiste” ti può frequentare inter-evento puoi fare un azione inter-evento per continuare a sedurre la persona. Non si tratta di un effetto magico è solo fascino.\r\n', 6, b'0', b'0'),
(143, 'Arciere esperto II', 'le frecce del personaggio causano Perforante! Intenso! se colorate di giallo.', 7, b'0', b'1'),
(144, 'Avvelenatore I', 'le armi da lancio del personaggio colorate di verde causano Acido! Confusione 6!', 7, b'0', b'1'),
(145, 'Fransisca', 'usando asce da lancio (senza anima) il personaggio può dichiarare Spacca! al primo lancio in ogni combattimento', 7, b'0', b'1'),
(146, 'Freccia avvelenata', 'le frecce del personaggio colorate di verde causano Perforante! Sonno 4! ', 7, b'0', b'1'),
(147, 'Freccia incendiaria', 'le frecce del personaggio causano danno Fuoco intenso! se sono colorate di rosso. ', 7, b'0', b'1'),
(148, 'Lanciatore esperto', 'le armi da lancio causano danno Perforante! se sono colorate di nero.', 7, b'0', b'1'),
(149, 'Soffio dell\'inverno', 'le frecce del personaggio sono bianche e causano gelo infetto! perché contengono l’estratto di rare piante montane. ', 7, b'0', b'1'),
(150, 'Evasione', 'il personaggio può scappare se viene legato, sciogliendo le corde in qualunque momento. Questo talento non può essere utilizzato se il personaggio indossa armature medie o pesanti.', 8, b'0', b'0'),
(151, 'Lesto I', 'consente di attraversare una parete (simulata da uno spago teso) mimando l’arrampicata 15 secondi per lato. Il personaggio ottiene anche un valore di scassinare (migliorabile con attrezzi da scasso) e di disattivare trappole (non migliorabile con attrezzi da scasso) pari alla gloria del PG, oggetti esclusi. Questo talento e le sue evoluzioni  non possono essere utilizzati con armature medie o pesanti.', 7, b'0', b'0'),
(152, 'Lesto II', 'Il personaggio dichiara Elusione! a tutti i dardi non abbinati a chiamate mentali a patto di potersi muovere senza impedimenti e di non aver causato egli stesso la proiezione (entrando in una zona o facendo scattare una trappola). ', 8, b'0', b'1'),
(153, 'Lesto III', 'Il personaggio dichiara Elusione! ad esplosioni od onde non abbinate a chiamate mentali a patto di potersi muovere senza impedimenti e di non aver causato egli stesso la proiezione (entrando in una zona o facendo scattare una trappola).', 8, b'0', b'1'),
(154, 'Nascondersi', 'Il personaggio può occultarsi alzando il dito e viene considerato invisibile verso coloro che non l\'hanno visto nascondersi. Per utilizzare questo talento occorre usare come nascondiglio qualcosa che potrebbe effettivamente nascondere il personaggio come una parete, una colonna o degli alberi, ma non erba alta una decina di centimetri. Se il personaggio si muove, fa rumore, o compie una qualsiasi azione torna visibile. Un personaggio equipaggiato con armature medie o pesanti non può utilizzare questo talento. ', 8, b'0', b'0'),
(155, 'Berserker I', 'Il personaggio potenzia con Intenso! un qualsiasi danno fisico in mischia. Dopo aver acquistato questo talento il personaggio non potrà più utilizzare armi da tiro [rimosso il divieto per le armi da lancio].', 9, b'0', b'0'),
(156, 'Berserker II', 'tutti i danni possono essere potenziati con Intenso!. Il personaggio, una volta iniziato un combattimento, non può abbandonarlo e non può usare armature metalliche o simulanti metallo', 9, b'0', b'1'),
(157, 'Berserker III', 'tutti i colpi in mischia possono essere potenziati con Urto! oppure è possibile causare Urto intenso!.  Se il personaggio o il suo signore viene offeso è obbligato ad attaccare qualcuno o distruggere in via definitiva qualcosa. ', 9, b'0', b'1'),
(158, 'Colpo possente', 'il personaggio può causare danno Spacca! con le armi previste dal talento Armi Grandi.', 9, b'0', b'1'),
(159, 'Forza straordinaria', 'i personaggi con questo talento vincono automaticamente le risse contro personaggi che ne sono privi. Quando un soggetto con forza straordinaria è in coma sono necessarie due persone per trasportarlo, data la notevole massa muscolare.', 9, b'0', b'0'),
(160, 'Portatore', 'I personaggi con questo talento possono portare fino a 12 oggetti anziché 6, ed infinite monete e pergamene. ', 9, b'0', b'0'),
(161, 'Scagliamassi', 'il personaggio può scagliare massi con circonferenza di almeno 40 cm causando Colpo! Urto! ', 9, b'0', b'1'),
(162, 'Spezzacatene', 'se legato e cosciente può spezzare corde, catene e manette di fattura ordinaria o buona dichiarando Spezzacatene! allo stesso modo in cui si utilizza il talento Lesto per aprire le porte.', 9, b'0', b'0'),
(163, 'Condottiero', 'Questo talento consente di disporre continuamente di seguaci della propria razza, tranne nel caso di draconici, ogre, troll comuni e minotauri, che non possono essere scelti e vanno sostituiti con membri di altre razze. \r\nSe i seguaci vengono uccisi possono rientrare in gioco con un nuovo nome, senza conservare i ricordi che avevano precedentemente. Sul loro cartellino sarà riportato un nomignolo generico. La somiglianza è giustificata dall\'appartenenza allo stesso clan.\r\nCi sono 3 tipi di seguaci: \r\n•	Popolani: 2 Talenti. Non possono portare oggetti ma solo sacchi portatutto. Appena i pf vitali vengono azzerati vanno fuori gioco e riappaiono da un luogo dove non vengono visti. \r\n•	Lacchè: 5 talenti. Non possono portare oggetti ma solo sacchi portatutto. Appena i pf vitali vengono azzerati vanno fuori gioco e riappaiono da una zona di fuga. \r\n•	Gregario: 7 Talenti. Ce ne può essere solo uno, se non porta oggetti riappare come i lacchè, altrimenti deve aspettare 10 minuti dalla sua morte. \r\nQueste comparse sacrificabili non possono acquisire talenti diversi. Se il loro condottiero muore i sacrificabili fuggono per sempre via dalla zona di gioco. \r\nLe comparse non sono fornite dai master, piuttosto da giocatori con personaggi morti o coloro che vogliano provare il gioco. \r\nSono proibiti i talenti Evocatore, Maestro, il 2° livello in qualsiasi sfera ed i talenti che producono un qualsiasi tipo di risorsa, come ad esempio Raccattasoldi.  Nota: è possibile che certe creature  o certi rituali concedano dei seguaci “creatura arcana”.\r\n', 10, b'0', b'0'),
(164, 'Conoscenze [religione]', 'Grazie a un\'azione inter-evento il personaggio ottiene informazioni aggiuntive nel suo ambito di conoscenza ', 10, b'0', b'0'),
(165, 'Conoscenze [arcane]', 'Grazie a un\'azione inter-evento il personaggio ottiene informazioni aggiuntive nel suo ambito di conoscenza ', 10, b'0', b'0'),
(166, 'Conoscenze [geografia]', 'Grazie a un\'azione inter-evento il personaggio ottiene informazioni aggiuntive nel suo ambito di conoscenza ', 10, b'0', b'0'),
(167, 'Conoscenze [storia]', 'Grazie a un\'azione inter-evento il personaggio ottiene informazioni aggiuntive nel suo ambito di conoscenza ', 10, b'0', b'0'),
(168, 'Conoscenze [malavita]', 'Grazie a un\'azione inter-evento il personaggio ottiene informazioni aggiuntive nel suo ambito di conoscenza ', 10, b'0', b'0'),
(169, 'Figlio del Nord', 'il personaggio dichiara Resisto! a Gelo!', 10, b'0', b'0'),
(170, 'Figlio del Deserto', 'il personaggio dichiara Resisto! a Fuoco!', 10, b'0', b'0'),
(171, 'Immortale', 'quando verresti mandato in coma puoi usare la chiamata Rigenerazione! Spendendo un cartellino stilla.', 10, b'0', b'1'),
(172, 'Insonne', 'il personaggio dichiara Immune! a Sonno!', 10, b'0', b'0'),
(173, 'Nemesi[incantatori]', 'il personaggio subisce gli effetti di Odio e può dichiarare Sventra! [razza o categoria].', 10, b'0', b'0'),
(174, 'Nemesi[umani]', 'il personaggio subisce gli effetti di Odio e può dichiarare Sventra! [razza o categoria].', 10, b'0', b'0'),
(175, 'Nemesi[elfi]', 'il personaggio subisce gli effetti di Odio e può dichiarare Sventra! [razza o categoria].', 10, b'0', b'0'),
(176, 'Nemesi[orchi]', 'il personaggio subisce gli effetti di Odio e può dichiarare Sventra! [razza o categoria].', 10, b'0', b'0'),
(177, 'Nemesi[nani]', 'il personaggio subisce gli effetti di Odio e può dichiarare Sventra! [razza o categoria].', 10, b'0', b'0'),
(178, 'Ossa massicce', 'il personaggio dichiara Resisto! a Spacca!', 10, b'0', b'0'),
(179, 'Rincuorare', 'il personaggio può dichiarare Onda di dispersione del Terrore N! dove N è il suo valore di Gloria (attenzione: non è un incantesimo!)', 10, b'0', b'0'),
(180, 'Urlo di guerra I', 'all’inizio di ogni combattimento il personaggio può dichiarare Onda di Terrore 2!', 10, b'0', b'0'),
(181, 'Urlo di guerra II', 'all’inizio di ogni combattimento il personaggio può dichiarare Onda di Terrore 4!', 10, b'0', b'1'),
(182, 'Urlo di guerra III', 'all’inizio di ogni combattimento il personaggio può dichiarare Onda di Terrore 6!', 10, b'0', b'1');
INSERT INTO `talenti` (`id_talento`, `nome`, `descrizione`, `area`, `flag_campagna`, `flag_requisiti`) VALUES
(183, 'Onore', '2 gloria. Il personaggio rinuncia ai talenti di arte, vicolo e magici (non può impararli, ma può usarli se già li possiede) e inizia a seguire un rigoroso codice d\'onore di un gruppo di guerrieri presenti nella campagna o nell\'ambientazione mondiale.\r\nSe il guerriero infrange il codice deve espiare secondo lo stesso codice o morire nel tentativo. \r\n', 10, b'0', b'0'),
(184, 'Stile d\'arme [stile crudele]', 'utilizzando questo talento con le armi in cui il PG ha Maestria si può usare lo stile d’arme prescelto, non puoi assommare a stile d\'arma il bonus di maestria. Puoi imparare un solo stile d\'arma.  Armi con spuntoni o seghettate: Dolore 6!', 10, b'0', b'1'),
(185, 'Stile d\'arme [stile travolgente]', 'utilizzando questo talento con le armi in cui il PG ha Maestria si può usare lo stile d’arme prescelto, non puoi assommare a stile d\'arma il bonus di maestria. Puoi imparare un solo stile d\'arma.  Armi da botta: Urto! o Urto! Intenso!', 10, b'0', b'1'),
(186, 'Stile d\'arme [stile lacerante]', 'utilizzando questo talento con le armi in cui il PG ha Maestria si può usare lo stile d’arme prescelto, non puoi assommare a stile d\'arma il bonus di maestria. Puoi imparare un solo stile d\'arma. Armi da taglio: causi danno Perforante!', 10, b'0', b'1'),
(187, 'Stile d\'arme [stile martellante]', 'utilizzando questo talento con le armi in cui il PG ha Maestria si può usare lo stile d’arme prescelto, non puoi assommare a stile d\'arma il bonus di maestria. Puoi imparare un solo stile d\'arma. Armi da botta: causi confusione! intenso!', 10, b'0', b'1'),
(188, 'Stile d\'arme [stile glorioso]', 'utilizzando questo talento con le armi in cui il PG ha Maestria si può usare lo stile d’arme prescelto, non puoi assommare a stile d\'arma il bonus di maestria. Puoi imparare un solo stile d\'arma. +2 alla gloria quando impugni l\'arma', 10, b'0', b'1'),
(189, 'Stile d\'arme [stile preciso]', 'utilizzando questo talento con le armi in cui il PG ha Maestria si può usare lo stile d’arme prescelto, non puoi assommare a stile d\'arma il bonus di maestria. Puoi imparare un solo stile d\'arma. Armi sotto i 110 cm: gli effetti numerici che causi sono intensi!', 10, b'0', b'1'),
(190, 'Egomanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(191, 'Demonologia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(192, 'Taumaturgia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(193, 'Negromanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(194, 'Animanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(195, 'Alchimanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(196, 'Aeromanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(197, 'Geomanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(198, 'Idromanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(199, 'Piromanzia III', 'il personaggio ottiene il III livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(200, 'Egomanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(201, 'Demonologia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(202, 'Taumaturgia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(204, 'Negromanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(205, 'Animanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(206, 'Alchimanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(207, 'Aeromanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(208, 'Geomanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(209, 'Idromanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(210, 'Piromanzia IV', 'il personaggio ottiene il IV livello della sfera, con conseguente aumento di CCA se è la sua sfera più alta', 10, b'0', b'1'),
(211, 'Alleggerire', 'consente di portare con se fino a 12 oggetti ed infinite monete e pergamene', 11, b'0', b'1'),
(212, 'Annientare', 'Con un minuto di lavoro il personaggio può causare Disintegrazione Intenso! su un qualunque corpo od oggetto inerte, strutture comprese purché siano in gioco, se sono ammucchiati assieme il talento può colpire più oggetti (ad esempio cadaveri).', 11, b'0', b'1'),
(213, 'Antimagia', 'Dichiarazione: Dardo disperdi incanti! Disperde gli effetti che usano formule, non è possibile usarlo due volte di seguito sullo stesso bersaglio nello stesso combattimento, ha effetto anche se pronunciato entro qualche secondo dopo l’uso dell’incantesimo, va bene sia su chi lancia l’incantesimo, sia sul bersaglio di quest’ultimo. ', 11, b'0', b'1'),
(214, 'Arte atlantidea', 'i costrutti meccanici al servizio dell’Alchimante possono ottenere tratti inumani o protesi meccaniche una ciascuno per livello dell’Alchimante, senza incrementi nella difficoltà di controllo. I tratti inumani sono da ritenersi come meccanismi, ad esempio rigenerazione sarà un sofisticato sistema di autoriparazione. I relativi marchi andranno adeguati (es. al posto di escrescenze ossee dei diodi o dei bulloni). Un Alchimante di livello III con medicina II e Maestro può rendere semi-costrutti dei mortali volontari con un rituale. Un Alchimante di livello IV Medicina III e Maestro può riportare in vita come semi-costrutto un mortale morto da meno di 48 ore con un rituale. Solitamente tutti i semi-arcani hanno lo svantaggio perversione (non possono più ottenere avanzamenti), ma in base al rituale i master possono variare lo svantaggio. Il costo di creazione dei semi costrutti è di 4 pietre arcane o cartellini stilla e 5 metallo, più 1pietra arcana o stilla e 1 metallo per ogni protesi meccanica o tratto inumano dato dall’Alchimante.\r\nLe Protesi meccaniche equivalgono a talenti extra.\r\n•	Liv. I: Utensili attaccati al braccio  (es. spezzatatene = sega circolare)\r\n•	Liv. II aggiungi tubo motore a vapore\r\n•	Liv. III aggiungi attrezzi al torso\r\n•	Liv. IV aggiungi arto o testa extra\r\n', 11, b'0', b'1'),
(215, 'Arte meccanica', 'Grazie alla propria capacità di creare utensili meccanici l’alchimante può creare un oggetto di un livello di qualità superiore alle proprie capacità, oppure dimezzare le risorse comuni (legno, metallo, olio nero o cuoio) necessarie per la creazione di detto oggetto, usando un cartellino stilla. Tale capacità non vale se il personaggio non dispone del talento Arte adeguata, o per oggetti per cui è necessario servirsi di istruzioni in pergamena', 11, b'0', b'1'),
(216, 'Arma tonante', 'il personaggio può causare danno Folgore! in corpo a corpo se l’arma sembra di materiale naturale (rocce, osso o legno) o del colore della sfera di magia appropriata. ', 11, b'0', b'1'),
(217, 'Ghiacciare', 'il personaggio può causare danno Gelo! in corpo a corpo se l’arma sembra ghiaccio o del colore della sfera di magia appropriata. ', 11, b'0', b'1'),
(218, 'Infiammare', 'il personaggio può causare danno Fuoco! in corpo a corpo se l’arma sembra fiammeggiante o del colore della sfera di magia appropriata.', 11, b'0', b'1'),
(219, 'Lama del pianto', 'il personaggio può causare danno Acido! in corpo a corpo se l’arma sembra di materiale naturale (rocce, osso o legno) o è del colore della sfera di magia appropriata. ', 11, b'0', b'1'),
(220, 'Virtù d\'attacco', 'il personaggio può causare Magico! in corpo a corpo se l’arma è color argento. ', 11, b'0', b'1'),
(221, 'Cauterizzare', 'Dopo un minuto di lavoro il mago può causare Guarigione! Dolore 4! su una locazione azzerata. ', 11, b'0', b'1'),
(222, 'Cerimoniali', 'puoi utilizzare i cerimoniali, si tratta di un genere di magia a metà tra i rituali e gli incantesimi maggiori. Ogni cerimoniale richiede solitamente la spesa di 1 cartellino stilla, 5 minuti per l\'esecuzione, un numero variabile di contributori e non richiede la presenza di un master. Trovi i cerimoniali nel gioco scritti su pergamene oppure impressi in oggetti magici. Puoi eseguire rituali minori senza subire conseguenze (ad esempio il rituale predisposto come chiave per aprire una porta).', 11, b'0', b'1'),
(223, 'Ritualista', 'puoi eseguire rituali, il genere di magia più complessa e potente (Vedi capitolo magia e Sommo Compendio Sez. oggetti magici e rituali) puoi fare ricerche per creare cerimoniali e rituali nuovi.\r\nRituali di base: Tutti richiedono di trovarsi in una zona rituale, [aggiunta post riunione coi master, di base un rituale richiede sempre la zona rituale, quelli avanzati consentiranno di ignorare anche questo requisito] almeno 5 minuti di durata,  2 contributori (anche senza capacità magiche)  due oggetti di scena che devono essere coinvolti in qualche modo attivo nel rituale. I reagenti richiesti sono sempre di tipo “essenza”, è possibile usare reagenti “quintessenza” senza ottenere ne vantaggi ne svantaggi.\r\n•	Contrastare: Rituale che richiede il sacrificio di 3 stille e 4 reagenti per rimuove un effetto “Veritas arcano”. Il mago deve poter toccare qualcosa di fisico su cui è concentrato il rituale. Rituali che coinvolgono aree vaste richiedono i contatto con un luogo specifico, in assenza di ciò, non è possibile rimuoverli con questo rituale. Questo rituale non ha alcun effetto nel caso di eventuali “Sigilli” se non soddisfa le richieste per la rimozione.\r\n•	Analizzare: Richiede il sacrificio di 1 stille e 4 reagenti, Consente di dare concretezza allo spirito dei luoghi o degli oggetti per poter fare alcune domande sulla loro storia e sulle loro caratteristiche.\r\n•	Spiriti consiglieri locali: consente di convocare gli spiriti locali per avere visioni,  informazioni, sensazioni, cenni su quanto è accaduto in un luogo. Potrebbe essere richiesto un sacrificio o un favore in cambio. E\' possibile che a causa di questo rituale si venga richiamati da creature che non intendono o non possono né muoversi né apparire presso la zona rituale.\r\n•	Emulazione arcana imperfetta: 1 stille 1 reagente (2 per capacità che richiedono stille) 4 reagenti, consente di replicare su se stessi una capacità della propria sfera (Incanto o abilità arcana) che svanirà  alla fine del prossimo combattimento. La capacità può sempre avere un difetto deciso dal master al posto della scarsa durata in accordo col ritualista.\r\nRiti più evoluti possono avere qualsiasi risultato, dal dare una mutazione all’infliggere una maledizione, dal vincolare creature arcane agli oggetti e renderli così magici, al riportare in vita un defunto. Per utilizzare un rituale che non sia tra quelli base occorre procurarsi il testo del rituale in gioco, o un oggetto magico superiore o avere accesso al rituale come privilegio (es. appartenendo a una particolare scuola di magia). Ritualista è un talento che si basa sull’interpretazione. La buona riuscita di un rituale verrà decisa da un master anche in base all’effetto scenico. Maggiore è l’effetto voluto maggiore dovrà essere la spettacolarità del rituale. Non si richiedono effetti speciali ma una giusta dose di partecipanti e di interpretazione. Per effettuare un rituale bisogna avvisare i Master con un anticipo di almeno 60 minuti. Sacrificare più della richiesta minima non altera in alcun modo il successo del rituale. \r\n', 11, b'0', b'1'),
(224, 'Chiave di brina', 'L\'incantatore con questo talento può scassinare serrature come se avesse un talento Lesto I  e un valore di “scassinare” pari al doppio del suo livello nelle sfere di aeromanzia + idromanzia (se si hanno entrambe le sfere si sommano). Non è possibile abbinare a questo incantesimo alcun oggetto non magico.', 11, b'0', b'1'),
(225, 'Esorcismo legale', 'il personaggio può dichiarare Sventra Demoni! in corpo a corpo', 11, b'0', b'1'),
(226, 'Evocazione', 'il personaggio può avere al proprio servizio una o più creature arcane purché sia in grado di controllarle spendendo CCA in misura pari alla loro DCA. La creatura viene interpretata da una persona truccata adeguatamente che deve essere trovata dall’evocatore stesso. Se non si possiede Richiamo Arcano è possibile richiamare le creature arcane esiliate dal piano materiale (ossia i cui punti ferita sono stati azzerati ma che non ha subito annienta o chiamate di morte istantanea) dopo un’ora dalla loro eliminazione. È sufficiente che l’evocatore e lo “spirito” della creatura siano entro 3 metri e che l’evocatore reciti una formula di sei parole seguita dalla dichiarazione Richiamo!. Vedete il bestiario arcano per scegliere un tipo di creatura adeguata alla sfera dell’evocatore. Se la creatura viene annientata in modo definitivo, la CCA usata per controllarla viene persa fino al giorno successivo. Se evocate nuove creature DEVE essere perfettamente palese dall\'aspetto che non sono le stesse che già avete evocato precedentemente. ', 11, b'0', b'1'),
(227, 'Artefice', 'come per il talento “Evocazione”, ma consente di avere al proprio servizio chimere e costrutti magici.  Questa abilità arcana consente anche di ottenere agevolazioni nella creazione di oggetti magici (Vedi sommo compendio). Nota che a differenza delle creature arcane, chimere e costrutti non sono rievocabili. ', 11, b'0', b'1'),
(228, 'Fortezza mentale', 'Resistenza a Comando! ', 11, b'0', b'1'),
(229, 'Fortitudo', 'Il personaggio ha accesso a diversi vantaggi cumulabili a seconda del grado di Geomanzia posseduto. \r\n•	Con Geomanzia I: dichiara Resisto! A Urto! e Acido!!\r\n•	Con Geomanzia II: dichiara Resisto! Ai danni elementali (Fuoco! Acido!, Folgore! Gelo!) , \r\n•	Con Geomanzia III: dichiara Resisto! a  Spacca! \r\n•	Con Geomanzia IV: dichiara Resisto! a  Disintegrazione n!, Dichiara immune a Fuoco! E Acido! Considera immunità tutte le resistenze possedute tranne magico quando entra in una zona speciale. Vale anche per le resistenze non ottenute con Fortitudo.\r\n', 11, b'0', b'1'),
(230, 'Fusione ambientale', 'Quando il personaggio viene mandato in coma può istintivamente svanire strappando un cartellino stilla (o una pietra arcana). Deve lasciare sul posto tutto l’equipaggiamento che portava con sé. Il mago riappare il giorno successivo dopo un dolorosissimo processo di riaggregazione', 11, b'0', b'1'),
(231, 'Guida della carne', 'Si può usare un tratto inumano per livello ma non si possono usare combinati. Mammiferi: pelliccia, artigli I, artigli II, Bestiale I. Rettili: bestiale I, ghiandole del cobra I, ghiandole del cobra II, scaglie. Volatili: bestiale I, artigli I, artigli II, planata. Non si può usare una bestia diversa fino all’alba successiva', 11, b'0', b'1'),
(232, 'Guida spirituale', 'consente di conferire, fino alla successiva alba, dei talenti al bersaglio, infondendo spiriti naturali nel suo corpo.  Scrivete su un vostro cartellino stilla il numero PG, “guida spirituale” e il talento donato. Si può donare Esploratore (Volpe), Coraggio I (Leone), Cavaliere (Cavallo), Marinaio (Salmone), o Portatore più Spezzacatene (Orso) Vista acuta I o vista acuta I sale di un livello (Aquila). ', 11, b'0', b'1'),
(233, 'Ispirare rabbia', 'Parlando 5 minuti con qualcuno puoi causargli con ravvicinato un Comando! obbligando il bersaglio ad istantanei atti di violenza verso qualcuno. ', 11, b'0', b'1'),
(234, 'Lama sacrificale', 'L\'incantatore con un pugnale recante esplicitamente la runa della sfera di magia usata può causare Fatale su un bersaglio vivente (chiedere sempre conferma) e causare a contatto Guarigione o Disperdiveleni su un bersaglio adiacente, oppure usare il sacrificato come reagente quintessenza in un rituale. ', 11, b'0', b'1'),
(235, 'Malocchio', '•	Livello magia I: quando trovi uno spirito che potresti scacciare, puoi assorbirlo e controllarlo come se fosse un oggetto magico senza ingombro.\r\n•	Livello magia II: quando qualcuno accetta da te un oggetto, insieme con il cartellino dell\'oggetto puoi passare uno o più spiriti che controlli e che hai addosso.\r\n•	Livello magia III: quando qualcuno ti tocca in qualsiasi momento, fuori da un combattimento (ad esempio durante una perquisizione) puoi passargli uno o più spiriti che controlli e che hai addosso.\r\n•	Livello magia IV: puoi lasciare di guardia uno o più spiriti che controlli come trappole, apponendone il cartellino in modo visibile in uno scrigno, un sacco o in un luogo. Da li, come da regole, appena il cartellino spirito verrà visto cercherà di controllare la vittima.\r\n•	Livello magia IV e Giusto Potere: conoscendo il nome con cui si identifica una creatura e avendone chiara la fisionomia, puoi fare un\'azione inter-evento per mandare un tuo spirito verso la vittima (provvederà il master). \r\n', 11, b'0', b'1'),
(236, 'Passo silvestre', 'Se mentre non sei visto ti nascondi dietro un albero od una siepe, guadagni e mantieni Occultamento! anche quando passi tra uno o l\'altro a distanza massima di 3 metri.', 11, b'0', b'1'),
(237, 'Passo d\'ombra', 'Ti puoi occultare toccando una parete e recitando la formula + nome magia e puoi spostarti tenendo la schiena alla parete a ogni passo (non puoi attraversare varchi).', 11, b'0', b'1'),
(238, 'Raffinazione e infusione', 'Consente di creare prodotti alchemici infusi di energia arcana. Alchimanzia può essere usata per tutte le pozioni, le altre sfere solo per alcune.', 11, b'0', b'1'),
(239, 'Resistere all\'elemento', 'il mago dichiara Resisto! a un danno collegato alla sfera (o sfere) di magia da lui conosciuta/e. Nel caso conosca più di una sfera di magia può attivare una sola resistenza alla volta. Per cambiare il danno a cui è resistente deve recitare una formula magica che segue le regole di quelle per gli incantesimi seguita dalla chiamata Resisto a (tipo di danno)!.\r\nAeromanzia: Perforante!; Geomanzia: Colpo!; Animanzia: Sonno!; Idromanzia: Urto!; Demonologia: Terrore N!; Negromanzia e Taumaturgia: Mortale N!; Egomanzia: Confusione N!; Piromanzia: Fuoco!. ', 11, b'0', b'1'),
(240, 'Riparazione', 'in 30 secondi di lavoro reintegri tutti i PA della locazione o curi 1 PF ai costrutti e alle strutture. ', 11, b'0', b'1'),
(241, 'Sisma', 'il personaggio tenendo prima la mano verso l’alto e poi toccando il terreno può causare “esplosione! urto!', 11, b'0', b'1'),
(242, 'Tela ipnotica', 'questo talento può essere usato solo “non in presenza di un combattimento” e richiede che il bersaglio sia addormentato, in coma stabilizzato o legato.\r\nSpiegate al bersaglio il talento in modo da evitare fraintendimenti e poi fate un minuto di formule magiche o gesti mistici, al termine dei quali potete porre un Comando! sul bersaglio.\r\n•	Il Comando! deve avere una durata massima di qualche secondo e non continuativa. In caso venga posto un Comando continuativo l’effetto avrà luogo per pochi istanti.\r\no	L’effetto può scatenarsi in un momento definito. Se ordini \"appena scende la sera uccidi il tuo capo\" il Comando si attiverà la sera e si esaurirà solo quando il bersaglio avrà tentato di uccidere il suo capo.\r\no	Se l\' azione ha più possibili conclusioni il Comando! si esaurirà quando ne verrà soddisfatta una.\r\no	Se il bersaglio è in coma quando subisce questa abilità arcana non ricorderà chi lo ha vincolato, ma potrebbe ricordare chi lo ha steso, se il bersaglio è solo legato invece ricorderà tutto.\r\n•	Alterare l\' istinto: spendendo una stilla puoi imporre su una persona un modo di agire assolutamente generico che durerà fino all\' alba successiva come \"non mentire mai\", \"non usare armi\", \"ubbidisci a chi si veste di rosso\". Non puoi imporre fedeltà verso te o un gruppo di persone ben delineate.\r\n•	Oblio (solo demonologia): spendendo una stilla tutte le informazioni passate presenti e future sul Comando! verranno dimenticate quando questo si esaurisce.', 11, b'0', b'1'),
(243, 'Tocco fatato', 'il personaggio può dichiarare a volontà Possessione N! toccando il bersaglio. N è uguale al livello della sfera meno 1. ', 11, b'0', b'1'),
(244, 'Giusto potere', 'Aumenta di 1 la CCA del personaggio e consente di potenziare al massimo alcuni incantesimi.', 11, b'0', b'1'),
(245, 'Tocco lenitivo', 'con trenta secondi di lavoro causi guarigione al tocco. Non puoi usare questa capacità in presenza di combattimenti! ', 11, b'0', b'1'),
(246, 'Velo d\'ombra', '•	Demonologia I o altre Sfere Livello II: dichiari Immune! a Veritas percezione sulle tue auree magiche (generate dalla presenza di spiriti o di sfere, oggetti o effetti di natura magica che porti con te); la tua refrattarietà viene percepita.\r\n•	Demonologia II o altre Sfere Livello III: invece di dichiarare Immune! a Veritas percezione sulle tue auree magiche, puoi ignorare l\'effetto ed evitare di dichiararne la presenza.\r\n•	Demonologia III o altre Sfere Livello IV: quando subisci Veritas[Qualsiasi tranne arcano]sulle tue auree magiche, puoi dichiarare di possedere una o più sfere magiche a tua scelta.\r\n•	Demonologia IV: quando subisci una qualunque chiamata Veritas relativa alle tue auree magiche, puoi dichiarare di possedere una o più sfere magiche a tua scelta', 11, b'0', b'1'),
(247, 'Virtù del segugio', 'il talento ha effetti diversi a seconda del livello raggiunto in Egomanzia:\r\n•	Egomanzia I: il personaggio percepisce la presenza di creature occultate o passaggi segreti o altre cose nascoste, ma in modo impreciso, come se avesse vista acuta I\r\n•	Egomanzia II: il personaggio vede l’Occultamento inoltre può dichiarare non in combattimento “Voce! Veritas Percezione!!  rivelate se la magia è con voi” (oggetti magici, incantatori e creature arcane)\r\n•	Egomanzia III: il personaggio può, toccando un altro personaggio, dichiarare “Veritas Percezione, rivela le sfere di magia che possiedi”. Il bersaglio deve dichiarare tutte le sfere di magia che possiede ma non il loro valore di potere. Questo potere può essere usato a volontà nel corso della giornata, anche più volte sullo stesso soggetto. Non può essere utilizzato su soggetti che stanno combattendo o quando il mago stesso è coinvolto in un combattimento.\r\n•	Egomanzia IV: il personaggio è immune a Occultamento!', 11, b'0', b'1'),
(248, 'Arciere arcano', 'Tipo: Incantesimo Minore\r\nQuando incocca la freccia l\'arciere deve recitare la formula, che darà potere alla freccia finché non verrà scoccata o tolta dall\'arco.\r\n•	Piromanzia I + armi da tiro: Freccia rossa (causa fuoco intenso)\r\n•	Aeromanzia I +arciere esperto I: Freccia azzurra (causa folgore dolore 4)\r\n•	Egomanzia I + Arciere esperto I: freccia argento (causa folgore domine)\r\n•	Animanzia II+ Arciere esperto I: freccia verde (Causa perforante sonno 4)\r\n•	Idromanzia II+Arciere esperto I: freccia bianca (Causa gelo infetto)\r\n', 14, b'0', b'1'),
(249, 'Flusso eterico', 'Tipo: Incantesimo Minore e Maggiore\r\nCome incantesimo minore questo incanto consente di trasferire una propria stilla d\'animo a un\'altra creatura assolutamente consenziente, come incantesimo maggiore causa al bersaglio “Veritas arcana fino alla fine di questo combattimento dichiari elusione ai dardi, alle onde e alle esplosioni”\r\n', 14, b'0', b'1'),
(250, 'Attacco arcano', 'Tipo: Incantesimo Minore\r\nAeromanzia: Folgore! Intenso!, Idromanzia: Gelo! Intenso!, Demonologia: Magico!, Negromanzia: Acido! Intenso!, Egomanzia: Magico! Intenso!, Piromanzia: Fuoco! Intenso!, Geomanzia	Colpo! Urto!, Alchimanzia: Folgore!\r\nPer usare questo incantesimo il mago deve procurarsi una sfera fisica di gommapiuma del colore della sfera di magia che intende utilizzare per attaccare. In battaglia potrà recitare la formula e successivamente scagliare la sfera, infliggendo un danno speciale al bersaglio a seconda del tipo di energia utilizzata. È permesso sia raccogliere la sfera dopo il lancio che munirsi di più di una sfera.\r\n', 14, b'0', b'1'),
(251, 'Atterrare', 'Tipo: Incantesimo Minore\r\n•	Con una sfera ad I: dichiara Dardo dell’Urto!\r\n•	Con Aeromanzia,Geomanzia o Idromanzia II: dichiara Dardo dell’Urto Intenso!\r\n•	Con Aeromanzia o Geomanzia III: dichiara Onda dell’Urto Intenso!\r\n', 14, b'0', b'1'),
(252, 'Aura malefica', 'Tipo: Incantesimo Minore\r\nDichiarazione: Onda di Terrore N!. Con una sfera ad I N è 3, con II N è 6, con III è Intenso!\r\n', 14, b'0', b'1'),
(253, 'Bandire il male', 'Tipo: Incantesimo Maggiore\r\nDichiarazione: Dardo dell’esorcismo devastante!\r\n', 14, b'0', b'1'),
(254, 'Dominazione', 'Tipo: Incantesimo maggiore\r\nDichiarazione: Dardo di Possessione N!, con N = 4 se la sfera è a II, 6 se la sfera è a III, 8 se è a IV, Intenso se si ha Demonologia IV e Maestro, Devastante se si ha IV livello, Maestro e Giusto Potere.\r\n', 14, b'0', b'1'),
(255, 'Eroe non-morto', 'Tipo: Incantesimo Maggiore\r\nDopo aver recitato la formula il mago scrive sul cartellino stilla “Eroe Non-Morto” e il proprio codice PG, lo da a un cadavere e questo si rialza come non-morto fino alla fine della giornata e poi muore normalmente. La razza cambia in razza originale + insepolto non morto.\r\nL’eroe mantiene tutte le capacità che aveva da vivo tranne Taumaturgia e gli incantesimi da questa attivati, in più guadagna Negromanzia III, Non-Morto e sensibilità a domine!\r\nPuò controllare non-morti per conto del negromante, ma questi devono sempre stargli vicini (possono allontanarsi massimo 20 metri) e in caso di sua morte vengono distrutti. L’eroe non-morto è consapevole, ricorda chi era ma in ogni caso ubbidirà al meglio delle sue possibilità al suo creatore. Nonostante la consapevolezza  non ha un’anima.\r\n', 14, b'0', b'1'),
(256, 'Etereo', 'Tipo: Incantesimo Maggiore\r\n•	Sfera a II (I Aeromanzia): Il personaggio diviene Etereo! Solo per attraversare pareti o porte in gioco. Le porte attraversabili da questo incantesimo verranno segnalate attraverso un cartello mentre le pareti attraversabili sono simulate da uno spago. Le pareti in murature (quelle “vere”) non sono mai attraversabili, ovviamente. Per lanciare questo incantesimo il personaggio deve trovarsi a 1 metro o meno dalla parete o porta che intende attraversare e dopo aver pronunciato la formula e l’effetto deve oltrepassare la parete.\r\n•	Sfera a III (II aeromanzia): Il magio diviene Etereo! E rimane tale per tutto il combattimento a meno che egli stesso non decida di interrompere l’effetto\r\n•	Sfera IV (III aeromanzia): il mago può raccogliere oggetti o spostare persone pur rimanendo etereo, se il mago tocca una persona anche questa diviene eterea finché il contatto permane\r\nNota: una creatura eterea NON può fare danni fisici o interagire col mondo fisico, ad esempio prendendo oggetti non eterei\r\n', 14, b'0', b'1'),
(257, 'Foschia', 'Tipo: Incantesimo maggiore \r\nIl personaggio e gli eventuali alleati che lo toccano vengono circondati da una leggera foschia che li rende a tutti gli effetti invisibili e fintanto che rimangono immobili sono soggetti a occultamento intenso! La foschia inoltre non viene notata.\r\n', 14, b'0', b'1'),
(258, 'Fulmine', 'Tipo: incantesimo maggiore\r\n•	Aeromanzia I dichiara Dardo  Folgore!\r\n•	Aeromanzia II dichiara Dardo  Folgore Confusione 4!\r\n•	Aeromanzia III Dardo  Folgore Confusione  Intenso!\r\n•	Aeromanzia IV Onda Folgore Confusione Intenso!\r\n', 14, b'0', b'1'),
(259, 'Goffaggine', 'Tipo: Incantesimo Minore\r\nDichiarazione: Dardo della goffaggine!\r\n', 14, b'0', b'1'),
(260, 'Guarigione', 'Tipo: Incantesimo Minore\r\n•	I livello: A contatto consente di “infliggere” l’effetto Guarigione disperdicibi!  [disperde i bonus di cibi e pozioni, come sarà chiarito sui cartellini]\r\n•	III livello: A contatto consente di “infliggere” l’effetto Guarigione! \r\n', 14, b'0', b'1'),
(261, 'Impulso arcano', 'Tipo: incantesimo minore\r\nPer usare questo incantesimo il personaggio deve procurarsi una sfera di gommapiuma del colore della sfera di magia che intende utilizzare per attaccare ma con un segno bianco che la differenzi da attacco arcano, in battaglia potrà recitare la formula e successivamente scagliare la sfera, infliggendo un effetto al bersaglio a seconda del tipo di energia utilizzata. È permesso sia raccogliere la sfera dopo il lancio che munirsi di più di una sfera.\r\nAeromanzia: Confusione Intenso!, Idromanzia: Goffaggine Intenso!, Demonologia: Dolore 4!, Geomanzia: Confusione 6!, Egomanzia	Paralisi 4!, Animanzia: Sonno 4!\r\n', 14, b'0', b'1'),
(262, 'Incantare', 'Tipo: Incantesimo Maggiore\r\nConsente di far causare per un giorno un singolo effetto o potenziamento  tra quelli in lista ad un\'arma. Scrivete su un cartellino stilla da attaccare all\'arma incantata: il vostro codice PG + incantare + la data corrente + la sfera usata + ovviamente il tipo di effetto dato.\r\nAeromanzia: Folgore!, Idromanzia: Gelo!, Demonologia: Confusione 6! o Sonno 4!, Negromanzia/ Animanzia: Acido! o Terrore 6!, Egomanzia: Folgore! Annientare! Domine! Speciale: Magico! Fino a fine combattimento, Piromanzia: Fuoco!, Geomanzia: Urto  !, Taumaturgia: Esorcismo 4!\r\n', 14, b'0', b'1'),
(263, 'Inferno', 'Sfera richiesta: Piromanzia II\r\n•	Tipo: Incantesimo Maggiore\r\n•	Piromanzia II dichiara Onda di Fuoco!\r\n•	Piromanzia III dichiara Onda di Fuoco Dolore 3!\r\n•	Piromanzia IV Onda di Fuoco Dolore Intenso!\r\n•	Piromanzia IV e Maestro e Giusto Potere causa Onda di Fuoco Dolore Devastante!.\r\n', 14, b'0', b'1'),
(264, 'Liberazione', 'Tipo: Incantesimo Minore\r\nDichiarazione: Dispersione di Comando! O Disperdiparalisi!\r\n', 14, b'0', b'1'),
(265, 'Luce', 'Tipo: Incantesimo Minore\r\nIl mago utilizza il suo potere per creare della luce. Per simulare la luce creata dall’incantesimo il PG deve utilizzare una piccola torcia elettrica. Una volta che la torcia viene spenta per riaccenderla deve essere utilizzato nuovamente l’incantesimo. Negromanzia deve ripetere tre volte la formula per attivare quest\'incanto', 14, b'0', b'1'),
(266, 'Protezione', 'Tipo: Incantesimo Maggiore\r\nIl mago recita la formula, tocca un compagno o se stesso e sul “Cartellino stilla” scrive una singola -Immunità a [effetto]-, il suo codice PG e lo consegna al bersaglio dell’incantesimo. Da quel momento fino all’alba successiva il bersaglio avrà l’immunità all’ effetto in questione. Magico! è un’eccezione, al massimo si ottiene la resistenza nel caso di modificatori semplicemente si ignorano le conseguenze (domine e infetto)\r\nAeromanzia: Folgore! Perforante! Confusione n! Urto!, Idromanzia: Gelo! Paralisi n!, Demonologia: Magico! Comando! Paralisi n!, Negromanzia: Acido! Terrore n! domine!, Egomanzia: Magico! Un effetto mentale, Piromanzia: Fuoco! Dolore n!, Geomanzia: Tutti i danni e gli effetti mentali, Alchimanzia: Folgore! Veritas Arcana:Scacciare tutti gli spiriti che cercano di controllare il protetto fino  all\'alba sucessiva, Animanzia: Un effetto mentale! Veritas Arcana:Scacciare tutti gli spiriti che cercano di controllare il protetto fino  all\'alba sucessiva, Taumaturgia: Dolore n! Terrore n! Infetto!, Mortale n! Disintegrazione n!\r\n', 14, b'0', b'1'),
(267, 'Nera parodia', 'Tipo: Incantesimo Maggiore\r\nIl mago recita la formula, tocca un compagno o se stesso e sul “Cartellino stilla” scrive una singola -Immunità a [effetto]-, il suo codice PG e lo consegna al bersaglio dell’incantesimo. Da quel momento fino all’alba successiva il bersaglio avrà l’immunità all’ effetto in questione. Magico! è un’eccezione, al massimo si ottiene la resistenza nel caso di modificatori semplicemente si ignorano le conseguenze (domine e infetto)\r\nSFERA	EFFETTI	SFERA	EFFETTI\r\nAeromanzia	Folgore! Perforante! Confusione n! Urto!	Idromanzia	Gelo! Paralisi n!\r\nDemonologia	Magico! Comando! Paralisi n!	Negromanzia	Acido! Terrore n! domine!\r\nEgomanzia	Magico! Un effetto mentale	Piromanzia	Fuoco! Dolore n!\r\nGeomanzia	Tutti i danni e gli effetti mentali	Alchimanzia	Folgore! Veritas Arcana:Scacciare tutti gli spiriti che cercano di controllare il protetto fino  all\'alba sucessiva.\r\nAnimanzia	Un effetto mentale! Veritas Arcana:Scacciare tutti gli spiriti che cercano di controllare il protetto fino  all\'alba sucessiva	Taumaturgia	Dolore n! Terrore n! Infetto!, Mortale n! Disintegrazione n!\r\n', 14, b'0', b'1'),
(268, 'Parlare con i morti', 'Tipo: Incantesimo minore \r\nIl negromante può infliggere ad un cadavere: \"Veritas Arcano! Cadavere rispondi si o no a tre mie domande e poi divieni polvere.\" L\'incantesimo può essere usato solo su cadaveri morti nell\'evento corrente.\r\nLo spirito del morto è obbligato a rispondere solo \"si\" o \"no\", ed a farlo sinceramente. Al termine dell\'incantesimo il cadavere diventa polvere. \r\n', 14, b'0', b'1'),
(269, 'Pelle d\'acciaio', 'Tipo: Incantesimo Minore\r\nIl personaggio sfrutta le sue energie magiche per indurire la pelle fino a renderla più dura dell’acciaio diventando immune a Colpo! E Perforante! Affinché l’incantesimo abbia effetto il PG deve ripetere continuamente la formula seguita dall’effetto (Immune colpo perforante!). Se interrompe la recitazione l’incantesimo ha termine. Per riattivarlo basta semplicemente ripetere la formula ma se si viene colpiti in questo lasso di tempo ovviamente si perde l’incanto poiché la magia funziona dopo che viene conclusa la recitazione della prima formula. Durante l’uso di questo incantesimo il PG può solo muoversi, non può attaccare né lanciare altre magie. Può comunque rendere immune altre persone a Colpo! E Perforante! toccandole. Non c’è limite alle persone che può rendere immuni però mai più di una contemporaneamente. La persona protetta può muoversi e combattere normalmente, non dovrà recitare né formula né cantilena ma solo dichiarare Immune! Quando verrà colpita dal danno appropriato, tuttavia rimarrà protetta solo se riuscirà a mantenere un contatto fisico col mago.\r\n', 14, b'0', b'1'),
(270, 'Pelle di dragone', 'Tipo: Incantesimo Minore\r\nIl personaggio sfrutta le sue energie magiche per rendere la sua pelle insensibile a una data energia o all’acido diventando immune a un danno elementare (acido, folgore, fuoco o gelo) Affinché l’incantesimo abbia effetto il PG deve ripetere continuamente la formula seguita dall’effetto (Immune + il danno a cui è immune). Se interrompe la recitazione l’incantesimo ha termine. Per riattivarlo basta semplicemente ripetere la formula ma se si viene colpiti in questo lasso di tempo ovviamente si perde l’incanto poiché la magia funziona dopo che viene conclusa la recitazione della prima formula. Durante l’uso di questo incantesimo il mago può solo muoversi, non può attaccare né lanciare altre magie. Può comunque rendere immune altre persone Toccandole. Non c’è limite alle persone che può rendere immuni però mai più di una contemporaneamente. La persona protetta può muoversi e combattere normalmente, non dovrà recitare né formula né cantilena ma solo dichiarare Immune! Quando verrà colpita dal danno appropriato, tuttavia rimarrà protetta solo se riuscirà a mantenere un contatto fisico col mago.\r\nGeomanzia un qualsiasi danno elementare, piromanzia solo fuoco, aeromanzia  solo folgore, idromanzia solo gelo\r\n', 14, b'0', b'1'),
(271, 'Pirodardo', 'Tipo: Incantesimo Maggiore \r\nCon questo incantesimo, il PG crea dal nulla delle fiamme che lancia con precisione verso un bersaglio.\r\n•	Sfera a I: Dichiara Dardo di Fuoco!\r\n•	Sfera a II: Dichiara Dardo di fuoco Intenso\r\n•	Sfera a III: Dichiara Dardo di fuoco Devastante\r\n•	Sfera a IV: Dichiara Dardo di Fuoco Magico Devastante!\r\n', 14, b'0', b'1'),
(272, 'Purificazione', 'Tipo: Incantesimo Minore\r\n•	Sfera a I: Dichiara Dispersione dei Veleni!\r\n•	Sfera a II: Dichiara Dispersione del Terrore!\r\n•	Sfera a III: Dichiara Dispersione degli Effetti Mentali!\r\n', 14, b'0', b'1'),
(273, 'Ribellasangue', 'Tipo: Incantesimo Maggiore\r\nDichiarazione: Dardo del Dolore N! Con la sfera a I N è 4, a II è 7, a III è Intenso e a IV è Devastante.\r\n', 14, b'0', b'1'),
(274, 'Richiamo arcano', 'Tipo: incanto minore\r\nLa creatura arcana uccisa con le braccia incrociate si dirige verso il proprio evocatore il quale a contatto con la creatura potrà usare l’incanto “richiamo” che fa rimaterializzare la creatura arcana immediatamente con tutti i punti ferita originari e la possibilità di comportarsi come se fosse appena entrata in combattimento. Nota che le creature più potenti richiedono una qualche condizione per poter essere rievocati (la più comune è dar loro una stilla o una pietra arcana). Le creature più caratteristiche di Alchimanzia e Taumaturgia non beneficiano di questa capacità, o ne beneficiano in modo più difficoltoso.', 14, b'0', b'1'),
(275, 'Rivitalizzare', 'Tipo: incantesimo Maggiore\r\nA contatto consente di “infliggere” l’effetto Taumaturgia!. ', 14, b'0', b'1'),
(276, 'Spezzaincantesimi', 'Tipo: Incantesimo Maggiore\r\nPermette di causare “Dardo disperdi incanti devastante!”\r\nN.B.: i bersagli colpiti fino all’alba successiva non possono usare incantesimi (con recitazione di formula)', 14, b'0', b'1'),
(277, 'Scacciare il male', 'Tipo: Incantesimo Minore\r\nDichiarazione: Onda dell’Esorcismo N!. Con la sfera a I N è 2, con II è 4, con III è 6, con IV è Intenso.\r\n', 14, b'0', b'1'),
(278, 'Stasi', 'Tipo: Incantesimo maggiore\r\nDichiarazione: Dardo della Paralisi N!. Con la sfera a I N è 3, a II è 6, a III è 9, a IV è Intenso e a IV e con Maestro e Volontà I è Devastante.', 14, b'0', b'1'),
(279, 'Tocco voltaico', 'Tipo: Incantesimo Maggiore \r\nDopo aver recitato la formula e toccato la propria arma da corpo a corpo, con il primo attacco andato a segno (in ogni caso prima dell’alba successiva) l’incantatore può dichiarare a seconda del livello:\r\n•	Alchimanzia II: Fuoco Devastante\r\n•	Alchimanzia III: Folgore Devastante\r\n•	Alchimanzia IV: Paralisi Devastante\r\n', 14, b'0', b'1'),
(280, 'Vero nobile', 'Nobile è un talento particolare. È l’unico talento sociale presente in questo manuale. Esistono due categorie di nobili: quelli bastardi (1/4 o 2/4 di sangue nobile Talento Sangue Nobile), e lignaggio puro (3/4 o 4/4 di sangue nobile Talento Vero Nobile). Con questo talento siete di fatto considerati nobili di puro lignaggio. \r\nSi possono creare personaggi nobili a partire dai bandi aperti dai master. Qualunque giocatore può fare un personaggio nobile. Un personaggio nobile è un personaggio limitato: se infrange palesemente i suoi obblighi viene cancellato, anche senza preavviso.\r\nAl momento della creazione di un personaggio nobile è indispensabile accordarsi con i master per l’ossatura della storia del personaggio.\r\nSolitamente i bandi dei master riguardano determinate categorie di nobili (es. cavalieri per un’ambientazione in cui la milizia deve essere riorganizzata). Se non è stato esplicitamente vietato però è possibile proporre dei personaggi nobili: se dovessero risultare interessanti potrebbero essere accettati.\r\nMaggiori sono i privilegi, maggiori sono gli obblighi del personaggio e i suoi contatti sociali con PNG dell’ambientazione. \r\nÈ un talento che, se usato male, risulta inutile: non dà automaticamente potere e ricchezza ma può essere la base per interpretare splendidi personaggi. Si fa notare che i bastardi pur avendo solitamente meno contatti e minor potere iniziale hanno sempre minori obblighi dei personaggi con lignaggio puro.\r\nFare il nobile non significa avere un master che ordina agli altri personaggi di ubbidire, ma dà comunque i seguenti vantaggi:\r\n•	Araldica: sai riconoscere i nobili veri o finti quando li vedi, spesso ne sai capire anche il casato (se parli un po\' con qualcuno puoi usare “Veritas percezione [con ravvicinato] rivela se sei nobile e il tuo casato”)\r\n•	Spesso egli avrà una via privilegiata per dare inizio alle quest e dare informazioni ai personaggi;\r\n•	Si ha una carica rilevante, come ad esempio Cavaliere o Monsignore (ovviamente più alta dei Sangue Nobile), e si è sempre un passo avanti ai plebei nel far carriera.\r\n•	Si suppone che ogni Vero Nobile abbia almeno un anziano mentore a disposizione. Per tale ragione ogni nobile ha accesso a una lista di talenti in tema, a cui solitamente hanno accesso anche i seguaci dello stesso.\r\n•	Il Vero Nobile può gestire infiniti feudi e quartieri cittadini a suo nome, mentre un plebeo può gestirne al massimo uno.\r\n•	Amici e parenti spesso sono tra i PNG più influenti della zona.\r\n', 16, b'0', b'0'),
(281, 'Sangue nobile', 'il PG è nato nobile cadetto o figlio bastardo, ma è stato riconosciuto, è un PL con delle limitazioni comportamentali, ma già può fregiarsi di un titolo nobiliare minore con tutti i vantaggi annessi.', 16, b'0', b'0'),
(282, 'Patto smeraldo', 'Il PG quando deve sollevare qualcosa ottiene come talento temporaneo forza straordinaria (assolutamente non per le risse). Se il PG possiede forza straordinaria, quando si siede su qualcuno è considerato oggetto inamovibile (Veritas Arcana) finché è cosciente. Questo patto viene riconosciuto da creature di geomanzia o  animanzia.', 17, b'0', b'0'),
(283, 'Patto del silenzio', 'Il potere funziona solo se si possiede il talento Nascondersi. Consente di far nascondere un\'altra persona con armatura leggera o nessuna armatura. Questo patto viene riconosciuto da creature di animanzia o negromanzia.', 17, b'0', b'0'),
(284, 'Patto della saggezza', 'il PG ha accesso a azioni inter-evento che danno risposte su misteri del mondo. Spiriti e creature arcane cercheranno la risposta e si aspetteranno lo stesso dal personaggio. Questo patto viene riconosciuto da creature di tutti i tipi, ma solitamente sagge e antiche.', 17, b'0', b'0'),
(285, 'Patto del dominio', 'Il PG può dichiarare [ravvicinato] \"Comando!, creatura della natura [animantica] soddisfa la mia richiesta nel nome dei grandi draghi\". Questo patto viene riconosciuto da creature animantiche e legate ai quattro elementi.', 17, b'0', b'0'),
(286, 'Patto del viaggiatore', 'Consente al PG un viaggio extracorporeo come azione Inter-evento per entrare in comunicazione con entità mistiche. Questo patto viene riconosciuto da demoni, creature egomantiche e negromantiche (Fomori)', 17, b'0', b'0'),
(287, 'Estasiato', 'In un momento della tua vita la tua anima ha toccato l’essenza del divino, per un fugace istante, ma tanto è bastato a segnarti per la vita. Per avere questo talento devi inviare un BG ai master con informazioni sull’ordine a cui appartieni, che deve essere discusso e approvato. Un estasiato non è un “prete”, è l’equivalente di un santo che cammina, i master possono mettere bandi per avere PL con questo talento o bloccarlo verso una o più divinità. ', 16, b'0', b'0'),
(288, 'Esangue', 'il personaggio dichiara Resisto! a Fuoco! e Dolore!. Il personaggio deve essere pallido o albino.', 18, b'0', b'0'),
(289, 'Grottesco', 'il personaggio dichiara Resisto! a Terrore! e Comando! Il personaggio deve essere gobbo o deforme.', 18, b'0', b'0'),
(290, 'Non morto', 'Il personaggio diventa un non-morto , dichiarando Immune! a tutti gli effetti mentali (Possessione, terrore, sonno, dolore, confusione, Comando!), Veritas Ispirazione, Guarigione e Taumaturgia! ed ai danni potenziati con stordisci! mentre dichiara Resisto a Mortale N! Non possono essere resuscitati né subiscono conseguenze da veleni o malattie. Una chiamata seguita dal descrittore \"Non-morti!\", significa che la dichiarazione ha effetto sui non morti e solo su di essi. (Es. Taumaturgia non-morti!). Non può mai dichiarare Immune! a Domine! (Attenzione, vari non-morti sono sensibili a domine). Se subisce esorcismo si comporta come se subisse terrore. I cibi (gli alcolici sono cibi) non hanno alcun effetto sui non morti (Le pozioni alchemiche si)', 18, b'0', b'0'),
(291, 'Rigenerazione', 'Talento tipico della razza troll. A fine combattimento dichiarando Rigenerazione! tutte le ferite  guariscono. \r\nIl personaggio è sensibile al fuoco: non può mai dichiarare Resisto! od Immune! se riceve un danno fuoco! e i PF locazionali o corporei si azzerano immediatamente (come se fosse potenziato con devastante!) senza possibilità di rigenerazione (Solo duro a morire od un guaritore possono essere d\'aiuto). Se la creatura va in coma e può rigenerare, va in coma stabilizzato, quindi non muore anche se sta in coma più di 5 minuti.\r\n', 18, b'0', b'0'),
(292, 'Anima perduta', 'la mente della creatura è stata devastata e dichiara immune! a Possessione N! e Terrore N!, ma è anche soggetta allo svantaggio stupidità. Marchio: squarci sulla pelle, ematomi e simili.', 19, b'0', b'0'),
(293, 'Arte dracena I', '(Arte della carne) l’arte dracena è una sfera impura istintiva utilizzabile solo da fomori in cui è presente sangue draceno. A chi tramite poteri o rituali vede il colore della sfera, questa appare come un mix di carne, sangue, ossa e parti corporee che si spostano fluide. La sfera è composta da un mix di demonologia, taumaturgia e animanzia oltre che da qualità fisiche innate (per eventuali analisi viene chiarito questo, i bonus sono solo quelli della sfera stessa). Il draceno fuori dal combattimento al tocco causa Dolore 6!. Inoltre il draceno può consegnare cartellini stilla alle creature da lui plasmate con arti dracene per usarle come canale per “travasare” stille da creatura a creatura. L’arte dracena solitamente è prerogativa di caste sacerdotali femminili. La sfera impura consente di creare servitori (infiniti e chimere), oggetti e pozioni, alterando sostanze viventi o producendole. (Vedi Sommo Compendio). Chi ha Arte Dracena ha automaticamente accesso a tutti i livelli successivi. Requisiti: fomoro. Marchio: sprovvisto di bocca, che è sostituita da 2 sottili fessure; la pelle può essere di un colore qualsiasi, ad eccezione del rosa.', 19, b'0', b'0'),
(294, 'Arte dracena II', '(Arte dei fluidi corporei) Il draceno fuori dal combattimento e con molta calma toccando qualcuno per  5 secondi  causa possessione 4 ', 19, b'0', b'1'),
(295, 'Arte dracena III', '(Arte delle ossa):il draceno fuori dal combattimento  al tocco causa \"Spacca\"', 19, b'0', b'1'),
(296, 'Arte dracena IV', '(Arte dei fluidi extracorporei) Fuori dal combattimento con \"ravvicinato\" il draceno può causare uno tra: Terrore 4, Possessione 4, Sonno 4, Confusione 6', 19, b'0', b'1'),
(297, 'Artigli I', 'il personaggio dispone di artigli retrattili: armi piccole che dichiarano Colpo! e che il giocatore può togliere quando vuole. Quando il mutato utilizza gli artigli e subisce Goffaggine! deve dichiarare Immune! Marchio: gli artigli se sono sguainati, altrimenti nulla.', 19, b'0', b'0'),
(298, 'Artigli II', 'gli artigli sono potenziati con Intenso! Marchio: gli artigli se sono sguainati, altrimenti nulla', 19, b'0', b'1'),
(299, 'Bestiale I', 'all’inizio del combattimento può dichiarare Onda di Terrore 3! Marchio: un tratto da animale tra capelli, orecchie, naso, volto o bocca.', 19, b'0', b'0'),
(300, 'Bestiale II', 'all’inizio del combattimento il personaggio può dichiarare Onda di Terrore 6! Marchio: 2 tratti bestiali. ', 19, b'0', b'1'),
(301, 'Bestiale III', 'all’inizio del combattimento può dichiarare Onda di Terrore 8! Marchio: aspetto completamente bestiale. ', 19, b'0', b'1'),
(302, 'Coda poderosa', 'la grande coda del personaggio lo aiuta a non cadere quando viene colpito. Il personaggio dichiara Resisto! a Urto!. Marchio: una coda che tocchi terra.', 19, b'0', b'0'),
(303, 'Corazza innata', 'il personaggio ottiene 2 PA, non può indossare armature o avere altri tratti inumani che danno PA il personaggio non può usare incanti o talenti di destrezza. Marchio: una corazza organica che deve coprire in ogni caso tutto il corpo.', 19, b'0', b'0'),
(304, 'Corna gloriose I', 'il personaggio possiede delle belle e possenti corna: esse sono per lui uno status symbol e gli concedono un bonus di +2 alla Gloria. Marchio: corna da almeno 25 centimetri (2 da toro nel caso dei minotauri)', 19, b'0', b'0'),
(305, 'Corna gloriose II', 'il personaggio possiede delle corna stupende e di dimensioni ragguardevoli che gli concedono un ulteriore bonus di +3 alla gloria. Marchio: le corna devono essere almeno otto e formare una specie di corona.', 19, b'0', b'1'),
(306, 'Dono della nebbia I', 'il personaggio può occultarsi come se avesse il talento Nascondersi. Marchio: pelle cinerea.', 19, b'0', b'0'),
(307, 'Dono della nebbia II', 'Il personaggio può dichiarare Etereo, ma solo per attraversare ostacoli, come le pareti normalmente scalabili con il talento Lesto I senza dover nemmeno attendere i 15 secondi per ciascun lato. Marchio: capelli grigi.', 19, b'0', b'1'),
(308, 'Dono della nebbia III', 'il personaggio è sempre Etereo! e intangibile. Inoltre non può più portare alcun oggetto, armi incluse o infliggere danni fisici. Marchio: abiti color nebbia.', 19, b'0', b'1'),
(309, 'Ghiandole del cobra I', 'al personaggio sono nate ghiandole velenifere con le quali può secernere un veleno che applica sulle armi. In combattimento può dichiarare Acido! Marchio: denti di serpente.', 19, b'0', b'0');
INSERT INTO `talenti` (`id_talento`, `nome`, `descrizione`, `area`, `flag_campagna`, `flag_requisiti`) VALUES
(310, 'Ghiandole del cobra II', 'il personaggio può sputare il suo veleno e, all’inizio del combattimento, può dichiarare Dardo di Acido Confusione 3! Marchio: coda di serpente o cappuccio da cobra o disegni sulla pelle a ricordare la pelle di un cobra reale.', 19, b'0', b'1'),
(311, 'Ghiandole del cobra III', 'a mani nude il personaggio può dichiarare Fatale! (simulando il morso). Marchio: un altro extra tra quelli di Ghiandole del Cobra II. ', 19, b'0', b'1'),
(312, 'Ignifugo', 'il personaggio dichiara Immune! a Fuoco!. Marchio: pelle rossa, o almeno grosse chiazze di pelle color rosso.', 19, b'0', b'0'),
(313, 'Molteplice', 'Il personaggio è Immune! a Perforante! Marchio: il corpo deve essere composto da più parti come insetti, ossa o teste.', 19, b'0', b'0'),
(314, 'Organi spostati', 'il personaggio ha una fisionomia interna diversa da quella normale della sua razza. Questo lo rende resistente a colpi mirati a qualche organo vitale ed è quindi resistente a Sventra (nome della sua razza!) Marchio: una faccia o un braccio inutile aggiuntivo.', 19, b'0', b'0'),
(315, 'Pelliccia', 'il personaggio dichiara Immune! a Gelo!. Marchio: pelliccia.', 19, b'0', b'0'),
(316, 'Planata', 'come se il personaggio avesse i talenti Marinaio e Cavaliere ma non permette né l’accesso alle rispettive evoluzioni né di portare altri personaggi con se. Inoltre consente di fuggire o entrare in gioco considerando come “zona di fuga” qualunque confine dell\'area di gioco non coperto da strutture. Marchio: Ali', 19, b'0', b'0'),
(317, 'Predatore', 'cibandosi di una creatura per 30 secondi, può dichiarare Fatale! Marchio: denti tipici da animale predatore o dipinti.', 19, b'0', b'0'),
(318, 'Promessa oscura', 'Se il personaggio muore, risorgerà come non-morto. In tal caso la mutazione promessa oscura dovrà essere rimossa dalla lista dei talenti, acquisendo invece il tratto non-morto  (vedi tratti) e sensibilità a domine!. Il personaggio inoltre non può più spendere PP in questa nuova forma. Marchio: dopo la trasformazione il personaggio dovrà avere un aspetto cadaverico. Prima dovrebbe comunque avere qualche dettaglio tetro sul corpo o nel vestire.', 19, b'0', b'0'),
(319, 'Psion I', 'all’inizio del combattimento può dichiarare Dardo dell’Urto! Marchio: un occhio sulla mano o sull’avambraccio. ', 19, b'0', b'1'),
(320, 'Psion II', 'all’inizio del combattimento il personaggio può dichiarare Dardo dello Possessione N! con N pari al numero dei suoi Gloria. Marchio: una bocca aggiuntiva sulla testa o su un braccio. ', 19, b'0', b'1'),
(321, 'Psion III', 'toccando una creatura in coma il personaggio può dire: “Veritas Ispirazione, nel sonno o nello stordimento rispondi a questa domanda” e rivolgerle una qualunque domanda. Questo potere non può essere utilizzato su persone vive e coscienti, né su cadaveri. Marchio: un’orecchia aggiuntiva sulla testa o su un braccio', 19, b'0', b'1'),
(322, 'Rigenerazione', 'come il talento razziale dei troll, sensibilità a Fuoco! compresa. Marchio: escrescenze ossee sul corpo.', 19, b'0', b'0'),
(323, 'Scaglie', 'Il personaggio non può più usare armature ma le scaglie gli concedono 1 PA. Marchio: scaglie e/o la pelle colorata uniformemente di un colore diverso da quello della creatura (mai rosa!)', 19, b'0', b'0'),
(324, 'Spore soporifere', 'il personaggio può dichiarare Sonno 3! con attacchi da mischia. Marchio: aspetto da fungo o funghi e muffe che spuntano dal corpo.', 19, b'0', b'0'),
(325, 'Terzo occhio', 'il terzo occhio permette di vedere chi sta dichiarando Occultamento! Marchio: un terzo occhio sulla fronte.', 19, b'0', b'0'),
(326, 'Vegetale', 'il personaggio fornisce tre reagenti alchemici ulteriori nei rituali solo per la presenza. Marchio: caratteristiche vegetali ben visibili (foglie al posto dei capelli, corteccia al posto della pelle, liane che spuntano ecc.)', 19, b'0', b'0'),
(327, 'Sangue arcano [Egomanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(328, 'Sangue arcano [Demonologia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(329, 'Sangue arcano [Taumaturgia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(330, 'Sangue arcano [Negromanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(331, 'Sangue arcano [Animanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(332, 'Sangue arcano [Alchimanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(333, 'Sangue arcano [Aeromanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(334, 'Sangue arcano [Geomanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(335, 'Sangue arcano [Idromanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(336, 'Sangue arcano [Piromanzia]', 'Il personaggio sceglie una sfera, con cui ha un innata affinità; nelle perquisizioni trova oggetti e spiriti relativi a quella sfera; ha CCA 1 verso uno spirito o un  oggetto incantato della sua sfera ed è considerato avere il livello di magia minimo necessario ad adoperare l’oggetto. Il personaggio con Sangue Arcano se non ha spiriti può prendere spiriti che è in grado di controllare con questo talento. Marchio: colore della sfera almeno a tracce sul corpo o sui capelli', 19, b'0', b'0'),
(337, 'Via del prescelto', 'una volta acquisita questo talento il personaggio entra in uno stato di fervore religioso in cui tenta di attrarre il favore del suo dio. Nel momento in cui riceve questo talento il personaggio deve dichiarare quale sia il suo dio il quale prima o poi lo sottoporrà ad una dura prova dove dovrà giungere preparato. La riuscita della prova significherà un dono dalla divinità, come il passaggio a una natura superiore, l’ottenimento di qualche oggetto leggendario, o addirittura la resurrezione di una persona cara morta. Il fallimento porterà all’eliminazione fisica del personaggio o a sorti anche peggiori. Chi segue la via del prescelto non può acquisire nuovi talenti, ha altro da fare. Questo talento non può essere acquisito ma solo ottenuto in seguito ad azioni In Gioco.', 16, b'0', b'0'),
(338, 'Mutante', 'Può acquisire solo tratti inumani, senza necessità di addestramento. Se arriva a 6 tratti inumani non appartenenti alla razza diviene una perversione.', 16, b'0', b'0'),
(339, 'Marchio dell\'anarco', 'può acquisire sia le mutazioni sia i normali talenti (spendendo regolarmente i PP). Sostituisce Mutante eliminandone gli svantaggi. Questo talento non può essere acquisito ma solo ottenuto in seguito di azioni In Gioco, ed è il simmetrico di Via del Prescelto.', 16, b'0', b'0'),
(340, 'Semi-costrutto', 'quando va in coma si stabilizza in automatico. Non può mai dichiarare Immune! a Gelo!, acquisisce automaticamente Uso Armature e Forza Straordinaria. Deve raffigurare l’utilizzo della stessa armatura metallica in almeno due locazioni. Le locazioni e l’armatura devono essere le stesse ad ogni partita. Dichiara Resisto! agli effetti mentali, a Guarigione! (ma non a Taumaturgia!), a Perforante! e a Folgore!. Recupera i punti ferita normalmente oppure dopo 10 minuti di riparazione di un personaggio con il talento Ingegneria, od un alchimante che lo cura con Medicina di pari livello. Tutti i mortali che diventano semi-costrutti ottengono uno svantaggio mentale a discrezione dei Master.', 16, b'0', b'0'),
(341, 'Morbo del ghoul', 'la persona è stata contaminata dal morbo del ghoul, un processo che porterà il PG a ottenere Artigli I, Esangue e Grottesco e gli svantaggi cannibalismo oltre a non poter usare stille. Solitamente per far attivare l\'infezione deve aver vissuto in posti squallidi o aver mangiato carne cruda di suoi simili o marcia.', 16, b'0', b'0'),
(342, 'Patto arcano', 'l\'incantatore fa un patto con una creatura arcana molto potente, ottiene gratis un livello in più in una sfera, anche se non posseduta (anche se il PG ha scaramanzia o se così facendo arriva al 5° liv. In una sfera). La creatura arcana con cui il personaggio ha fatto il patto può togliergli la vita con un pensiero, e sa sempre se l\'incantatore mente. Creatura arcana e incantatore comunicano tramite sogni e pensieri. Possono esistere varianti del Patto Arcano che danno privilegi diversi. Il patto arcano deve essere sempre una scelta libera.', 16, b'0', b'0'),
(343, 'Assuefazione', 'Il personaggio perde tutti i vantaggi della gloria. Apparirà come un alcolizzato od un drogato. Mentale.', 15, b'0', b'0'),
(344, 'Bestiale', 'può usare solo armi naturali (artigli ad esempio). Mentale.', 15, b'0', b'0'),
(345, 'Cannibalismo', 'chi è affetto da cannibalismo si nutre delle carni dei suoi nemici o dei suoi compagni. Ogni volta che manda in coma un mortale deve fermarsi ad assaggiarlo (si china e simula un morso a distanza realistica). Finita la battaglia continuerà a mangiare una creatura a terra per almeno 15 minuti, a meno che non venga fermato o non causi Fatale!. Dopodiché sarà sazio fino al combattimento successivo. Non aiuterà i compagni morenti: ciò che è a terra non è altro che succo e polpa. Mentale.', 15, b'0', b'0'),
(346, 'Delicato', 'in presenza di corpi feriti o ancor peggio fatti a pezzi subisci conati di vomito che ti impediscono ogni azione tranne muoverti finché non ti allontani. Mentale.', 15, b'0', b'0'),
(347, 'Dislessia grave', 'il personaggio non può mai acquisire il talento Istruzione. Se già ha questo talento lo perde insieme a tutti i talenti derivati.', 15, b'0', b'0'),
(348, 'Fotofobico', 'quando non è in una zona d\'ombra la sua gloria va a zero. Mentale.', 15, b'0', b'0'),
(349, 'Fragilità', 'Il personaggio non può acquisire i talenti Vigore I, Tempra, Robustezza I e derivati. Se già in possesso li perde. Fisico.', 15, b'0', b'0'),
(350, 'Furioso', 'il personaggio non può allontanarsi da nessun combattimento. Mentale.', 15, b'0', b'0'),
(351, 'Legato per la vita', 'Il personaggio ha giurato sul suo sangue di proteggere un altro personaggio. Se questo muore egli si procurerà la morte (al più tardi al termine del primo combattimento). Mentale.', 15, b'0', b'0'),
(352, 'Mentalità lineare', 'Non può acquisire il talento Occultismo ed i talenti che lo richiedono come requisito. Inoltre non può usare alcun oggetto magico. Mentale.', 15, b'0', b'0'),
(353, 'Muto', 'il personaggio non può parlare o usare incantesimi che richiedono una formula. Deve comunque utilizzare normalmente le dichiarazioni e può compiere rituali senza parlare, se ne è in grado. Mentale o fisico.', 15, b'0', b'0'),
(354, 'Odio', 'il personaggio odia profondamente una razza, una cultura o una categoria di persone (es. cavalieri). Se solo gli viene rivolta parola da questi è obbligato ad attaccare per ucciderli. Mentale.', 15, b'0', b'0'),
(355, 'Sensibilità', 'il personaggio non potrà mai essere resistente o immune al danno o al modificatore a cui è sensibile. Quando subisce l’effetto in questione questo viene potenziato con devastante. Sensibilità possibili sono ad esempio: fuoco, gelo, folgore, acido, domine, infetto, magico. Mentale o fisico.', 15, b'0', b'0'),
(356, 'Servitù razziale', 'il personaggio è obbligato a obbedire ai capi della sua razza. Non può comandare membri della sua stessa razza. Mentale.', 15, b'0', b'0'),
(357, 'Solitario', 'non puoi stare per più di 10 minuti assieme a un altro essere. Mentale.', 15, b'0', b'0'),
(358, 'Stupidità', 'svantaggio tipico della razza troll. Puoi scegliere se esprimerti a grugniti o nella lingua corrente. Nel secondo caso rispondi a qualsiasi domanda e non puoi mentire . Mentale. ', 15, b'0', b'0'),
(359, 'Timido', 'se una persona dell\'altro sesso ti parla sei soggetto a terrore 6 al di la di qualsiasi resistenza/immunità tu abbia (o del tuo sesso se preferisci). Mentale.', 15, b'0', b'0'),
(360, 'Vile', 'i combattimenti ti spaventano, fuggi se ti trovi in presenza di veri combattimenti (non tornei o allenamenti). Mentale.', 15, b'0', b'0');

-- --------------------------------------------------------

--
-- Struttura della tabella `talenti_pg`
--

CREATE TABLE `talenti_pg` (
  `pg` int(10) NOT NULL,
  `talento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `talenti_razza`
--

CREATE TABLE `talenti_razza` (
  `razza` int(10) NOT NULL,
  `talento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `talenti_razza`
--

INSERT INTO `talenti_razza` (`razza`, `talento`) VALUES
(1, 147),
(1, 169),
(1, 170),
(1, 183),
(1, 288),
(1, 289),
(4, 147),
(4, 169),
(4, 170),
(4, 183),
(4, 288),
(4, 289),
(5, 160),
(5, 169),
(5, 289),
(6, 160),
(6, 169),
(6, 289),
(9, 140),
(9, 142),
(9, 283),
(9, 288),
(9, 327),
(9, 328),
(9, 329),
(9, 330),
(9, 331),
(9, 332),
(9, 333),
(9, 334),
(9, 335),
(9, 336),
(10, 140),
(10, 142),
(10, 283),
(10, 288),
(10, 327),
(10, 328),
(10, 329),
(10, 330),
(10, 331),
(10, 332),
(10, 333),
(10, 334),
(10, 335),
(10, 336),
(21, 289);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `aree_talenti`
--
ALTER TABLE `aree_talenti`
  ADD PRIMARY KEY (`id_area_talenti`);

--
-- Indici per le tabelle `aree_talenti_razze`
--
ALTER TABLE `aree_talenti_razze`
  ADD PRIMARY KEY (`id_razza`,`id_area`),
  ADD KEY `fk_RA002_AREE_RAZZE_TA003_AREE_TALENTI_idx` (`id_area`);

--
-- Indici per le tabelle `azioni_economiche`
--
ALTER TABLE `azioni_economiche`
  ADD PRIMARY KEY (`id_azione`);

--
-- Indici per le tabelle `cartellini`
--
ALTER TABLE `cartellini`
  ADD PRIMARY KEY (`id_cartellino`),
  ADD KEY `nome` (`nome`);

--
-- Indici per le tabelle `domande_feedback`
--
ALTER TABLE `domande_feedback`
  ADD PRIMARY KEY (`id_evento`,`id_domanda`);

--
-- Indici per le tabelle `eventi`
--
ALTER TABLE `eventi`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indici per le tabelle `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_domanda`,`id_utente`);

--
-- Indici per le tabelle `organizzazioni`
--
ALTER TABLE `organizzazioni`
  ADD PRIMARY KEY (`id_org`,`nome_org`),
  ADD KEY `id_org` (`id_org`);

--
-- Indici per le tabelle `partecipanti`
--
ALTER TABLE `partecipanti`
  ADD PRIMARY KEY (`id_evento`,`id_utente`),
  ADD KEY `fk_EV002_PARTECIPANTI_EV003_AZIONI_ECONOMICHE_idx` (`id_azione`);

--
-- Indici per le tabelle `personaggi`
--
ALTER TABLE `personaggi`
  ADD PRIMARY KEY (`id_personaggio`),
  ADD KEY `nome_pg` (`nome_pg`),
  ADD KEY `id_utente` (`id_utente`),
  ADD KEY `nome_giocatore` (`nome_giocatore`);

--
-- Indici per le tabelle `punti_presenza`
--
ALTER TABLE `punti_presenza`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD KEY `id_utente` (`id_utente`),
  ADD KEY `id_2` (`id`);

--
-- Indici per le tabelle `razze`
--
ALTER TABLE `razze`
  ADD PRIMARY KEY (`id_razza`);

--
-- Indici per le tabelle `razze_campagna`
--
ALTER TABLE `razze_campagna`
  ADD PRIMARY KEY (`id_razza`);

--
-- Indici per le tabelle `religioni`
--
ALTER TABLE `religioni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `requisiti`
--
ALTER TABLE `requisiti`
  ADD PRIMARY KEY (`id_talento`,`id_talento_requisito`),
  ADD KEY `fk_TA002_REQUISITI_TA001_TALENTI1` (`id_talento_requisito`);

--
-- Indici per le tabelle `talenti`
--
ALTER TABLE `talenti`
  ADD PRIMARY KEY (`id_talento`),
  ADD KEY `fk_TA001_TALENTI_TA003_AREE_TALENTI1_idx` (`area`);

--
-- Indici per le tabelle `talenti_pg`
--
ALTER TABLE `talenti_pg`
  ADD PRIMARY KEY (`pg`,`talento`),
  ADD KEY `pg` (`pg`) USING BTREE;

--
-- Indici per le tabelle `talenti_razza`
--
ALTER TABLE `talenti_razza`
  ADD PRIMARY KEY (`razza`,`talento`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `aree_talenti`
--
ALTER TABLE `aree_talenti`
  MODIFY `id_area_talenti` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT per la tabella `azioni_economiche`
--
ALTER TABLE `azioni_economiche`
  MODIFY `id_azione` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT per la tabella `cartellini`
--
ALTER TABLE `cartellini`
  MODIFY `id_cartellino` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
--
-- AUTO_INCREMENT per la tabella `eventi`
--
ALTER TABLE `eventi`
  MODIFY `id_evento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `personaggi`
--
ALTER TABLE `personaggi`
  MODIFY `id_personaggio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT per la tabella `religioni`
--
ALTER TABLE `religioni`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT per la tabella `talenti`
--
ALTER TABLE `talenti`
  MODIFY `id_talento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `requisiti`
--
ALTER TABLE `requisiti`
  ADD CONSTRAINT `fk_TA002_REQUISITI_TA001_TALENTI` FOREIGN KEY (`id_talento`) REFERENCES `talenti` (`id_talento`),
  ADD CONSTRAINT `fk_TA002_REQUISITI_TA001_TALENTI1` FOREIGN KEY (`id_talento_requisito`) REFERENCES `talenti` (`id_talento`);

--
-- Limiti per la tabella `talenti`
--
ALTER TABLE `talenti`
  ADD CONSTRAINT `fk_TA001_TALENTI_TA003_AREE_TALENTI1` FOREIGN KEY (`area`) REFERENCES `aree_talenti` (`id_area_talenti`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
