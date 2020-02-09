-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura para tabla discoverme.email
CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(255) NOT NULL,
  `mensaje` varchar(10000) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.email: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.experiencias
CREATE TABLE IF NOT EXISTS `experiencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `mapa` varchar(500) DEFAULT NULL,
  `mins_distancia` int(11) DEFAULT NULL,
  `nombre` varchar(75) NOT NULL,
  `precio` int(11) DEFAULT '0',
  `puntuacion` int(11) DEFAULT '0',
  `usuario_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5sxdevnlrkqyo56274q5pqcyk` (`usuario_id`),
  CONSTRAINT `FK5sxdevnlrkqyo56274q5pqcyk` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.experiencias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `experiencias` DISABLE KEYS */;
INSERT INTO `experiencias` (`id`, `descripcion`, `fecha_fin`, `fecha_inicio`, `hora_fin`, `hora_inicio`, `mapa`, `mins_distancia`, `nombre`, `precio`, `puntuacion`, `usuario_id`) VALUES
  (1, 'museo de cera de barcelona', NULL, NULL, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.8605125395225!2d2.174806115818462!3d41.37711517926511!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a256e3da7249%3A0x987ab828031eedf0!2sMuseo+de+Cera!5e0!3m2!1ses!2ses!4v1553769273339" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 7, 'Museo de cera', 0, 0, '88888888X'),
  (2, 'taberna nocturna', NULL, NULL, '03:00:00', '20:00:00', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.9981113844015!2d2.1880684158189125!3d41.395847379263444!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a3195c0af997%3A0xe87fb2b71913aad1!2sL&#39;Ovella+Negra+Marina!5e0!3m2!1ses!2ses!4v1553769334565" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 5, 'Ovella negra', 0, 0, '99999999X'),
  (3, 'calsotada popular al parc de la ciutadella', '2019-05-24', '2019-05-24', '19:00:00', '11:30:00', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.3537694311017!2d2.1838265158187506!3d41.38812297926416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2fd439609e1%3A0x42386118e65a3d70!2sParque+de+la+Ciudadela!5e0!3m2!1ses!2ses!4v1553769399732" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 20, 'Calsotada popular', 5, 0, '66666666X'),
  (4, 'Ruta per collserola, running, bici, treking', NULL, NULL, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.2334770333127!2d2.1171532158193433!3d41.41245017926186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4983796439809%3A0xd78f794b1ccc878e!2sCarr.+de+las+Aguas%2C+Barcelona!5e0!3m2!1ses!2ses!4v1553769433442" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 50, 'Cami de les aigues', 0, 0, '66666666X'),
  (5, 'La original “Catedral del siglo XX” de Antonio Gaudí, es el emblema de la ciudad y el monumento más visitado. Su construcción comenzó en 1882 y se espera que finalice en 2026, tan solo 144 años después.', NULL, NULL, '09:00:00', '18:00:00', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.637870128193!2d2.1735833221789846!3d41.40367011609628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2dcd83dfb93%3A0x9bd8aac21bc3c950!2sBas%C3%ADlica+de+la+Sagrada+Fam%C3%ADlia!5e0!3m2!1ses!2ses!4v1553769599333" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 5, 'Sagrada Familia', 15, 0, '66666666X'),
  (6, 'Este inmenso parque fue declarado Patrimonio de la Humanidad por la UNESCO en 1.984, y es otra de las geniales obras de Gaudí, del cual podremos aprender más en su Casa Museo que se encuentra dentro del recinto.', NULL, NULL, '08:30:00', '18:15:00', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.1392965394148!2d2.1505058158193804!3d41.41449477926168!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2ae52d441ab%3A0x899a0ba01aaace58!2sPark+G%C3%BCell!5e0!3m2!1ses!2ses!4v1553770111689" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 5, 'Parque Güell', 9, 0, '66666666X'),
  (7, 'Montserrat es un macizo rocoso considerado tradicionalmente la montaña más importante y significativa de Cataluña. Está situada a 30 km del centro de Barcelona entre las comarcas de la Anoia, del Bajo Llobregat y del Bages.', NULL, NULL, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d20074.471054770027!2d1.8213766519025283!3d41.58897947537132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a45fe93018cfe7%3A0x1ebab017ff86d3c!2sMacizo+de+Montserrat!5e0!3m2!1ses!2ses!4v1553769756844" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 90, 'Montserrat', 0, 0, '66666666X'),
  (8, 'Montjuic o Montjuich​​ es una montaña de Barcelona, con una altura de 173 metros sobre el nivel del mar, que alberga un barrio homónimo, en el distrito de Sants-Montjuic.', NULL, NULL, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11977.856623093407!2d2.158738343771806!3d41.36399931825983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a24230e2aebd%3A0x116c63ebef94b50!2sMontjuic!5e0!3m2!1ses!2ses!4v1553769802657" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 15, 'Montjuic', 0, 0, '66666666X'),
  (9, 'La Festa Major de Gràcia 2018 tiene actividades culturales, creativas, gastronómicas  y musicales durante toda la semana. También hay concursos de baile y deportivos, espectáculos de castellers, teatro, exposiciones y cine al aire libre.', '2019-08-15', '2019-08-21', NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11970.669083146506!2d2.1485696437874817!3d41.40303171820245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2bda822050f%3A0xb4d1fd36e015a923!2sVila+de+Gr%C3%A0cia%2C+Barcelona!5e0!3m2!1ses!2ses!4v1553769839813" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 15, 'Festa Major de Gràcia', 0, 0, '88888888X'),
  (10, 'Las Fiestas de Sants o Fiesta Mayor de Sants (en catalán, Festa Major de Sants) se celebra en el barrio de Sants (Barcelona) el día de san Bartolomé (24 de agosto). Su elemento más distintivo es la ornamentación de calles, pero también se celebran conciertos, bailes populares, exhibiciones castelleras, gigantes y cabezudos, correfocs de diablos y dragones de fuego y otros eventos festivos', '2019-08-24', '2019-08-30', NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11975.376755397396!2d2.1366403234772666!3d41.37746981039048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a498863a0819fd%3A0xfdb69df66dad168c!2sSants%2C+Barcelona!5e0!3m2!1ses!2ses!4v1553769881113" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 15, 'Fiesta Mayor de Sants', 0, 0, '88888888X');
/*!40000 ALTER TABLE `experiencias` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.experiencias_tipos
CREATE TABLE IF NOT EXISTS `experiencias_tipos` (
  `experiencia_id` int(11) NOT NULL,
  `tipos_id` int(11) NOT NULL,
  KEY `FKpd95cnns6cxun6v4r6ebaqycm` (`tipos_id`),
  KEY `FK17ogmh073olkw8f8mia7hfo1x` (`experiencia_id`),
  CONSTRAINT `FK17ogmh073olkw8f8mia7hfo1x` FOREIGN KEY (`experiencia_id`) REFERENCES `experiencias` (`id`),
  CONSTRAINT `FKpd95cnns6cxun6v4r6ebaqycm` FOREIGN KEY (`tipos_id`) REFERENCES `tipos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.experiencias_tipos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `experiencias_tipos` DISABLE KEYS */;
