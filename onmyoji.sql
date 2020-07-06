-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 09:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onmyoji`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `characters_name` varchar(20) DEFAULT NULL,
  `appearance` varchar(50) DEFAULT NULL,
  `rare` varchar(6) DEFAULT NULL,
  `skill_1` varchar(15) DEFAULT NULL,
  `skill_2` varchar(15) DEFAULT NULL,
  `skill_3` varchar(15) DEFAULT NULL,
  `skill_4` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `characters_name`, `appearance`, `rare`, `skill_1`, `skill_2`, `skill_3`, `skill_4`) VALUES
(1, 'Hana  ', 'https://onmyojiguide.com/shikigami-list/flower-bir', 'SSR', NULL, NULL, NULL, NULL),
(2, 'Ichimokuren  ', 'https://onmyojiguide.com/shikigami-list/one-eyed/', 'SSR', NULL, NULL, NULL, NULL),
(3, 'Yoto Hime  ', 'https://onmyojiguide.com/shikigami-list/princess-o', 'SSR', NULL, NULL, NULL, NULL),
(4, 'Aoandon  ', 'https://onmyojiguide.com/shikigami-list/blue-lante', 'SSR', NULL, NULL, NULL, NULL),
(5, 'Ryomen  ', 'https://onmyojiguide.com/shikigami-list/two-faced-', 'SSR', NULL, NULL, NULL, NULL),
(6, 'Ootengu  ', 'https://onmyojiguide.com/shikigami-list/great-teng', 'SSR', NULL, NULL, NULL, NULL),
(7, 'Enma  ', 'https://onmyojiguide.com/shikigami-list/hell-lord/', 'SSR', NULL, NULL, NULL, NULL),
(8, 'Shishio  ', 'https://onmyojiguide.com/shikigami-list/deer-boy/', 'SSR', NULL, NULL, NULL, NULL),
(9, 'Shuten Doji  ', 'https://onmyojiguide.com/shikigami-list/shuten-doj', 'SSR', NULL, NULL, NULL, NULL),
(10, 'Arakawa Lord  ', 'https://onmyojiguide.com/shikigami-list/lord-of-ar', 'SSR', NULL, NULL, NULL, NULL),
(11, 'Ibaraki Doji  ', 'https://onmyojiguide.com/shikigami-list/ibara-doji', 'SSR', NULL, NULL, NULL, NULL),
(12, 'Shiro  ', 'https://onmyojiguide.com/shikigami-list/hakudoshi/', 'SR', NULL, NULL, NULL, NULL),
(13, 'Kuro  ', 'https://onmyojiguide.com/shikigami-list/kurodoshi/', 'SR', NULL, NULL, NULL, NULL),
(14, 'Yaksha  ', 'https://onmyojiguide.com/shikigami-list/yaksa/', 'SR', NULL, NULL, NULL, NULL),
(15, 'Aobozu  ', 'https://onmyojiguide.com/shikigami-list/blue-monk/', 'SR', NULL, NULL, NULL, NULL),
(16, 'Hannya  ', 'https://onmyojiguide.com/shikigami-list/prajna/', 'SR', NULL, NULL, NULL, NULL),
(17, 'Sakura  ', 'https://onmyojiguide.com/shikigami-list/sakura-fai', 'SR', NULL, NULL, NULL, NULL),
(18, 'Jorogumo  ', 'https://onmyojiguide.com/shikigami-list/spider-wom', 'SR', NULL, NULL, NULL, NULL),
(19, 'Kamaitachi  ', 'https://onmyojiguide.com/shikigami-list/kamaitachi', 'SR', NULL, NULL, NULL, NULL),
(20, 'Maestro  ', 'https://onmyojiguide.com/shikigami-list/evil-music', 'SR', NULL, NULL, NULL, NULL),
(21, 'Yumekui  ', 'https://onmyojiguide.com/shikigami-list/dream-eate', 'SR', NULL, NULL, NULL, NULL),
(22, 'Hangan  ', 'https://onmyojiguide.com/shikigami-list/hell-judge', 'SR', NULL, NULL, NULL, NULL),
(23, 'Mouba  ', 'https://onmyojiguide.com/shikigami-list/hell-guide', 'SR', NULL, NULL, NULL, NULL),
(24, 'Puppeteer  ', 'https://onmyojiguide.com/shikigami-list/puppeteer/', 'SR', NULL, NULL, NULL, NULL),
(25, 'Umibozu  ', 'https://onmyojiguide.com/shikigami-list/sea-monk/', 'SR', NULL, NULL, NULL, NULL),
(26, 'Kuro Mujou  ', 'https://onmyojiguide.com/shikigami-list/hell-agent', 'SR', NULL, NULL, NULL, NULL),
(27, 'Shiro Mujou  ', 'https://onmyojiguide.com/shikigami-list/hell-agent', 'SR', NULL, NULL, NULL, NULL),
(28, 'Hone Onna  ', 'https://onmyojiguide.com/shikigami-list/bone-maide', 'SR', NULL, NULL, NULL, NULL),
(29, 'Hououka  ', 'https://onmyojiguide.com/shikigami-list/phoenix/', 'SR', NULL, NULL, NULL, NULL),
(30, 'Futakuchi  ', 'https://onmyojiguide.com/shikigami-list/two-mouthe', 'SR', NULL, NULL, NULL, NULL),
(31, 'Ubume  ', 'https://onmyojiguide.com/shikigami-list/ubume/', 'SR', NULL, NULL, NULL, NULL),
(32, 'Momiji  ', 'https://onmyojiguide.com/shikigami-list/maple-maid', 'SR', NULL, NULL, NULL, NULL),
(33, 'Youko  ', 'https://onmyojiguide.com/shikigami-list/fox-demon/', 'SR', NULL, NULL, NULL, NULL),
(34, 'Momo  ', 'https://onmyojiguide.com/shikigami-list/peach-fair', 'SR', NULL, NULL, NULL, NULL),
(35, 'Hakuro  ', 'https://onmyojiguide.com/shikigami-list/white-wolf', 'SR', NULL, NULL, NULL, NULL),
(36, 'Yuki Onna  ', 'https://onmyojiguide.com/shikigami-list/snow-maide', 'SR', NULL, NULL, NULL, NULL),
(37, 'Kyonshi Ani  ', 'https://onmyojiguide.com/shikigami-list/jumping-br', 'SR', NULL, NULL, NULL, NULL),
(38, 'Ebisu  ', 'https://onmyojiguide.com/shikigami-list/ebisu/', 'SR', NULL, NULL, NULL, NULL),
(39, 'Vampira  ', 'https://onmyojiguide.com/shikigami-list/princess-v', 'SR', NULL, NULL, NULL, NULL),
(40, 'Inugami  ', 'https://onmyojiguide.com/shikigami-list/inugami/', 'SR', NULL, NULL, NULL, NULL),
(41, 'Kiyohime  ', 'https://onmyojiguide.com/shikigami-list/kiyohime/', 'SR', NULL, NULL, NULL, NULL),
(42, 'Koroka  ', 'https://onmyojiguide.com/shikigami-list/ancient-la', 'R', NULL, NULL, NULL, NULL),
(43, 'Ushi no Toki  ', 'https://onmyojiguide.com/shikigami-list/midnight-m', 'R', NULL, NULL, NULL, NULL),
(44, 'Kubinashi  ', 'https://onmyojiguide.com/shikigami-list/headless/', 'R', NULL, NULL, NULL, NULL),
(45, 'Samurai X  ', 'https://onmyojiguide.com/shikigami-list/soldier-sa', 'R', NULL, NULL, NULL, NULL),
(46, 'Zashiki  ', 'https://onmyojiguide.com/shikigami-list/room-gobli', 'R', NULL, NULL, NULL, NULL),
(47, 'Gaki  ', 'https://onmyojiguide.com/shikigami-list/hunger-gho', 'R', NULL, NULL, NULL, NULL),
(48, 'Ame Onna  ', 'https://onmyojiguide.com/shikigami-list/rain-maide', 'R', NULL, NULL, NULL, NULL),
(49, 'Warrior Soul  ', 'https://onmyojiguide.com/shikigami-list/samurai-sp', 'R', NULL, NULL, NULL, NULL),
(50, 'Kodokushi  ', 'https://onmyojiguide.com/shikigami-list/gu-wizard/', 'R', NULL, NULL, NULL, NULL),
(51, 'Doujo  ', 'https://onmyojiguide.com/shikigami-list/girl-sacri', 'R', NULL, NULL, NULL, NULL),
(52, 'Tesso  ', 'https://onmyojiguide.com/shikigami-list/iron-rat/', 'R', NULL, NULL, NULL, NULL),
(53, 'Kyonshi Imoto  ', 'https://onmyojiguide.com/shikigami-list/jumping-si', 'R', NULL, NULL, NULL, NULL),
(54, 'Kyonshi Ototo  ', 'https://onmyojiguide.com/shikigami-list/jumping-br', 'R', NULL, NULL, NULL, NULL),
(55, 'Tanuki  ', 'https://onmyojiguide.com/shikigami-list/raccoon/', 'R', NULL, NULL, NULL, NULL),
(56, 'Chocho  ', 'https://onmyojiguide.com/shikigami-list/butterfly-', 'R', NULL, NULL, NULL, NULL),
(57, 'Shouzu  ', 'https://onmyojiguide.com/shikigami-list/shozu/', 'R', NULL, NULL, NULL, NULL),
(58, 'Koi  ', 'https://onmyojiguide.com/shikigami-list/fish-fairy', 'R', NULL, NULL, NULL, NULL),
(59, 'Yamausagi  ', 'https://onmyojiguide.com/shikigami-list/mountain-r', 'R', NULL, NULL, NULL, NULL),
(60, 'Oguna  ', 'https://onmyojiguide.com/shikigami-list/boy-sacrif', 'R', NULL, NULL, NULL, NULL),
(61, 'Kyuumei Neko  ', 'https://onmyojiguide.com/shikigami-list/nine-life-', 'R', NULL, NULL, NULL, NULL),
(62, 'Kusa  ', 'https://onmyojiguide.com/shikigami-list/glowing-gr', 'R', NULL, NULL, NULL, NULL),
(63, 'Kanko  ', 'https://onmyojiguide.com/shikigami-list/pipe-fox/', 'R', NULL, NULL, NULL, NULL),
(64, 'Hitotsume  ', 'https://onmyojiguide.com/shikigami-list/one-eyed-m', 'R', NULL, NULL, NULL, NULL),
(65, 'Mio  ', 'https://onmyojiguide.com/shikigami-list/three-tail', 'R', NULL, NULL, NULL, NULL),
(66, 'Jikikaeru  ', 'https://onmyojiguide.com/shikigami-list/frog-pot/', 'R', NULL, NULL, NULL, NULL),
(67, 'Satori  ', 'https://onmyojiguide.com/shikigami-list/bigfoot/', 'R', NULL, NULL, NULL, NULL),
(68, 'Yamawaro  ', 'https://onmyojiguide.com/shikigami-list/mountain-g', 'R', NULL, NULL, NULL, NULL),
(69, 'Kamikui  ', 'https://onmyojiguide.com/shikigami-list/hair-eater', 'R', NULL, NULL, NULL, NULL),
(70, 'Karasu Tengu  ', 'https://onmyojiguide.com/shikigami-list/crow-tengu', 'R', NULL, NULL, NULL, NULL),
(71, 'Kappa  ', 'https://onmyojiguide.com/shikigami-list/kappa/', 'R', NULL, NULL, NULL, NULL),
(72, 'Umbrella  ', 'https://onmyojiguide.com/shikigami-list/umbrella-g', 'N', NULL, NULL, NULL, NULL),
(73, 'Akashita  ', 'https://onmyojiguide.com/shikigami-list/red-tongue', 'N', NULL, NULL, NULL, NULL),
(74, 'Parasite  ', 'https://onmyojiguide.com/shikigami-list/parasite-g', 'N', NULL, NULL, NULL, NULL),
(75, 'Grave Digger  ', 'https://onmyojiguide.com/shikigami-list/grave-digg', 'N', NULL, NULL, NULL, NULL),
(76, 'Blue Imp  ', 'https://onmyojiguide.com/shikigami-list/ghost-mini', 'N', NULL, NULL, NULL, NULL),
(77, 'Yellow Imp  ', 'https://onmyojiguide.com/shikigami-list/ghost-mini', 'N', NULL, NULL, NULL, NULL),
(78, 'Red Imp  ', 'https://onmyojiguide.com/shikigami-list/ghost-mini', 'N', NULL, NULL, NULL, NULL),
(79, 'Green Imp  ', 'https://onmyojiguide.com/shikigami-list/ghost-mini', 'N', NULL, NULL, NULL, NULL),
(80, 'Hahakigami  ', 'https://onmyojiguide.com/shikigami-list/brusher/', 'N', NULL, NULL, NULL, NULL),
(81, 'Nurikabe  ', 'https://onmyojiguide.com/shikigami-list/stone-wall', 'N', NULL, NULL, NULL, NULL),
(82, 'Lantern Boy  ', 'https://onmyojiguide.com/shikigami-list/lantern-ca', 'N', NULL, NULL, NULL, NULL),
(83, 'Lantern Soul  ', 'https://onmyojiguide.com/shikigami-list/lantern-gh', 'N', NULL, NULL, NULL, NULL),
(84, 'Enenra  ', 'https://onmyojiguide.com/shikigami-list/smoky-maid', 'SR', NULL, NULL, NULL, NULL),
(85, 'Kaguya  ', 'https://onmyojiguide.com/princess-kaguya/', 'SSR', NULL, NULL, NULL, NULL),
(86, 'Susabi  ', 'https://onmyojiguide.com/shikigami-list/kojin/', 'SSR', NULL, NULL, NULL, NULL),
(87, 'Mannendake  ', 'https://onmyojiguide.com/shikigami-list/ancient-ba', 'SR', NULL, NULL, NULL, NULL),
(88, 'Kingyo  ', 'https://onmyojiguide.com/princess-goldfish/', 'SR', NULL, NULL, NULL, NULL),
(89, 'Chin  ', 'https://onmyojiguide.com/shikigami-list/snake-eate', 'SR', NULL, NULL, NULL, NULL),
(90, 'Itsumade  ', 'https://onmyojiguide.com/shikigami-list/death-mour', 'SR', NULL, NULL, NULL, NULL),
(91, 'Hako Shoujo  ', 'https://onmyojiguide.com/shikigami-list/evil-box-m', 'SR', NULL, NULL, NULL, NULL),
(92, 'Higanbana  ', 'https://onmyojiguide.com/shikigami-list/unworldly-', 'SSR', NULL, NULL, NULL, NULL),
(93, 'Komatsu  ', 'https://onmyojiguide.com/shikigami-list/squirrelly', 'SR', NULL, NULL, NULL, NULL),
(94, 'Usagi  ', 'https://onmyojiguide.com/shikigami-list/rabbit-kid', 'R', NULL, NULL, NULL, NULL),
(95, 'Bukkuman  ', 'https://onmyojiguide.com/shikigami-list/bookman/', 'SR', NULL, NULL, NULL, NULL),
(96, 'Yuki', 'https://onmyojiguide.com/shikigami-list/yuki/', 'SSR', NULL, NULL, NULL, NULL),
(97, 'Hozuki  ', 'https://onmyojiguide.com/shikigami-list/hozuki/', 'SSR', NULL, NULL, NULL, NULL),
(98, 'Oko  ', 'https://onmyojiguide.com/shikigami-list/oko/', 'SR', NULL, NULL, NULL, NULL),
(99, 'Maki & Karashi  &', 'https://onmyojiguide.com/peach-karashi/', 'R', NULL, NULL, NULL, NULL),
(100, 'Kosodenote  ', 'https://onmyojiguide.com/shikigami-list/kosodenote', 'R', NULL, NULL, NULL, NULL),
(101, 'Oitsuki  ', 'https://onmyojiguide.com/shikigami-list/oitsuki/', 'SR', NULL, NULL, NULL, NULL),
(102, 'Medicine Seller  ', 'https://onmyojiguide.com/shikigami-list/medicine-s', 'SSR', NULL, NULL, NULL, NULL),
(103, 'Juzu  ', 'https://onmyojiguide.com/shikigami-list/juzu/', 'R', NULL, NULL, NULL, NULL),
(104, 'Kisei  ', 'https://onmyojiguide.com/shikigami-list/kisei/', 'SR', NULL, NULL, NULL, NULL),
(105, 'Inuyasha  ', 'https://onmyojiguide.com/shikigami-list/inuyasha/', 'SSR', NULL, NULL, NULL, NULL),
(106, 'Sesshomaru  ', 'https://onmyojiguide.com/sesshomaru/', 'SSR', NULL, NULL, NULL, NULL),
(107, 'Tamamonomae  ', 'https://onmyojiguide.com/shikigami-list/tamamonoma', 'SSR', NULL, NULL, NULL, NULL),
(108, 'Dodomeki  ', 'https://onmyojiguide.com/shikigami-list/dodomeki/', 'SR', NULL, NULL, NULL, NULL),
(109, 'hiyoribo', 'https://onmyojiguide.com/shikigami-list/hiyoribo/', 'SR', NULL, NULL, NULL, NULL),
(110, 'Miketsu  ', 'https://onmyojiguide.com/shikigami-list/miketsu/', 'SSR', NULL, NULL, NULL, NULL),
(111, 'Onikiri  ', 'https://onmyojiguide.com/shikigami-list/onikiri/', 'SSR', NULL, NULL, NULL, NULL),
(112, 'Yamakaze  ', 'https://onmyojiguide.com/shikigami-list/yamakaze/', 'SSR', NULL, NULL, NULL, NULL),
(113, 'Kikyo  ', 'https://onmyojiguide.com/shikigami-list/kikyo/', 'SSR', NULL, NULL, NULL, NULL),
(114, 'Hakuzosu  ', 'https://onmyojiguide.com/shikigami-list/hakosozu/', 'SSR', NULL, NULL, NULL, NULL),
(115, 'Jr. Ootengu  ', 'https://onmyojiguide.com/shikigami-list/jr-ootengu', 'SP', NULL, NULL, NULL, NULL),
(116, 'Menreiki  ', 'https://onmyojiguide.com/shikigami-list/menreiki/', 'SSR', NULL, NULL, NULL, NULL),
(117, 'Kujira  ', 'https://onmyojiguide.com/kujira/', 'SR', NULL, NULL, NULL, NULL),
(118, 'Ungaikyo  ', 'https://onmyojiguide.com/shikigami-ungaikyo/', 'SSR', NULL, NULL, NULL, NULL),
(119, 'Otakemaru', 'https://onmyojiguide.com/shikigami-otakemaru/', 'SSR', NULL, NULL, NULL, NULL),
(120, 'Hoshiguma Doji', 'https://onmyojiguide.com/shikigami-hoshiguma-doji/', 'SR', NULL, NULL, NULL, NULL),
(121, 'Inferno Ibaraki Doji', 'https://onmyojiguide.com/shikigami-inferno-ibaraki', 'SP', NULL, NULL, NULL, NULL),
(122, 'Divine Miketsu', 'https://onmyojiguide.com/shikigami-divine-miketsu/', 'SP', NULL, NULL, NULL, NULL),
(123, 'Azurestorm Ichimokur', 'https://onmyojiguide.com/shikigami-azurestorm-ichi', 'SP', NULL, NULL, NULL, NULL),
(124, 'Crimson Yoto', 'https://onmyojiguide.com/shikigami-crimson-yoto/', 'SP', NULL, NULL, NULL, NULL),
(125, 'Shiranui', 'https://onmyojiguide.com/shikigami-shiranui/', 'SSR', NULL, NULL, NULL, NULL),
(126, 'Vengeful Hannya', 'https://onmyojiguide.com/shikigami-vengeful-hannya', 'SP', NULL, NULL, NULL, NULL),
(127, 'Kidomaru', 'https://onmyojiguide.com/shikigami-kidomaru/', 'SSR', NULL, NULL, NULL, NULL),
(128, 'Onikiri Reforged', 'https://onmyojiguide.com/shikigami-onikiri-reforge', 'SP', NULL, NULL, NULL, NULL),
(129, 'Seawatch Kingyo', 'https://onmyojiguide.com/shikigami-seawatch-kingyo', 'SP', NULL, NULL, NULL, NULL),
(130, 'Orochi', 'https://onmyojiguide.com/shikigami-orochi/', 'SSR', NULL, NULL, NULL, NULL),
(131, 'Waverider Lord Araka', 'https://onmyojiguide.com/shikigami-waverider-lord-', 'SP', NULL, NULL, NULL, NULL),
(132, 'Blazing Tamamonomae', 'https://onmyojiguide.com/blazing-tamamonomae/', 'SP', NULL, NULL, NULL, NULL),
(133, 'Takiyashahime', 'https://onmyojiguide.com/shikigami-takiyashahime/', 'SSR', NULL, NULL, NULL, NULL),
(134, 'Demoniac Shuten Doji', 'https://onmyojiguide.com/shikigami-demoniac-shuten', 'SP', NULL, NULL, NULL, NULL),
(135, 'Enmusubi', 'https://onmyojiguide.com/shikigami-enmusubi/', 'SSR', NULL, NULL, NULL, NULL),
(136, 'Nekomata', 'https://onmyojiguide.com/shikigami-nekomata/', 'SR', NULL, NULL, NULL, NULL),
(137, 'Mushishi', 'https://onmyojiguide.com/mushishi/', 'R', NULL, NULL, NULL, NULL),
(138, 'Kaoru', 'https://onmyojiguide.com/kaoru/', 'SR', NULL, NULL, NULL, NULL),
(139, 'Okikumushi', 'https://onmyojiguide.com/shikigami-okikumushi/', 'SR', NULL, NULL, NULL, NULL),
(140, 'Okuribito', 'https://onmyojiguide.com/shikigami-okuribito/', 'SR', NULL, NULL, NULL, NULL),
(141, 'Tenjokudari', 'https://onmyojiguide.com/shikigami-tenjo-kudari/', 'R', NULL, NULL, NULL, NULL),
(142, 'Bakekujira', 'https://onmyojiguide.com/shikigami-bake-kujira/', 'SR', NULL, NULL, NULL, NULL),
(143, 'Kainin', 'https://onmyojiguide.com/shikigami-kainin/', 'SR', NULL, NULL, NULL, NULL),
(144, 'Kanihime', 'https://onmyojiguide.com/shikigami-kanihime/', 'SR', NULL, NULL, NULL, NULL),
(145, 'Kamimai', 'https://onmyojiguide.com/shikigami-kamimai/', 'SR', NULL, NULL, NULL, NULL),
(146, 'Jinmenju', 'https://onmyojiguide.com/shikigami-jinmenju/', 'SR', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `id_char` int(11) NOT NULL,
  `role_char` varchar(15) DEFAULT NULL,
  `id_soul` int(11) NOT NULL,
  `soul_name` varchar(15) DEFAULT NULL,
  `soul_2` varchar(11) DEFAULT NULL,
  `soul_4` varchar(11) DEFAULT NULL,
  `soul_6` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `soul`
--

CREATE TABLE `soul` (
  `id` int(11) NOT NULL,
  `soul_name` varchar(20) DEFAULT NULL,
  `combo_2` varchar(150) DEFAULT NULL,
  `combo_4` varchar(350) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soul`
