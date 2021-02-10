-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 08:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('head@gmail.com', 'head', 'head'),
('ishan@gmail.com', 'ishan', 'admin'),
('sandesh@gmail.com', 'sandesh', 'admin'),
('utkarsh@gmail.com', 'utkarsh', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5bd1a29b0514c', '5bd1a29b1c417'),
('5bd1a29b7d4b8', '5bd1a29b8ae6e'),
('6012f7a6416ca', '6012f7a6423b6'),
('6012f7a644aa5', '6012f7a645083'),
('6022d54d9d0f5', '6022d54d9d865'),
('6022d54d9f9f7', '6022d54da006e'),
('6022d54da23d1', '6022d54da2a54'),
('6022d54da61e9', '6022d54da6927'),
('6022d54da871a', '6022d54da96ae');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('6012f8a9b77cc', 'Utkarsh', 'a@gmail.com', 'ACsac', 'ascasc', '2021-01-28', '11:17:21pm'),
('601518926b53d', 'Ishan', 'ig@a.com', 'Service', 'Excellent', '2021-01-30', '01:58:02pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('a@gmail.com', '5bd1a1a3c5e5b', 2, 2, 2, 0, '2021-01-28 17:39:06'),
('a@gmail.com', '55897338a6659', 1, 5, 2, 3, '2021-01-28 17:39:34'),
('a@gmail.com', '6012f7903bff8', -4, 2, 0, 2, '2021-01-28 17:44:58'),
('ig@a.com', '558920ff906b8', -2, 2, 0, 2, '2021-02-07 05:27:56'),
('ig@a.com', '5bd1a1a3c5e5b', 1, 2, 1, 1, '2021-02-07 05:28:19'),
('ig@a.com', '558921841f1ec', 4, 2, 2, 0, '2021-02-07 05:28:30'),
('ig@a.com', '5589222f16b93', 1, 2, 1, 1, '2021-02-07 05:28:46'),
('sandesh@a.com', '5589741f9ed52', 1, 5, 2, 3, '2021-02-07 06:42:09'),
('sandesh@a.com', '6012f7903bff8', 0, 2, 1, 1, '2021-02-07 06:42:17'),
('sandesh@a.com', '5589222f16b93', 1, 2, 1, 1, '2021-02-07 06:42:25'),
('stud@gmail.com', '55897338a6659', -2, 5, 1, 4, '2021-02-09 18:34:02'),
('stud@gmail.com', '6012f7903bff8', -4, 2, 0, 2, '2021-02-09 18:35:31'),
('stud@gmail.com', '5bd1a1a3c5e5b', 1, 2, 1, 1, '2021-02-09 18:35:45'),
('stud@gmail.com', '6022d4ad35a27', 2, 5, 1, 4, '2021-02-09 18:36:00'),
('stud@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-02-09 18:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('5bd1a29b0514c', 'left-root-right', '5bd1a29b1c417'),
('5bd1a29b0514c', 'root-left-right', '5bd1a29b1c42c'),
('5bd1a29b0514c', 'right-left-root', '5bd1a29b1c42d'),
('5bd1a29b0514c', 'none of these', '5bd1a29b1c42e'),
('5bd1a29b7d4b8', 'left-root-right', '5bd1a29b8ae62'),
('5bd1a29b7d4b8', 'root-left-right', '5bd1a29b8ae6e'),
('5bd1a29b7d4b8', 'right-left-root', '5bd1a29b8ae70'),
('5bd1a29b7d4b8', 'none of these', '5bd1a29b8ae71'),
('6012f7a6416ca', 'a', '6012f7a6423b6'),
('6012f7a6416ca', 'v', '6012f7a6423be'),
('6012f7a6416ca', 's', '6012f7a6423bf'),
('6012f7a6416ca', 'c', '6012f7a6423c0'),
('6012f7a644aa5', 'a', '6012f7a645083'),
('6012f7a644aa5', 'c', '6012f7a645085'),
('6012f7a644aa5', 's', '6012f7a645087'),
('6012f7a644aa5', 'd', '6012f7a645088'),
('6022d54d9d0f5', 'Low', '6022d54d9d863'),
('6022d54d9d0f5', 'Mid', '6022d54d9d864'),
('6022d54d9d0f5', 'High', '6022d54d9d865'),
('6022d54d9d0f5', 'Floating', '6022d54d9d866'),
('6022d54d9f9f7', 'logic 0', '6022d54da006e'),
('6022d54d9f9f7', 'logic 1', '6022d54da0071'),
('6022d54d9f9f7', '+10V', '6022d54da0072'),
('6022d54d9f9f7', 'Floating', '6022d54da0073'),
('6022d54da23d1', 'collector', '6022d54da2a51'),
('6022d54da23d1', 'base resistor', '6022d54da2a54'),
('6022d54da23d1', 'capacitor', '6022d54da2a55'),
('6022d54da23d1', 'inductor', '6022d54da2a56'),
('6022d54da61e9', 'Two-transistor RTL implementation', '6022d54da6921'),
('6022d54da61e9', 'Three-transistor RTL implementation', '6022d54da6926'),
('6022d54da61e9', 'Multi-transistor RTL implementation', '6022d54da6927'),
('6022d54da61e9', 'Four-transistor RTL implementation', '6022d54da6928'),
('6022d54da871a', 'It results as low power dissipation', '6022d54da96ab'),
('6022d54da871a', 'It uses a minimum number of resistors', '6022d54da96ad'),
('6022d54da871a', 'It uses a minimum number of transistors', '6022d54da96ae'),
('6022d54da871a', 'It operates swiftly', '6022d54da96af');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('5bd1a1a3c5e5b', '5bd1a29b0514c', 'What is inorder?', 4, 1),
('5bd1a1a3c5e5b', '5bd1a29b7d4b8', 'what is pre order?', 4, 2),
('6012f7903bff8', '6012f7a6416ca', 'anc;salkc', 4, 1),
('6012f7903bff8', '6012f7a644aa5', 'ascasvdav', 4, 2),
('6022d4ad35a27', '6022d54d9d0f5', 'All input of NOR as low produces result as __________', 4, 1),
('6022d4ad35a27', '6022d54d9f9f7', 'In RTL NOR gate, the output is at logic 1 only when all the inputs are at __________', 4, 2),
('6022d4ad35a27', '6022d54da23d1', 'RTL consists of a common emitter stage with a _______ connected between the base and the input voltage source.', 4, 3),
('6022d4ad35a27', '6022d54da61e9', 'The limitations of the one transistor RTL NOR gate are overcome by __________', 4, 4),
('6022d4ad35a27', '6022d54da871a', 'The primary advantage of RTL technology was that __________', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2021-01-30 08:37:55', 'ishan@gmail.com'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2021-01-30 08:36:54', 'utkarsh@gmail.com'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2021-01-30 08:36:54', 'utkarsh@gmail.com'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2021-01-30 08:36:54', 'utkarsh@gmail.com'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2021-01-30 08:37:55', 'ishan@gmail.com'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2021-01-30 08:37:55', 'ishan@gmail.com'),
('5bd1a1a3c5e5b', 'Data Structure', 1, 0, 2, 1, 'ds exam', 'ds', '2021-01-30 08:37:55', 'ishan@gmail.com'),
('6012f7903bff8', 'Os', 2, 2, 2, 10, '', 'operating system', '2021-01-30 08:36:54', 'utkarsh@gmail.com'),
('6022d4ad35a27', 'Register-transistor Logic(rtl)', 2, 0, 5, 10, 'This set of Digital Electronics/Circuits Multiple Choice Questions & Answers (MCQs) focuses on “Register-Transistor Logic(RTL).\r\n\r\n', 'Digital', '2021-02-09 18:30:05', 'sandesh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('a@gmail.com', -1, '2021-01-28 17:44:58'),
('ig@a.com', 4, '2021-02-07 05:28:46'),
('sandesh@a.com', 2, '2021-02-07 06:42:25'),
('stud@gmail.com', 1, '2021-02-09 18:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Utkarsh', 'M', 'VIT Pune', 'a@gmail.com', 1234567891, 'd45bf6d6796617c3c9e580508e9e44b9'),
('Ishan', 'M', 'VIIT Pune', 'ig@a.com', 4567891235, '179e3d586ac9e84aaa3bee1fcadf25e3'),
('Sandesh', 'M', 'COEP Pune', 'sandesh@a.com', 4567891237, 'fab2dc7ef93cd69be42252d5aae6e0be'),
('Student', 'F', 'XYZ', 'stud@gmail.com', 1234567891, '37c940d62c7ea2c46512e524cd446700');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