INSERT INTO `experiencias_tipos` (`experiencia_id`, `tipos_id`) VALUES
  (4, 3),
  (4, 2),
  (3, 4),
  (2, 6),
  (1, 1),
  (5, 1),
  (6, 1),
  (6, 2),
  (7, 1),
  (7, 2),
  (7, 3),
  (8, 1),
  (8, 2),
  (8, 3),
  (9, 1),
  (9, 4),
  (9, 5),
  (9, 6),
  (10, 1),
  (10, 4),
  (10, 5),
  (10, 6);
/*!40000 ALTER TABLE `experiencias_tipos` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.fotos
CREATE TABLE IF NOT EXISTS `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `experiencia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKawdrt7q0t3bwey1mnl24i20tk` (`experiencia_id`),
  CONSTRAINT `FKawdrt7q0t3bwey1mnl24i20tk` FOREIGN KEY (`experiencia_id`) REFERENCES `experiencias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.fotos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.hoteles
CREATE TABLE IF NOT EXISTS `hoteles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(300) NOT NULL,
  `nombre` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.hoteles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `hoteles` DISABLE KEYS */;
insert into fotos (id,nombre,experiencia_id) values (null,'Calsotada-popular-0.jpg',3);
insert into fotos (id,nombre,experiencia_id) values (null,'Calsotada-popular-1.jpg',3);
insert into fotos (id,nombre,experiencia_id) values (null,'Calsotada-popular-2.jpg',3);
insert into fotos (id,nombre,experiencia_id) values (null,'Calsotada-popular-3.jpg',3);
insert into fotos (id,nombre,experiencia_id) values (null,'Cami-de-les-aigues-0.jpg',4);
insert into fotos (id,nombre,experiencia_id) values (null,'Cami-de-les-aigues-1.jpg',4);
insert into fotos (id,nombre,experiencia_id) values (null,'Cami-de-les-aigues-2.jpg',4);
insert into fotos (id,nombre,experiencia_id) values (null,'Cami-de-les-aigues-3.jpg',4);
insert into fotos (id,nombre,experiencia_id) values (null,'Festa-Major-de-Gràcia-0.jpg',9);
insert into fotos (id,nombre,experiencia_id) values (null,'Festa-Major-de-Gràcia-1.jpg',9);
insert into fotos (id,nombre,experiencia_id) values (null,'Festa-Major-de-Gràcia-2.jpg',9);
insert into fotos (id,nombre,experiencia_id) values (null,'Festa-Major-de-Gràcia-3.jpg',9);
insert into fotos (id,nombre,experiencia_id) values (null,'Fiesta-Mayor-de-Sants-0.jpg',10);
insert into fotos (id,nombre,experiencia_id) values (null,'Fiesta-Mayor-de-Sants-1.jpg',10);
insert into fotos (id,nombre,experiencia_id) values (null,'Fiesta-Mayor-de-Sants-2.jpg',10);
insert into fotos (id,nombre,experiencia_id) values (null,'Fiesta-Mayor-de-Sants-3.jpg',10);
insert into fotos (id,nombre,experiencia_id) values (null,'Ovella-negra-0.png',2);
insert into fotos (id,nombre,experiencia_id) values (null,'Ovella-negra-1.jpg',2);
insert into fotos (id,nombre,experiencia_id) values (null,'Ovella-negra-2.jpg',2);
insert into fotos (id,nombre,experiencia_id) values (null,'Ovella-negra-3.jpg',2);
insert into fotos (id,nombre,experiencia_id) values (null,'Montjuic-0.jpg',8);
insert into fotos (id,nombre,experiencia_id) values (null,'Montjuic-1.jpeg',8);
insert into fotos (id,nombre,experiencia_id) values (null,'Montjuic-2.jpg',8);
insert into fotos (id,nombre,experiencia_id) values (null,'Montjuic-3.jpg',8);
insert into fotos (id,nombre,experiencia_id) values (null,'Montserrat-0.jpg',7);
insert into fotos (id,nombre,experiencia_id) values (null,'Montserrat-1.jpg',7);
insert into fotos (id,nombre,experiencia_id) values (null,'Montserrat-2.jpg',7);
insert into fotos (id,nombre,experiencia_id) values (null,'Montserrat-3.jpg',7);
insert into fotos (id,nombre,experiencia_id) values (null,'Museo-de-cera-0.png',1);
insert into fotos (id,nombre,experiencia_id) values (null,'Museo-de-cera-1.jpg',1);
insert into fotos (id,nombre,experiencia_id) values (null,'Museo-de-cera-2.jpg',1);
insert into fotos (id,nombre,experiencia_id) values (null,'Museo-de-cera-3.jpg',1);
insert into fotos (id,nombre,experiencia_id) values (null,'Parque-Güell-0.jpg',6);
insert into fotos (id,nombre,experiencia_id) values (null,'Parque-Güell-1.jpg',6);
insert into fotos (id,nombre,experiencia_id) values (null,'Parque-Güell-2.jpg',6);
insert into fotos (id,nombre,experiencia_id) values (null,'Parque-Güell-3.jpg',6);
insert into fotos (id,nombre,experiencia_id) values (null,'Sagrada-Familia-0.jpg',5);
insert into fotos (id,nombre,experiencia_id) values (null,'Sagrada-Familia-1.jpg',5);
insert into fotos (id,nombre,experiencia_id) values (null,'Sagrada-Familia-2.jpg',5);
insert into fotos (id,nombre,experiencia_id) values (null,'Sagrada-Familia-3.jpg',5);
/*!40000 ALTER TABLE `hoteles` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.ofertas
CREATE TABLE IF NOT EXISTS `ofertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `nombre` varchar(75) NOT NULL,
  `experiencia_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhpusn3y9p26al0byfstgljllc` (`experiencia_id`),
  CONSTRAINT `FKhpusn3y9p26al0byfstgljllc` FOREIGN KEY (`experiencia_id`) REFERENCES `experiencias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.ofertas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` (`id`, `codigo`, `descripcion`, `fecha_fin`, `fecha_inicio`, `hora_fin`, `hora_inicio`, `nombre`, `experiencia_id`) VALUES
  (1, '#A1S2D3F4', 'Dos por uno en copas.', '2019-08-25', '2019-08-23', '01:00:00', '20:00:00', '2x1', 2),
  (2, '#Z1X2C3V4', '30% de descuento si presenta este codigo al pagar.', NULL, NULL, NULL, NULL, 'descuentos 30%', 1),
  (3, '#12345678', '10% descuento en desayunos.', '2019-08-25', '2019-08-23', '10:00:00', '08:00:00', '10% descuento', NULL),
  (4, '#00000000', '15% descuento en comidas.', '2019-08-25', '2019-08-23', '15:00:00', '12:00:00', '15% descuento', NULL),
  (5, '#11111111', '20% descuento en cenas.', '2019-08-25', '2019-08-23', '12:00:00', '20:00:00', '20% descuento', NULL);
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.perfiles
CREATE TABLE IF NOT EXISTS `perfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.perfiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
INSERT INTO `perfiles` (`id`, `nombre`) VALUES
  (1, 'Deluxe'),
  (2, 'Soltero'),
  (3, 'Low Cost'),
  (4, 'Aventurero'),
  (5, 'Familiar'),
  (6, 'Mayor de 50');
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.perfiles_tipos
CREATE TABLE IF NOT EXISTS `perfiles_tipos` (
  `perfil_id` int(11) NOT NULL,
  `tipos_id` int(11) NOT NULL,
  KEY `FKe6rijsgj4ilqtm21ukelqpkb2` (`tipos_id`),
  KEY `FKd4eea9hhpmxvddodt5y0m2qji` (`perfil_id`),
  CONSTRAINT `FKd4eea9hhpmxvddodt5y0m2qji` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id`),
  CONSTRAINT `FKe6rijsgj4ilqtm21ukelqpkb2` FOREIGN KEY (`tipos_id`) REFERENCES `tipos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.perfiles_tipos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `perfiles_tipos` DISABLE KEYS */;
