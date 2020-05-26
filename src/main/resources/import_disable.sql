-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: discoverme
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'Me lo pase genial es flipante ver como se parecen las figuras a los personajes reales, 100% recomendable','2019-03-13',4,'Me ha gustado mucho.',1,'00000000X'),(2,'Muy buen ambiente copas, copas no demasiado caras, gran sala llena de billares y futbolines, volvere!','2019-03-13',5,'El experiencia es perfecto.',2,'00000000X'),(3,'Demasiado ruidoso, mesas sucias donde te quedas pegado, no creo que vuelva','2019-03-13',2,'No me ha gustado demasiado.',2,'11111111X'),(4,'El lugar esta bien, pero mejoraria varias cosas','2019-03-13',3,'No esta mal, pero puede mejorar.',2,'77777777X'),(5,'El sitio es perfecto','2019-03-13',5,'El sitio es perfecto.',5,'00000000X'),(6,'El sitio no es de mi agrado','2019-03-13',1,'No me ha gustado.',5,'11111111X'),(7,'El lugar esta bien, pero mejoraria varias cosas','2019-03-13',3,'No esta mal, pero puede mejorar.',5,'77777777X'),(8,'El sitio es perfecto','2019-03-13',5,'El sitio es perfecto.',6,'00000000X'),(9,'El sitio no es de mi agrado','2019-03-13',1,'No me ha gustado.',6,'11111111X'),(10,'El lugar esta bien, pero mejoraria varias cosas','2019-03-13',3,'No esta mal, pero puede mejorar.',6,'77777777X'),(11,'El sitio es perfecto','2019-03-13',5,'El sitio es perfecto.',7,'00000000X'),(12,'El sitio no es de mi agrado','2019-03-13',1,'No me ha gustado.',7,'11111111X'),(13,'El lugar esta bien, pero mejoraria varias cosas','2019-03-13',3,'No esta mal, pero puede mejorar.',7,'77777777X'),(14,'El sitio es perfecto','2019-03-13',5,'El sitio es perfecto.',8,'00000000X'),(15,'El sitio no es de mi agrado','2019-03-13',1,'No me ha gustado.',8,'11111111X'),(16,'El lugar esta bien, pero mejoraria varias cosas','2019-03-13',3,'No esta mal, pero puede mejorar.',8,'77777777X'),(17,'El sitio es perfecto','2019-03-13',5,'El sitio es perfecto.',9,'00000000X'),(18,'El sitio no es de mi agrado','2019-03-13',1,'No me ha gustado.',9,'11111111X'),(19,'El lugar esta bien, pero mejoraria varias cosas','2019-03-13',3,'No esta mal, pero puede mejorar.',9,'77777777X'),(20,'El sitio es perfecto','2019-03-13',5,'El sitio es perfecto.',10,'00000000X'),(21,'El sitio no es de mi agrado','2019-03-13',1,'No me ha gustado.',10,'11111111X'),(22,'El lugar esta bien, pero mejoraria varias cosas','2019-03-13',3,'No esta mal, pero puede mejorar.',10,'77777777X');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_puntuacion_insert_comentario` AFTER INSERT ON `comentarios` FOR EACH ROW UPDATE experiencias SET puntuacion = (SELECT avg(puntos) FROM comentarios WHERE experiencia_id = NEW.experiencia_id) WHERE id = NEW.experiencia_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_puntuacion_update_comentario` AFTER UPDATE ON `comentarios` FOR EACH ROW UPDATE experiencias SET puntuacion = (SELECT avg(puntos) FROM comentarios WHERE experiencia_id = NEW.experiencia_id) WHERE id = NEW.experiencia_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_puntuacion_delete_comentario` AFTER DELETE ON `comentarios` FOR EACH ROW UPDATE experiencias SET puntuacion = (SELECT avg(puntos) FROM comentarios WHERE experiencia_id = OLD.experiencia_id) WHERE id = OLD.experiencia_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `experiencias`
--

LOCK TABLES `experiencias` WRITE;
/*!40000 ALTER TABLE `experiencias` DISABLE KEYS */;
INSERT INTO `experiencias` VALUES (1,'museo de cera de barcelona',NULL,NULL,NULL,NULL,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.8605125395225!2d2.174806115818462!3d41.37711517926511!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a256e3da7249%3A0x987ab828031eedf0!2sMuseo+de+Cera!5e0!3m2!1ses!2ses!4v1553769273339\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',7,'Museo de cera',0,4,'88888888X'),(2,'taberna nocturna',NULL,NULL,'03:00:00','20:00:00','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.9981113844015!2d2.1880684158189125!3d41.395847379263444!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a3195c0af997%3A0xe87fb2b71913aad1!2sL&#39;Ovella+Negra+Marina!5e0!3m2!1ses!2ses!4v1553769334565\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',5,'Ovella negra',0,3,'99999999X'),(3,'calsotada popular al parc de la ciutadella','2019-05-24','2019-05-24','19:00:00','11:30:00','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.3537694311017!2d2.1838265158187506!3d41.38812297926416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2fd439609e1%3A0x42386118e65a3d70!2sParque+de+la+Ciudadela!5e0!3m2!1ses!2ses!4v1553769399732\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',20,'Calsotada popular',5,0,'66666666X'),(4,'Ruta per collserola, running, bici, treking',NULL,NULL,NULL,NULL,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.2334770333127!2d2.1171532158193433!3d41.41245017926186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4983796439809%3A0xd78f794b1ccc878e!2sCarr.+de+las+Aguas%2C+Barcelona!5e0!3m2!1ses!2ses!4v1553769433442\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',50,'Cami de les aigues',0,0,'66666666X'),(5,'La original “Catedral del siglo XX” de Antonio Gaudí, es el emblema de la ciudad y el monumento más visitado. Su construcción comenzó en 1882 y se espera que finalice en 2026, tan solo 144 años después.',NULL,NULL,'09:00:00','18:00:00','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.637870128193!2d2.1735833221789846!3d41.40367011609628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2dcd83dfb93%3A0x9bd8aac21bc3c950!2sBas%C3%ADlica+de+la+Sagrada+Fam%C3%ADlia!5e0!3m2!1ses!2ses!4v1553769599333\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',5,'Sagrada Familia',15,3,'66666666X'),(6,'Este inmenso parque fue declarado Patrimonio de la Humanidad por la UNESCO en 1.984, y es otra de las geniales obras de Gaudí, del cual podremos aprender más en su Casa Museo que se encuentra dentro del recinto.',NULL,NULL,'08:30:00','18:15:00','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.1392965394148!2d2.1505058158193804!3d41.41449477926168!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2ae52d441ab%3A0x899a0ba01aaace58!2sPark+G%C3%BCell!5e0!3m2!1ses!2ses!4v1553770111689\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',5,'Parque Güell',9,3,'66666666X'),(7,'Montserrat es un macizo rocoso considerado tradicionalmente la montaña más importante y significativa de Cataluña. Está situada a 30 km del centro de Barcelona entre las comarcas de la Anoia, del Bajo Llobregat y del Bages.',NULL,NULL,NULL,NULL,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d20074.471054770027!2d1.8213766519025283!3d41.58897947537132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a45fe93018cfe7%3A0x1ebab017ff86d3c!2sMacizo+de+Montserrat!5e0!3m2!1ses!2ses!4v1553769756844\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',90,'Montserrat',0,3,'66666666X'),(8,'Montjuic o Montjuich?? es una montaña de Barcelona, con una altura de 173 metros sobre el nivel del mar, que alberga un barrio homónimo, en el distrito de Sants-Montjuic.',NULL,NULL,NULL,NULL,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11977.856623093407!2d2.158738343771806!3d41.36399931825983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a24230e2aebd%3A0x116c63ebef94b50!2sMontjuic!5e0!3m2!1ses!2ses!4v1553769802657\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',15,'Montjuic',0,3,'66666666X'),(9,'La Festa Major de Gràcia 2018 tiene actividades culturales, creativas, gastronómicas  y musicales durante toda la semana. También hay concursos de baile y deportivos, espectáculos de castellers, teatro, exposiciones y cine al aire libre.','2019-08-15','2019-08-21',NULL,NULL,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11970.669083146506!2d2.1485696437874817!3d41.40303171820245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2bda822050f%3A0xb4d1fd36e015a923!2sVila+de+Gr%C3%A0cia%2C+Barcelona!5e0!3m2!1ses!2ses!4v1553769839813\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',15,'Festa Major de Gràcia',0,3,'88888888X'),(10,'Las Fiestas de Sants o Fiesta Mayor de Sants (en catalán, Festa Major de Sants) se celebra en el barrio de Sants (Barcelona) el día de san Bartolomé (24 de agosto). Su elemento más distintivo es la ornamentación de calles, pero también se celebran conciertos, bailes populares, exhibiciones castelleras, gigantes y cabezudos, correfocs de diablos y dragones de fuego y otros eventos festivos','2019-08-24','2019-08-30',NULL,NULL,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11975.376755397396!2d2.1366403234772666!3d41.37746981039048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a498863a0819fd%3A0xfdb69df66dad168c!2sSants%2C+Barcelona!5e0!3m2!1ses!2ses!4v1553769881113\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',15,'Fiesta Mayor de Sants',0,3,'88888888X');
/*!40000 ALTER TABLE `experiencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `experiencias_tipos`
--

