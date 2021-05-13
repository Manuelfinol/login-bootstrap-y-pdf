-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2021 a las 03:34:56
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login1bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `cedula`, `telefono`, `correo`) VALUES
(1, 'Olin', 'Watsica', '30643376', '+1659741137948', 'trevion.rohan@yahoo.com'),
(2, 'Luna', 'Quigley', '30850369', '+1251522807574', 'ratke.richard@gmail.com'),
(3, 'Dan', 'Satterfield', '30125980', '+3888588889100', 'loy81@gmail.com'),
(4, 'Hilbert', 'Rosenbaum', '30074007', '+9894825705450', 'xdavis@hotmail.com'),
(5, 'Braden', 'Yost', '30501017', '+9741239716307', 'gfisher@gmail.com'),
(6, 'Avis', 'Weimann', '30504082', '+3363703915355', 'blanche03@yahoo.com'),
(7, 'Abraham', 'Kertzmann', '30548435', '+2798972182793', 'braxton.ankunding@hotmail.com'),
(8, 'Danny', 'Langosh', '30870564', '+9919361338510', 'kfadel@gmail.com'),
(9, 'Buck', 'Mayer', '30853941', '+4416737473997', 'howell.lowell@hotmail.com'),
(10, 'Lia', 'Brakus', '30715269', '+4511711933457', 'zupton@hotmail.com'),
(11, 'Addie', 'Grimes', '30584399', '+3731379235804', 'alphonso.russel@yahoo.com'),
(12, 'Bernardo', 'Kihn', '30723456', '+8841009946588', 'sibyl34@yahoo.com'),
(13, 'Lindsey', 'O\'Conner', '30214234', '+9410061923844', 'kamille00@gmail.com'),
(14, 'Adrian', 'Mills', '30855586', '+1952664216572', 'fziemann@yahoo.com'),
(15, 'Madge', 'Treutel', '30994191', '+4932608316318', 'olowe@gmail.com'),
(16, 'Imogene', 'McDermott', '30455698', '+7689254486692', 'parisian.linwood@hotmail.com'),
(17, 'Bud', 'Kuhn', '30887102', '+5119911759570', 'barton.nat@hotmail.com'),
(18, 'Roman', 'Mueller', '30294690', '+3328548729246', 'rsipes@yahoo.com'),
(19, 'Adaline', 'Dietrich', '30959726', '+5520045708481', 'anissa.mckenzie@yahoo.com'),
(20, 'Levi', 'Schumm', '30339211', '+8225778534529', 'zola.bednar@yahoo.com'),
(21, 'Yoshiko', 'Glover', '30281748', '+6235758327202', 'makenna53@yahoo.com'),
(22, 'Vernie', 'Hyatt', '30262397', '+1155723314303', 'stuart.ernser@hotmail.com'),
(23, 'Mason', 'McCullough', '30752139', '+7858893709624', 'idavis@yahoo.com'),
(24, 'Hattie', 'Zboncak', '30053378', '+1344723323942', 'adell.bartoletti@gmail.com'),
(25, 'Willie', 'Schoen', '30840843', '+4585558943825', 'damien82@hotmail.com'),
(26, 'Mozell', 'Wolf', '30894879', '+3713717026556', 'mosciski.rogelio@yahoo.com'),
(27, 'Terrance', 'Windler', '30269662', '+2292985395684', 'cordelia13@hotmail.com'),
(28, 'Avis', 'Mueller', '30275527', '+7694840357262', 'gislason.judge@yahoo.com'),
(29, 'Thea', 'Eichmann', '30061799', '+2135229085768', 'ebernhard@gmail.com'),
(30, 'Ignacio', 'Upton', '30634010', '+5233890191359', 'rath.ewald@hotmail.com'),
(31, 'Jairo', 'Kerluke', '30268497', '+9284918389064', 'giovani46@gmail.com'),
(32, 'Jess', 'Schiller', '30731291', '+6212812887222', 'queen.parker@yahoo.com'),
(33, 'Pinkie', 'Hyatt', '30880536', '+9022373030577', 'lilliana84@gmail.com'),
(34, 'Louisa', 'Lueilwitz', '30747845', '+6468831042388', 'heller.hassie@yahoo.com'),
(35, 'Ova', 'Skiles', '30237464', '+2489746148142', 'emily70@yahoo.com'),
(36, 'Rowland', 'Rosenbaum', '30051449', '+2035601027170', 'delta.boyle@hotmail.com'),
(37, 'Weldon', 'Kovacek', '30967027', '+6622692065173', 'annabel51@gmail.com'),
(38, 'Adaline', 'Lind', '30370400', '+2860942931563', 'rashawn.shields@hotmail.com'),
(39, 'Berenice', 'Kunde', '30385038', '+3563767731393', 'gianni.gislason@hotmail.com'),
(40, 'Lea', 'Metz', '30682154', '+7317437391857', 'lacy.ullrich@gmail.com'),
(41, 'Josiah', 'Cremin', '30301907', '+6395960047050', 'ola.hauck@yahoo.com'),
(42, 'Telly', 'Robel', '30763980', '+6230503841459', 'rosemary.wolff@hotmail.com'),
(43, 'Douglas', 'Howell', '30653606', '+2407361528791', 'justine95@hotmail.com'),
(44, 'Addie', 'Casper', '30569466', '+4128528763280', 'halvorson.garnet@yahoo.com'),
(45, 'Alanna', 'Effertz', '30011515', '+6613783947487', 'fadel.linnea@gmail.com'),
(46, 'Reina', 'Crist', '30644487', '+4484580550418', 'zulauf.reanna@hotmail.com'),
(47, 'Shaina', 'Hilpert', '30817890', '+1680739750213', 'keebler.wiley@yahoo.com'),
(48, 'Fritz', 'Greenholt', '30155511', '+7799293551355', 'pascale.murphy@yahoo.com'),
(49, 'Estrella', 'Kovacek', '30393564', '+8902345651376', 'lelah.schaefer@yahoo.com'),
(50, 'Uriel', 'Hermiston', '30817222', '+3575249126576', 'wilkinson.ellsworth@yahoo.com'),
(51, 'Deven', 'Sipes', '30917872', '+2237678802248', 'uvonrueden@hotmail.com'),
(52, 'Nella', 'Konopelski', '30779583', '+5616337352007', 'christop.becker@gmail.com'),
(53, 'Kaci', 'Lind', '30084169', '+9269495392336', 'jhilpert@hotmail.com'),
(54, 'David', 'Armstrong', '30194497', '+3527760548799', 'bradtke.krista@gmail.com'),
(55, 'Carleton', 'Kerluke', '30060706', '+1101573567838', 'ephraim15@yahoo.com'),
(56, 'Clay', 'Fritsch', '30420692', '+6228165938177', 'ziemann.blanca@gmail.com'),
(57, 'Walton', 'Botsford', '30656308', '+8637596410952', 'karson.mertz@yahoo.com'),
(58, 'Perry', 'Ritchie', '30015064', '+8576493882749', 'rosina.abshire@gmail.com'),
(59, 'Pink', 'O\'Reilly', '30954246', '+2491323888816', 'ssteuber@yahoo.com'),
(60, 'Travon', 'Schumm', '30809259', '+6294136830285', 'lschiller@gmail.com'),
(61, 'Alexa', 'Ratke', '30687960', '+2464831789200', 'mayer.mona@hotmail.com'),
(62, 'Maegan', 'Crooks', '30837999', '+3578971517155', 'lucius.hauck@gmail.com'),
(63, 'Curt', 'Breitenberg', '30687741', '+8212027382024', 'buckridge.katelin@hotmail.com'),
(64, 'Marianna', 'Schulist', '30652310', '+5012810780196', 'giovanny.crona@gmail.com'),
(65, 'Isaias', 'Grant', '30654406', '+1434528805955', 'mathilde.kutch@yahoo.com'),
(66, 'Antonetta', 'Rolfson', '30734989', '+5455208816841', 'mcglynn.lilly@gmail.com'),
(67, 'Bailee', 'Pfeffer', '30740610', '+7187670654838', 'reid12@gmail.com'),
(68, 'Howell', 'Waelchi', '30475964', '+9490164790407', 'knolan@gmail.com'),
(69, 'Darryl', 'Lesch', '30472094', '+2639353802722', 'chris89@yahoo.com'),
(70, 'Maud', 'Mosciski', '30516294', '+6194135700649', 'jon31@yahoo.com'),
(71, 'Dante', 'Breitenberg', '30157357', '+5202966325501', 'blanda.miller@hotmail.com'),
(72, 'Amely', 'Mertz', '30589645', '+3826565293710', 'vwyman@hotmail.com'),
(73, 'Cathrine', 'Mills', '30014598', '+7287096766549', 'fannie67@yahoo.com'),
(74, 'Einar', 'Franecki', '30090309', '+1407417044040', 'dimitri.mann@gmail.com'),
(75, 'Melyna', 'Baumbach', '30205869', '+3650075233952', 'kirlin.jean@yahoo.com'),
(76, 'Frida', 'Larkin', '30874649', '+9944345281172', 'hyatt.gretchen@gmail.com'),
(77, 'Zoey', 'Stoltenberg', '30761303', '+3225114349593', 'heathcote.curt@gmail.com'),
(78, 'Darion', 'Eichmann', '30010128', '+8552380401663', 'fay.kenny@gmail.com'),
(79, 'Graciela', 'Johns', '30097797', '+1831015393642', 'cruickshank.avis@hotmail.com'),
(80, 'Pascale', 'Langworth', '30129808', '+3683405420725', 'lledner@gmail.com'),
(81, 'Blanca', 'Bergstrom', '30334534', '+4079755637847', 'huels.kayli@gmail.com'),
(82, 'Emiliano', 'Vandervort', '30956545', '+8033876404531', 'friesen.sammy@yahoo.com'),
(83, 'Berenice', 'Reichel', '30527844', '+8015321999619', 'glover.hope@gmail.com'),
(84, 'Kaylie', 'O\'Reilly', '30465969', '+6734047100056', 'keegan.watsica@hotmail.com'),
(85, 'Orville', 'Schneider', '30995472', '+4139738981605', 'klarson@hotmail.com'),
(86, 'Christop', 'Paucek', '30113600', '+2073067565181', 'amely22@yahoo.com'),
(87, 'Elian', 'Macejkovic', '30398870', '+3337711585791', 'jermey37@hotmail.com'),
(88, 'Leonora', 'Abernathy', '30132699', '+9539241882919', 'hfranecki@hotmail.com'),
(89, 'Kirstin', 'Willms', '30745610', '+7002442495329', 'clovis.sipes@hotmail.com'),
(90, 'Abner', 'Kunze', '30112293', '+9412330306228', 'emerson32@hotmail.com'),
(91, 'Osborne', 'Wisozk', '30727732', '+7980981787395', 'icarter@gmail.com'),
(92, 'Hosea', 'Jones', '30159069', '+2335217275962', 'marvin.phyllis@hotmail.com'),
(93, 'Kim', 'Pfeffer', '30667299', '+8267827337220', 'goyette.bettie@hotmail.com'),
(94, 'Verla', 'Hegmann', '30792180', '+4904701401362', 'sylvia.kuphal@yahoo.com'),
(95, 'Justine', 'Rice', '30091971', '+8860750782992', 'shanie35@yahoo.com'),
(96, 'Katlynn', 'Stamm', '30519957', '+5341380393793', 'sandrine35@yahoo.com'),
(97, 'Hillard', 'Mayert', '30594753', '+8840373926302', 'rolfson.marina@yahoo.com'),
(98, 'Lyric', 'Ziemann', '30894992', '+5227813509524', 'desiree.senger@hotmail.com'),
(99, 'Rickey', 'Connelly', '30240407', '+2831444216753', 'raynor.westley@yahoo.com'),
(100, 'Ken', 'Bode', '30258423', '+7499596940633', 'ihettinger@hotmail.com'),
(101, 'Kadin', 'Welch', '30793729', '+5854779642177', 'wtorphy@yahoo.com'),
(102, 'Annette', 'Harvey', '30528543', '+2387024677063', 'reece.lowe@gmail.com'),
(103, 'Freeda', 'Block', '30998755', '+7143536060771', 'dayton90@yahoo.com'),
(104, 'Lily', 'Dickinson', '30844124', '+3778259136450', 'tdubuque@gmail.com'),
(105, 'Jonathan', 'Pollich', '30739624', '+9403711882187', 'reichert.herminio@gmail.com'),
(106, 'Sid', 'Gerhold', '30234573', '+8314106275479', 'wisoky.nova@yahoo.com'),
(107, 'Mckenna', 'Osinski', '30167566', '+1199487675588', 'uondricka@yahoo.com'),
(108, 'Alva', 'Koepp', '30506072', '+8707449091739', 'hturcotte@gmail.com'),
(109, 'Tad', 'Schroeder', '30681770', '+8234811834110', 'winona.brown@yahoo.com'),
(110, 'Terrell', 'Jaskolski', '30327323', '+2008311470841', 'candida.anderson@hotmail.com'),
(111, 'Lilla', 'Pfeffer', '30847445', '+8216291496909', 'sandy.herman@yahoo.com'),
(112, 'Felicita', 'Christiansen', '30010254', '+4601554534836', 'sim31@gmail.com'),
(113, 'Nicola', 'Haley', '30109017', '+5502664537453', 'osawayn@yahoo.com'),
(114, 'Shany', 'Ruecker', '30039408', '+3140324776794', 'dickinson.pansy@gmail.com'),
(115, 'Mac', 'D\'Amore', '30270948', '+4012761534741', 'marcus79@yahoo.com'),
(116, 'Virgie', 'Little', '30036565', '+2909384047388', 'christophe20@hotmail.com'),
(117, 'Shane', 'Carter', '30915601', '+5860676710528', 'jacky05@yahoo.com'),
(118, 'Brisa', 'Jacobi', '30845477', '+6934130164297', 'fcarroll@yahoo.com'),
(119, 'Marley', 'Kihn', '30323113', '+7634923792011', 'daphnee77@hotmail.com'),
(120, 'Monique', 'Cormier', '30002333', '+8826192463099', 'wrosenbaum@yahoo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tipo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombreUsuario`, `password`, `tipo`) VALUES
(1, 'mfinol', 'Manuel Finol', '$2y$10$RK/2rfeEZMDM0LeHwLeVF.2x6lLQZBI20HR4YTHmPoiex3c65nuSm', '1'),
(2, 'aperez', 'Alejandro Perez', '$2y$10$hRYYwg1TACQgEBQmK8GEqu0J3GH/ZRxKPHiSn8cvMcthvXs3RQh5G', '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