--

INSERT INTO `soul` (`id`, `soul_name`, `combo_2`, `combo_4`) VALUES
(1, 'Senecio  ', 'Effect RES +15%', '25% chance (-60% on taunted targets) to inflict a random dazing effect on target upon receiving damage; Multi-damage only triggers once'),
(2, 'Soul Edge  ', 'HP + 15%', '50% chance to decrease 20% of one ST damage to an ally, plus share 50% of the damage'),
(3, 'Tree Nymph  ', 'Def +30%', '25% chance (-60% on taunted targets) to remove 1 orb when an ally receives damage; Multi-damage only triggers once'),
(4, 'Dice Sprite  ', 'Effect RES +15%', 'When resist activates, RT normal attack w/ +50% damage'),
(5, 'Mimic  ', 'Effect RES +15%', '25% chance (+ Effect HIT) to inflict a random debuff on target upon inflicting damage'),
(6, 'Sea Spirite  ', 'Effect HIT +15%', 'Produces a shield at the start of battle that lasts 1 turn.  The shield lets all allies absorb damage equal to 10% of their HP'),
(7, 'Azure Basan  ', 'Effect HIT +15%', '3 additional orb at start of each battle'),
(8, 'Jizo Statue  ', 'HP + 15%', 'Upon receiving critical damage, generate a shield that absorb damage equal to 10% of max HP; 30% chance to cast shields on other team members; reduce 60% proc chance when attacked by provoked enemies'),
(9, 'Holy Flame  ', 'HP + 15%', 'If HP is less than 30% at the end of a turn, restores HP by 15%'),
(10, 'Boroboroton  ', 'HP + 15%', 'Damage taken decreases by 30%'),
(11, 'Mirror Lady  ', 'HP + 15%', '30% chance to reflect 100% of damage received; reduce 60% proc chance when attacked by provoked enemies'),
(12, 'Priestess  ', 'HP + 15%', '8% chance to inflict Daze (stun) upon damaging target'),
(13, 'Tree Spirit  ', 'HP + 15%', 'Increases all healing effects by 20%'),
(14, 'Fenikkusu  ', 'Critical % + 15%', 'Recover HP by 15% and increase ATK by 15% upon defeating an enemy'),
(15, 'Tomb Guard  ', 'Critical % + 15%', 'Gain 0.6% Crit DMG for every 1% HP lost'),
(16, 'Seductress  ', 'Critical % + 15%', 'When inflicting critical damage, 40% chance to deal damage equal to 10% of the target\'s max HP; max damage dealt is 120% of own ATK;  Seductress can benefit from arena buffs but not other buffs.'),
(17, 'Shamisen  ', 'Critical % + 15%', 'Increases SPD of controlled allies by 30 (including self)'),
(18, 'Claws  ', 'Critical % + 15%', 'Critical DMG ignores 20% of target\'s DEF'),
(19, 'Shadow  ', 'Critical % + 15%', 'Deals an extra 40% damage against units with more than 70% HP'),
(20, 'Pearl  ', 'Def +30%', 'When healing allies, casts a shield that absorbs damage equal to 25% f the HP healed.  The shield lasts 1 turn.'),
(21, 'Temptress  ', 'Def +30%', 'Grants a 25% (+ Effect HIT) chance of inflicting Confuse on the target when dealing damage'),
(22, 'Snow Spirit  ', 'Def +30%', 'Grants a 12% (+ Effect HIT) chance of inflicting Freeze on the target when dealing damage'),
(23, 'Fortune Cat  ', 'Def +30%', 'Grants a 50% chance of gaining 2 orbs at the start of a turn'),
(24, 'Shy Soul  ', 'Def +30%', 'Grants a 20% (+ Effect HIT) chance of inflicting Sleep on the target for 1 turn when dealing damage'),
(25, 'Dawn Fairy  ', 'Def +30%', 'Grants 20% chance (increased by 10% when target has a buff) to delay target\'s move bar by 30% when dealing damage'),
(26, 'Nightwing  ', 'Attack +15%', 'Converts 20% of damage dealt into HP'),
(27, 'Soultaker  ', 'Attack +15%', 'Grants 20% chanc of gaining 1 extra move after performing an action'),
(28, 'Scarlet  ', 'Attack +15%', '35% to counter with normal attack upon receiving damage; reduce 60% proc chance when attacked by provoked enemies'),
(29, 'House Imp  ', 'Attack +15%', 'Deal additional 30% damage when the target is in a controlled state (frozen, stun, sleep, etc)'),
(30, 'Watcher  ', 'Attack +15%', 'Deal 50% more damage on enemie withs less than 30% hp'),
(31, 'Harpy  ', 'Attack +15%', 'Gain 3 orbs upon defeating an enemy'),
(32, 'Kyoukotsu  ', 'Attack +15%', 'Grants an extra 8% damage for each orb in your possession when you deal damage'),
(33, 'Yamabiko  ', 'Effect RES +15%', 'Grants a 50% chance of reflecting a controlling effect (Daze, Silence, Freeze, Confuse, Morph, Taunt, and Sleep) back to the enemy'),
(34, 'Odokuro  ', '1-set: Random Stat 8% (DEF bonus 16%, except SPD and Crit DMG)', '2-set Unique Passive: Increase damage to monsters by 10%.  If received damage before this round\'s action, effect increase to 25%'),
(35, 'Namazu  ', '1-set: Random Stat 8% (DEF bonus 16%, except SPD and Crit DMG)', '2-set Unique Passive: Grants 60% damage reduction against monsters\' attacks.  Each attack taken will transfer 6% of damage reduction to 1.5% damage bonus (Multiple attacks only trigger once)'),
(36, 'Tsuchigumo  ', 'Random Stat 8% (DEF bonus 16%, except SPD and Crit DMG)', '2-set Unique Passive: Attacking monsters inflicts a Poison mark (3 layers max) on them that reduces their SPD by 10% and inflicts 25% of total damage received at the end of their turns.'),
(37, 'Oboroguruma  ', '1-set: Random Stat 8% (DEF bonus 16%, except SPD and Crit DMG)', '2-set Unique Passive: Grants a 50% chance of raising the Move Bar by 30% when attacked by monsters (Multiple attacks only trigger once)'),
(38, 'Shinkirou  ', '1-set: Random Stat 8% (DEF bonus 16%, except SPD and Crit DMG)', '2-set Unique Passive: Creates a shield that negates any monster controlling effects (Daze, Silence, Frozen, Confuse, etc.) once.  Regenerates in 5 turns.'),
(39, 'Hyosube', 'Attack +15%', 'When the turn ends, gain a Piercing Arrow (buff, status) stack,  stacking up to 3 times. When dealing damage each stack reduces the DEF of the targets by 75		'),
(40, 'Aonyobo', ' +15% critical', 'When taking leathal damage for the first time, removes all buffs and debuffs, recoveres HP by 100% and inflicts frozen on self for 1 turn.  When under Frozen, DEF is increased by 100% and gains immunity to all debuffs.  If survived the Frozen, recovers HP by 100% again. Triggers only once each round.		'),
(41, 'Enshyoujo', ' +15% effect hit', 'When inflicting debuffs, ignores target\'s overall Effect RES by 30%'),
(42, 'Nuribotoke', ' +15% HP', 'Effective exclusively.  Increases the Effect RES and damage of all allies by 15% (doubled for the equipped unit) at the end of a turn if the equipped unit launched a normal attack or was unable to take actions in the turn.  Sustainable for 2 turns.'),
(43, 'Ghostly Songstress', '1-set: Random Stat 8% (DEF bonus 16%, except SPD and Crit DMG)', '2 set Exclusive effect.  After dealing damage to a monster 5 times, the next attack to a monster inflicts damage equal to 20% of it\'s max HP, ignoring it\'s DEF, to a max of 255% of own ATK.'),
(44, 'Cyan Imp  ', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `wanted_quest`
--

CREATE TABLE `wanted_quest` (
  `id_char` int(11) NOT NULL,
  `place` varchar(11) NOT NULL,
  `no_yokai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id_char`,`id_soul`),
  ADD KEY `id_soul` (`id_soul`);

--
-- Indexes for table `soul`
--
ALTER TABLE `soul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wanted_quest`
--
ALTER TABLE `wanted_quest`
  ADD PRIMARY KEY (`id_char`,`place`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `soul`
--
ALTER TABLE `soul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `guide_ibfk_1` FOREIGN KEY (`id_char`) REFERENCES `characters` (`id`),
  ADD CONSTRAINT `guide_ibfk_2` FOREIGN KEY (`id_soul`) REFERENCES `soul` (`id`);

--
-- Constraints for table `wanted_quest`
--
ALTER TABLE `wanted_quest`
  ADD CONSTRAINT `wanted_quest_ibfk_1` FOREIGN KEY (`id_char`) REFERENCES `characters` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