INSERT INTO `perfiles_tipos` (`perfil_id`, `tipos_id`) VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 6),
  (2, 1),
  (2, 2),
  (2, 3),
  (2, 4),
  (2, 5),
  (2, 6),
  (3, 2),
  (3, 4),
  (3, 5),
  (3, 6),
  (4, 1),
  (4, 2),
  (4, 3),
  (4, 4),
  (5, 1),
  (5, 2),
  (5, 4),
  (5, 5),
  (6, 1),
  (6, 2),
  (6, 4),
  (6, 5);
/*!40000 ALTER TABLE `perfiles_tipos` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `nombre`) VALUES
  (1, 'Director'),
  (2, 'Recepcionista'),
  (3, 'Camarero'),
  (4, 'Huesped'),
  (5, 'Colaborador');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.servicios
CREATE TABLE IF NOT EXISTS `servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) NOT NULL,
  `disponible` bit(1) DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `nombre` varchar(75) NOT NULL,
  `precio` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.servicios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` (`id`, `descripcion`, `disponible`, `fecha_fin`, `fecha_inicio`, `hora_fin`, `hora_inicio`, `nombre`, `precio`) VALUES
  (1, 'Disfruta tomando el sol y refrescándote en nuestra piscina exterior.', b'1', '2019-10-30', '2019-05-01', '20:00:00', '08:00:00', 'Piscina exterior', 0),
  (2, 'Disfruta relajándote en nuestro SPA.', b'1', NULL, NULL, '20:00:00', '08:00:00', 'Servicio SPA', 0),
  (3, 'Disfruta del buffet continental de desayuno.', b'0', NULL, NULL, '11:00:00', '08:00:00', 'Servicio desayunos', 10),
  (4, 'Disfruta del buffet continental de comidas.', b'1', NULL, NULL, '15:00:00', '13:00:00', 'Servicio comidas', 20),
  (5, 'Disfruta del buffet continental de cenas.', b'0', NULL, NULL, '23:00:00', '20:00:00', 'Servicio cenas', 20);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.tipos
CREATE TABLE IF NOT EXISTS `tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.tipos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` (`id`, `nombre`) VALUES
  (1, 'Cultural'),
  (2, 'Natural'),
  (3, 'Deportivo'),
  (4, 'Eventos'),
  (5, 'Folclore'),
  (6, 'Nocturno');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;

-- Volcando estructura para tabla discoverme.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `procedencia` varchar(50) DEFAULT NULL,
  `perfil_id` int(11) DEFAULT NULL,
  `rol_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq3a59nsli56gq634i3235693d` (`perfil_id`),
  KEY `FKqf5elo4jcq7qrt83oi0qmenjo` (`rol_id`),
  CONSTRAINT `FKq3a59nsli56gq634i3235693d` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id`),
  CONSTRAINT `FKqf5elo4jcq7qrt83oi0qmenjo` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla discoverme.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `procedencia`, `perfil_id`, `rol_id`) VALUES
  ('00000000X', 'Manuel', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', 3, 4),
  ('11111111X', 'Carlos', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', 5, 4),
  ('22222222X', 'Jose', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', 2, 4),
  ('33333333X', 'David', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', NULL, 2),
  ('44444444X', 'Noemi', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', NULL, 3),
  ('55555555X', 'Laura', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', NULL, 3),
  ('66666666X', 'Maria', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', NULL, 2),
  ('77777777X', 'Javier', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', NULL, 1),
  ('88888888X', 'Noelia', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', NULL, 5),
  ('99999999X', 'Cristina', '$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.', 'spain', NULL, 5);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Volcando estructura de base de datos para discoverme
CREATE DATABASE IF NOT EXISTS `discoverme` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `discoverme`;

-- Volcando estructura para tabla discoverme.comentarios
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(300) NOT NULL,
  `fecha` date NOT NULL,
  `puntos` int(11) NOT NULL,
  `titulo` varchar(75) NOT NULL,
  `experiencia_id` int(11) NOT NULL,
  `usuario_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqg86cniw2qt70wtaqmq7nmipl` (`experiencia_id`),
  KEY `FKdts62yj83qe3k748cgcjvm48r` (`usuario_id`),
  CONSTRAINT `FKdts62yj83qe3k748cgcjvm48r` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FKqg86cniw2qt70wtaqmq7nmipl` FOREIGN KEY (`experiencia_id`) REFERENCES `experiencias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando estructura para disparador discoverme.update_puntuacion_delete_comentario
DROP TRIGGER IF EXISTS `update_puntuacion_delete_comentario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `update_puntuacion_delete_comentario` AFTER DELETE ON `comentarios` FOR EACH ROW UPDATE experiencias SET puntuacion = (SELECT avg(puntos) FROM comentarios WHERE experiencia_id = OLD.experiencia_id) WHERE id = OLD.experiencia_id//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador discoverme.update_puntuacion_insert_comentario
DROP TRIGGER IF EXISTS `update_puntuacion_insert_comentario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `update_puntuacion_insert_comentario` AFTER INSERT ON `comentarios` FOR EACH ROW UPDATE experiencias SET puntuacion = (SELECT avg(puntos) FROM comentarios WHERE experiencia_id = NEW.experiencia_id) WHERE id = NEW.experiencia_id//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador discoverme.update_puntuacion_update_comentario
DROP TRIGGER IF EXISTS `update_puntuacion_update_comentario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `update_puntuacion_update_comentario` AFTER UPDATE ON `comentarios` FOR EACH ROW UPDATE experiencias SET puntuacion = (SELECT avg(puntos) FROM comentarios WHERE experiencia_id = NEW.experiencia_id) WHERE id = NEW.experiencia_id//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando datos para la tabla discoverme.comentarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` (`id`, `comentario`, `fecha`, `puntos`, `titulo`, `experiencia_id`, `usuario_id`) VALUES
  (null, 'Me lo pase genial es flipante ver como se parecen las figuras a los personajes reales, 100% recomendable', '2019-03-13', 4, 'Me ha gustado mucho.', 1, '00000000X'),
  (null, 'Muy buen ambiente copas, copas no demasiado caras, gran sala llena de billares y futbolines, volvere!', '2019-03-13', 5, 'El experiencia es perfecto.', 2, '00000000X'),
  (null, 'Demasiado ruidoso, mesas sucias donde te quedas pegado, no creo que vuelva', '2019-03-13', 2, 'No me ha gustado demasiado.', 2, '11111111X'),
  (null, 'El lugar esta bien, pero mejoraria varias cosas', '2019-03-13', 3, 'No esta mal, pero puede mejorar.', 2, '77777777X'),
  (null, 'El sitio es perfecto', '2019-03-13', 5, 'El sitio es perfecto.', 5, '00000000X'),
  (null, 'El sitio no es de mi agrado', '2019-03-13', 1, 'No me ha gustado.', 5, '11111111X'),
  (null, 'El lugar esta bien, pero mejoraria varias cosas', '2019-03-13', 3, 'No esta mal, pero puede mejorar.', 5, '77777777X'),
  (null, 'El sitio es perfecto', '2019-03-13', 5, 'El sitio es perfecto.', 6, '00000000X'),
  (null, 'El sitio no es de mi agrado', '2019-03-13', 1, 'No me ha gustado.', 6, '11111111X'),
  (null, 'El lugar esta bien, pero mejoraria varias cosas', '2019-03-13', 3, 'No esta mal, pero puede mejorar.', 6, '77777777X');
INSERT INTO `comentarios` (`id`, `titulo`, `comentario`, `puntos`, `experiencia_id`, `usuario_id`, `fecha`) VALUES
  (null, 'El sitio es perfecto.','El sitio es perfecto',5,7,'00000000X','2019-03-13'),
  (null, 'No me ha gustado.','El sitio no es de mi agrado',1,7,'11111111X','2019-03-13'),
  (null, 'No esta mal, pero puede mejorar.','El lugar esta bien, pero mejoraria varias cosas',3,7,'77777777X','2019-03-13'),
  (null, 'El sitio es perfecto.','El sitio es perfecto',5,8,'00000000X','2019-03-13'),
  (null, 'No me ha gustado.','El sitio no es de mi agrado',1,8,'11111111X','2019-03-13'),
  (null, 'No esta mal, pero puede mejorar.','El lugar esta bien, pero mejoraria varias cosas',3,8,'77777777X','2019-03-13'),
  (null, 'El sitio es perfecto.','El sitio es perfecto',5,9,'00000000X','2019-03-13'),
  (null, 'No me ha gustado.','El sitio no es de mi agrado',1,9,'11111111X','2019-03-13'),
  (null, 'No esta mal, pero puede mejorar.','El lugar esta bien, pero mejoraria varias cosas',3,9,'77777777X','2019-03-13'),
  (null, 'El sitio es perfecto.','El sitio es perfecto',5,10,'00000000X','2019-03-13'),
  (null, 'No me ha gustado.','El sitio no es de mi agrado',1,10,'11111111X','2019-03-13'),
  (null, 'No esta mal, pero puede mejorar.','El lugar esta bien, pero mejoraria varias cosas',3,10,'77777777X','2019-03-13');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
