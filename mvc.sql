-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2016 at 08:16 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, 'Julie Arnold'),
(2, 'Sandra Harrison'),
(3, 'Antonio Torres'),
(4, 'Anthony Moreno'),
(5, 'Irene Woods'),
(6, 'Kathryn Gibson'),
(7, 'Irene Carr'),
(8, 'Heather Arnold'),
(9, 'Patricia Gardner'),
(10, 'Rebecca Scott'),
(11, 'Norma Chapman'),
(12, 'Jean Hall'),
(13, 'Louis Andrews'),
(14, 'Terry Boyd'),
(15, 'Craig Cunningham'),
(16, 'Ann Evans'),
(17, 'Robin Mcdonald'),
(18, 'Bobby Watkins'),
(19, 'Sharon Ramos'),
(20, 'Steven Moreno'),
(21, 'Beverly Green'),
(22, 'Jesse Harvey'),
(23, 'Fred Richards'),
(24, 'Theresa Coleman'),
(25, 'Terry Bradley'),
(26, 'Rebecca Burke'),
(27, 'Charles Brooks'),
(28, 'Frank Parker'),
(29, 'Roy Brooks'),
(30, 'Roy Hansen');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `style_id` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `price`, `style_id`) VALUES
(1, 'in hac habitasse platea dictumst', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', '4966.97', 7),
(2, 'in lectus pellentesque at nulla', 'nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', '2679.64', 8),
(3, 'sapien in sapien', 'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', '5459.14', 9),
(4, 'maecenas ut massa', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', '9066.35', 11),
(5, 'ut nulla sed accumsan', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', '2393.17', 1),
(6, 'accumsan tellus nisi', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', '8900.07', 12),
(7, 'sed sagittis nam congue risus', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', '5748.58', 4),
(8, 'odio in hac habitasse', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', '6129.41', 5),
(9, 'quisque id justo sit', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '8268.15', 12),
(10, 'enim in tempor turpis nec', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non', '9116.68', 1),
(11, 'id nulla ultrices aliquet', 'duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', '3743.17', 10),
(12, 'justo morbi ut odio cras', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', '2922.55', 6),
(13, 'pede morbi porttitor', 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', '9179.66', 12),
(14, 'facilisi cras non', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', '8064.42', 2),
(15, 'et ultrices posuere cubilia', 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', '8820.91', 12),
(16, 'fusce posuere felis', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim', '7046.27', 5),
(17, 'diam id ornare', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', '7391.43', 6),
(18, 'vivamus metus arcu adipiscing molestie', 'magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', '1867.59', 7),
(19, 'orci mauris lacinia sapien quis', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales', '3241.64', 3),
(20, 'eu felis fusce', 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', '501.33', 10),
(21, 'amet sapien dignissim', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', '4300.76', 9),
(22, 'vehicula condimentum curabitur in libero', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', '7941.42', 4),
(23, 'risus praesent lectus vestibulum', 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas', '707.91', 2),
(24, 'nulla tempus vivamus in felis', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla', '6994.05', 4),
(25, 'pharetra magna vestibulum', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '3484.39', 2),
(26, 'hac habitasse platea dictumst', 'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', '9133.57', 2),
(27, 'commodo vulputate justo in blandit', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient', '9988.10', 11),
(28, 'aliquet pulvinar sed nisl', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', '2138.57', 11),
(29, 'curae duis faucibus accumsan', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', '9243.46', 3),
(30, 'morbi quis tortor id nulla', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', '5875.32', 8),
(31, 'blandit lacinia erat vestibulum', NULL, '5739.09', 11),
(32, 'at diam nam tristique', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', '8429.81', 10),
(33, 'lacus morbi sem', 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec', '8510.49', 4),
(34, 'quam turpis adipiscing', NULL, '507.27', 6),
(35, 'non interdum in ante vestibulum', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', '4497.75', 12),
(36, 'velit nec nisi vulputate nonummy', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc', '1217.55', 9),
(37, 'turpis elementum ligula', 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', '5505.49', 1),
(38, 'sem mauris laoreet ut', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque', '3890.23', 10),
(39, 'odio justo sollicitudin ut suscipit', 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', '8967.32', 12),
(40, 'nibh in quis justo', 'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', '7525.15', 8),
(41, 'elementum eu interdum', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', '9577.32', 2),
(42, 'lacinia eget tincidunt eget tempus', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', '7746.66', 11),
(43, 'at velit eu', 'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', '6829.73', 1),
(44, 'et ultrices posuere cubilia curae', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', '7017.73', 4),
(45, 'volutpat convallis morbi', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', '4799.96', 9),
(46, 'sit amet consectetuer adipiscing', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', '5633.59', 11),
(47, 'libero non mattis', 'lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', '6500.57', 10),
(48, 'eu orci mauris', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', '6303.40', 10),
(49, 'praesent blandit nam', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', '2086.55', 12),
(50, 'massa id nisl venenatis lacinia', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '1730.59', 12),
(51, 'luctus tincidunt nulla mollis', 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu', '9948.33', 6),
(52, 'sit amet turpis elementum', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis', '8507.62', 1),
(53, 'est lacinia nisi venenatis', NULL, '5618.70', 6),
(54, 'diam neque vestibulum eget vulputate', 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', '3999.24', 10),
(55, 'id nulla ultrices aliquet', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris', '1237.87', 8),
(56, 'volutpat in congue etiam', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', '3732.92', 7),
(57, 'pellentesque quisque porta', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', '4440.87', 11),
(58, 'lacinia aenean sit amet', 'turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', '2704.87', 12),
(59, 'tincidunt ante vel', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', '2136.43', 9),
(60, 'et ultrices posuere', 'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', '9856.78', 4),
(61, 'aliquet at feugiat non', 'nunc donec quis orci eget orci vehicula condimentum curabitur in', '2311.93', 12),
(62, 'nunc vestibulum ante ipsum primis', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', '1011.92', 6),
(63, 'ante ipsum primis in faucibus', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a', '3615.87', 6),
(64, 'blandit non interdum in ante', 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '3012.34', 10),
(65, 'sit amet nunc', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', '5635.97', 1),
(66, 'est congue elementum in', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', '1776.11', 5),
(67, 'urna pretium nisl ut volutpat', 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis', '9372.65', 10),
(68, 'sodales scelerisque mauris sit amet', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', '5451.19', 3),
(69, 'tempus vivamus in felis eu', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', '4467.03', 12),
(70, 'in faucibus orci luctus', 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus', '3304.48', 1),
(71, 'tortor risus dapibus augue', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis', '6291.56', 12),
(72, 'porttitor id consequat in', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus', '1717.80', 10),
(73, 'viverra eget congue eget', 'curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', '1826.80', 7),
(74, 'lectus pellentesque eget nunc donec', NULL, '9794.85', 6),
(75, 'nulla suscipit ligula in lacus', 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '1658.70', 11),
(76, 'tortor sollicitudin mi', 'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', '4240.86', 5),
(77, 'penatibus et magnis', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', '2517.14', 5),
(78, 'aliquet massa id lobortis', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', '8187.98', 11),
(79, 'quam suspendisse potenti', 'ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', '3411.08', 4),
(80, 'pellentesque viverra pede', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', '2646.06', 11),
(81, 'lobortis convallis tortor risus dapibus', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', '5736.48', 6),
(82, 'vestibulum sed magna at', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', '2762.76', 5),
(83, 'interdum mauris ullamcorper purus sit', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', '2214.00', 2),
(84, 'sit amet sapien', 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', '2671.41', 1),
(85, 'sed sagittis nam congue risus', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus', '3953.11', 5),
(86, 'ultrices vel augue vestibulum ante', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', '7972.21', 12),
(87, 'etiam pretium iaculis', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', '1905.52', 2),
(88, 'cubilia curae duis faucibus', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', '4418.47', 1),
(89, 'in sagittis dui vel nisl', 'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', '4873.76', 3),
(90, 'nulla tellus in sagittis', 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet', '3722.27', 2),
(91, 'ante ipsum primis in', 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', '6096.56', 12),
(92, 'luctus et ultrices posuere', 'id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', '5066.45', 6),
(93, 'nec euismod scelerisque quam turpis', 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', '1901.96', 3),
(94, 'pulvinar sed nisl', 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue', '2351.18', 12),
(95, 'tortor duis mattis', 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', '6904.17', 4),
(96, 'interdum in ante vestibulum ante', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', '2393.13', 6),
(97, 'est congue elementum', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin', '357.50', 1),
(98, 'duis consequat dui nec', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', '3736.69', 3),
(99, 'ipsum aliquam non', 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', '9309.11', 11),
(100, 'maecenas rhoncus aliquam lacus morbi', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '4914.72', 3);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`id`, `book_id`, `author_id`) VALUES
(1, 85, 2),
(2, 80, 5),
(3, 69, 14),
(4, 1, 29),
(5, 64, 11),
(6, 61, 16),
(7, 94, 23),
(8, 21, 3),
(9, 29, 19),
(10, 97, 2),
(11, 22, 11),
(12, 39, 21),
(13, 57, 17),
(14, 48, 18),
(15, 8, 2),
(16, 47, 22),
(17, 59, 19),
(18, 54, 17),
(19, 76, 24),
(20, 36, 14),
(21, 2, 5),
(22, 84, 27),
(23, 54, 20),
(24, 72, 12),
(25, 91, 2),
(26, 68, 4),
(27, 45, 17),
(28, 100, 6),
(29, 66, 26),
(30, 95, 23),
(31, 83, 14),
(32, 29, 15),
(33, 32, 26),
(34, 10, 1),
(35, 50, 11),
(36, 58, 26),
(37, 20, 25),
(38, 81, 25),
(39, 17, 26),
(40, 2, 17),
(41, 69, 11),
(42, 7, 4),
(43, 88, 24),
(44, 44, 15),
(45, 14, 12),
(46, 25, 17),
(47, 98, 23),
(48, 25, 29),
(49, 57, 23),
(50, 57, 19),
(51, 1, 24),
(52, 83, 22),
(53, 83, 18),
(54, 66, 4),
(55, 62, 20),
(56, 31, 4),
(57, 32, 14),
(58, 72, 6),
(59, 43, 1),
(60, 35, 1),
(61, 40, 18),
(62, 42, 20),
(63, 81, 8),
(64, 95, 18),
(65, 52, 25),
(66, 77, 6),
(67, 51, 1),
(68, 79, 16),
(69, 96, 8),
(70, 40, 7),
(71, 43, 5),
(72, 52, 4),
(73, 91, 22),
(74, 10, 11),
(75, 34, 6),
(76, 13, 4),
(77, 56, 26),
(78, 77, 19),
(79, 72, 24),
(80, 94, 4),
(81, 17, 13),
(82, 81, 2),
(83, 22, 28),
(84, 27, 24),
(85, 20, 13),
(86, 9, 22),
(87, 36, 9),
(88, 74, 9),
(89, 16, 13),
(90, 1, 17),
(91, 39, 15),
(92, 56, 4),
(93, 99, 17),
(94, 95, 17),
(95, 23, 15),
(96, 40, 13),
(97, 20, 5),
(98, 91, 11),
(99, 56, 27),
(100, 38, 22);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `style`
--

CREATE TABLE `style` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `style`
--

INSERT INTO `style` (`id`, `name`) VALUES
(1, 'Horror'),
(2, 'Thriller'),
(3, 'pede'),
(4, 'eros'),
(5, 'pellentesque'),
(6, 'aliquam'),
(7, 'tellus'),
(8, 'sed'),
(9, 'convallis'),
(10, 'amet'),
(11, 'risus'),
(12, 'aenean'),
(13, 'new style');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `style_id` (`style_id`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `book_author`
--
ALTER TABLE `book_author`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `style`
--
ALTER TABLE `style`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