LOCK TABLES `experiencias_tipos` WRITE;
/*!40000 ALTER TABLE `experiencias_tipos` DISABLE KEYS */;
INSERT INTO `experiencias_tipos` VALUES (4,3),(4,2),(3,4),(2,6),(1,1),(5,1),(6,1),(6,2),(7,1),(7,2),(7,3),(8,1),(8,2),(8,3),(9,1),(9,4),(9,5),(9,6),(10,1),(10,4),(10,5),(10,6);
/*!40000 ALTER TABLE `experiencias_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,'Calsotada-popular-0.jpg',3),(2,'Calsotada-popular-1.jpg',3),(3,'Calsotada-popular-2.jpg',3),(4,'Calsotada-popular-3.jpg',3),(5,'Cami-de-les-aigues-0.jpg',4),(6,'Cami-de-les-aigues-1.jpg',4),(7,'Cami-de-les-aigues-2.jpg',4),(8,'Cami-de-les-aigues-3.jpg',4),(9,'Festa-Major-de-Gràcia-0.jpg',9),(10,'Festa-Major-de-Gràcia-1.jpg',9),(11,'Festa-Major-de-Gràcia-2.jpg',9),(12,'Festa-Major-de-Gràcia-3.jpg',9),(13,'Fiesta-Mayor-de-Sants-0.jpg',10),(14,'Fiesta-Mayor-de-Sants-1.jpg',10),(15,'Fiesta-Mayor-de-Sants-2.jpg',10),(16,'Fiesta-Mayor-de-Sants-3.jpg',10),(17,'Ovella-negra-0.png',2),(18,'Ovella-negra-1.jpg',2),(19,'Ovella-negra-2.jpg',2),(20,'Ovella-negra-3.jpg',2),(21,'Montjuic-0.jpg',8),(22,'Montjuic-1.jpeg',8),(23,'Montjuic-2.jpg',8),(24,'Montjuic-3.jpg',8),(25,'Montserrat-0.jpg',7),(26,'Montserrat-1.jpg',7),(27,'Montserrat-2.jpg',7),(28,'Montserrat-3.jpg',7),(29,'Museo-de-cera-0.png',1),(30,'Museo-de-cera-1.jpg',1),(31,'Museo-de-cera-2.jpg',1),(32,'Museo-de-cera-3.jpg',1),(33,'Parque-Güell-0.jpg',6),(34,'Parque-Güell-1.jpg',6),(35,'Parque-Güell-2.jpg',6),(36,'Parque-Güell-3.jpg',6),(37,'Sagrada-Familia-0.jpg',5),(38,'Sagrada-Familia-1.jpg',5),(39,'Sagrada-Familia-2.jpg',5),(40,'Sagrada-Familia-3.jpg',5);
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hoteles`
--

LOCK TABLES `hoteles` WRITE;
/*!40000 ALTER TABLE `hoteles` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` VALUES (1,'#A1S2D3F4','Dos por uno en copas.','2019-08-25','2019-08-23','01:00:00','20:00:00','2x1',2),(2,'#Z1X2C3V4','30% de descuento si presenta este codigo al pagar.',NULL,NULL,NULL,NULL,'descuentos 30%',1),(3,'#12345678','10% descuento en desayunos.','2019-08-25','2019-08-23','10:00:00','08:00:00','10% descuento',NULL),(4,'#00000000','15% descuento en comidas.','2019-08-25','2019-08-23','15:00:00','12:00:00','15% descuento',NULL),(5,'#11111111','20% descuento en cenas.','2019-08-25','2019-08-23','12:00:00','20:00:00','20% descuento',NULL);
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
INSERT INTO `perfiles` VALUES (1,'Deluxe'),(2,'Soltero'),(3,'Low Cost'),(4,'Aventurero'),(5,'Familiar'),(6,'Mayor de 50');
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perfiles_tipos`
--

LOCK TABLES `perfiles_tipos` WRITE;
/*!40000 ALTER TABLE `perfiles_tipos` DISABLE KEYS */;
INSERT INTO `perfiles_tipos` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,2),(3,4),(3,5),(3,6),(4,1),(4,2),(4,3),(4,4),(5,1),(5,2),(5,4),(5,5),(6,1),(6,2),(6,4),(6,5);
/*!40000 ALTER TABLE `perfiles_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Director'),(2,'Recepcionista'),(3,'Camarero'),(4,'Huesped'),(5,'Colaborador');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Disfruta tomando el sol y refrescándote en nuestra piscina exterior.',_binary '','2019-10-30','2019-05-01','20:00:00','08:00:00','Piscina exterior',0),(2,'Disfruta relajándote en nuestro SPA.',_binary '',NULL,NULL,'20:00:00','08:00:00','Servicio SPA',0),(3,'Disfruta del buffet continental de desayuno.',_binary '\0',NULL,NULL,'11:00:00','08:00:00','Servicio desayunos',10),(4,'Disfruta del buffet continental de comidas.',_binary '',NULL,NULL,'15:00:00','13:00:00','Servicio comidas',20),(5,'Disfruta del buffet continental de cenas.',_binary '\0',NULL,NULL,'23:00:00','20:00:00','Servicio cenas',20);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'Cultural'),(2,'Natural'),(3,'Deportivo'),(4,'Eventos'),(5,'Folclore'),(6,'Nocturno');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('00000000X','Manuel','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',3,4),('11111111X','Carlos','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',5,4),('22222222X','Jose','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',2,4),('33333333X','David','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',NULL,2),('44444444X','Noemi','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',NULL,3),('55555555X','Laura','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',NULL,3),('66666666X','Maria','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',NULL,2),('77777777X','Javier','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',NULL,1),('88888888X','Noelia','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',NULL,5),('99999999X','Cristina','$2a$04$lC/5JWtrxvxhDDa9In5eUeoKOYJYWjzb/vntA5uhoXc42gAMgff9.','spain',NULL,5);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12 21:57:35
