-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql2:3306
-- Tiempo de generación: 03-10-2023 a las 12:24:04
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prevesuy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anios`
--

CREATE TABLE `anios` (
  `id` int NOT NULL,
  `año` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `anios`
--

INSERT INTO `anios` (`id`, `año`) VALUES
(1, '2022'),
(2, '2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contador`
--

CREATE TABLE `Contador` (
  `ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Contador`
--

INSERT INTO `Contador` (`ID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuadernocampo`
--

CREATE TABLE `cuadernocampo` (
  `id` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `asunto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Descripción` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `imageid` int NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuadernocampo`
--

INSERT INTO `cuadernocampo` (`id`, `fecha`, `asunto`, `Descripción`, `imageid`) VALUES
(1, '2023-05-18', 'Diseño', 'Se piensan, analizan y  discuten posibles diseños para la pagina y optamos por elegir uno como estructura base.', 0),
(2, '2023-05-03', 'Creación del grupo de investigación', 'Se crea el grupo de trabajo integrado por: Josié Matonte, Jonás Matonte, Gonzalo Fernández, Felipe Islas, José Marzoa.\r\n\r\nTras pensar qué tema podríamos investigar para presentar, se eligió como temática para la investigación la “prevención de suicidios en Uruguay”. Este tema venía siendo estudiado desde el año previo, cuando la comisión de prevención de suicidios departamental se acercó a nuestra institución con una idea para la creación de una página web que provea de información a la gente y ayude a las personas en situación de vulnerabilidad. Se le solicitó al docente Christopher Rodríguez su participación como nuestro profesor a cargo de llevar a cabo esta investigación.\r\n', -1),
(3, '2023-05-10', 'Encuesta', 'Se Realizó un borrador para una encuesta en formato de papel que se le hará a múltiples psicólogos que podamos contactar.', -1),
(4, '2023-05-13', 'Edicion de encuestra', 'Pasamos las preguntas pensadas para los psicólogos a un formulario de Google para facilitar la difusión y llegar a la máxima cantidad de psicólogos posibles.', -1),
(5, '2023-05-31', 'Búsqueda', 'Se busca información acerca de los índices de suicidios a nivel nacional en múltiples páginas, esto siendo realizado de manera virtual.', -1),
(6, '2023-06-06', 'Nombre y Logo', 'Se realiza una reunión (de manera presencial en la institución) donde ponemos en discusión el nombre del proyecto y el logo del mismo.\r\nSe define por unanimidad mantener el nombre “PreveSUy” proveniente de los inicios del proyecto el año previo.', 7),
(7, '2023-06-06', 'Tareas', 'Identificamos tareas inconclusas y comenzamos a completarlas, proponemos para consultar en el “Ministerio de Salud Pública” (MSP).', -1),
(8, '2023-06-07', 'Solicitud y Diseño', 'Solicitamos una reunión con el director departamental de salud para resolver nuestras consultas.\r\nSe mejoraron los diseños preliminares del logo, se pensaron los colores que se utilizaran en este y elementos representativos para inspirar al diseñador.', -1),
(9, '2023-06-09', 'Ajustes', 'Se analiza el código para un testeo en búsqueda de errores a solucionar.\r\n\r\nSe arreglan los errores y se crea una base de datos para almacenar preguntas para un test, datos de los índices e información que se implementara en la página.\r\n\r\nSe arreglan detalles funcionales del test y detalles estéticos del logo.\r\n\r\nSe discute la implementación de un sistema de noticias, el cual es aceptado por todos los miembros del equipo y se le da un espacio de almacenamiento en la base de datos.\r\n\r\nSe empieza a definir una paleta de colores para implementar en la página basándonos en los colores de logo.\r\n\r\nSe finaliza la edición de la encuesta para los psicólogos y comienza la difusión. ', -1),
(10, '2023-06-12', 'Ministerio de Salud', 'Fuimos a tener una reunión en la oficina del ministerio de salud donde hablamos con Andres Grezzi (director departamental de salud). Se habló sobre la importancia y aporte de nuestra página a la sociedad, la importancia del tema que estamos abarcando y solicitamos acceso a información para implementar en nuestro sitio web.', -1),
(11, '2023-06-13', 'Reunión con Cardarello', 'Nos reunimos con Eduardo Cardarello (psicólogo de nuestro departamento integrante de la mesa de prevención de suicidios) donde se le mostró un avance del proyecto y se habló de como avanzaría el proyecto en adelante, nos expuso sus opiniones acerca de lo ya hecho de las cuales tomamos cosas para mejorar y otras para mantener.\r\n', -1),
(12, '2023-06-14', 'Definición y Análisis', 'Se analizó una recomendación de Cardarello respecto al texto que referencia los botones, tras un debate decidimos modificarlos en base a la recomendación de que no fueran muy coloquiales.\r\n\r\nSe revisaron las posiciones de las secciones y su forma de implementación, debatimos donde creíamos que era conveniente ubicarlas y decidimos dejarlas donde estaban predefinidas originalmente.\r\n\r\nSe hicieron inserciones de datos en la base de datos a modo de prueba y solucionamos errores en la muestra de estos.', -1),
(13, '2023-06-16', 'Respuestas', 'Recibimos respuestas de la encuesta realizada a un grupo de psicólogos, las analizamos y almacenamos para tenerlas en cuenta.', -1),
(14, '2023-06-20', 'Testimonios de prueba y retomamos las respuestas de psicologos', 'Tomamos opiniones de las respuestas dadas por los psicólogos acerca de la implementación de testimonios voluntarios, creamos una tabla en la base de datos para almacenarlos y mostrarlos en el futuro, creamos testimonios de prueba para comprobar la funcionalidad de la sección y arreglar los errores que surgiesen.', -1),
(15, '2023-06-21', 'Arreglos técnicos', 'Nos tomamos la reunión para observar todas las funcionalidades nuevamente en búsqueda de errores a corregir, también verificamos la base de datos y su funcionamiento.\r\n', -1),
(16, '2023-06-23', 'Testimonios', 'Se repiensa la distribución de la sección de los testimonios, se decidió modificar la sección “¿Sabías esto?”, dividiéndola en dos partes y distribuimos la información. Se hizo una votación sobre como se verá la interfaz, la información a mostrar y su guardado en la base de datos. Pensamos formas en las que mostrar los centros de ayuda con su respectivo contacto e información relevante.\r\n', -1),
(17, '2023-06-29', 'Diagrama de base de datos', 'Se diagraman las relaciones y cardinalidad de la base de datos en búsqueda de alguna falla de diseño y verificación de relación. Se mejoró el diseño de los gráficos, se hace el gestor de tasas para la inserción de datos y se crean los botones referentes a los gráficos.\r\n', -1),
(18, '2023-08-01', 'Prueba y busqueda para el boton', 'Se introdujo otro testimonio y se buscó imágenes para scroll, se creó el botón “!UP” para subir al inicio de la página, se colocó el nombre de los departamentos en los gráficos.', -1),
(19, '2023-08-02', 'Edición y Arreglos', 'Se quitó la animación al recargar la página, se arreglaron algunos bugs, se separaron algunos \"sabías que\", que estaban juntos en un mismo dato en centros, Se arregló que se rompiera la estructura al hacer Zoom, se cambió de \"¿quiénes me apoyan?\" A \"donde puedo pedir ayuda\" Se creó una tabla nueva llamada \"usuarios permitidos\" para un sistema de seguridad en el panel de control al cual se le creó un login.\r\n', -1),
(20, '2023-08-08', 'Implementacion de Videos', 'Se piensa y define donde implementar los videos para que sean accesibles y se planificó el diseño de la sección donde mencionamos riesgos para las personas afectadas.', -1),
(21, '2023-08-09', 'Discusion de Diseños', 'Discutimos los diseños de las secciones restantes y las funcionalidades de las mismas.', -1),
(22, '2023-08-10', 'Segunda reunion con Cardarello', 'Nos reunimos con Cardarello para mostrarle el avance y ver qué opiniones nos daba, entre ellas nos dijo que a él le gustaba y que íbamos muy bien, coordinamos una reunión con gente de Ceibal para que nos apoyen técnicamente.', -1),
(23, '2023-08-11', 'Se Avanza el Test', 'Avanzamos con el diseño y funcionalidades del test de bien estar y comenzamos a desarrollar las páginas faltantes.\r\nConseguimos que el sistema de muestra de imágenes permita introducir videos y que estos se puedan descargar a través de controles.\r\n', -1),
(24, '2023-08-14', 'Reunión con la comisión departamental de prevención de suicidios', 'Nos reunimos con la comisión departamental de prevención de suicidios para mostrarles la página y el avance de esta, quisimos saber sus opiniones acerca del trabajo ya hecho y las ideas pensadas para desarrollar. Se les contó como se desarrolló la página parte por parte, las funcionalidades y como se implementan, como se guardan los datos, diseños de secciones faltantes.\r\n\r\nNos reunimos después de la reunión para ver entre nosotros sensaciones acerca de esta y para seguir desarrollando, se hicieron las preguntas para el test de bien estar, se pensó el sistema de puntaje, sumamos una tabla a la base de datos para los hábitos para mejorar la situación personal y pensamos el diseño de la sección donde se informa como actuar frente a una persona con intenciones suicidas.', -1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int NOT NULL,
  `nombre` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`) VALUES
(1, 'ARTIGAS'),
(2, 'SALTO'),
(3, 'RIVERA'),
(4, 'PAYSANDU'),
(5, 'TACUAREMBÓ'),
(6, 'CERRO LARGO'),
(7, 'RÍO NEGRO'),
(8, 'DURAZNO'),
(9, 'TREINTA Y TRES'),
(10, 'SORIANO'),
(11, 'FLORES'),
(12, 'FLORIDA'),
(13, 'LAVALLEJA'),
(14, 'ROCHA'),
(15, 'COLONIA'),
(16, 'SAN JOSE'),
(17, 'CANELONES'),
(18, 'MALDONADO'),
(19, 'MONTEVIDEO'),
(20, 'URUGUAY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frasesMotivacionales`
--

CREATE TABLE `frasesMotivacionales` (
  `ID` int NOT NULL,
  `frase` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `frasesMotivacionales`
--

INSERT INTO `frasesMotivacionales` (`ID`, `frase`) VALUES
(1, 'La vida tiene altibajos, pero siempre hay una razón para seguir adelante.'),
(2, 'Tú eres más fuerte de lo que crees.'),
(3, 'Cada día es una nueva oportunidad para encontrar la felicidad.'),
(4, 'La tormenta pasará, y el sol volverá a brillar.'),
(5, 'La esperanza es la luz al final del túnel.'),
(6, 'Tú vales la pena. No lo olvides nunca.'),
(7, 'Hoy puede ser un mal día, pero mañana puede ser mejor.'),
(8, 'El mundo sería menos brillante sin ti en él.'),
(9, 'La vida es una obra en construcción. Sigue escribiendo tu historia.'),
(10, 'La fuerza para superar cualquier desafío está dentro de ti.'),
(11, 'El amor y el apoyo de los demás pueden marcar la diferencia.'),
(12, 'La resiliencia es tu superpoder secreto.'),
(13, 'La vida es un regalo precioso, no lo desperdicies.'),
(14, 'No importa cuántas veces caigas, levántate una vez más.'),
(15, 'Tú eres capaz de cosas asombrosas.'),
(16, 'Cada pequeño paso te acerca a tus sueños.'),
(17, 'Los obstáculos son oportunidades disfrazadas.'),
(18, 'La paz mental es un viaje, no un destino.'),
(19, 'La vida puede ser difícil, pero también es hermosa.'),
(20, 'Tú eres el autor de tu propia historia. Escribe un final feliz.'),
(21, 'La ayuda está disponible. No tienes que luchar solo/a.'),
(22, 'Cada día es una oportunidad para cambiar tu vida.'),
(23, 'La adversidad te hace más fuerte.'),
(24, 'El amor propio es la clave de la felicidad.'),
(25, 'Las cicatrices son recordatorios de tu fortaleza.'),
(26, 'No te juzgues a ti mismo/a con dureza. Todos cometemos errores.'),
(27, 'La vida es un regalo. Ábrelo con gratitud.'),
(28, 'Tú eres capaz de superar cualquier desafío que se presente.'),
(29, 'La felicidad es una elección que puedes hacer cada día.'),
(30, 'Tú eres importante y significativo/a para muchas personas.'),
(31, 'La vida puede cambiar en un instante. Mantén la esperanza.'),
(32, 'Las pequeñas victorias son pasos hacia una gran superación.'),
(33, 'Eres más fuerte de lo que crees. No subestimes tu fortaleza.'),
(34, 'La vida es una montaña rusa, pero vale la pena el viaje.'),
(35, 'La luz siempre brilla más intensamente después de la oscuridad.'),
(36, 'Toma un respiro y recuerda lo lejos que has llegado.'),
(37, 'Tú eres un ser humano valioso con mucho que ofrecer al mundo.'),
(38, 'El amor y la aceptación propia son la base de la felicidad.'),
(39, 'La vida es una aventura. Atrévete a explorarla.'),
(40, 'No estás solo/a en esto. La comunidad está aquí para apoyarte.'),
(41, 'La ayuda está a solo una llamada o mensaje de distancia.'),
(42, 'La esperanza es un faro en la noche más oscura.'),
(43, 'Eres único/a, y eso es algo hermoso.'),
(44, 'Las dificultades te hacen crecer y evolucionar.'),
(45, 'No permitas que tus miedos controlen tu vida. Supéralos.'),
(46, 'La vida te da desafíos para demostrarte tu fortaleza.'),
(47, 'Cada día es una oportunidad para aprender y crecer.'),
(48, 'Tú tienes el poder de cambiar tu vida en cualquier momento.'),
(49, 'La empatía y el apoyo pueden marcar una gran diferencia.'),
(50, 'Nunca subestimes el poder de una sonrisa amable.'),
(51, 'La vida es un regalo precioso, incluso en los momentos difíciles.'),
(52, 'Eres más resiliente de lo que crees. Supera las adversidades.'),
(53, 'La belleza de la vida está en sus imperfecciones.'),
(54, 'La fuerza interior es tu mayor activo.'),
(55, 'El amor y la amistad son razones para seguir adelante.'),
(56, 'Las pequeñas cosas pueden traer gran alegría.'),
(57, 'El pasado no define tu futuro. Siempre puedes empezar de nuevo.'),
(58, 'La vida te ofrece innumerables oportunidades. Aprovéchalas.'),
(59, 'Tú eres capaz de lograr tus metas y sueños.'),
(60, 'La vida es un regalo. No dejes que se escape sin disfrutarlo.'),
(61, 'Cada día es una página en blanco. Escribe una historia hermosa.'),
(62, 'La resiliencia es la capacidad de recuperarse y prosperar.'),
(63, 'Tú eres un luchador/a. No te rindas nunca.'),
(64, 'La vida está llena de sorpresas maravillosas.'),
(65, 'El mundo es un lugar mejor contigo en él.'),
(66, 'Las tormentas pasan, pero tú permaneces.'),
(67, 'La vida puede ser un desafío, pero eres un guerrero/a.'),
(68, 'La gratitud transforma lo que tenemos en suficiente.'),
(69, 'Tú eres una obra maestra en progreso.'),
(70, 'La autocompasión es un regalo que te puedes dar a ti mismo/a.'),
(71, 'Cada día es una nueva oportunidad para encontrar la paz.'),
(72, 'El amor es más fuerte que cualquier adversidad.'),
(73, 'La vida es un viaje con altos y bajos. Disfruta del viaje.'),
(74, 'Las palabras amables pueden cambiar vidas.'),
(75, 'Tú eres un faro de esperanza para alguien.'),
(76, 'La vida es una danza, y tú eres el bailarín/a.'),
(77, 'El amor propio es el primer paso hacia la felicidad.'),
(78, 'Tú eres capaz de superar incluso los momentos más oscuros.'),
(79, 'La vida es un regalo que mereces disfrutar.'),
(80, 'No importa cuán oscuro sea el cielo, siempre hay estrellas.'),
(81, 'La perseverancia es la clave del éxito.'),
(82, 'La alegría se encuentra en las pequeñas cosas.'),
(83, 'Eres un héroe en tu propia historia.'),
(84, 'La vida te desafía porque sabe que eres fuerte.'),
(85, 'La amistad y el apoyo pueden cambiar vidas.'),
(86, 'Tú eres importante y valioso/a para quienes te rodean.'),
(87, 'La paciencia es una virtud que te llevará lejos.'),
(88, 'La vida es un regalo que merece ser celebrado.'),
(89, 'No estás solo/a en tu viaje. Hay ayuda disponible.'),
(90, 'La esperanza es la voz del alma que te dice que sigas adelante.'),
(91, 'Eres un ser humano increíble con un propósito único.'),
(92, 'La vida está llena de oportunidades para crecer y aprender.'),
(93, 'Tú tienes la fuerza para enfrentar cualquier desafío.'),
(94, 'La felicidad se encuentra en el aquí y ahora.'),
(95, 'No dejes que tus miedos te impidan alcanzar tus sueños.'),
(96, 'La vida es un regalo que merece ser apreciado.'),
(97, 'La resiliencia te hace invencible.'),
(98, 'Eres capaz de superar las tormentas más intensas.'),
(99, 'La vida es una obra de arte en constante evolución.'),
(100, 'Cada día es una oportunidad para ser amable contigo mismo/a.'),
(101, 'Tú eres el autor de tu propia historia. Escribe un capítulo feliz.'),
(102, 'La esperanza es la llave que abre la puerta a un futuro mejor.'),
(103, 'Nunca subestimes el poder de una sonrisa.'),
(104, 'La vida es un regalo, incluso en los momentos difíciles.'),
(105, 'Eres más fuerte de lo que crees. Supera cualquier obstáculo.'),
(106, 'La belleza de la vida está en su diversidad.'),
(107, 'La fortaleza interior te llevará lejos.'),
(108, 'El amor y la amistad son razones para seguir adelante.'),
(109, 'Las pequeñas alegrías hacen que la vida sea especial.'),
(110, 'El pasado no dicta tu futuro. Siempre puedes comenzar de nuevo.'),
(111, 'La vida te brinda innumerables oportunidades. Aprovecha cada una.'),
(112, 'Tú eres capaz de alcanzar tus metas y sueños.'),
(113, 'La vida es un regalo. No dejes que pase desapercibido.'),
(114, 'Cada día es un lienzo en blanco. Pinta una historia hermosa.'),
(115, 'La resiliencia es la capacidad de recuperarse y prosperar.'),
(116, 'Tú eres un luchador/a. No te rindas nunca.'),
(117, 'La vida está llena de sorpresas maravillosas.'),
(118, 'El mundo es un lugar mejor con tu presencia.'),
(119, 'Las tormentas pasan, pero tú permaneces.'),
(120, 'La vida puede ser un desafío, pero eres un guerrero/a.'),
(121, 'La gratitud transforma lo que tenemos en suficiente.'),
(122, 'Tú eres una obra maestra en progreso.'),
(123, 'La autocompasión es un regalo que puedes darte a ti mismo/a.'),
(124, 'Cada día es una nueva oportunidad para encontrar la paz.'),
(125, 'El amor es más fuerte que cualquier adversidad.'),
(126, 'La vida es un viaje con altos y bajos. Disfruta del viaje.'),
(127, 'Las palabras amables pueden cambiar vidas.'),
(128, 'Tú eres un faro de esperanza para alguien.'),
(129, 'La vida es una danza, y tú eres el bailarín/a.'),
(130, 'El amor propio es el primer paso hacia la felicidad.'),
(131, 'Tú eres capaz de superar incluso los momentos más oscuros.'),
(132, 'La vida es un regalo que mereces disfrutar.'),
(133, 'No importa cuán oscuro sea el cielo, siempre hay estrellas.'),
(134, 'La perseverancia es la clave del éxito.'),
(135, 'La alegría se encuentra en las pequeñas cosas.'),
(136, 'Eres un héroe en tu propia historia.'),
(137, 'La vida te desafía porque sabe que eres fuerte.'),
(138, 'La amistad y el apoyo pueden cambiar vidas.'),
(139, 'Tú eres importante y valioso/a para quienes te rodean.'),
(140, 'La paciencia es una virtud que te llevará lejos.'),
(141, 'La vida es un regalo que merece ser celebrado.'),
(142, 'No estás solo/a en tu viaje. Hay ayuda disponible.'),
(143, 'La esperanza es la voz del alma que te dice que sigas adelante.'),
(144, 'Eres un ser humano increíble con un propósito único.'),
(145, 'La vida está llena de oportunidades para crecer y aprender.'),
(146, 'Tú tienes la fuerza para enfrentar cualquier desafío.'),
(147, 'La felicidad se encuentra en el aquí y ahora.'),
(148, 'No dejes que tus miedos te impidan alcanzar tus sueños.'),
(149, 'La vida es un regalo que merece ser apreciado.'),
(150, 'La resiliencia te hace invencible.'),
(151, 'Eres capaz de superar las tormentas más intensas.'),
(152, 'La vida es una obra de arte en constante evolución.'),
(153, 'Cada día es una oportunidad para ser amable contigo mismo/a.'),
(154, 'Tú eres el autor de tu propia historia. Escribe un capítulo feliz.'),
(155, 'La esperanza es la llave que abre la puerta a un futuro mejor.'),
(156, 'Nunca subestimes el poder de una sonrisa.'),
(157, 'La vida es un regalo, incluso en los momentos difíciles.'),
(158, 'Eres más fuerte de lo que crees. Supera cualquier obstáculo.'),
(159, 'La belleza de la vida está en su diversidad.'),
(160, 'La fortaleza interior te llevará lejos.'),
(161, 'El amor y la amistad son razones para seguir adelante.'),
(162, 'Las pequeñas alegrías hacen que la vida sea especial.'),
(163, 'El pasado no dicta tu futuro. Siempre puedes comenzar de nuevo.'),
(164, 'La vida te brinda innumerables oportunidades. Aprovecha cada una.'),
(165, 'Tú eres capaz de alcanzar tus metas y sueños.'),
(166, 'La vida es un regalo. No dejes que pase desapercibido.'),
(167, 'Cada día es un lienzo en blanco. Pinta una historia hermosa.'),
(168, 'La resiliencia es la capacidad de recuperarse y prosperar.'),
(169, 'Tú eres un luchador/a. No te rindas nunca.'),
(170, 'La vida está llena de sorpresas maravillosas.'),
(171, 'El mundo es un lugar mejor con tu presencia.'),
(172, 'Las tormentas pasan, pero tú permaneces.'),
(173, 'La vida puede ser un desafío, pero eres un guerrero/a.'),
(174, 'La gratitud transforma lo que tenemos en suficiente.'),
(175, 'Tú eres una obra maestra en progreso.'),
(176, 'La autocompasión es un regalo que puedes darte a ti mismo/a.'),
(177, 'Cada día es una nueva oportunidad para encontrar la paz.'),
(178, 'El amor es más fuerte que cualquier adversidad.'),
(179, 'La vida es un viaje con altos y bajos. Disfruta del viaje.'),
(180, 'Las palabras amables pueden cambiar vidas.'),
(181, 'Tú eres un faro de esperanza para alguien.'),
(182, 'La vida es una danza, y tú eres el bailarín/a.'),
(183, 'El amor propio es el primer paso hacia la felicidad.'),
(184, 'Tú eres capaz de superar incluso los momentos más oscuros.'),
(185, 'La vida es un regalo que mereces disfrutar.'),
(186, 'No importa cuán oscuro sea el cielo, siempre hay estrellas.'),
(187, 'La perseverancia es la clave del éxito.'),
(188, 'La alegría se encuentra en las pequeñas cosas.'),
(189, 'Eres un héroe en tu propia historia.'),
(190, 'La vida te desafía porque sabe que eres fuerte.'),
(191, 'La amistad y el apoyo pueden cambiar vidas.'),
(192, 'Tú eres importante y valioso/a para quienes te rodean.'),
(193, 'La paciencia es una virtud que te llevará lejos.'),
(194, 'La vida es un regalo que merece ser celebrado.'),
(195, 'No estás solo/a en tu viaje. Hay ayuda disponible.'),
(196, 'La esperanza es la voz del alma que te dice que sigas adelante.'),
(197, 'Eres un ser humano increíble con un propósito único.'),
(198, 'La vida está llena de oportunidades para crecer y aprender.'),
(199, 'Tú tienes la fuerza para enfrentar cualquier desafío.'),
(200, 'La felicidad se encuentra en el aquí y ahora.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitos`
--

CREATE TABLE `habitos` (
  `id` int NOT NULL,
  `habito` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `malhabito` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitos`
--

INSERT INTO `habitos` (`id`, `habito`, `malhabito`) VALUES
(1, 'Hacer yoga', 0),
(2, 'Escucha música', 0),
(3, 'Camina al aire libre', 0),
(4, 'Realiza danza', 0),
(5, 'Sal a andar en bici', 0),
(6, 'Habla con alguien que te sepa escuchar', 0),
(7, 'Realiza ejercicios de respiración', 0),
(8, 'Expresa lo que sientes', 0),
(9, 'No compartir lo que sientes', 1),
(10, 'Juntarse con personas que te hacen daño', 1),
(11, 'Estar solo por periodos prolongados', 1),
(12, 'Dejar que las opiniones hieren', 1),
(13, 'Estar inactivo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intervenir`
--

CREATE TABLE `intervenir` (
  `id` int NOT NULL,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `intervenir`
--

INSERT INTO `intervenir` (`id`, `nombre`, `info`) VALUES
(1, 'No te apartes de la persona en riesgo', ''),
(2, 'Aisla el escenario de intervención', ''),
(3, 'Escucha, no juzgues, ni interrumpas', ''),
(4, 'No desafíes. Toma en serio la amenaza.', ''),
(5, 'Infórmate. Pregunta con empatía', ''),
(6, 'Habla con voz calma, pausado. Presta atención', ''),
(7, 'Realiza movimientos lentos', ''),
(8, 'Muestra tus manos todo el tiempo', ''),
(9, 'Llama a las líneas de atención', ''),
(10, 'Enfócate en aspectos claves de tu bienestar', ''),
(11, 'Invítalo a hacer algo que le gusta para que se distraiga del pensamiento suicida', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_de_ayuda`
--

CREATE TABLE `lineas_de_ayuda` (
  `id` int NOT NULL,
  `departamento` int NOT NULL,
  `numero` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `latitud` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `longitud` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lineas_de_ayuda`
--

INSERT INTO `lineas_de_ayuda` (`id`, `departamento`, `numero`, `nombre`, `direccion`, `latitud`, `longitud`) VALUES
(2, 19, '2487 1515', ' Hospital de Clínicas Dr. Manuel Quintela', 'Av. Italia, 11600 Montevideo, Departamento de Montevideo', '-34.89126640596517', '-56.15169025613486'),
(3, 19, '2508 8131', ' Hospital Pasteur', '4VF6+XJ9, José Antonio Cabrera, 11400 Montevideo, Departamento de Montevideo', '-34.87509546162968', '-56.1384040470656'),
(4, 11, '4364 4555', ' Hospital Trinidad Flores', '1000, José Batlle y Ordoñez 952, 85000 Trinidad, Departamento de Flores', '-33.523631838283585', '-56.89583736168403'),
(5, 1, '4772 2280', 'Policlinica COBAZO', 'HGQ8+WFH, Florencio Sánchez, 55000 Artigas, Departamento de Artigas', '-30.41019804648919', '-56.483766822108244'),
(6, 9, '44522002', ' Hospital de Treinta y Tres', 'Jacinto Trápani 1338, 33000 Treinta y Tres, Departamento de Treinta y Tres', '-33.230977714301545', '-54.377575038153914'),
(7, 8, '43627701', ' Hospital de Durazno', 'JF6M+FMM, Francisco Antonio Maciel, 97000 Durazno, Departamento de Durazno', '-33.38826158356824', '-56.51565365196061'),
(8, 5, 'Sin Numero', ' Centro De Salud San Gregorio', '95J7+49R, 45200 San Gregorio de Polanco, Departamento de Tacuarembó', '-32.61948347654384', '-55.83660163945231'),
(9, 6, '46422156', ' Hospital de Melo ASSE MELO', 'JRCM+R2H, Treinta y Tres, 37000 Melo, Departamento de Cerro Largo', '-32.37792224279512', '-54.167418465307584'),
(10, 14, '44728785', 'Sanatorio Rochense', 'Treinta y Tres 1857, 27000 Rocha, Departamento de Rocha', '-34.477313068200345', '-54.33734363772794'),
(11, 10, '45322177', 'Hospital de Mercedes', 'PXW5+PP7, Florencio Sanchez, 75000 Mercedes, Departamento de Soriano', '-33.253238372666516', '-58.04068439556493'),
(12, 7, '45623512', '  Hospital Dr. Angel M. Cuervo', 'VMJW+M5Q, Echeverria, 65000 Fray Bentos, Departamento de Río Negro', '-33.11829043596091', '-58.304562494583216'),
(13, 8, '46643507', 'Asse Paso De Los Toros', '5FPX+6MP, 45100 Paso de los Toros, Departamento de Durazno', '-32.8144000053533', '-56.500846116428995'),
(14, 18, '42225889', 'Hospital de Maldonado', '32VM+J5M, Ventura Alegre, 20000 Maldonado, Departamento de Maldonado', '-34.90594445880388', '-54.967090724847225'),
(15, 17, '43325301', '  Hospital de Canelones', 'Dr. Gerson Taube 1073, 90000 Canelones, Departamento de Canelones', '-34.515308095251726', '-56.283881999700256'),
(16, 16, '43423810', '  Hospital de San José de Mayo', 'Dámaso Larrañaga esquina, Monseñor R. Di Martino s/n, San José de Mayo, Departamento de San José', '-34.34102046499791', '-56.70565093923573'),
(17, 15, '45422107', ' Hospital de Carmelo', '2P68+3Q3, 70100 Carmelo, Departamento de Colonia', '-33.98979801771335', '-58.28303344674707'),
(18, 13, '44559027', 'Hospital Varela', 'GFV9+M8M, Av Treinta y tres, 30300 José Pedro Varela, Departamento de Lavalleja', '-33.455819984988175', '-54.531627891251794'),
(19, 12, '43524656', 'Sanatorio Nuevo - COMEF', 'WQ7P+79M, 94000 Florida, Departamento de Florida', '-34.08680699543104', '-56.21408270309724'),
(20, 4, '47224836', 'Hospital de Paysandú', 'Montecaseros 520, 60000 Paysandú, Departamento de Paysandú', '-32.32585422267956', '-58.08113357294086'),
(21, 3, '46224740', 'Sanatorio Comeri', 'Ansina 639, 40000 Rivera, Departamento de Rivera', '-30.89518163902131', '-55.55255970522718'),
(22, 2, '47332944', 'Hospital Regional Salto', 'José Pedro Varela 1051, 50000 Salto, Departamento de Salto', '-31.392779910628775', '-57.96093436757821');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imagen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `descripcion` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enlace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Fijado` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `imagen`, `descripcion`, `enlace`, `Fijado`) VALUES
(1, 'Uruguay, ante el desafío de frenar los suicidios', 'Uruguay, ante el desafío de frenar los suicidios0507231688583571.png', 'El país sudamericano registra una de las tasas más altas de este flagelo en las Américas, con una tendencia al alza desde hace 20 años. Una campaña promueve la salud psicoemocional de los adolescentes', 'https://elpais.com/planeta-futuro/2022-09-10/uruguay-ante-el-desafio-de-frenar-los-suicidios.html', 1),
(3, 'Suicidios en Uruguay: un tema que preocupa y duele', 'U3VpY2lkaW9zIGVuIFVydWd1YXk6IHVuIHRlbWEgcXVlIHByZW9jdXBhIHkgZHVlbGUwNTA3MjMxNjg4NTg0Njk0.png', 'Según datos preliminares del Ministerio de Salud Pública (MSP) en Uruguay se quitaron la vida 818 personas en 2022. La mayoría eran hombres y la tendencia es al alza, de forma sostenida, desde 2017.', 'https://icm.org.uy/suicidios-en-uruguay-un-tema-que-preocupa-y-duele/', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sabias_que`
--

CREATE TABLE `sabias_que` (
  `id` int NOT NULL,
  `sabiasque` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sabias_que`
--

INSERT INTO `sabias_que` (`id`, `sabiasque`) VALUES
(1, 'Sabias que en nuestro país el año pasado se suicidaron 758\r\npersonas?'),
(2, '¿Sabías que muchos de ellos eran de edad que van desde los 13 a los 18 años?'),
(3, 'Sabes que en este año los pronósticos dicen que va en\r\naumento?'),
(4, 'La mayoría de estos jóvenes estaban deprimidos y\r\nprobablemente no lo sabían. '),
(5, 'La mayoría de los jóvenes que intentaron suicidarse o se\r\nsuicidaron no habían pedido ayuda previamente.\r\n'),
(6, '¿Sabes que, si pides ayuda, se reducen notoriamente las posibilidades de llegar a intentar o quitarte la vida?'),
(7, 'Sabias que, de cada 4 suicidas, ¿3 son hombres y 1 es mujer?'),
(8, '¿Sabías que tener problemas con el alcohol y las drogas aumenta el riesgo suicida?'),
(9, '¿Sabías que si tienes antecedentes de Suicidio en tu familia aumenta el riesgo de tener conductas suicidas? \r\n'),
(10, '¿Sabías que puedes tener conductas suicidas sin darte cuenta? Cómo por ejemplo cuando te expones a conductas de mucho riesgo.'),
(11, 'Sabias que los momentos de cambios en la vida, pueden generar trastornos depresivos. Cómo la adolescencia, la crisis de la mitad de la vida y la vejez.'),
(12, '¿Sabías que el suicidio no tiene nada que ver con la cobardía y la valentía? Es un problema de Salud Mental.'),
(13, '¿Hay un mito que dice que aquel que se quiere o dice que se va a matar no lo hace, sabes que no es real? La inmensa mayoría de los que se suicidaron algún mensaje dejaron. Debemos estar atentos.'),
(14, '¿Sabes que portar un arma de fuego aumenta el riesgo suicida?'),
(15, 'Sabias que estar en una situación de pérdida, de duelo aumenta la probabilidad de conductas\r\nsuicidas?'),
(16, '¿Sabías que la depresión es una enfermedad que le puede tocar a cualquiera de nosotros? ¿Sabes que tiene cura?\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signos`
--

CREATE TABLE `signos` (
  `id` int NOT NULL,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `signos`
--

INSERT INTO `signos` (`id`, `nombre`, `info`) VALUES
(1, 'Ideas de muerte', '-Pensamientos que quitándote la vida puedes resolver tus problemas. -Asociar la vida al sufrimiento -La muerte como solucion'),
(2, 'Comportamientos que le hacen daño', 'Atento a conductas de riesgo que puedan hacerte daño tanto psicológica como físicamente: -Aumento de consumo de sustancias -Aumento en la velocidad de conducción  -Abandonar los estudios o metas que tengas en la vida'),
(3, 'Cambios de humor repentino', '-Sentirte angustiado sin razón  -Sentirte triste  -Sentirte desvalorizado/a  -Aumento de la irritabilidad y de la agresividad.'),
(4, 'Pérdida del ánimo', '-Desgano  -Cuesta hacer actividades que antes se realizaban sin mayores dificultades  -Dificultades para sostener actividades de la vida cotidiana'),
(5, 'Desinterés', '-Perdida de interés en las cosas que te resultaban atractivas -Dificultad para sentir placer al hacer las cosas  -Desmotivación  -Cansancio o agotamiento'),
(6, 'Irritabilidad e impulsividad', '-Cambios repentinos en tu forma de ser  -Enojos fáciles  -Baja tolerancia a la frustración -Rotura de objetos  -Tendencia a las peleas -Disconformidad excesiva '),
(7, 'Cambios en los patrones del sueño', '-Dificultades con la conciliación y el sostén del sueño -	Pesadillas -Terrores nocturnos'),
(8, 'Cambios en el apetito', '-Inapetencia  -Exceso de alimentación  -Perdida o aumento de peso'),
(9, 'Perdida de autoestima', '-Sentimientos de desvalorización  -Aislamiento  -Sentimientos de fragilidad '),
(10, 'Búsquedas de métodos de suicidio', '-Búsqueda en internet sobre esta temática  -Indagar sobre las formas que algún conocido o famoso se haya quitado la vida  -Jugar a juegos nocivos con fines autodestructivos'),
(11, 'Publicaciones sobre \"Querer dejar de existir\" o mensajes negativos', '-Utilizar las redes sociales con mensajes autodestructivos  -Comentarios acerca de que morir es una solución  -Comentarios acerca de una muerte, como que paso a mejor vida'),
(12, 'Actos de despedida', '-Notas físicas o digitales que evidencien un acto suicida  -Notas de agradecimiento sin un fin muy claro, a personas queridas  -Comentarios a compañeros o grupos que ya todo va a ser diferente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_departamento`
--

CREATE TABLE `s_departamento` (
  `id` int NOT NULL,
  `departamento` int NOT NULL,
  `hombres` double NOT NULL,
  `mujeres` double NOT NULL,
  `menosDeCatorce` double NOT NULL,
  `entreQuinceYTreinta` double NOT NULL,
  `entreTreintaYUnoYSesenta` double NOT NULL,
  `entreSesentaYUnoYOchenta` double NOT NULL,
  `entreOchentaYUnoYNoventa` double NOT NULL,
  `superiorANoventa` double NOT NULL,
  `total` int NOT NULL,
  `anios` int NOT NULL,
  `tasatotal` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `s_departamento`
--

INSERT INTO `s_departamento` (`id`, `departamento`, `hombres`, `mujeres`, `menosDeCatorce`, `entreQuinceYTreinta`, `entreTreintaYUnoYSesenta`, `entreSesentaYUnoYOchenta`, `entreOchentaYUnoYNoventa`, `superiorANoventa`, `total`, `anios`, `tasatotal`) VALUES
(1, 20, 77.9, 22.1, 0.7, 25.6, 28.8, 38.55, 29.4, 42.8, 823, 1, 23.2),
(2, 19, 0, 0, 0, 0, 0, 0, 0, 0, 255, 1, 18.4),
(3, 18, 0, 0, 0, 0, 0, 0, 0, 0, 63, 1, 31.5),
(4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 128, 1, 20.7),
(5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 31, 1, 25.8),
(6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 42, 1, 31.8),
(7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 29.6),
(8, 13, 0, 0, 0, 0, 0, 0, 0, 0, 21, 1, 36),
(9, 12, 0, 0, 0, 0, 0, 0, 0, 0, 14, 1, 20.2),
(10, 11, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 30.2),
(11, 10, 0, 0, 0, 0, 0, 0, 0, 0, 28, 1, 33.5),
(12, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 1, 37.6),
(13, 8, 0, 0, 0, 0, 0, 0, 0, 0, 19, 1, 32.2),
(14, 7, 0, 0, 0, 0, 0, 0, 0, 0, 16, 1, 27.3),
(15, 6, 0, 0, 0, 0, 0, 0, 0, 0, 27, 1, 30.1),
(16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 23, 1, 24.8),
(17, 4, 0, 0, 0, 0, 0, 0, 0, 0, 28, 1, 23.3),
(18, 3, 0, 0, 0, 0, 0, 0, 0, 0, 23, 1, 21),
(19, 2, 0, 0, 0, 0, 0, 0, 0, 0, 36, 1, 26.8),
(20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 19, 1, 25.8),
(21, 20, 82.45, 17.55, 0, 25.8, 24.45, 34.1, 49.25, 40.4, 758, 2, 21.4),
(22, 19, 0, 0, 0, 0, 0, 0, 0, 0, 242, 2, 17.5),
(23, 18, 0, 0, 0, 0, 0, 0, 0, 0, 45, 2, 22.8),
(24, 17, 0, 0, 0, 0, 0, 0, 0, 0, 119, 2, 19.5),
(25, 16, 0, 0, 0, 0, 0, 0, 0, 0, 27, 2, 22.7),
(26, 15, 0, 0, 0, 0, 0, 0, 0, 0, 33, 2, 25.1),
(27, 14, 0, 0, 0, 0, 0, 0, 0, 0, 31, 2, 41.7),
(28, 13, 0, 0, 0, 0, 0, 0, 0, 0, 20, 2, 34.2),
(29, 12, 0, 0, 0, 0, 0, 0, 0, 0, 14, 2, 20.2),
(30, 11, 0, 0, 0, 0, 0, 0, 0, 0, 9, 2, 34),
(31, 10, 0, 0, 0, 0, 0, 0, 0, 0, 23, 2, 27.5),
(32, 9, 0, 0, 0, 0, 0, 0, 0, 0, 27, 2, 53.5),
(33, 8, 0, 0, 0, 0, 0, 0, 0, 0, 16, 2, 27.1),
(34, 7, 0, 0, 0, 0, 0, 0, 0, 0, 11, 2, 18.8),
(35, 6, 0, 0, 0, 0, 0, 0, 0, 0, 25, 2, 27.9),
(36, 5, 0, 0, 0, 0, 0, 0, 0, 0, 28, 2, 30.2),
(37, 4, 0, 0, 0, 0, 0, 0, 0, 0, 29, 2, 24.1),
(38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 20, 2, 18.3),
(39, 2, 0, 0, 0, 0, 0, 0, 0, 0, 29, 2, 21.6),
(40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 10.8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminos_testimonios`
--

CREATE TABLE `terminos_testimonios` (
  `id` int NOT NULL,
  `termino` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `terminos_testimonios`
--

INSERT INTO `terminos_testimonios` (`id`, `termino`) VALUES
(1, 'Se debe tener consentimiento'),
(2, 'Redaccion Propia (debe haber pasado el momento)'),
(3, 'Sea coherente y bien redactado'),
(4, 'No sea muy explicito'),
(5, 'doy concentimiento a que aparezca en la pagina'),
(6, 'Anonimo: como mucho colocar un nombre personal'),
(7, 'No Nombrar entes publicos/privados'),
(8, 'No mencionar localidades'),
(9, 'No mostrar info de contacto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testdebienestar`
--

CREATE TABLE `testdebienestar` (
  `id` int NOT NULL,
  `pregunta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `opcion_1` int NOT NULL,
  `opcion_2` int NOT NULL,
  `opcion_3` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `testdebienestar`
--

INSERT INTO `testdebienestar` (`id`, `pregunta`, `descripcion`, `opcion_1`, `opcion_2`, `opcion_3`) VALUES
(2, '¿Has estado muy nervioso últimamente?', ' ', 2, 1, 0),
(3, '¿Te sientes bajoneado?', ' ', 2, 1, 0),
(4, '¿Te sientes lleno de energía?', ' ', 0, 1, 2),
(5, '¿Te sientes desanimado?', ' ', 2, 1, 0),
(6, '¿Te sientes feliz?', ' ', 0, 1, 2),
(7, '¿Te sientes lleno de vitalidad?', ' ', 0, 1, 2),
(8, '¿Te sientes calmado?', ' ', 0, 1, 2),
(9, '¿Te sientes cansado?', ' ', 2, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id` int NOT NULL,
  `Historia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id`, `Historia`) VALUES
(1, 'Mi nombre es Miguel, hace muchos años se suicidó mi hermana que era menor que yo.\nElla era muy buena, muy estudiosa y trabajadora. Éramos muy unidos, nos contábamos\ntodo. Ella estaba preocupada por algunas cosas que para mí en ese momento no me\nparecían importantes. Estuvimos juntos hasta unos días antes de su muerte. Una tarde, una\nllamada y el dolor más grande que puede sentir una persona, mi hermana se había\nmatado!. Era real? Era una pesadilla? Si, era una pesadilla en medio de la vida, una\npesadilla de la cual pude despertar después de muchos años. Ahora paso el tiempo,\natravesé muchas etapas: dolor, impotencia, bronca, etc.\nCon el paso de los años pude entender que ella estaba enferma, que en mi familia había\nhabido muchos suicidios, y que la depresión y lo genético hicieron de alguna forma que esto\nsucediera.\nYa con muchos años arriba, solo quiero contar para que las personas sean sensibles, que lo\ntomen en serio, que a todos nos puede pasar y que pedir ayuda a tiempo puede salvar\nvidas y no hacer atravesar por tanto dolor a los que quedamos.\nHay salida…hay que buscarla'),
(2, 'Mi nombre es Ana, lamentablemente hace unos años mi\r\nhijo menor, muy joven, tomó la decisión de quitarse la vida. Desde ahí y mucho antes mi\r\nvida ha sido un calvario de dolor y tristeza.\r\nTodo empezó cuando tenia 14 años... las primeras salidas, consumo de alcohol con\r\namigos y luego las salidas a los bailes. El consumo aumentó, empezó a cambiar su\r\ncarácter, se volvió agresivo, pero pensábamos que era parte del ser adolescente. Luego\r\nvino el abandono de los estudios, las salidas hasta altas horas de la noche, el no hacer\r\ncaso en nada. Un día una amiga me dice que estaba consumiendo y vendiendo drogas\r\npara poder consumir. Ya habían faltado cosas en mi casa pero no podía creer que era el.\r\nCambiaron sus amigos, cada vez lo veía menos. Buscamos ayuda por todos lados pero el\r\nnunca quiso ir a ninguna consulta. Esto fue de peor en peor, ya era un desconocido en\r\nnuestra casa. Debía dinero, y su vida era consumir. Un día me llaman para decirme que lo\r\nencontraron muerto, se había suicidado. Después de eso, el dolor, la tristeza interminable\r\nde nuestra familia, las culpas, el sentir si podíamos haber hecho algo, todo muy triste y\r\nenloquecedor.\r\nQuiero dejar un mensaje a los jóvenes y sus padres, busquen ayuda, hay muchos lugares\r\ndonde pedirla, agoten los recursos y juntos luchemos contra las malditas drogas, que\r\nllevan a perder vidas jóvenes , muy jóvenes, demasiado jóvenes'),
(10, 'Conoció a los 14 años de edad  a su padre en una fiesta en campaña. Recuerda su rosto, su mirada. Y se preguntaba ¿Por qué no me mira? ¿Por qué no me abraza? Sentía dentro de mi miedo, vergüenza y enojo. Recuerda a verlo visto 3 veces, pero él padre siempre lo esquivo con la mirada. ¿Qué le hice de malo?\r\nLo criaron, sus tíos, primos y abuelo materno. Hombres que le hicieron sentir que era una molestia, un niño que llevaba el apellido de su padre, el cual no lo acepto en su vida.  \r\nRecuerda que de niño tenía que  levantarse todos los días 6:00hs am de la mañana e ir a trabajar la tierra. Dejar la plata que ganaba, en la casa. Sabía que debía obedecer, de lo contrario el castigo era peor que pasar frio en el campo. \r\nEn la escuela de tarde disfrutaba de jugar, ahí si le daban permiso. \r\nMe preguntaba ¿Por qué no tengo papá? ¿Quiénes son mis abuelos paternos? Ver a mis compañeros con su papá a la salida de la escuela y yo irme solo era triste. \r\nEl falleció hace muchos años, fui a su velatorio. Todos me miraban como un extraño, pocos sabían de mi existencia. Yo solo pensaba \r\n“Hoy te vuelvo a ver, a mirar para despedirme. Mil preguntas quedan sin respuestas, pero había una que dolía ¿Por qué me abandonaste?” \r\n“No quiero nada de sus pertenecías ni vienes. Solo saber de su historia “La cual fue negada, por los familiares paternos. \r\nEl tiempo pasó y un día año 2023 sintió que no podía más, muchos años lloro y se preguntó sin conseguir respuestas. \r\nPensó: Hoy quiero apagar mi mente. Salió de trabajar preparo el mate le escribió a su madre, hermanas maternas y su novia. “Necesito apagar mi mente, te quiero”. \r\nSe sentó a mirar el agua pocos minutos, que parecieron horas. Su vida paso frente a sus ojos, quería apagar ese dolor en el pecho. Pensó en tirarse, pero no pudo no tuvo la fuerza. Lagrimas caían de sus ojos y sintió un ruido.  La policía lo traslado llegó al hospital y esos días internado por IAE e Ideas de muerte, le permitieron descansar, sentía culpa y vergüenza. Pero ahí estaba su mamá acompañándolo.\r\n“No sé qué pensé, no sé si me quería matar, solo quería apagar mi mente” Era todo los que decía.\r\nAhora un equipo de salud mental lo acompaña, Dra. Psiquiatra, Residente Lic. Psicología. Volvió a trabajar, volvió a ver a su sobrino, disfrutar de unos mates. Proyecta el próximo año retomar sus estudios, porque de niños soñaba con ser contador público.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios_pendientes`
--

CREATE TABLE `testimonios_pendientes` (
  `id` int NOT NULL,
  `historia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_resultado`
--

CREATE TABLE `test_resultado` (
  `ID` int NOT NULL,
  `porcentaje_maximo` decimal(10,0) NOT NULL,
  `resultado` text NOT NULL,
  `porcentaje_minimo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `test_resultado`
--

INSERT INTO `test_resultado` (`ID`, `porcentaje_maximo`, `resultado`, `porcentaje_minimo`) VALUES
(1, 25, 'Te encuentras excelente.', 0),
(2, 50, 'Te encuentras bien, has tenido algunos problemas pero es normal.', 25),
(3, 75, 'Solo estás pasando por un mal momento, solo respira hondo y no te rindas.', 50),
(4, 100, 'Estás en una situación desfavorable, te recomendamos comunicarte con las líneas de ayuda para que profesionales en el tema te ayuden.', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosadmin`
--

CREATE TABLE `usuariosadmin` (
  `id` int NOT NULL,
  `usuario` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuariosadmin`
--

INSERT INTO `usuariosadmin` (`id`, `usuario`, `pass`) VALUES
(1, 'prevesuy', 'PrJlDaF1Te9bY'),
(2, 'josie', 'Pr3uCFRS9lrdU'),
(4, 'jonas', 'PrLt2c6DfJv5g');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anios`
--
ALTER TABLE `anios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Contador`
--
ALTER TABLE `Contador`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cuadernocampo`
--
ALTER TABLE `cuadernocampo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `frasesMotivacionales`
--
ALTER TABLE `frasesMotivacionales`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `habitos`
--
ALTER TABLE `habitos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `intervenir`
--
ALTER TABLE `intervenir`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineas_de_ayuda`
--
ALTER TABLE `lineas_de_ayuda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lineas_de_ayuda_ibfk_1` (`departamento`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sabias_que`
--
ALTER TABLE `sabias_que`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `signos`
--
ALTER TABLE `signos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `s_departamento`
--
ALTER TABLE `s_departamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Departamento` (`departamento`),
  ADD KEY `FK_Año` (`anios`);

--
-- Indices de la tabla `terminos_testimonios`
--
ALTER TABLE `terminos_testimonios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testdebienestar`
--
ALTER TABLE `testdebienestar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios_pendientes`
--
ALTER TABLE `testimonios_pendientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `test_resultado`
--
ALTER TABLE `test_resultado`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuariosadmin`
--
ALTER TABLE `usuariosadmin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anios`
--
ALTER TABLE `anios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Contador`
--
ALTER TABLE `Contador`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cuadernocampo`
--
ALTER TABLE `cuadernocampo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `frasesMotivacionales`
--
ALTER TABLE `frasesMotivacionales`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `habitos`
--
ALTER TABLE `habitos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `intervenir`
--
ALTER TABLE `intervenir`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `lineas_de_ayuda`
--
ALTER TABLE `lineas_de_ayuda`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sabias_que`
--
ALTER TABLE `sabias_que`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `signos`
--
ALTER TABLE `signos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `s_departamento`
--
ALTER TABLE `s_departamento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `terminos_testimonios`
--
ALTER TABLE `terminos_testimonios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `testdebienestar`
--
ALTER TABLE `testdebienestar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `testimonios_pendientes`
--
ALTER TABLE `testimonios_pendientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `test_resultado`
--
ALTER TABLE `test_resultado`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuariosadmin`
--
ALTER TABLE `usuariosadmin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas_de_ayuda`
--
ALTER TABLE `lineas_de_ayuda`
  ADD CONSTRAINT `lineas_de_ayuda_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `s_departamento`
--
ALTER TABLE `s_departamento`
  ADD CONSTRAINT `FK_Año` FOREIGN KEY (`anios`) REFERENCES `anios` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_Departamento` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
