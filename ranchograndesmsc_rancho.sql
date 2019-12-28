-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-04-2019 a las 22:49:44
-- Versión del servidor: 10.2.23-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ranchograndesmsc_rancho`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `imagen`, `titulo`, `orden`, `created_at`, `updated_at`) VALUES
(2, 'actividades__a1.jpg', 'Caminatas', 'aa', '2018-11-20 22:24:26', '2018-11-20 22:24:26'),
(3, 'actividades__a2.jpg', 'Cabalgatas', 'BB', '2018-11-20 22:24:34', '2018-11-20 22:24:34'),
(4, 'actividades__a3.jpg', 'Safari Fotográfico', 'CC', '2018-11-20 22:24:42', '2018-11-20 22:24:42'),
(5, 'actividades__a4.jpg', 'Masajes', 'DD', '2018-11-20 22:24:49', '2018-11-20 22:24:49'),
(6, 'actividades__penas icono.jpg', 'Peñas', 'ee', '2018-11-28 21:52:28', '2018-11-28 21:52:28'),
(8, 'actividades__juegos icono.jpg', 'Juegos para chicos', 'ff', '2018-11-28 21:57:56', '2018-11-28 21:57:56'),
(9, 'actividades__lectura icono.jpg', 'Living de lectura', 'gg', '2018-11-28 22:06:06', '2018-11-28 22:06:06'),
(10, 'actividades__miradoricono.jpg', 'Mirador a las Sierras', 'hh', '2018-11-28 22:10:31', '2018-12-20 14:08:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `imagen`, `titulo`, `subtitulo`, `texto`, `ruta`, `seccion`, `created_at`, `updated_at`) VALUES
(1, NULL, '¡Bienvenidos!', 'San Marcos Sierra, Córdoba', '<p style=\"text-align:center\">Nos encontramos en los m&aacute;gicos callejones de La Banda, una perfecta combinaci&oacute;n de naturaleza, aire puro y confort para un buen descanso. Atendido por sus due&ntilde;os.</p>\r\n\r\n<p style=\"text-align:center\">Las caba&ntilde;as permiten alojar de 2 a 5 personas (op. 6).</p>\r\n\r\n<p style=\"text-align:center\">Con encanto, dise&ntilde;o propio, luminosas, con vista a las sierras, rodeadas de pintorescas acequias, interminables callejones cubiertos de a&ntilde;ejos &aacute;rboles, garantizamos el mejor descanso.&nbsp;</p>', 'donde-estamos', 'home', '2018-11-16 21:24:56', '2018-11-28 22:19:57'),
(2, NULL, 'Descubrí un paraíso', 'El descanso que necesitás', '<p style=\"text-align:center\">Con una Iglesia del 1734 y otras casonas construidas en la &eacute;poca, est&aacute; ubicado en los senderos religiosamente cuidados de La Banda, San Marcos Sierras, en el norte de C&oacute;rdoba (entre Capilla del Monte y Cruz del Eje).</p>\r\n\r\n<p style=\"text-align:center\">A menos de 4 km del Pueblo&nbsp;con el incre&iacute;ble R&iacute;o Quilpo, cuyas aguas calmas y transparentes serpentean juguetonas enclavadas entre enormes paredes naturales.&nbsp;</p>', 'contacto', 'home', '2018-11-16 21:25:22', '2018-12-20 14:08:35'),
(3, NULL, 'Consultá por esta cabaña', '¡Se admiten mascotas!', '<p style=\"text-align:center\"><span style=\"color:#d16243\"><span style=\"font-size:22px\">&iexcl;Se admiten mascotas!</span></span></p>\r\n\r\n<p style=\"text-align:center\">Atendido por sus due&ntilde;os.<br />\r\nLas caba&ntilde;as permiten alojar de 2 a 5 personas (op. 6).</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\nCon encanto, dise&ntilde;o propio, luminosas, con vista a las sierras, rodeadas de pintorescas acequias, interminables callejones cubiertos de a&ntilde;ejos &aacute;rboles, garantizamos el mejor descanso.&nbsp;</p>', NULL, 'cabanas', '2018-11-16 21:33:14', '2018-11-28 21:25:25'),
(5, NULL, 'Servicios', 'Una perfecta combinación de naturaleza, aire puro y confort', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#d16243\"><span style=\"font-size:22px\">&iexcl;Se admiten mascotas!</span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#d16243\"><span style=\"font-size:22px\">&iexcl;Pileta con solarium humedo! Ideal para familias</span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Espacio de usos m&uacute;ltiples, integrado por quincho con living,</p>\r\n\r\n<p style=\"text-align:center\">TV, DVD, juegos para chicos y grandes,</p>\r\n\r\n<p style=\"text-align:center\">un lugar ideal para la lectura o una copa de vino.</p>\r\n\r\n<p style=\"text-align:center\">Desayuno Seco en caba&ntilde;a.</p>\r\n\r\n<p style=\"text-align:center\">Noches de pe&ntilde;as y comidas caseras.</p>\r\n\r\n<p style=\"text-align:center\">Mini proveedur&iacute;a en complejo.</p>\r\n\r\n<p style=\"text-align:center\">Estacionamiento cubierto.</p>\r\n\r\n<p style=\"text-align:center\">Opcional limpieza.</p>\r\n\r\n<p style=\"text-align:center\">Mirador a la sierras.</p>', NULL, 'servicios', '2018-11-16 21:52:15', '2018-11-30 20:30:01'),
(6, NULL, 'Videos', NULL, NULL, NULL, 'videos', '2018-11-16 21:56:28', '2018-11-26 18:43:50'),
(7, NULL, 'Galería', NULL, NULL, NULL, 'galerias', '2018-11-16 21:58:22', '2018-11-16 21:58:22'),
(8, NULL, 'Dónde Estamos', 'En los mágicos callejones de La Banda, San Marcos Sierra', '<p style=\"text-align:center\">Con una Iglesia del 1734 y otras casonas construidas en la &eacute;poca, est&aacute; ubicado en los senderos religiosamente cuidados de La Banda, San Marcos Sierras, en el norte de C&oacute;rdoba (entre Capilla del Monte y Cruz del Eje).</p>\r\n\r\n<p style=\"text-align:center\">A menos de 4 km del Complejo con el incre&iacute;ble R&iacute;o Quilpo, cuyas aguas calmas y transparentes serpentean juguetonas enclavadas entre enormes paredes naturales.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#d16243\">Tanta historia, tanto por descubrir en cada rinc&oacute;n...&nbsp;<br />\r\nDisfrut&aacute; de unos magn&iacute;ficos paseos al r&iacute;o, Caminatas y Trekking</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:28px\"><strong><span style=\"color:#d35400\">IMPORTANTE</span></strong></span></p>\r\n\r\n<p style=\"text-align:center\">NO DEJARSE TENTAR CON EL GPS, NI POR LOS CARTELES QUE INVITAN A LLEGAR A SAN MARCOS EN: LA CUMBRE, CAPILLA DEL MONTE &Oacute; CHARBONIER (SON CAMINOS DE TIERRA Y SIERRAS)</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><u><span style=\"color:#e74c3c\">LLEGAR HASTA EL<span style=\"font-size:18px\"><strong> KM 112,5 </strong></span>DE LA RUTA NAC. 38, ALL&Iacute; ESTA EL CRUCE Y EL EMPALME QUE LLEGA HASTA EL PUEBLO POR ASFALTO!!!</span></u></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', NULL, 'donde-estamos', '2018-11-16 21:59:28', '2018-12-27 18:40:55'),
(9, NULL, 'Acepto los términos y condiciones de privacidad', 'Términos y condiciones de privacidad', '<p>Acepto los t&eacute;rminos y condiciones de privacidad</p>', NULL, 'condiciones', '2018-11-16 22:06:56', '2018-11-16 22:06:56'),
(10, NULL, 'Contacto', 'Complete el formulario y nos contactaremos a la brevedad', 'Términos y Condiciones de Privacidad', NULL, 'contacto', '2018-11-16 22:17:11', '2018-11-25 16:56:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `tipo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'correo', 'ranchograndesms@gmail.com', 'AA', NULL, '2018-11-14 20:25:45'),
(2, 'direccion', 'Callejón s/s, La banda San Marcos Sierras, Córdoba', 'BB', NULL, '2018-11-14 20:26:21'),
(3, 'telefono', '(+54 11) 6137-6714', '123', NULL, '2018-11-28 20:58:10'),
(4, 'whatsapp1', '+54 (11) 6137-7073', 'DD', NULL, '2018-11-30 20:33:16'),
(5, 'whatsapp2', '+54 (11) 3231-9383', 'EE', NULL, '2018-11-30 20:33:40'),
(6, 'mapa', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3428.3169524166224!2d-64.64792028469803!3d-30.765682572156823!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x942debbe18434dcb%3A0xa5e31e3e303f6b40!2sCaba%C3%B1as+Rancho+Grande!5e0!3m2!1ses!2sar!4v1543233342326', 'AA', NULL, '2018-11-26 14:57:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE `destacados` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`id`, `imagen`, `titulo`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'destacados__las-cabanas-destacado-1.jpg', 'Las Cabañas', 'cabañas', 'AA', NULL, '2018-12-04 21:22:24'),
(2, 'destacados__d2.jpg', 'Servicios', 'servicios', 'BB', NULL, '2018-11-28 22:22:32'),
(3, 'destacados__d3.jpg', 'Contacto', 'contacto', 'CC', NULL, '2018-11-28 22:22:38'),
(4, 'destacados__d4.jpg', 'Galería', 'galerias', 'DD', NULL, '2018-11-28 22:23:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icabanas`
--

CREATE TABLE `icabanas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `icabanas`
--

INSERT INTO `icabanas` (`id`, `titulo`, `subtitulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(3, 'Olivo', 'De 2 a 5 personas', '<p><span style=\"color:#e5613f\"><em>&quot;Sus colores nos transportan al noble aroma de los frutos de los olivares que nuestra comarca nos ofrece y el disfrute de sus m&aacute;s naturales alimentos...&quot;</em></span></p>\r\n\r\n<p>Habitaci&oacute;n con somier matrimonial, ante ba&ntilde;o, ba&ntilde;o. Estar comedor con cocina integrada con dos sof&aacute; cama y un carro cama.<br />\r\n<br />\r\nNos encontramos en los m&aacute;gicos callejones de La Banda, una perfecta combinaci&oacute;n de naturaleza, aire puro y confonrt para un buen descanso. Atendido por sus due&ntilde;os.&nbsp;</p>\r\n\r\n<p><br />\r\nLas caba&ntilde;as permiten alojar de 2 a 5 personas (opcional 6).</p>\r\n\r\n<p>Luminosos ambientes, con techos&nbsp;madera. Ventanales con vistas fabulosas de las sierras.</p>\r\n\r\n<p>Con encanto, dise&ntilde;o propio, luminosas, con vista a las sierras, rodeadas de pintorescas acequias, interminables callejones cubiertos de a&ntilde;ejos &aacute;rboles, garantizamos el mejor descanso.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e5613f\">Comodidades</span><br />\r\n- Cocina Equipada, heladera con freezer y cocina con horno,&nbsp;utensilios y vajilla completa<br />\r\n- Desayunador y taburetes<br />\r\n- Servicio de TV Cable e Internet WiFi y Radio Grabador con USB<br />\r\n- Habitaci&oacute;n con somier. Servicio de blanco completo<br />\r\n- Opcional Desayuno Regional Seco en Caba&ntilde;a&nbsp;<br />\r\n- Ventilador / Calefacci&oacute;n<br />\r\n-&nbsp;Parrilla con fog&oacute;n</p>', 'EE', '2018-11-21 15:03:46', '2018-11-29 22:55:44'),
(4, 'Jacarandá', 'De 2 a 5 personas', '<p><span style=\"color:#e5613f\"><em>&quot;So&ntilde;ar color lila-celeste, nuestras calles se transforman, como en cada octubre, en alfombras con sus flores...&quot;</em></span></p>\r\n\r\n<p>Habitaci&oacute;n con somier matrimonial, ante ba&ntilde;o, ba&ntilde;o. Estar comedor con cocina integrada con dos sof&aacute; cama y un carro cama.<br />\r\n&nbsp;</p>\r\n\r\n<p>Nos encontramos en los m&aacute;gicos callejones de La Banda, una perfecta combinaci&oacute;n de naturaleza, aire puro y confonrt para un buen descanso. Atendido por sus due&ntilde;os.&nbsp;</p>\r\n\r\n<p><br />\r\nLas caba&ntilde;as permiten alojar de 2 a 5 personas (opcional 6).</p>\r\n\r\n<p>Luminosos ambientes, con techos&nbsp;madera. Ventanales con vistas fabulosas de las sierras.</p>\r\n\r\n<p>Con encanto, dise&ntilde;o propio, luminosas, con vista a las sierras, rodeadas de pintorescas acequias, interminables callejones cubiertos de a&ntilde;ejos &aacute;rboles, garantizamos el mejor descanso.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e5613f\">Comodidades</span><br />\r\n- Cocina Equipada, heladera con freezer y cocina con horno,&nbsp;utensilios y vajilla completa<br />\r\n- Desayunador y taburetes<br />\r\n- Servicio de TV Cable e Internet WiFi y Radio Grabador con USB<br />\r\n- Habitaci&oacute;n con somier. Servicio de blanco completo<br />\r\n- Opcional Desayuno Regional Seco en Caba&ntilde;a&nbsp;<br />\r\n- Ventilador / Calefacci&oacute;n<br />\r\n-&nbsp;Parrilla con fog&oacute;n</p>', 'BB', '2018-11-21 15:04:14', '2018-11-29 22:59:33'),
(5, 'Aromo', 'De 2 a 5 personas', '<p><span style=\"color:#e5613f\"><em>&quot;Te entrega energ&iacute;a positiva del amarillo intenso de los aromillos en flor, alegr&iacute;a para el alma, luz para cada amanecer...&quot;</em></span><br />\r\n<br />\r\nHabitaci&oacute;n con somier matrimonial, ante ba&ntilde;o, ba&ntilde;o. Estar comedor con cocina integrada con dos sof&aacute; cama y un carro cama.</p>\r\n\r\n<p>Nos encontramos en los m&aacute;gicos callejones de La Banda, una perfecta combinaci&oacute;n de naturaleza, aire puro y confonrt para un buen descanso. Atendido por sus due&ntilde;os.&nbsp;</p>\r\n\r\n<p><br />\r\nLas caba&ntilde;as permiten alojar de 2 a 5 personas (opcional 6).</p>\r\n\r\n<p>Luminosos ambientes, con techos&nbsp;madera. Ventanales con vistas fabulosas de las sierras.</p>\r\n\r\n<p>Con encanto, dise&ntilde;o propio, luminosas, con vista a las sierras, rodeadas de pintorescas acequias, interminables callejones cubiertos de a&ntilde;ejos &aacute;rboles, garantizamos el mejor descanso.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e5613f\">Comodidades</span><br />\r\n- Cocina Equipada, heladera con freezer y cocina con horno, utensilios y vajilla completa<br />\r\n- Desayunador y taburetes<br />\r\n- Servicio de TV Cable e Internet WiFi y Radio Grabador con USB<br />\r\n- Habitaci&oacute;n con somier. Servicio de blanco completo<br />\r\n- Opcional Desayuno Regional Seco en Caba&ntilde;a&nbsp;<br />\r\n- Ventilador / Calefacci&oacute;n<br />\r\n-&nbsp;Parrilla con fog&oacute;n.</p>', 'CC', '2018-11-21 15:05:16', '2018-11-29 22:50:55'),
(6, 'Algarrobo', 'De 2 a 5 personas', '<p><span style=\"color:#e5613f\"><em>&quot;Generoso con sus vainas color casta&ntilde;o, el pueblo comeching&oacute;n lo llamo &quot;El &Aacute;rbol&quot; porque todo lo que puede dar lo tienen: sombra, frutos, dulce, harina y su le&ntilde;a...&quot;</em></span></p>\r\n\r\n<p>Habitaci&oacute;n con somier matrimonial, ante ba&ntilde;o, ba&ntilde;o. Estar comedor con cocina integrada con dos sof&aacute; cama y un carro cama.</p>\r\n\r\n<p>Nos encontramos en los m&aacute;gicos callejones de La Banda, una perfecta combinaci&oacute;n de naturaleza, aire puro y confonrt para un buen descanso. Atendido por sus due&ntilde;os.&nbsp;<br />\r\nLas caba&ntilde;as permiten alojar de 2 a 5 personas (opcional 6).</p>\r\n\r\n<p>Luminosos ambientes, con techos&nbsp;madera. Ventanales con vistas fabulosas de las sierras.</p>\r\n\r\n<p>Con encanto, dise&ntilde;o propio, luminosas, con vista a las sierras, rodeadas de pintorescas acequias, interminables callejones cubiertos de a&ntilde;ejos &aacute;rboles, garantizamos el mejor descanso.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e5613f\">Comodidades</span><br />\r\n- Cocina Equipada, heladera con freezer y cocina con horno,&nbsp;utensilios y vajilla completa<br />\r\n- Desayunador y taburetes<br />\r\n- Servicio de TV Cable e Internet WiFi y Radio Grabador con USB<br />\r\n- Habitaci&oacute;n con somier. Servicio de blanco completo<br />\r\n- Opcional Desayuno Regional Seco en Caba&ntilde;a&nbsp;<br />\r\n- Ventilador / Calefacci&oacute;n<br />\r\n-&nbsp;Parrilla con fog&oacute;n</p>', 'DD', '2018-11-21 15:05:33', '2018-11-29 22:53:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `igalerias`
--

CREATE TABLE `igalerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cabana` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `igalerias`
--

INSERT INTO `igalerias` (`id`, `imagen`, `orden`, `id_cabana`, `created_at`, `updated_at`) VALUES
(1, 'galerias__olivo-1a.jpg', 'olivoa', 3, '2018-11-21 16:01:12', '2018-11-29 16:10:14'),
(8, 'galerias__jacara-1a.jpg', 'jacarana', 4, '2018-11-21 16:02:50', '2018-11-29 15:44:56'),
(11, 'galerias__algarrobo-a1.JPG', 'algarroboa', 6, '2018-11-29 14:52:26', '2018-11-29 14:52:26'),
(12, 'galerias__algarrobo-b2.JPG', 'algarrobob', 6, '2018-11-29 14:52:42', '2018-11-29 14:52:42'),
(13, 'galerias__algarrobo-c3.JPG', 'algarroboc', 6, '2018-11-29 14:52:53', '2018-11-29 14:52:53'),
(14, 'galerias__algarrobo-d4.JPG', 'algarrobod', 6, '2018-11-29 14:53:06', '2018-11-29 14:53:06'),
(15, 'galerias__algarrobo-e5.JPG', 'algarroboe', 6, '2018-11-29 14:53:47', '2018-11-29 14:53:47'),
(16, 'galerias__algarrobo-f6.JPG', 'algarrobof', 6, '2018-11-29 14:54:47', '2018-11-29 14:54:47'),
(17, 'galerias__algarrobo-g7.JPG', 'algarrobog', 6, '2018-11-29 14:54:57', '2018-11-29 14:54:57'),
(18, 'galerias__algarrobo-h8.JPG', 'algarroboh', 6, '2018-11-29 14:55:06', '2018-11-29 14:55:06'),
(19, 'galerias__algarrobo-i9.JPG', 'algarroboi', 6, '2018-11-29 14:55:18', '2018-11-29 14:55:18'),
(20, 'galerias__algarrobo-j10.JPG', 'algarroboi', 6, '2018-11-29 14:55:35', '2018-11-29 14:55:35'),
(21, 'galerias__algarrobo-k11.JPG', 'algarrobok', 6, '2018-11-29 14:55:49', '2018-11-29 14:55:49'),
(22, 'galerias__algarrobo-l12.JPG', 'algarrobol', 6, '2018-11-29 14:56:05', '2018-11-29 14:56:05'),
(23, 'galerias__algarrobo-m13.JPG', 'algarrobom', 6, '2018-11-29 14:56:32', '2018-11-29 14:56:32'),
(24, 'galerias__aromo1a.jpg', 'aromoa', 5, '2018-11-29 15:21:58', '2018-11-29 15:21:58'),
(25, 'galerias__aromo2b.jpg', 'aromob', 5, '2018-11-29 15:22:10', '2018-11-29 15:22:10'),
(26, 'galerias__aromo3c.jpg', 'aromoc', 5, '2018-11-29 15:22:23', '2018-11-29 15:22:23'),
(27, 'galerias__aromo4d.jpg', 'aromod', 5, '2018-11-29 15:22:32', '2018-11-29 15:22:32'),
(28, 'galerias__aromo5e.jpg', 'aromoe', 5, '2018-11-29 15:22:38', '2018-11-29 15:22:38'),
(29, 'galerias__aromo6f.jpg', 'aromof', 5, '2018-11-29 15:22:48', '2018-11-29 15:22:48'),
(30, 'galerias__aromo7g.jpg', 'aromog', 5, '2018-11-29 15:25:25', '2018-11-29 15:25:25'),
(31, 'galerias__aromo8h.jpg', 'aromoh', 5, '2018-11-29 15:25:42', '2018-11-29 15:25:42'),
(32, 'galerias__aromo9i.jpg', 'aromoi', 5, '2018-11-29 15:25:54', '2018-11-29 15:25:54'),
(33, 'galerias__aromo10j.jpg', 'aromoj', 5, '2018-11-29 15:28:03', '2018-11-29 15:28:03'),
(34, 'galerias__jacara-2b.jpg', 'jacaranb', 4, '2018-11-29 15:49:15', '2018-11-29 15:49:15'),
(35, 'galerias__jacara-3c.jpg', 'jacaranc', 4, '2018-11-29 15:49:24', '2018-11-29 15:49:24'),
(36, 'galerias__jacara-4d.jpg', 'jacarand', 4, '2018-11-29 15:49:37', '2018-11-29 15:49:37'),
(37, 'galerias__jacara-5e.jpg', 'jacarane', 4, '2018-11-29 15:49:47', '2018-11-29 15:49:47'),
(38, 'galerias__jacara-6f.jpg', 'jacaranf', 4, '2018-11-29 15:50:02', '2018-11-29 15:50:02'),
(39, 'galerias__jacara-7g.jpg', 'jacarang', 4, '2018-11-29 15:50:35', '2018-11-29 15:50:35'),
(40, 'galerias__jacara-9i.jpg', 'jacarani', 4, '2018-11-29 15:50:48', '2018-11-29 15:50:48'),
(41, 'galerias__jacara-10j.jpg', 'jacaranj', 4, '2018-11-29 15:51:02', '2018-11-29 15:51:02'),
(42, 'galerias__jacara-11k.jpg', 'jacarank', 4, '2018-11-29 15:51:20', '2018-11-29 15:51:20'),
(43, 'galerias__jacara-12l.jpg', 'jacaranl', 4, '2018-11-29 15:51:29', '2018-11-29 15:51:29'),
(44, 'galerias__olivo-2b.jpg', 'olivob', 3, '2018-11-29 16:12:42', '2018-11-29 16:12:42'),
(45, 'galerias__olivo-3c.jpg', 'olivoc', 3, '2018-11-29 16:12:51', '2018-11-29 16:12:51'),
(46, 'galerias__olivo-4d.jpg', 'olivod', 3, '2018-11-29 16:13:19', '2018-11-29 16:13:19'),
(47, 'galerias__olivo-7g.jpg', 'olivog', 3, '2018-11-29 16:23:26', '2018-11-29 16:23:26'),
(48, 'galerias__olivo-6f.jpg', 'olivof', 3, '2018-11-29 16:23:44', '2018-11-29 16:23:44'),
(49, 'galerias__olivo-8h.jpg', 'olivoh', 3, '2018-11-29 16:23:56', '2018-11-29 16:23:56'),
(50, 'galerias__olivo-9i.jpg', 'olivoi', 3, '2018-11-29 16:24:04', '2018-11-29 16:24:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `tipo`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'header', 'logos__prueba-02-01.png', 'AA', NULL, '2018-12-19 22:24:19'),
(2, 'footer', 'logos__logo final footer-01.png', 'BB', NULL, '2018-12-19 22:20:07'),
(3, 'favicon', 'logos__favicon final-01.png', 'AA', NULL, '2018-12-19 22:21:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `texto`, `keyword`, `orden`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', 'AA', 'Home', NULL, '2018-11-14 22:40:07'),
(2, 'Cabanas', 'Cabanas', 'BB', 'Cabanas', NULL, '2018-11-14 22:40:57'),
(3, 'Servicios', 'Servicios', 'CC', 'Servicios', NULL, '2018-11-14 22:41:05'),
(4, 'Videos', 'Videos', 'DD', 'Videos', NULL, '2018-11-14 22:41:11'),
(5, 'Galeria', 'Galeria', 'EE', 'Galerias', NULL, '2018-11-14 22:41:16'),
(6, 'DondeEstamos', 'DondeEstamos', 'FF', 'donde-estamos', NULL, '2018-11-14 22:41:22'),
(7, 'Contacto', 'Contacto', 'GG', 'Contacto', NULL, '2018-11-14 22:41:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_11_13_181909_create_contenidos_table', 1),
(3, '2018_11_13_181923_create_sliders_table', 1),
(4, '2018_11_13_181935_create_destacados_table', 1),
(5, '2018_11_13_182003_create_redes_table', 1),
(6, '2018_11_13_182016_create_datos_table', 1),
(7, '2018_11_13_182027_create_logos_table', 1),
(8, '2018_11_13_182120_create_icabanas_table', 1),
(9, '2018_11_13_182204_create_igalerias_table', 1),
(10, '2018_11_13_182223_create_actividades_table', 1),
(11, '2018_11_13_182419_create_vcategorias_table', 1),
(12, '2018_11_13_185336_create_vgalerias_table', 1),
(13, '2018_11_14_181935_create_metadatos_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `icon`, `ruta`, `imagen`, `titulo`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-square', 'https://www.facebook.com/ethel64/', NULL, 'Facebook', 'AA', '2018-11-22 22:01:59', '2018-11-28 21:05:50'),
(2, 'fab fa-instagram', 'https://www.instagram.com/ranchograndesms/', NULL, 'Instagram', 'BB', '2018-11-22 22:17:08', '2018-11-28 21:07:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `imagen`, `titulo`, `subtitulo`, `orden`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'sliders__home.jpg', '<p>Perfecta combinaci&oacute;n</p>', '<p>Naturaleza + Confort</p>', 'AA', 'home', '2018-11-15 20:36:01', '2018-11-15 20:36:01'),
(2, 'sliders__empresa.jpg', '<p>Disfrut&aacute; de</p>', '<p>Nuestro Para&iacute;so</p>', 'AA', 'cabanas', '2018-11-15 20:36:43', '2018-11-15 20:36:43'),
(3, 'sliders__servicios.jpg', NULL, NULL, 'AA', 'servicios', '2018-11-15 20:37:02', '2018-11-15 20:37:02'),
(4, 'sliders__servicios.jpg', NULL, NULL, 'AA', 'videos', '2018-11-15 20:37:16', '2018-11-15 20:37:16'),
(5, 'sliders__galeria.jpg', NULL, NULL, 'AA', 'galeria', '2018-11-15 20:37:38', '2018-11-15 20:37:38'),
(7, 'sliders__contacto.jpg', NULL, NULL, 'AA', 'contacto', '2018-11-15 20:38:06', '2018-11-16 22:38:46'),
(12, 'sliders__galeria.jpg', NULL, NULL, 'AA', 'galerias', '2018-11-16 22:12:35', '2018-11-16 22:12:35'),
(14, 'sliders__donde-estamos.jpg', NULL, NULL, 'AA', 'donde-estamos', '2018-11-16 22:40:11', '2018-11-16 22:40:11'),
(15, 'sliders__slider_01.jpg', '<p><span style=\"color:#ffffff\">Perfecta Combinaci&oacute;n</span></p>', '<p><span style=\"color:#ffffff\">Naturaleza + Confort</span></p>', 'aa', 'home', '2018-11-28 22:34:45', '2018-11-28 22:40:12'),
(16, 'sliders__slider_02.jpg', NULL, NULL, 'bb', 'home', '2018-11-28 22:36:58', '2018-11-28 22:36:58'),
(17, 'sliders__slider_04.jpg', NULL, NULL, 'dd', 'home', '2018-11-28 22:39:08', '2018-11-28 22:39:08'),
(18, 'sliders__slider_05.jpg', NULL, NULL, 'ee', 'home', '2018-11-28 22:41:22', '2018-11-28 22:41:22'),
(19, 'sliders__slider_06.jpg', NULL, NULL, 'ff', 'home', '2018-11-28 22:43:02', '2018-11-28 22:43:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'carlos', 'carlos', NULL, NULL, '$2y$10$0JuwjuvnRrBvCYhwHszaIOYhCq.rNqGVYPTERZqLnmnxpKPqX6i4S', 'i2LaObUA8gfmWAgtZOyHBe0rZ2uS1XT18Gj8wmvR3NH1zCxKR3yZtcMMhdFe', '2018-11-14 15:12:46', '2018-11-14 15:12:46'),
(2, 'pablo', 'pablo', NULL, NULL, '$2y$10$LmUjvS.6H.ZiyFfh.43uJOkN00VxaAcTwk4Lj7JJwSBFqE4sHLBam', 'RgGYZwFJoypb7nl5L99dvz9OxrO7BTdFEIqLKR5nXQ7NoH8ZtKx57ALBuFSq', '2018-11-14 17:10:35', '2018-11-14 17:10:35'),
(3, 'Ethel', 'ethel64', NULL, NULL, '$2y$10$.a2mNkDyNUe1FfhMoMSjBeDNvPFW1afFoeksD.7SnsTdfVuTPtnsG', NULL, '2018-11-30 20:47:47', '2018-11-30 20:47:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vcategorias`
--

CREATE TABLE `vcategorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vcategorias`
--

INSERT INTO `vcategorias` (`id`, `titulo`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Servicios', 'AA', '2018-11-21 16:11:23', '2018-11-21 16:11:23'),
(2, 'Galpón de Chañar', 'BB', '2018-11-21 16:11:31', '2018-11-29 14:15:08'),
(3, 'Exterior', 'CC', '2018-11-21 16:11:38', '2018-11-29 14:10:22'),
(4, 'El Pueblo', 'DD', '2018-11-21 16:11:41', '2018-11-28 22:49:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vgalerias`
--

CREATE TABLE `vgalerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vgalerias`
--

INSERT INTO `vgalerias` (`id`, `imagen`, `orden`, `id_categoria`, `created_at`, `updated_at`) VALUES
(14, 'galerias__pueblo001.jpg', 'aa', 4, '2018-11-28 22:49:58', '2018-11-28 22:49:58'),
(15, 'galerias__pueblo002.jpg', 'bb', 4, '2018-11-28 22:50:05', '2018-11-28 22:50:05'),
(16, 'galerias__pueblo003.jpg', 'cc', 4, '2018-11-28 22:50:16', '2018-11-28 22:50:16'),
(17, 'galerias__pueblo004.jpg', 'dd', 4, '2018-11-28 22:53:18', '2018-11-28 22:53:18'),
(18, 'galerias__pueblo005.jpg', 'ee', 4, '2018-11-28 22:54:01', '2018-11-29 14:31:10'),
(19, 'galerias__pueblo006.jpg', 'ff', 4, '2018-11-28 22:55:42', '2018-11-29 14:31:21'),
(20, 'galerias__pueblo007.jpg', 'gg', 4, '2018-11-28 22:56:08', '2018-11-29 14:31:30'),
(21, 'galerias__pueblo008.jpg', 'hh', 4, '2018-11-28 22:56:24', '2018-11-29 14:31:50'),
(22, 'galerias__pueblo009.jpg', 'ii', 4, '2018-11-28 22:56:36', '2018-11-29 14:32:03'),
(23, 'galerias__exterior-001.jpg', 'aa', 3, '2018-11-29 14:11:03', '2018-11-29 14:32:08'),
(24, 'galerias__exterior-002.jpg', 'bb', 3, '2018-11-29 14:11:58', '2018-11-29 14:32:15'),
(25, 'galerias__exterior-003.jpg', 'cc', 3, '2018-11-29 14:12:07', '2018-11-29 14:32:19'),
(26, 'galerias__exterior-004.jpg', 'dd', 3, '2018-11-29 14:12:17', '2018-11-29 14:32:24'),
(27, 'galerias__exterior-005.jpg', 'ee', 3, '2018-11-29 14:12:26', '2018-11-29 14:32:28'),
(28, 'galerias__exterior-006.jpg', 'ff', 3, '2018-11-29 14:12:46', '2018-11-29 14:32:36'),
(29, 'galerias__exterior-007.jpg', 'gg', 3, '2018-11-29 14:13:34', '2018-11-29 14:32:41'),
(30, 'galerias__exterior-008.jpg', 'hh', 3, '2018-11-29 14:13:44', '2018-11-29 14:32:46'),
(31, 'galerias__exterior-009.jpg', 'ii', 3, '2018-11-29 14:13:54', '2018-11-29 14:32:51'),
(32, 'galerias__galpon-a.jpg', 'aa', 2, '2018-11-29 14:22:08', '2018-11-29 14:32:56'),
(33, 'galerias__galpon-b.jpg', 'bb', 2, '2018-11-29 14:22:18', '2018-11-29 14:33:00'),
(34, 'galerias__galpon-c.jpg', 'cc', 2, '2018-11-29 14:24:20', '2018-11-29 14:33:04'),
(35, 'galerias__galpon-d.jpg', 'dd', 2, '2018-11-29 14:24:30', '2018-11-29 14:33:09'),
(36, 'galerias__galpon-e.jpg', 'ee', 2, '2018-11-29 14:24:47', '2018-11-29 14:33:14'),
(37, 'galerias__galpon-f.jpg', 'ff', 2, '2018-11-29 14:24:57', '2018-11-29 14:40:33'),
(38, 'galerias__galpon-g.jpg', 'gg', 2, '2018-11-29 14:25:10', '2018-11-29 14:40:40'),
(39, 'galerias__galpon-h.jpg', 'hh', 2, '2018-11-29 14:25:21', '2018-11-29 14:40:45'),
(40, 'galerias__galpon-i.jpg', 'ii', 2, '2018-11-29 14:25:38', '2018-11-29 14:40:50'),
(41, 'galerias__servicios-a.jpg', 'sera', 1, '2018-11-29 16:38:50', '2018-11-29 16:38:50'),
(42, 'galerias__servicios-b.jpg', 'serb', 1, '2018-11-29 16:39:03', '2018-11-29 16:39:03'),
(43, 'galerias__servicios-c.jpg', 'serc', 1, '2018-11-29 16:39:09', '2018-11-29 16:39:09'),
(44, 'galerias__servicios-d.jpg', 'serd', 1, '2018-11-29 16:39:14', '2018-11-29 16:39:14'),
(45, 'galerias__servicios-e.jpg', 'sere', 1, '2018-11-29 16:39:20', '2018-11-29 16:39:20'),
(46, 'galerias__servicios-f.jpg', 'serf', 1, '2018-11-29 16:39:25', '2018-11-29 16:39:25'),
(47, 'galerias__servicios-g.jpg', 'serg', 1, '2018-11-29 16:39:35', '2018-11-29 16:39:35'),
(48, 'galerias__servicios-h.jpg', 'serh', 1, '2018-11-29 16:39:42', '2018-11-29 16:39:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `video`, `orden`, `created_at`, `updated_at`) VALUES
(2, 'E4AGcdSFs4I', 'AA', '2018-11-20 21:09:20', '2018-11-20 21:09:20'),
(3, 'Z1CQfEE7GWQ', 'bb', '2018-11-28 22:01:51', '2018-11-28 22:01:51'),
(5, 'KuauVvHb-l0', 'cc', '2018-12-03 17:13:27', '2018-12-03 17:13:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `icabanas`
--
ALTER TABLE `icabanas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `igalerias`
--
ALTER TABLE `igalerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `igalerias_id_cabana_foreign` (`id_cabana`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vcategorias`
--
ALTER TABLE `vcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vgalerias`
--
ALTER TABLE `vgalerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vgalerias_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `icabanas`
--
ALTER TABLE `icabanas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `igalerias`
--
ALTER TABLE `igalerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vcategorias`
--
ALTER TABLE `vcategorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vgalerias`
--
ALTER TABLE `vgalerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `igalerias`
--
ALTER TABLE `igalerias`
  ADD CONSTRAINT `igalerias_id_cabana_foreign` FOREIGN KEY (`id_cabana`) REFERENCES `icabanas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vgalerias`
--
ALTER TABLE `vgalerias`
  ADD CONSTRAINT `vgalerias_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `vcategorias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
