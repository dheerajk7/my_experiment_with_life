-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2019 at 06:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myexperimentwithlife`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sno` int(11) NOT NULL,
  `Name` text NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` datetime DEFAULT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sno`, `Name`, `phone_no`, `email`, `date`, `msg`) VALUES
(1, 'Dheeraj', '1234567890', 'abc@gmail.com', NULL, 'This is me');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `s_no` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `posted_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`s_no`, `title`, `content`, `slug`, `date`, `posted_by`) VALUES
(1, 'This is my first post title.', 'I am very excited about this post and in future im going to write something in in it.', 'post-1', '2019-02-21 13:47:06', 'Dheeraj Kushwah'),
(2, 'Pulwama Attack : A black day for India', 'A suicide bombing attack on a CRPF convoy in Pulwama region of Jammu and Kashmir killed 40 CRPF paramilitary troopers on February 14, 2019. Jaish-e-Mohammad had claimed responsibility for the attack.\r\nt least 40 Central Reserve Police Force (CRPF) paramilitary troopers were killed in the deadliest terror attack witnessed in three decades of Kashmir\'s insurgency. The surprise attack by a Jaish-e-Mohammed (JeM) suicide bomber left the nation in shock and anger while Prime Minister Narendra Modi gave security forces a freehand to strike back with equal force. On Thursday, Jaish bomber Adil Ahmed Dar, 20, rammed a SUV loaded with 350 kilograms of explosives into one of the buses -- carrying 35-40 troopers -- out of a 78-vehicle CRPF convoy. While 40 were killed in the attack, several injured personnel continue to battle for their lives.\r\nEven as the nation continues to bewail the death of soldiers killed in Pulwama, many including the grief-stricken family members of the ill-fated jawans have demanded strong action against the Pakistan-based terror outfit.\r\nThe situation in Kashmir has been tense since 2014 and there have been several deadly attacks on soldiers. In the last five years, Jammu and Kashmir has witnessed a 93 per cent rise in death of security personnel. A chunk of these attacks have occurred in Pulwama region of J&K. Data released by the government showed that the Valley has been witnessing regular terror attacks in the past five years.\r\nThe Pulwama terror attack occurred on February 14, 2019 when a 78-vehicle convoy was escorting over 2,500 CRPF jawans from Jammu to Srinagar. At around 3:30 pm, a Mahindra Scorpio SUV, packed with 350 kilograms of explosives rammed into one of the buses belonging to the convoy on the National Highway 44 at Lethipora near Avantipora town.', 'post-2', '2019-02-21 14:44:02', 'Dheeraj Kushwah'),
(3, 'Indian Army : The backbone of India', 'The Indian Army is the land-based branch and the largest component\r\nof Indian Armed Forces The President of India is the Supreme\r\nCommander of the Indian Army,\r\n[6] and it is commanded by the Chief of\r\nArmy Staff (COAS), who is a four-star general. Two officers have been\r\nconferred with the rank of field marshal, a five-star rank, which is a\r\nceremonial position of great honour. The Indian Army originated from\r\nthe armies of the East India Company, which eventually became the\r\nBritish Indian Army, and the armies of the princely states, which finally\r\nbecame the national army after independence. The units and regiments\r\nof the Indian Army have diverse histories and have participated in a\r\nnumber of battles and campaigns across the world, earning a large\r\nnumber of battle and theatre honours before and after Independence.[7]\r\nThe primary mission of the Indian Army is to ensure national security\r\nand national unity, defending the nation from external aggression and\r\ninternal threats, and maintaining peace and security within its borders.\r\nIt conducts humanitarian rescue operations during natural calamities\r\nand other disturbances, like Operation Surya Hope, and can also be\r\nrequisitioned by the government to cope with internal threats. It is a\r\nmajor component of national power alongside the Indian Navy and the\r\nIndian Air Force.\r\n[8] The army has been involved in four wars with\r\nneighbouring Pakistan and one with China. Other major operations\r\nundertaken by the army include: Operation Vijay, Operation Meghdoot\r\nand Operation Cactus. Apart from conflicts, the army has conducted\r\nlarge peace time exercises like Operation Brasstacks and Exercise\r\nShoorveer, and it has also been an active participant in numerous\r\nUnited Nations peacekeeping missions including those in: Cyprus,\r\nLebanon, Congo, Angola, Cambodia, Vietnam, Namibia, El Salvador,\r\nLiberia, Mozambique, South Sudan and Somalia.', 'post-3', '2019-02-22 09:09:43', 'Dk'),
(4, 'Women in India', 'The status of women in India has been subject to many great changes over the past\r\nfew millennia.[4] With a decline in their status from the ancient to medieval\r\ntimes,[5][6] to the promotion of equal rights by many reformers, their history has\r\nbeen eventful. In modern India, women have held high offices including that of the\r\nPresident, Prime Minister, Speaker of the Lok Sabha, Leader of the Opposition,\r\nUnion Ministers, Chief Ministers and Governors.\r\nWomen\'s rights under the Constitution of India mainly include equality, dignity, and\r\nfreedom from discrimination; additionally, India has various statutes governing the\r\nrights of women.[7][8]\r\nAs of 2018, the President of India, the Speaker of the Lok Sabha and the Leader of\r\nthe Opposition in the Lok Sabha (Lower House of the parliament) have been\r\nwomen. However, women in India continue to face numerous problems such as\r\nsexual assault, gender inequality and dowry', 'post-4', '2019-02-22 09:09:43', 'Dk'),
(5, 'India : A developing Nation', 'India (IAST: Bh?rat), also known as the Republic of India (IAST: Bh?rat Ga?ar?jya),[18][e] is a country in South Asia. It is the seventh largest country by area and with more than 1.3 billion people, it is the second most populous country and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;[f] China, Nepal, and Bhutan to the northeast; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives, while its Andaman and Nicobar Islands share a maritime border with Thailand and Indonesia.\r\n\r\nThe Indian subcontinent was home to the urban Indus Valley Civilisation of the 3rd millennium BCE. In the following millennium, the oldest scriptures associated with Hinduism began to be composed. Social stratification, based on caste, emerged in the first millennium BCE, and Buddhism and Jainism arose. Early political consolidations took place under the Maurya and Gupta empires; later peninsular Middle Kingdoms influenced cultures as far as Southeast Asia. In the medieval era, Judaism, Zoroastrianism, Christianity, and Islam arrived, and Sikhism emerged, all adding to the region\'s diverse culture. Much of the north fell to the Delhi Sultanate; the south was united under the Vijayanagara Empire. The economy expanded in the 17th century in the Mughal Empire. In the mid-18th century, the subcontinent came under British East India Company rule, and in the mid-19th under British crown rule. A nationalist movement emerged in the late 19th century, which later, under Mahatma Gandhi, was noted for nonviolent resistance and led to India\'s independence in 1947.\r\n\r\nIn 2017, the Indian economy was the world\'s sixth largest by nominal GDP[19] and third largest by purchasing power parity.[15] Following market-based economic reforms in 1991, India became one of the fastest-growing major economies and is considered a newly industrialised country. However, it continues to face the challenges of poverty, corruption, malnutrition, and inadequate public healthcare. A nuclear weapons state and regional power, it has the second largest standing army in the world and ranks fifth in military expenditure among nations. India is a federal republic governed under a parliamentary system and consists of 29 states and 7 union territories. A pluralistic, multilingual and multi-ethnic society, it is also home to a diversity of wildlife in a variety of protected habitats.\r\n\r\n\r\n', 'post-5', '2019-02-22 09:12:13', 'Dheeraj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
