-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 24 2018 г., 23:54
-- Версия сервера: 10.1.32-MariaDB
-- Версия PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news_app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Art'),
(2, 'Sport'),
(3, 'Government'),
(4, 'Environmental\r\n'),
(5, 'Politics'),
(6, 'Weather'),
(7, 'Universe');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegowina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Congo, the Democratic Republic of the'),
(51, 'Cook Islands'),
(52, 'Costa Rica'),
(53, 'Cote d\'Ivoire'),
(54, 'Croatia (Hrvatska)'),
(55, 'Cuba'),
(56, 'Cyprus'),
(57, 'Czech Republic'),
(58, 'Denmark'),
(59, 'Djibouti'),
(60, 'Dominica'),
(61, 'Dominican Republic'),
(62, 'East Timor'),
(63, 'Ecuador'),
(64, 'Egypt'),
(65, 'El Salvador'),
(66, 'Equatorial Guinea'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Ethiopia'),
(70, 'Falkland Islands (Malvinas)'),
(71, 'Faroe Islands'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'France'),
(75, 'France Metropolitan'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories'),
(79, 'Gabon'),
(80, 'Gambia'),
(81, 'Georgia'),
(82, 'Germany'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guinea'),
(92, 'Haiti'),
(93, 'Heard and Mc Donald Islands'),
(94, 'Holy See (Vatican City State)'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Indonesia'),
(101, 'Iran (Islamic Republic of)'),
(102, 'Iraq'),
(103, 'Ireland'),
(104, 'Israel'),
(105, 'Italy'),
(106, 'Jamaica'),
(107, 'Japan'),
(108, 'Jordan'),
(109, 'Kazakhstan'),
(110, 'Kenya'),
(111, 'Kiribati'),
(112, 'Korea, Democratic People\'s Republic of'),
(113, 'Korea, Republic of'),
(114, 'Kuwait'),
(115, 'Kyrgyzstan'),
(116, 'Lao, People\'s Democratic Republic'),
(117, 'Latvia'),
(118, 'Lebanon'),
(119, 'Lesotho'),
(120, 'Liberia'),
(121, 'Libyan Arab Jamahiriya'),
(122, 'Liechtenstein'),
(123, 'Lithuania'),
(124, 'Luxembourg'),
(125, 'Macau'),
(126, 'Macedonia, The Former Yugoslav Republic of'),
(127, 'Madagascar'),
(128, 'Malawi'),
(129, 'Maldives'),
(130, 'Mali'),
(131, 'Malta'),
(132, 'Marshall Islands'),
(133, 'Martinique'),
(134, 'Mauritania'),
(135, 'Mauritius'),
(136, 'Mayotte'),
(137, 'Mexico'),
(138, 'Micronesia, Federated States of'),
(139, 'Moldova, Republic of'),
(140, 'Monaco'),
(141, 'Mongolia'),
(142, 'Montserrat'),
(143, 'Morocco'),
(144, 'Mozambique'),
(145, 'Myanmar'),
(146, 'Namibia'),
(147, 'Nauru'),
(148, 'Nepal'),
(149, 'Netherlands'),
(150, 'Netherlands Antilles'),
(151, 'New Caledonia'),
(152, 'New Zealand'),
(153, 'Nicaragua'),
(154, 'Niger'),
(155, 'Nigeria'),
(156, 'Niue'),
(157, 'Norfolk Island'),
(158, 'Northern Mariana Islands'),
(159, 'Norway'),
(160, 'Oman'),
(161, 'Pakistan'),
(162, 'Palau'),
(163, 'Panama'),
(164, 'Papua New Guinea'),
(165, 'Paraguay'),
(166, 'Peru'),
(167, 'Philippines'),
(168, 'Pitcairn'),
(169, 'Poland'),
(170, 'Portugal'),
(171, 'Puerto Rico'),
(172, 'Qatar'),
(173, 'Reunion'),
(174, 'Romania'),
(175, 'Russian Federation'),
(176, 'Rwanda'),
(177, 'Saint Kitts and Nevis'),
(178, 'Saint Lucia'),
(179, 'Saint Vincent and the Grenadines'),
(180, 'Samoa'),
(181, 'San Marino'),
(182, 'Sao Tome and Principe'),
(183, 'Saudi Arabia'),
(184, 'Senegal'),
(185, 'Seychelles'),
(186, 'Sierra Leone'),
(187, 'Singapore'),
(188, 'Slovakia (Slovak Republic)'),
(189, 'Slovenia'),
(190, 'Solomon Islands'),
(191, 'Somalia'),
(192, 'South Africa'),
(193, 'South Georgia and the South Sandwich Islands'),
(194, 'Spain'),
(195, 'Sri Lanka'),
(196, 'St. Helena'),
(197, 'St. Pierre and Miquelon'),
(198, 'Sudan'),
(199, 'Suriname'),
(200, 'Svalbard and Jan Mayen Islands'),
(201, 'Swaziland'),
(202, 'Sweden'),
(203, 'Switzerland'),
(204, 'Syrian Arab Republic'),
(205, 'Taiwan, Province of China'),
(206, 'Tajikistan'),
(207, 'Tanzania, United Republic of'),
(208, 'Thailand'),
(209, 'Togo'),
(210, 'Tokelau'),
(211, 'Tonga'),
(212, 'Trinidad and Tobago'),
(213, 'Tunisia'),
(214, 'Turkey'),
(215, 'Turkmenistan'),
(216, 'Turks and Caicos Islands'),
(217, 'Tuvalu'),
(218, 'Uganda'),
(219, 'Ukraine'),
(220, 'United Arab Emirates'),
(221, 'United Kingdom'),
(222, 'United States'),
(223, 'United States Minor Outlying Islands'),
(224, 'Uruguay'),
(225, 'Uzbekistan'),
(226, 'Vanuatu'),
(227, 'Venezuela'),
(228, 'Vietnam'),
(229, 'Virgin Islands (British)'),
(230, 'Virgin Islands (U.S.)'),
(231, 'Wallis and Futuna Islands'),
(232, 'Western Sahara'),
(233, 'Yemen'),
(234, 'Yugoslavia'),
(235, 'Zambia'),
(236, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `image_path` varchar(255) CHARACTER SET latin1 NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_of_creating` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `news_name`, `description`, `content`, `image_path`, `category_id`, `date_of_creating`) VALUES
(2, 'title 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesett', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test.jpg', 1, '0000-00-00'),
(23, 'bjsbcjsbjc', 'wdwkd', 'dwjdbnkwn ', '96 (3).jpg ', 6, '2018-08-02'),
(24, 'news conserning iuniverse', 'The Universe is all of space and time[a] and their contents,[10] including planets,', 'The Universe is all of space and time[a] and their contents,[10] including planets, stars, galaxies, and all other forms of matter and energy. While the spatial size of the entire Universe is still unknown,[3] it is possible to measure the observable universe.\r\n\r\nT ', '96 (3).jpg ', 7, '2018-08-02'),
(25, 'There are many', 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 1, '2018-08-02'),
(26, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 4, '2018-08-02'),
(27, 'Does ugliness have aesthetic value?', 'Hence, beautiful wallpapers can also come in many different', 'Can the ugliness have aesthetic value? And above all, how to define beauty? What aesthetic pleasure is he different from any other pleasure? What is the nature of aesthetic pleasure? Is a beautiful property of things? All these questions have no universally accepted response. Hence, beautiful wallpapers can also come in many different ', '13.jpg ', 1, '2018-08-02'),
(29, 'In pto demonstrate t', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English. ', '11.jpg ', 6, '2018-08-02'),
(30, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t\r\nContrary to', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t ', '10.jpg ', 3, '2018-08-02'),
(31, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'wdnjndwjk', 'wjdiqwkd ', '3.jpg ', 1, '2018-08-02'),
(32, 'there are a lot of environmental issues', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban sprawl, waste disposal, ozone layer depletion, water pollution, climate change and many more affect every human, animal and nation on this planet. Over the last few decades, the exploitation of our planet and degradation of our environment have  gone up at an alarming rate. As our actions have been not in favor of protecting this planet, we have seen natural disasters striking us more often in the form of flash floods, tsunamis and cyclones. ', '1.jpg ', 4, '2018-08-02'),
(47, 'wqjdnjqwnd', 'wndkwndnwdn', 'wdbjwbdjw ', '1533226833.jpg ', 1, '2018-08-02'),
(48, 'nuture', 'content from clients can often be a frustrating process), and is used in place o', 'content from clients can often be a frustrating process), and is used in place of meaningful content during the design phase.With roots in classical Latin literature, lorem ipsum has ', '1533226940.jpg ', 6, '2018-08-02'),
(49, 'again test', 'about something', 'just testing ', '1533228447.jpg ', 1, '2018-08-02'),
(51, 'Contrary to popular belief, L', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years', 'vContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years ', '1533228912.jpg ', 6, '2018-08-02'),
(52, 'jnwjnjnwdfjnwjd', 'djndnkq', 'dnqjkdnqndk ', '1533230014.jpg ', 4, '2018-08-02'),
(53, 'The Minions are small, yellow henchmen', 'The Minions are small, yellow henchmen', 'The Minions are small, yellow henchmen ', '1533288851.jpg ', 1, '2018-08-03'),
(54, 'nwkwnk', 'nkwnfknw', 'kwnkwn ', '1533292357.jpg ', 4, '2018-08-03'),
(55, 'efnkefenf', 'ejkfenknfkf', 'ebjbefkefnk ', '1533302618.jpg ', 4, '2018-08-03'),
(56, 'kjn3rk3nrk3nrkn3rk3nkr', '3fk3nr3nrk3nrk', '3nk3nkn3krn3k ', '1533308473.jpg ', 4, '2018-08-03'),
(57, 'hbhjb', 'bj', 'bjbj ', '1533384524.jpg ', 1, '2018-08-04'),
(58, 'Õ¸Õ°Õ«Õ°ÕµÕ¸Õ«Ö†Õ°', 'Õ¸Ö†Õ¶Õ¯Õ¶Õ¸Ö†', 'Õ¸Õ¶Ö†Õ¯Õ¸Õ¶Ö† ', '1533385236.jpg ', 6, '2018-08-04'),
(59, 'nbdjknwkdnkw', 'Õ¶Õ¸ÕµÕ¤Õ¶Õ¸Õ¯Õ¤Õ¶Õ¸Õ¯Õ¤Õ¶Õ¯Õ¸Õ¶Õ¤', 'Ñ‚Ð¾Ñ†Ñ‚Ð²Ð»Ñ†Ð²Ð» ', '1533386097.jpg ', 3, '2018-08-04'),
(60, 'wdnkwndk', 'djqbdjqbdj', 'wnkdnwkln ', '1533386524.jpg ', 6, '2018-08-04'),
(61, 'djwnfkwnfk', 'wnfklnwflwnfl', 'wldmwlfmwl ', '1533386744.jpg ', 5, '2018-08-04'),
(62, 'Õ¸Õ¶Õ¯Õ¤Õ¸Õ¯Õ¤', 'Õ¸ Õ¤Õ¢Õ¸ÕµÕ¢Õ¤Õµ', 'Õ¸Õ¤Õ¶Õ¯Õ¶Õ¸Õ¤ ', '1533387511.jpg ', 4, '2018-08-04'),
(63, 'Õ¶Õ¯Õ¸Õ¶Ö†Õ¯Õ¸Ö†', 'Õ¸ÕµÕ¯Õ¢Ö†Õ¯', 'Õ¸Õ¶Õ¤Õ¯Õ¶Õ¸Ö† ', '1533387600.jpg ', 1, '2018-08-04'),
(64, 'Õ¶Õ¯Õ¤Õ¶Õ¸Õ¯Õ¤Ö†Õ¶Õ¯', 'Õ¶Õ¸Õ¯Õ¶Ö†Õ¯Õ¸Õ¶', 'Õ¸Õ¶Õ¤Õ¯Õ¸Õ¶Õ¤Õ¯ ', '1533387816.jpg ', 5, '2018-08-04'),
(65, 'nejfnkefn', 'bjwjdf', 'w dkwnfdk ', '1533387863.jpg ', 6, '2018-08-04'),
(66, 'Ñ‚Ð¾Ñ†', 'Ñ†Ð²Ð¾Ð»Ñ†Ð¸Ð²Ð»', 'Ñ†Ñ‚Ð²Ð°Ð»Ñ†Ð° ', '1533387880.jpg ', 1, '2018-08-04'),
(67, 'Ð¸Ñ†Ð²Ð¾Ð¸Ñ†Ð²Ð¾Ð¸Ð¾', 'wbdjwd', 'bdjwbdjwbdjbwj ', '1533387955.jpg ', 6, '2018-08-04'),
(69, 'Õ¢ÕµÕ¸Õ¤Õ¢Õ¸Õ¤ÕµÕ¢Õ¤Õ¸Õµ', 'Õ¤Õ¸Õ¶Õ¯Õ¤Õ¶Õ¯', 'Õ¤Õ¸Õ¯Õ¤Õ¶Õ¯ ', '1533388215.jpg ', 1, '2018-08-04'),
(70, 'fekjnfkefnk', 'dfjefjefbjef', 'ejfebfbjbjbjbj ', '1533398401.jpg ', 4, '2018-08-04'),
(71, 'ecjecje', 'hkcrhkc', 'chjehcjehcj ', '1533453359.jpg ', 4, '2018-08-05'),
(72, 'dwkdkwndk', 'nfkwnf', 'wnknwkdfn ', '1533537201.jpg ', 1, '2018-08-06'),
(73, 'wfjwfj', 'fjfjwfbw', 'wjfwnjfkn ', '1533545760.jpg ', 1, '2018-08-06'),
(74, 'qsbjqbdsj', 'wdbjwdjwb', 'wdkwbdkw ', '1533547802.jpg ', 1, '2018-08-06'),
(75, 'vjhjbj', 'bvjjbj', 'bjbjj ', '1533556416.jpg ', 4, '2018-08-06'),
(76, 'vjhjbj', 'bvjjbj', 'bjbjj ', '1533556417.jpg ', 4, '2018-08-06'),
(77, 'qdjdqd', 'dqbdj', 'dhjbqbdq ', '1533559864.jpg ', 3, '2018-08-06'),
(78, 'wdfwkfnnfkfnk', 'wnkfwnfk', 'wknkfnk ', '1533632470.jpg ', 4, '2018-08-07'),
(79, 'nqjkdnkndkqnde', 'qdknqdknqdk', 'qnkdndknqwkd ', '1533640046.jpg ', 2, '2018-08-07'),
(80, 'jknknkk', ' hhbj', 'bjbjbjbj ', '1533650664.png ', 6, '2018-08-07'),
(81, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years ', 'wnkwnfkwnfkief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'kfefkeflmwief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years oief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years oief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o ', '1533650846.jpg ', 5, '2018-08-07'),
(82, 'dfjwnfjwnfjw', 'wdbjwdbj', 'wdjwndknwd ', '1533707087.jpg ', 5, '2018-08-08'),
(83, 'enkfnerkfkrfn', 'nnjknkmnkn', 'enfknkrngkr ', '1533713478.jpg ', 1, '2018-08-08'),
(84, 'bdjwbdjbwdjwd', 'dqnknqdknq', 'ndkqndkqndk ', '1533717102.jpg ', 4, '2018-08-08'),
(85, 'dkqwndqkdk', 'qdnqnd,qdn,', 'qdnqndqd, ', '1533743475.jpg ', 5, '2018-08-08'),
(86, ' nknk', 'mlmlmlm', 'knknk ', '1533903869.jpg ', 4, '2018-08-10'),
(89, 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', '1534967201.jpg', 2, '2018-08-22');

-- --------------------------------------------------------

--
-- Структура таблицы `registr_s`
--

CREATE TABLE `registr_s` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` varchar(40) NOT NULL,
  `profile_path` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `registr_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `registr_s`
--

INSERT INTO `registr_s` (`id`, `f_name`, `l_name`, `email`, `password`, `profile_path`, `country_id`, `registr_date`) VALUES
(1, 'nwdnwk', 'ndkwndk', 'wd nkwndk', 'dwnkwnd', '', 1, '2018-08-06'),
(3, 'bjbjb', 'njnjn', 'bjbjj', 'bjbjbj', '', 1, '2018-08-06'),
(4, 'njefje', 'fjwfjw', 'njnewfjk', 'nvkenv', '', 1, '0000-00-00'),
(5, 'nkfjkw', 'jwndkw', 'nkfnwkf', 'whfiiw', '', 1, '0000-00-00'),
(6, 'nkfjkw', 'jwndkw', 'nkfnwkf', 'whfiiw', '', 1, '0000-00-00'),
(7, 'nkfjkw', 'jwndkw', 'nkfnwkf', 'whfiiw', '', 1, '0000-00-00'),
(8, 'njknnd', 'qdkqmndknd', 'dnjqndkq', 'dnqkndqn', '', 1, '2018-08-06'),
(10, 'Tsovinar', 'Greigoryan', 'tsovinar.nemesida.grigoryan@gmail.com', '4444', '', 1, '2018-08-06'),
(30, 'Tsovinar', 'enfknkef', 'wnfkwnfk', '1234', '', 1, '2018-08-06'),
(63, 'Tsov', 'Grigoryan', '1000@mail.ru', 'e3cbba8883fe746c6e35783c9404b4bc0c7ee9eb', '1534008533', 5, '2018-08-11'),
(64, 'Tsovinar', 'ndkwndk', '1001@mail.ru', 'dd01903921ea24941c26a48f2cec24e0bb0e8cc7', '1534008673', 3, '2018-08-11'),
(65, 'wkdnkwndk', ' dknwdkll', '52@mail.ru', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '1534008738', 4, '2018-08-11'),
(66, 'qkdldml', 'wfmlwmflwmfl', 'mwlmfl@mail.ru', '51eac6b471a284d3341d8c0c63d0f1a286262a18', '1534009584', 4, '2018-08-11'),
(67, 'wjfojwfjowjf', 'dnkqmndlqdl', 'wdnkwndkbj@mail.ru', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1534009624', 1, '2018-08-11'),
(68, 'Tsov', 'Grig', '2018@mail.ru', '66efd9eefecf45dd64eff8e5cb2d13e005041925', '1534009807', 3, '2018-08-11'),
(69, 'sknkdnkd', 'wdmlmdwlwd', 'dknwk@mail.ru', '23b23be9da2519c88f11c084310bcc0bf14417f8', '1534010011', 2, '2018-08-11'),
(70, 'ekqwnknd', 'qkndkqd', 'wnknfdkn@mail.ru', 'fc7a734dba518f032608dfeb04f4eeb79f025aa7', '1534010128', 1, '2018-08-11'),
(71, 'nkknknk', 'mkmkmk', '456@mail.ru', '51eac6b471a284d3341d8c0c63d0f1a286262a18', '1534010586', 2, '2018-08-11'),
(72, 'nkdnwknk', 'wmdkmkf', 'wlkmfl@mail.ru', '98fbc42faedc02492397cb5962ea3a3ffc0a9243', '', 3, '2018-08-11'),
(73, 'kknknk', 'wkwnkwn', '111@mail.ru', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '', 2, '2018-08-11'),
(74, 'dkwdknwdk', 'mdlwmlw', '444@mail.ru', '9a3e61b6bcc8abec08f195526c3132d5a4a98cc0', '1534011915', 4, '2018-08-11'),
(75, 'kndkndkd wjdjwnbdj', 'nknkfwdnksndk', '852@mail.ru', '2dcc3820e64b3d1a7866b22935c695fd6aa3980a', 'Array', 3, '2018-08-11'),
(76, 'ksjnfks', 'sfsf', '333@mail.ru', '43814346e21444aaf4f70841bf7ed5ae93f55a9d', '', 5, '2018-08-11'),
(77, 'nkdnkwdn', 'dlkmnald', 'dmldml@mail.ru', '98fbc42faedc02492397cb5962ea3a3ffc0a9243', '1534012762', 4, '2018-08-11'),
(78, 'kfnwfk', 'dnkwndk', '784@mail.ru', 'aa5076f800ef52b2ed0f0b8d88bfc68f7fd6a314', '1534013116', 2, '2018-08-11'),
(79, 'adsfasdfasdf', 'adfsadfsafds', 'tsdasdfovinar.nemesida.grigoryan@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1534015441.jpg', 1, '2018-08-11'),
(80, 'nfnefnekfkk', 'wndjwndjwd', 'ggg@mail.ru', '07dcd371560bc43c48f56a2f55739ac66741d59d', '1534015973.jpg', 2, '2018-08-11'),
(81, 'ndkndk', 'slknl', 'tsfkehnfk@mail.ru', '444', '444', 3, '0000-00-00'),
(87, 'djwdjw', 'qkdnk', '448@mail.ru', '9a3e61b6bcc8abec08f195526c3132d5a4a98cc0', '1534095225.jpg', 17, '2018-08-12'),
(88, 'Tsov', 'Grig', 'Tsov@mail.ru', 'ba4413c4f9fab80579590bc27e672f37519f9a9d', '1534095510.jpg', 11, '2018-08-12'),
(89, 'shine', 'Art', 'shine@mail.ru', '3da90bd3db535c44d21f0d388768d8fa6ac286bc', '1534160680.jpg', 11, '2018-08-13'),
(90, 'sfwfc', 'ffw', 'sfwf@mail.ru', '51eac6b471a284d3341d8c0c63d0f1a286262a18', '1534164895.jpg', 1, '2018-08-13'),
(91, 'wdwdadjdj', 'wdwdqdjbdj', 'dwdw@mail.rudkdnq', '51eac6b471a284d3341d8c0c63d0f1a286262a18', '1534165970.jpg', 1, '2018-08-13'),
(92, 'Test', 'test', '77777@mail.ru', '501ab5444eae9ad32b562570b36ff628ec3790ce', '1534166062.jpg', 6, '2018-08-13'),
(93, 'artur', 'vazigexcyan', 'art@mail.ru', '4f468a6824d620bf0f58640c0bc423bcb35dc48f', '1534167152.jpg', 18, '2018-08-13'),
(94, 'qq', 'qq', 'qq@mail.ru', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938', '1534269880.jpg', 11, '2018-08-14'),
(95, 'a', 'a', 'a@mail.ru', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '1534426986.jpg', 8, '2018-08-16'),
(96, 'ff', 'ff', 'ff@mail.ru', 'ed70c57d7564e994e7d5f6fd6967cea8b347efbc', '1534427276.jpg', 11, '2018-08-16'),
(97, 'aa', 'aa', 'aa@mail.ru', 'e0c9035898dd52fc65c41454cec9c4d2611bfb37', '1534599098.jpg', 18, '2018-08-18'),
(98, 'vvvvvvvvvv', 'vvvvvvvv', 'vv@mail.ru', '4cf997735475afd79f8711e22efaa9d306294785', '1534779986.jpg', 11, '2018-08-20'),
(99, 'vvvvvvvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvv', 'vv@mail.ru', '4cf997735475afd79f8711e22efaa9d306294785', '1534781791.jpg', 14, '2018-08-20'),
(100, 'vvvvvv', 'vvvvvv', 'vv@mail.ru', '4cf997735475afd79f8711e22efaa9d306294785', '1534781961.jpg', 151, '2018-08-20'),
(101, 'rrrrrrrrr', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'rrrrrrrrrrrrrrr@mail.ru', '843cbacc61c8fe45886819ff1516e2e179374496', '1534782867.jpg', 19, '2018-08-20'),
(102, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'fsSDSDGSFDKASIOHPIJHgbhiojhIH@mail.ru', 'e0c9035898dd52fc65c41454cec9c4d2611bfb37', '1534787203.jpg', 1, '2018-08-20'),
(103, 'uuuuuuuuuuuuuuu', 'uuuuuuuuuuuuuuuuuuuu', 'uuuuuuuuuuuuu@mail.ru', '6f457e97a26f3037e5589415c3791be2852eb968', '1534788099.jpg', 7, '2018-08-20'),
(104, 'kkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkk@mial.ru', '2ed45186c72f9319dc64338cdf16ab76b44cf3d1', '1534935520.jpg', 19, '2018-08-22'),
(105, 'Name', 'fname', 'yy@mail.ru', 'b2a801fc1f6cdddb5df949c5126817cb5c8562ce', '1535029374.jpg', 1, '2018-08-23'),
(106, 'Name', 'yyyyyyyyyyyyyyyyyy', '000@mail.ru', 'fb96549631c835eb239cd614cc6b5cb7d295121a', '1535029420.jpg', 12, '2018-08-23'),
(107, 'zzz', 'zzzzz', 'zz@mail.ru', 'd7dacae2c968388960bf8970080a980ed5c5dcb7', '1535030265.jpg', 11, '2018-08-23');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `registr_s`
--
ALTER TABLE `registr_s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_country_id_registr_s` (`country_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `registr_s`
--
ALTER TABLE `registr_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_category_id_news` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `registr_s`
--
ALTER TABLE `registr_s`
  ADD CONSTRAINT `fk_country_id_registr_s` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
