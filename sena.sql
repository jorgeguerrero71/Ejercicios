-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 05:56:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `capital` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `capital`) VALUES
(1, 'Estados Unidos', 'Washington D. C.'),
(2, 'Rusia', 'Moscú D.C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `countries_id`) VALUES
(1, 'Alabama', 1),
(2, 'Alaska', 1),
(3, 'Arizona', 1),
(4, 'Arkansas', 1),
(5, 'California', 1),
(6, 'Carolina del Norte', 1),
(7, 'Colorado', 1),
(8, 'Connecticut', 1),
(9, 'Florida', 1),
(10, 'Hawái', 1),
(11, 'Luisiana', 1),
(12, 'Maine', 1),
(13, 'Maryland', 1),
(14, 'Massachusetts', 1),
(15, 'Míchigan', 1),
(16, 'Minnesota', 1),
(17, 'Nevada', 1),
(18, 'Nueva Jersey', 1),
(19, 'Nueva York', 1),
(20, 'Ohio (OH)', 1),
(21, 'Tiumén', 2),
(22, 'San Petersburgo', 2),
(23, 'Novosibirsk', 2),
(24, 'Ekaterimburgo', 2),
(25, 'Nizhni Nóvgorod', 2),
(26, 'Samara', 2),
(27, 'Omsk', 2),
(28, 'Kazán', 2),
(29, 'Ufá', 2),
(30, 'Perm', 2),
(31, 'Oremburgo', 2),
(32, 'Kémerovo', 2),
(33, 'Riazán', 2),
(34, 'Tomsk', 2),
(35, 'Astrancán', 2),
(36, 'Penza', 2),
(37, 'Lípetsk', 2),
(38, 'Tula', 2),
(39, 'Kírov', 2),
(40, 'Briansk', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `name`, `phone`, `countries_id`) VALUES
(1, 'Phillips Academy Andover', '(1)-124-456-9087', 1),
(2, 'The Hotchkiss', '(1)-546-908-2345', 1),
(3, ' Choate Rosemary Hall', '(1)-145-731-9403', 1),
(4, 'The College Preparatory', '(1)-098-503-2182', 1),
(5, 'Gronton', '(1)-232-474-8890', 1),
(6, 'Massachusetts Academy For Math', '(1)-912-355-6709', 1),
(7, 'Maggie Walker Governor´s', '(1)-666-557-0088', 1),
(8, 'Northside College Preparatory High', '(1)-999-656-2211', 1),
(9, 'Bergen County Academies', '(1)-333-095-0078', 1),
(10, 'IMSA:ILLinois Mathematics and Science', '(1)-650-557-8810', 1),
(11, 'Ycode Russian Languange School', '(7)- 112-448-1522', 2),
(12, 'Derzhavin Institute', '(7) -009-107-5032', 2),
(13, 'Educa Russian Laguage schools', '(7) -446-777-8907', 2),
(14, 'educacentre Language School', '(7)- 134-555-3783', 2),
(15, 'Liden & Denz Language Centre', '(7)- 990-812-5455', 2),
(16, 'Extra Class Language Center', '(7)- 345-456-8800', 2),
(17, 'Cref', '(7)- 677-809-0023', 2),
(18, 'ProBa Educational Center', '(7)-558- 321-0922', 2),
(19, 'Privet! Russian Language School', '(7)- 654-913-2105', 2),
(20, 'Influent', '(7)-111- 335-7850', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `names` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `tid` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date_birth` varchar(45) NOT NULL,
  `departments_id` int(11) NOT NULL,
  `schools_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `names`, `lastname`, `tid`, `email`, `password`, `date_birth`, `departments_id`, `schools_id`) VALUES
(2, 'Maximiliano', 'Cortes', '1374695328', 'maximiliano@yahooo.com', '**********', '1993-12-15', 2, 2),
(3, 'Amparo', 'Portela', '3547507329', 'amparo@yahoo.com', '**********', '1989-07-20', 3, 3),
(4, 'Valentina', 'Ducuara', '6354273810', 'valentiva@yahoo.com', '**********', '1994-09-26', 4, 4),
(5, 'Jorge', 'Medina', '2938475620', 'Jorge@yahoo.com', '**********', '1994-06-05', 5, 5),
(6, 'José', 'Alpe', '4756909809', 'jose@yahoo.com', '**********', '1992-02-18', 6, 6),
(7, 'Edilverto', 'Nustes', '3086643829', 'edilverto@yahoo.com', '**********', '1994-10-12', 7, 7),
(8, 'Jesus', 'Alarcón', '4658095753', 'jesus@yahoo.com', '**********', '1996-04-29', 8, 8),
(9, 'Hernando', 'Torres', '4759608787', 'hernando@yahoo.com', '**********', '1990-03-18', 9, 9),
(10, 'Alex', 'Molina', '6584207185', 'alex@yahoo.com', '***********', '1992-01-24', 10, 10),
(11, 'Juanita', 'Avendano', '8408805583', 'juanita@example.com', '*************', '1990-01-15', 11, 1),
(12, 'David', 'Ortiz', '10233403981', 'David@yahoo.com', '**********', '1989-11-03', 12, 2),
(13, 'Sarit', 'Cavana', '12058002379', 'sarit@yahoo.com', '**********', '1993-10-23', 13, 3),
(14, 'Stiven', 'Fonseca', '13882600777', 'stiven@yahoo.com', '***********', '1993-07-01', 14, 4),
(15, 'Demetrio', 'Duitama', '15707199175', 'demetrio@yahoo.com', '***********', '1994-06-11', 15, 5),
(16, 'Juan', 'Poloche', '34568734974', 'juan@yahooo.com', '**********', '1990-01-01', 21, 11),
(17, 'Iván', 'Estrada', '13746953285', 'ivan@yahoo.com', '**********', '1992-02-20', 22, 12),
(18, 'Fabian', 'Cifuentes', '35475073296', 'fabian@yahoo.com', '**********', '1988-012-21', 23, 13),
(19, 'Paola', 'Galindo', '63542738108', 'paola@yahoo.com', '*********', '1995-12-07', 24, 14),
(20, 'Vanesa', 'Lara', '29384756200', 'vanesa@yahoo.com', '**********', '1993-04-04', 25, 15),
(21, 'Alejandro', 'Onatra', '47569098093', 'alejandro@yahoo.com', '**********', '1991-03-05', 26, 16),
(22, 'Ena', 'España', '30866438292', 'ena@yahooo.com', '**********', '1994-04-12', 27, 17),
(23, 'Manuel', 'Martinez', '46580957534', 'manuel@yahoo.com', '**********', '1996-06-21', 28, 18),
(24, 'Camilo', 'andrade', '47596087875', 'Camilo@yahoo.com', '**********', '1990-02-020', 29, 19),
(25, 'Jhon', 'Ayala', '65842071856', 'jhon@yahoo.com', '**********', '1990-09-26', 30, 20),
(26, 'Patricia', 'Duran', '84088055838', 'patricia@yahoo.com', '**********', '1991-007-14', 21, 11),
(27, 'Carlos', 'Yate', '2334039819', 'carlos@yahoo.com', '**********', '1989-11-11', 22, 12),
(28, 'Oscar', 'Ruiz', '20580023791', 'oscar@yahoo.com', '**********', '1993-09-27', 13, 3),
(29, 'Isabella', 'Ortega', '38826007727', 'isabellaortega@example.com', '**********', '1995-07-19', 14, 4),
(30, 'Alejandro', 'Lara', '57071991753', 'alejandrolara@example.com', '**********', '1994-04-11', 15, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries` (`countries_id`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments` (`departments_id`),
  ADD KEY `schools` (`schools_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
