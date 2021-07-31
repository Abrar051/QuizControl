
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quizcontrol`
--

CREATE TABLE `quizcontrol` (
  `userId` int(11) NOT NULL,
  `userIdNormal` varchar(45) NOT NULL,
  `userPassNormal` varchar(45) NOT NULL,
  `adminId` varchar(45) NOT NULL,
  `adminPass` varchar(45) NOT NULL,
  `mcqQuiz` varchar(150) NOT NULL,
  `marking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizcontrol`
--

INSERT INTO `quizcontrol` (`userId`, `userIdNormal`, `userPassNormal`, `adminId`, `adminPass`, `mcqQuiz`, `marking`) VALUES
(1, 'user1', 'pass1', 'admin1', 'adminpass1', 'your name ?', 3),
(2, 'user2', 'pass2', '', '', 'what is the place name', 2),
(4, 'user4', 'pass4', 'null', 'null', 'largest place on earth ?', 5),
(5, 'user4', 'pass4', 'null', 'null', 'largest place on earth ?', 5),
(7, 'user4', 'pass4', 'null', 'null', 'largest place on earth ?', 5),
(10, 'user4', 'pass4', 'null', 'null', 'largest place on earth ?', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quizcontrol`
--
ALTER TABLE `quizcontrol`
  ADD PRIMARY KEY (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
