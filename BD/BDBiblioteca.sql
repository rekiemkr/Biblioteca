/*
SQLyog Enterprise - MySQL GUI v8.1 
MySQL - 5.7.16-log : Database - biblioteca
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`biblioteca` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `biblioteca`;

/*Table structure for table `seguridad` */

DROP TABLE IF EXISTS `seguridad`;

CREATE TABLE `seguridad` (
  `id_seguridad` int(11) NOT NULL,
  `accion` varchar(30) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `tabla` varchar(50) DEFAULT NULL,
  `id_registro` varchar(100) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mac_address` varchar(100) DEFAULT NULL,
  `nom_campo_mod` varchar(1000) DEFAULT NULL,
  `valor_ant_campo` varchar(1000) DEFAULT NULL,
  `nuevo_valor_campo` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_seguridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `seguridad` */

insert  into `seguridad`(id_seguridad,accion,fecha,usuario,tabla,id_registro,ip,mac_address,nom_campo_mod,valor_ant_campo,nuevo_valor_campo) values (1,'Modificar','2016-11-10 19:00:24','kira','tb_usuario','29','192.168.1.157','9CD21E8A7A10',',clave',',123456',',Corazon'),(2,'Modificar','2016-11-14 14:51:13','kira','tb_usuario','35','192.168.1.157','C4346B43726D','','',''),(3,'Insertar','2016-11-14 14:56:59','rekiemkr','tb_elemento','15','192.168.1.157','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','15,fd465r6,dfgfd56,1990,2,~\\Archivos\\Imagenes_131236270191427037.jpg,4,1'),(4,'Insertar','2016-11-14 14:56:59','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,2'),(5,'Insertar','2016-11-14 14:56:59','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,3'),(6,'Insertar','2016-11-14 14:57:00','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,4'),(7,'Insertar','2016-11-14 14:57:00','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,5'),(8,'Insertar','2016-11-14 14:57:00','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,6'),(9,'Insertar','2016-11-14 14:57:01','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,7'),(10,'Insertar','2016-11-14 14:57:01','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,8'),(11,'Insertar','2016-11-14 14:57:01','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,9'),(12,'Insertar','2016-11-14 14:57:01','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,10'),(13,'Insertar','2016-11-14 14:57:02','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,11'),(14,'Insertar','2016-11-14 14:57:02','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,12'),(15,'Insertar','2016-11-14 14:57:02','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,13'),(16,'Insertar','2016-11-14 14:57:02','rekiemkr','tb_elemento_autor','15','192.168.1.157','C4346B43726D','elemento_id,autor_id','','15,14'),(17,'Insertar','2016-11-14 14:57:02','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,2'),(18,'Insertar','2016-11-14 14:57:03','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,4'),(19,'Insertar','2016-11-14 14:57:03','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,5'),(20,'Insertar','2016-11-14 14:57:03','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,6'),(21,'Insertar','2016-11-14 14:57:03','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,8'),(22,'Insertar','2016-11-14 14:57:03','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,9'),(23,'Insertar','2016-11-14 14:57:03','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,10'),(24,'Insertar','2016-11-14 14:57:04','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,11'),(25,'Insertar','2016-11-14 14:57:04','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,12'),(26,'Insertar','2016-11-14 14:57:04','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,13'),(27,'Insertar','2016-11-14 14:57:04','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,14'),(28,'Insertar','2016-11-14 14:57:04','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,15'),(29,'Insertar','2016-11-14 14:57:05','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,16'),(30,'Insertar','2016-11-14 14:57:05','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,17'),(31,'Insertar','2016-11-14 14:57:05','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,18'),(32,'Insertar','2016-11-14 14:57:05','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,19'),(33,'Insertar','2016-11-14 14:57:05','rekiemkr','tb_categoria_elemento','15','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','15,20'),(34,'Eliminar','2016-11-14 14:58:08','rekiemkr','tb_elemento','15','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva',NULL,''),(35,'Eliminar','2016-11-14 15:00:01','rekiemkr','tb_categoria','20','192.168.1.157','C4346B43726D','id,nombre','20,Porno ajaja xd',''),(36,'Eliminar','2016-11-14 15:00:15','rekiemkr','tb_categoria','19','192.168.1.157','C4346B43726D','id,nombre','19,Triller',''),(37,'Insertar','2016-11-15 08:57:06','adri1','tb_prestamo','14','192.168.1.157','C4346B43726D','id,id_usuario,estado_id,fecha_solicitud','','14,27,4,2016-11-15 08:57:06'),(38,'Insertar','2016-11-15 08:58:58','rekiemkr','tb_prestamo','14','192.168.1.157','C4346B43726D','fecha,admin_id,fecha_entrega,estado_id','','2016-11-15,29,2016-11-21,1'),(39,'Insertar','2016-11-15 08:59:13','rekiemkr','tb_multa','27','192.168.1.157','C4346B43726D','fecha_pago,cancelado','','2016-11-15,1'),(40,'Eliminar','2016-11-16 18:13:26','rekiemkr','tb_elemento','11','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva',NULL,''),(41,'Eliminar','2016-11-16 18:17:03','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva',NULL,''),(42,'Insertar','2016-11-16 18:19:37','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','14,asfasfasf,qwfqwfqwf,1234,1,~\\Archivos\\Imagenes_131238119777348129.jpg,14,3'),(43,'Insertar','2016-11-16 18:19:38','rekiemkr','tb_elemento_autor','14','192.168.1.157','C4346B43726D','elemento_id,autor_id','','14,2'),(44,'Insertar','2016-11-16 18:19:38','rekiemkr','tb_elemento_autor','14','192.168.1.157','C4346B43726D','elemento_id,autor_id','','14,10'),(45,'Insertar','2016-11-16 18:19:38','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,2'),(46,'Insertar','2016-11-16 18:19:38','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,13'),(47,'Insertar','2016-11-16 18:19:38','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,14'),(48,'Eliminar','2016-11-16 18:21:18','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva',NULL,''),(49,'Insertar','2016-11-16 18:23:00','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','14,sdqdqwd,qwdqwdqsd,1241,1,~\\Archivos\\Imagenes_131238121797933699.jpg,14,3'),(50,'Insertar','2016-11-16 18:23:00','rekiemkr','tb_elemento_autor','14','192.168.1.157','C4346B43726D','elemento_id,autor_id','','14,3'),(51,'Insertar','2016-11-16 18:23:00','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,10'),(52,'Eliminar','2016-11-16 18:23:11','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva','14,sdqdqwd,qwdqwdqsd,1241,1',''),(53,'Insertar','2016-11-16 18:25:45','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','14,d2qdwwqd,qwdqwdasd,1243,1,~\\Archivos\\Imagenes_131238123453428388.jpg,12,3'),(54,'Insertar','2016-11-16 18:25:45','rekiemkr','tb_elemento_autor','14','192.168.1.157','C4346B43726D','elemento_id,autor_id','','14,2'),(55,'Insertar','2016-11-16 18:25:45','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,4'),(56,'Eliminar','2016-11-16 18:26:06','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva',NULL,''),(57,'Insertar','2016-11-16 18:30:28','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','14,adsad,asdasd,1241,3,~\\Archivos\\Imagenes_131238126277219900.jpg,17,4'),(58,'Insertar','2016-11-16 18:30:28','rekiemkr','tb_elemento_autor','14','192.168.1.157','C4346B43726D','elemento_id,autor_id','','14,2'),(59,'Insertar','2016-11-16 18:30:28','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,2'),(60,'Eliminar','2016-11-16 18:30:38','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva',NULL,''),(61,'Insertar','2016-11-16 18:31:41','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','14,qwfdqwf,qwdasd,1243,1,~\\Archivos\\Imagenes_131238127014602076.jpg,12,6'),(62,'Insertar','2016-11-16 18:31:41','rekiemkr','tb_elemento_autor','14','192.168.1.157','C4346B43726D','elemento_id,autor_id','','14,2'),(63,'Insertar','2016-11-16 18:31:41','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,9'),(64,'Eliminar','2016-11-16 18:31:50','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva',NULL,''),(65,'Insertar','2016-11-16 18:32:34','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','14,asdq,wqwfqwf,1241,1,~\\Archivos\\Imagenes_131238127545762456.jpg,12,3'),(66,'Insertar','2016-11-16 18:32:35','rekiemkr','tb_elemento_autor','14','192.168.1.157','C4346B43726D','elemento_id,autor_id','','14,2'),(67,'Insertar','2016-11-16 18:32:35','rekiemkr','tb_categoria_elemento','14','192.168.1.157','C4346B43726D','elemento_id,categoria_id','','14,6'),(68,'Eliminar','2016-11-16 18:32:45','rekiemkr','tb_elemento','14','192.168.1.157','C4346B43726D','id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva','14,asdq,wqwfqwf,1241,1,~\\Archivos\\Imagenes_131238127545762456.jpg',''),(69,'Insertar','2016-11-17 17:22:16','rekiemkr','tb_multa','37','192.168.1.157','C4346B43726D','fecha_pago,cancelado','','2016-11-17,1'),(70,'Insertar','2016-11-17 17:23:48','tommmy16','tb_prestamo','15','192.168.1.157','C4346B43726D','id,id_usuario,estado_id,fecha_solicitud','','15,37,4,2016-11-17 17:23:47'),(71,'Insertar','2016-11-18 07:27:21','','tb_usuario','38','10.157.10.201','C4346B43726D','id,nombre,nickname,clave,correo,telefono,rol_id,estado_id','','38,stiven,stiven12,123456,st3v3n@gmai.com,5555555555,3,1'),(72,'Insertar','2016-11-18 07:31:31','rekiemkr','tb_autor','15','10.157.10.201','C4346B43726D','id,nombre,sexo,nacionalidad,año_de_nacimiento','','15,Vatsyayana,M,93,520'),(73,'Insertar','2016-11-18 07:31:45','rekiemkr','tb_categoria','19','10.157.10.201','C4346B43726D','id,nombre','','19,Erotico'),(74,'Insertar','2016-11-18 07:31:53','rekiemkr','tb_categoria','20','10.157.10.201','C4346B43726D','id,nombre','','20,Porno'),(75,'Insertar','2016-11-18 07:33:08','rekiemkr','tb_elemento','14','10.157.10.201','C4346B43726D','id,nombre,editorial,año,tipo_id,url,cantidad,reserva','','14,kamasutra,ninguna,1354,1,~\\Archivos\\Imagenes_131239459884270124.jpg,60,4'),(76,'Insertar','2016-11-18 07:33:08','rekiemkr','tb_elemento_autor','14','10.157.10.201','C4346B43726D','elemento_id,autor_id','','14,15'),(77,'Insertar','2016-11-18 07:33:08','rekiemkr','tb_categoria_elemento','14','10.157.10.201','C4346B43726D','elemento_id,categoria_id','','14,19'),(78,'Insertar','2016-11-18 07:33:08','rekiemkr','tb_categoria_elemento','14','10.157.10.201','C4346B43726D','elemento_id,categoria_id','','14,20'),(79,'Insertar','2016-11-18 07:51:49','stiven12','tb_prestamo','15','10.157.10.201','C4346B43726D','id,id_usuario,estado_id,fecha_solicitud','','15,38,4,2016-11-18 07:51:48'),(80,'Insertar','2016-11-18 07:53:21','rekiemkr','tb_prestamo','15','10.157.10.201','C4346B43726D','fecha,admin_id,fecha_entrega,estado_id','','2016-11-18,29,2016-11-24,1'),(81,'Insertar','2016-11-18 08:39:31','','tb_usuario','39','10.157.10.201','C4346B43726D','id,nombre,nickname,clave,correo,telefono,rol_id,estado_id','','39,Aljandro,maky,123,pacoprz@hotmail.com,3204956927,3,1'),(82,'Insertar','2016-11-18 08:40:45','maky','tb_prestamo','16','10.157.10.201','C4346B43726D','id,id_usuario,estado_id,fecha_solicitud','','16,39,4,2016-11-18 08:40:44'),(83,'Insertar','2016-11-18 08:41:04','maky','tb_prestamo','17','10.157.10.201','C4346B43726D','id,id_usuario,estado_id,fecha_solicitud','','17,39,4,2016-11-18 08:41:03'),(84,'Insertar','2016-11-18 08:41:11','maky','tb_prestamo','18','10.157.10.201','C4346B43726D','id,id_usuario,estado_id,fecha_solicitud','','18,39,4,2016-11-18 08:41:11'),(85,'Insertar','2016-11-18 08:42:25','rekiemkr','tb_prestamo','16','10.157.10.201','C4346B43726D','fecha,admin_id,fecha_entrega,estado_id','','2016-11-18,29,2016-11-24,1'),(86,'Insertar','2016-11-18 08:42:29','rekiemkr','tb_prestamo','17','10.157.10.201','C4346B43726D','fecha,admin_id,fecha_entrega,estado_id','','2016-11-18,29,2016-11-24,1'),(87,'Insertar','2016-11-18 08:42:32','rekiemkr','tb_prestamo','18','10.157.10.201','C4346B43726D','fecha,admin_id,fecha_entrega,estado_id','','2016-11-18,29,2016-11-24,1'),(88,'Insertar','2016-11-18 08:45:21','tommmy16','tb_prestamo','19','10.157.10.201','C4346B43726D','id,id_usuario,estado_id,fecha_solicitud','','19,37,4,2016-11-18 08:45:21'),(89,'Insertar','2016-11-18 08:45:52','rekiemkr','tb_prestamo','19','10.157.10.201','C4346B43726D','fecha,admin_id,fecha_entrega,estado_id','','2016-11-18,29,2016-12-03,1');

/*Table structure for table `tb_autor` */

DROP TABLE IF EXISTS `tb_autor`;

CREATE TABLE `tb_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nacionalidad` int(11) DEFAULT NULL,
  `año_de_nacimiento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tb_autor` (`nacionalidad`),
  CONSTRAINT `FK_tb_autor` FOREIGN KEY (`nacionalidad`) REFERENCES `tb_pais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `tb_autor` */

insert  into `tb_autor`(id,nombre,sexo,nacionalidad,año_de_nacimiento) values (2,'Marques de Sade','M',71,1740),(3,'Carlos Cuauhtemoc Sanchez','M',147,1964),(4,'Gabriel Garcia Maquez','M',45,1927),(5,'William Golding','M',182,1911),(6,'Ernest Hermingway','M',65,1899),(7,'Fernando Vallejo','M',45,1994),(8,'Julio Verme','M',71,1828),(9,'Miguel de Cervantes','M',64,1547),(10,'Herman Melville','M',65,1819),(11,'Ana Frank','F',5,1929),(12,'Victor Hugo','M',71,1802),(13,'Hector laboe','M',45,1976),(14,'ewqdqwdqwdadsascascasdasdqwdqwdqwdqwdqwdqwdasdasda','M',3,1234),(15,'Vatsyayana','M',93,520);

/*Table structure for table `tb_categoria` */

DROP TABLE IF EXISTS `tb_categoria`;

CREATE TABLE `tb_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `tb_categoria` */

insert  into `tb_categoria`(id,nombre) values (2,'Terror'),(4,'Intriga'),(5,'Novela'),(6,'Realismo Magico'),(8,'Literatura juvenil'),(9,'Alegoria'),(10,'Ficcion Especulativa'),(11,'Ficcion literaria'),(12,'Novela autobiografica'),(13,'Literatura contemporanea'),(14,'Aventura'),(15,'Ficcion'),(16,'Epico'),(17,'Autobiografia'),(18,'Drama Historico'),(19,'Erotico'),(20,'Porno');

/*Table structure for table `tb_categoria_elemento` */

DROP TABLE IF EXISTS `tb_categoria_elemento`;

CREATE TABLE `tb_categoria_elemento` (
  `elemento_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  KEY `IXFK_tb_categoria_elemento_tb_categoria` (`categoria_id`),
  KEY `IXFK_tb_categoria_elemento_tb_elemento` (`elemento_id`),
  CONSTRAINT `FK_tb_categoria_elemento_tb_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `tb_categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_categoria_elemento_tb_elemento` FOREIGN KEY (`elemento_id`) REFERENCES `tb_elemento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_categoria_elemento` */

insert  into `tb_categoria_elemento`(elemento_id,categoria_id) values (3,4),(4,5),(5,9),(5,10),(4,4),(4,9),(5,4),(6,11),(7,12),(7,13),(8,4),(8,5),(10,5),(12,17),(13,5),(13,18),(14,19),(14,20);

/*Table structure for table `tb_elemento` */

DROP TABLE IF EXISTS `tb_elemento`;

CREATE TABLE `tb_elemento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `editorial` varchar(50) DEFAULT NULL,
  `año_publicacion` int(11) DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `reserva` int(11) DEFAULT NULL,
  `librosDisp` int(11) DEFAULT NULL,
  `librosPres` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IXFK_tb_elemento_tb_tipo_elemento` (`tipo_id`),
  CONSTRAINT `FK_tb_elemento_tb_tipo_elemento` FOREIGN KEY (`tipo_id`) REFERENCES `tb_tipo_elemento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `tb_elemento` */

insert  into `tb_elemento`(id,nombre,editorial,año_publicacion,tipo_id,url,cantidad,reserva,librosDisp,librosPres) values (3,'La Fuerza De Sheccid','Ediciones Selectas Diamantes',1997,1,'~\\Archivos\\Imagenes_131213815981243221.jpg',12,5,7,0),(4,'Cien años de soledad','Harper, Jonathan Cape',1967,1,'~\\Archivos\\Imagenes_131213818234332090.jpg',14,7,7,1),(5,'El señor de las moscas','Faber and Faber',1954,1,'~\\Archivos\\Imagenes_131213834896655120.jpeg',12,3,9,0),(6,'El viejo y el mar','Ninguna',1952,1,'~\\Archivos\\Imagenes_131219898031285928.jpg',12,6,6,0),(7,'La virgen de los sicarios','Alfaguara',1994,1,'~\\Archivos\\Imagenes_131219910106816609.jpg',12,6,6,0),(8,'DOCE CUENTOS PEREGRINOS','Ninguna',1992,1,'~\\Archivos\\Imagenes_131224776541285757.jpg',12,5,7,2),(10,'Don Quijote de la Mancha','Francisco de Robles',1605,1,'~\\Archivos\\Imagenes_131226116070373680.jpg',45,2,43,1),(12,'El diario de Ana Frank','Helmut Salden',1947,1,'~\\Archivos\\Imagenes_131226120659666172.jpg',34,4,30,1),(13,'Los miserables','Émile Bayard',1862,1,'~\\Archivos\\Imagenes_131226125708694960.jpg',20,2,18,0),(14,'kamasutra','ninguna',1354,1,'~\\Archivos\\Imagenes_131239459884270124.jpg',60,4,56,2);

/*Table structure for table `tb_elemento_autor` */

DROP TABLE IF EXISTS `tb_elemento_autor`;

CREATE TABLE `tb_elemento_autor` (
  `elemento_id` int(11) DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL,
  KEY `IXFK_tb_elemento_autor_tb_autor` (`autor_id`),
  KEY `IXFK_tb_elemento_autor_tb_elemento` (`elemento_id`),
  CONSTRAINT `FK_tb_elemento_autor_tb_autor` FOREIGN KEY (`autor_id`) REFERENCES `tb_autor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_elemento_autor_tb_elemento` FOREIGN KEY (`elemento_id`) REFERENCES `tb_elemento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_elemento_autor` */

insert  into `tb_elemento_autor`(elemento_id,autor_id) values (3,3),(5,5),(6,6),(7,7),(8,4),(10,9),(12,11),(13,12),(4,4),(14,15);

/*Table structure for table `tb_estado_prestamo` */

DROP TABLE IF EXISTS `tb_estado_prestamo`;

CREATE TABLE `tb_estado_prestamo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_estado_prestamo` */

insert  into `tb_estado_prestamo`(id,nombre) values (1,'activo'),(2,'entregado'),(3,'en mora'),(4,'pendiente');

/*Table structure for table `tb_estado_usuario` */

DROP TABLE IF EXISTS `tb_estado_usuario`;

CREATE TABLE `tb_estado_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_estado_usuario` */

insert  into `tb_estado_usuario`(id,nombre) values (1,'no deudor'),(2,'deudor'),(3,'administrativo');

/*Table structure for table `tb_multa` */

DROP TABLE IF EXISTS `tb_multa`;

CREATE TABLE `tb_multa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `prestamo_id` int(11) DEFAULT NULL,
  `dias_mora` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `cancelado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IXFK_tb_multa_tb_prestamo` (`prestamo_id`),
  KEY `FK_tb_multa` (`usuario_id`),
  CONSTRAINT `FK_tb_multa` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_multa_tb_prestamo` FOREIGN KEY (`prestamo_id`) REFERENCES `tb_prestamo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tb_multa` */

insert  into `tb_multa`(id,fecha,usuario_id,prestamo_id,dias_mora,valor,fecha_pago,cancelado) values (1,'2016-11-03',32,11,15,52500,NULL,0),(2,'2016-11-03',32,10,15,52500,NULL,0),(3,'2016-11-08',27,3,8,28000,'2016-11-15',1),(4,'2016-11-09',27,5,2,6000,'2016-11-15',1),(5,'2016-11-17',37,13,1,3500,'2016-11-17',1);

/*Table structure for table `tb_pais` */

DROP TABLE IF EXISTS `tb_pais`;

CREATE TABLE `tb_pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_pais` */

insert  into `tb_pais`(id,nombre) values (1,'Escoja Pais'),(2,'Afghanistan'),(3,'Africa Central'),(4,'Albania'),(5,'Alemania'),(6,'Andorra'),(7,'Angola'),(8,'Anguilla'),(9,'Antartida'),(10,'Antigua y Barbuda'),(11,'Arabia Saudita'),(12,'Argelia'),(13,'Argentina'),(14,'Armenia'),(15,'Aruba'),(16,'Australia'),(17,'Austria'),(18,'Azerbaiyan'),(19,'Bahamas'),(20,'Bahrein'),(21,'Bangladesh'),(22,'Barbados'),(23,'Bielorrusia'),(24,'Belgica'),(25,'Belice'),(26,'Benin'),(27,'Bermuda'),(28,'Butan'),(29,'Bolivia'),(30,'Bosnia y Herzegovina'),(31,'Botswana'),(32,'Brasil'),(33,'Brunei'),(34,'Bulgaria'),(35,'Burkina Faso'),(36,'Burundi'),(37,'Camboya'),(38,'Camerun'),(39,'Canada'),(40,'Cabo Verde'),(41,'Ciudad del Vaticano'),(42,'Chad'),(43,'Chile'),(44,'China'),(45,'Colombia'),(46,'Comoras'),(47,'Congo'),(48,'Corea del Norte'),(49,'Corea del Sur'),(50,'Costa Rica'),(51,'Costa de Marfil'),(52,'Croacia'),(53,'Cuba'),(54,'Chipre'),(55,'Dinamarca'),(56,'Dominica'),(57,'Ecuador'),(58,'Egipto'),(59,'El Salvador'),(60,'Emiratos Arabes'),(61,'Eritrea'),(62,'Eslovaquia'),(63,'Eslovenia'),(64,'España'),(65,'Estados Unidos'),(66,'Estonia'),(67,'Etiopia'),(68,'Fiji'),(69,'Filipinas'),(70,'Finlandia'),(71,'Francia'),(72,'Gabon'),(73,'Gambia'),(74,'Georgia'),(75,'Ghana'),(76,'Gibraltar'),(77,'Grecia'),(78,'Granada'),(79,'Groenlandia'),(80,'Guadalupe'),(81,'Guam'),(82,'Guatemala'),(83,'Guinea'),(84,'Guinea-bissau'),(85,'Guinea Ecuatorial'),(86,'Guyana'),(87,'Guyana Francesa'),(88,'Haiti'),(89,'Holanda'),(90,'Honduras'),(91,'Hong Kong'),(92,'Hungria'),(93,'India'),(94,'Indonesia'),(95,'Iran'),(96,'Irak'),(97,'Irlanda'),(98,'Isla Bouvet'),(99,'Isla de Coco'),(100,'Isla de Navidad'),(101,'Isla de Pascua'),(102,'Isla Norfolk'),(103,'Islandia'),(104,'Islas Cayman'),(105,'Islas Cook'),(106,'Islas Feroe'),(107,'Islas Heard y McDonald'),(108,'Islas Malvinas'),(109,'Islas Marianas del Norte'),(110,'Islas Marshall'),(111,'Islas Pitcairn'),(112,'Islas Salomon'),(113,'Islas Turcas y Caicos'),(114,'Islas Virgenes'),(115,'Israel'),(116,'Italia'),(117,'Jamaica'),(118,'Japon'),(119,'Jordania'),(120,'Kazakhstan'),(121,'Kenia'),(122,'Kiribati'),(123,'Kosovo'),(124,'Kuwait'),(125,'Kirguistan'),(126,'Laos'),(127,'Letonia'),(128,'Libano'),(129,'Lesoto'),(130,'Liberia'),(131,'Libia'),(132,'Liechtenstein'),(133,'Lituania'),(134,'Luxemburgo'),(135,'Macao'),(136,'Macedonia'),(137,'Madagascar'),(138,'Malawi'),(139,'Malasia'),(140,'Maldivas'),(141,'Mali'),(142,'Malta'),(143,'Martinica'),(144,'Mauritania'),(145,'Mauricio'),(146,'Mayotte'),(147,'Mexico'),(148,'Micronesia'),(149,'Moldavia'),(150,'Monaco'),(151,'Mongolia'),(152,'Montenegro'),(153,'Montserrat'),(154,'Marruecos'),(155,'Mozambique'),(156,'Myanmar'),(157,'Namibia'),(158,'Nauru'),(159,'Nepal'),(160,'Nicaragua'),(161,'Niger'),(162,'Nigeria'),(163,'Niue'),(164,'Noruega'),(165,'Nueva Caledonia'),(166,'Nueva Zelanda'),(167,'Oman'),(168,'Pakistan'),(169,'Palau'),(170,'Palestina'),(171,'Panama'),(172,'Papua Nueva Guinea'),(173,'Paraguay'),(174,'Peru'),(175,'Polinesia Francesa'),(176,'Polonia'),(177,'Portugal'),(178,'Puerto Rico'),(179,'Qatar'),(180,'Republica Checa'),(181,'Republica Dominicana'),(182,'Reino Unido'),(183,'Reunion'),(184,'Rumania'),(185,'Rusia'),(186,'Ruanda'),(187,'Sahara Occidental'),(188,'Samoa'),(189,'Santa Helena'),(190,'San Cristobal y Nieves'),(191,'Santa Lucia'),(192,'San Pedro y Miguelon'),(193,'San Vicente y las Granadinas'),(194,'Samoa'),(195,'San Marino'),(196,'Santo Tome y Principe'),(197,'Senegal'),(198,'Serbia y Montenegro'),(199,'Seychelles'),(200,'Sierra Leona'),(201,'Singapur'),(202,'Siria'),(203,'Somalia'),(204,'Sri Lanka'),(205,'Sudafrica'),(206,'Sudan'),(207,'Surinam'),(208,'Suazilandia'),(209,'Suecia'),(210,'Suiza'),(211,'Taiwan'),(212,'Tayikistan'),(213,'Tanzania'),(214,'Tailandia'),(215,'Timor Oriental'),(216,'Togo'),(217,'Tokelau'),(218,'Tonga'),(219,'Trinidad y Tobago'),(220,'Tunez'),(221,'Turquia'),(222,'Turkey'),(223,'Turkmenistan'),(224,'Tuvalu'),(225,'Uganda'),(226,'Ukrania'),(227,'Uruguay'),(228,'Uzbekistan'),(229,'Vanuatu'),(230,'Venezuela'),(231,'Vietnam'),(232,'Wallis y Futuna'),(233,'Yemen'),(234,'Yibuti'),(235,'Zambia'),(236,'Zimbaue'),(237,'Otro');

/*Table structure for table `tb_parametrizar` */

DROP TABLE IF EXISTS `tb_parametrizar`;

CREATE TABLE `tb_parametrizar` (
  `llave` text,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_parametrizar` */

insert  into `tb_parametrizar`(llave,valor) values ('elementos a prestar',3),('dias para bloquear el usuario',15),('valor multa por dia',5000);

/*Table structure for table `tb_prestamo` */

DROP TABLE IF EXISTS `tb_prestamo`;

CREATE TABLE `tb_prestamo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `fecha_solicitud` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IXFK_tb_prestamo_tb_estado_prestamo` (`estado_id`),
  KEY `IXFK_tb_prestamo_tb_usuario` (`usuario_id`),
  KEY `IXFK_tb_prestamo_tb_usuario_02` (`admin_id`),
  CONSTRAINT `FK_tb_prestamo_tb_estado_prestamo` FOREIGN KEY (`estado_id`) REFERENCES `tb_estado_prestamo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_prestamo_tb_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_prestamo_tb_usuario_02` FOREIGN KEY (`admin_id`) REFERENCES `tb_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `tb_prestamo` */

insert  into `tb_prestamo`(id,fecha,admin_id,usuario_id,fecha_entrega,estado_id,fecha_solicitud) values (1,'2016-11-03',29,27,'2016-11-08',2,'2016-11-03 22:38:44'),(2,'2016-11-03',29,27,'2016-11-08',2,'2016-11-03 22:38:48'),(3,'2016-11-03',29,27,'2016-11-07',2,'2016-11-03 22:38:51'),(4,'2016-11-03',29,27,'2016-11-08',2,'2016-11-03 22:38:55'),(5,'2016-11-03',29,27,'2016-11-08',2,'2016-11-03 22:39:02'),(6,'2016-11-03',29,27,'2016-11-08',2,'2016-11-03 22:40:06'),(8,'2016-11-03',29,32,'2016-11-08',2,'2016-11-03 22:43:38'),(10,'2016-11-03',29,32,'2016-11-02',3,'2016-11-03 22:43:44'),(11,'2016-11-03',29,32,'2016-11-02',3,'2016-11-03 22:43:47'),(12,'2016-11-08',29,27,'2016-11-13',2,'2016-11-08 08:34:11'),(13,'2016-11-10',29,37,'2016-11-15',2,'2016-11-10 08:59:34'),(14,'2016-11-15',29,27,'2016-11-21',1,'2016-11-15 08:57:06'),(15,'2016-11-18',29,38,'2016-11-24',1,'2016-11-18 07:51:48'),(16,'2016-11-18',29,39,'2016-11-24',1,'2016-11-18 08:40:44'),(17,'2016-11-18',29,39,'2016-11-24',1,'2016-11-18 08:41:03'),(18,'2016-11-18',29,39,'2016-11-24',1,'2016-11-18 08:41:11'),(19,'2016-11-18',29,37,'2016-12-03',1,'2016-11-18 08:45:21');

/*Table structure for table `tb_prestamo_elemento` */

DROP TABLE IF EXISTS `tb_prestamo_elemento`;

CREATE TABLE `tb_prestamo_elemento` (
  `prestamo_id` int(11) DEFAULT NULL,
  `elemento_id` int(11) DEFAULT NULL,
  KEY `IXFK_tb_prestamo_elemento_tb_elemento` (`elemento_id`),
  KEY `IXFK_tb_prestamo_elemento_tb_prestamo` (`prestamo_id`),
  CONSTRAINT `FK_tb_prestamo_elemento_tb_elemento` FOREIGN KEY (`elemento_id`) REFERENCES `tb_elemento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_prestamo_elemento_tb_prestamo` FOREIGN KEY (`prestamo_id`) REFERENCES `tb_prestamo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_prestamo_elemento` */

insert  into `tb_prestamo_elemento`(prestamo_id,elemento_id) values (1,4),(2,8),(3,10),(4,12),(5,7),(6,8),(8,8),(10,8),(11,8),(12,4),(13,13),(14,12),(15,14),(16,4),(17,8),(18,10),(19,14);

/*Table structure for table `tb_rol` */

DROP TABLE IF EXISTS `tb_rol`;

CREATE TABLE `tb_rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_rol` */

insert  into `tb_rol`(id,nombre) values (1,'administrador'),(2,'bibliotecario'),(3,'usuario');

/*Table structure for table `tb_tipo_elemento` */

DROP TABLE IF EXISTS `tb_tipo_elemento`;

CREATE TABLE `tb_tipo_elemento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_tipo_elemento` */

insert  into `tb_tipo_elemento`(id,nombre) values (1,'libro'),(2,'revista'),(3,'periodico');

/*Table structure for table `tb_usuario` */

DROP TABLE IF EXISTS `tb_usuario`;

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `clave` varchar(30) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `solicitudes` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IXFK_tb_usuario_tb_estado_usuario` (`estado_id`),
  KEY `IXFK_tb_usuario_tb_rol` (`rol_id`),
  CONSTRAINT `FK_tb_usuario_tb_estado_usuario` FOREIGN KEY (`estado_id`) REFERENCES `tb_estado_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_usuario_tb_rol` FOREIGN KEY (`rol_id`) REFERENCES `tb_rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `tb_usuario` */

insert  into `tb_usuario`(id,nombre,nickname,clave,rol_id,correo,telefono,estado_id,solicitudes) values (1,'Cristian Felipe Vargas','kira','123456',1,'asfiuerjoq@gmail.com','1234567890',3,0),(14,'Cristian Felipe Vargasf','Corazonff','12345f6f',3,'asfiuerjfoq@gmail.comf','1242141f34',1,0),(15,'Andres vargas','ewq','123456',3,'aqsasfsafjio@gmail.com','3485292310',1,0),(16,'Andres vargas','qrwqtetywt','12345678',3,'gfdhdfhdf@gmail.com','3143453454',1,0),(17,'fasafasfasfasf','gasgafasfasf','123456',3,'csavasvasvas|@gmail.com','3124521421',1,0),(21,'safasfsafasdasd','qdwwqdqwd','12335134',3,'aweqwd@gmail.com','3124213214',1,0),(23,'Andres vargas','chakra21','1234',3,'aweqwe','3124214214',1,0),(25,'Andres vargas','ascsac','123456',3,'asfiuerjoq@gmail.com','1242142142',1,0),(26,'sacsac','safqwfwqfqwf','qfqwfqwfqwf',3,'aqwfqwfqwf@gmail.com','1243411131',1,0),(27,'asasvsavasv','adri1','1234',3,'aasfwqf@gmail.com','1241242141',1,1),(28,'avsasvasvx','xzvxzvxzvxzvzvczv','213214214214',3,'zxvxzvzxvxzv@gmail.com','1241241343',1,0),(29,'Cristian Vargas','Rekiemkr','Corazon',2,'roca@gmail.com','2131251243',3,0),(31,'Tomas Vargas','Tomas1','123456',2,'tomas123@yahoo.es','2141242141',3,0),(32,'Cristian Vargas','Kriss97','123456',3,'awfqfwqfqwf@gmaill.com','1242142141',2,3),(33,'Cristian Jojoa','Jojoa123','1234567889',2,'opera@gmail.com','3124551234',3,0),(34,'Cristian Felipe Vargas','Cristian_:v','jojojo',3,'aquilescanto100@gmail.com','3172345899',1,0),(35,'Victor Pardo','Darkgrey93','123456',2,'darkgrey@gmail.com','3173302457',3,0),(36,'hhjhghgjasgdgasdgasgd','pruba','pruba',3,'pruba@pruba.com','8769876786',1,0),(37,'lorna','tommmy16','12345',3,'hola@gmail.com','3002745099',1,1),(38,'stiven','stiven12','123456',3,'st3v3n@gmai.com','5555555555',1,1),(39,'Aljandro','maky','123',3,'pacoprz@hotmail.com','3204956927',1,3);

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `e_actualizar_multas` */

/*!50106 DROP EVENT IF EXISTS `e_actualizar_multas`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `e_actualizar_multas` ON SCHEDULE EVERY 1 DAY STARTS '2016-11-04 17:15:50' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	
	DECLARE _valor int;
	SET _valor=(select valor FROM tb_parametrizar WHERE llave LIKE "valor multa por dia");
	update tb_multa Set dias_mora=(SELECT DATEDIFF( CURDATE(),fecha)+1) WHERE cancelado=0;
	update tb_multa Set valor=dias_mora*_valor WHERE cancelado=0; 
	END */$$
DELIMITER ;

/* Event structure for event `e_crear_multa` */

/*!50106 DROP EVENT IF EXISTS `e_crear_multa`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `e_crear_multa` ON SCHEDULE EVERY 1 MINUTE STARTS '2016-10-31 17:35:52' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
Declare _prestamo_id int;
Declare _usuario_id int;
declare _valor int;
Declare _fecha date;
DECLARE _id INT;
        CREATE TEMPORARY TABLE prueba2 AS(
        SELECT *
        FROM tb_prestamo 
        WHERE estado_id=1 AND CURDATE()>fecha_entrega LIMIT 1);
        Set _prestamo_id=(SELECT usuario_id FROM prueba2);
        set _usuario_id=(SELECT id FROM prueba2);
        set _valor=(SELECT valor FROM tb_parametrizar WHERE llave="valor multa por dia");
        set _fecha=CURDATE();
        SET _id = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id) + 1) ELSE 1 END FROM tb_multa);
        If _usuario_id != "NULL" AND _prestamo_id != "NULL" THEN    
	 INSERT INTO tb_multa
	 (id,
	 fecha,
	 usuario_id,
	 prestamo_id,
	 dias_mora,
	 valor)
	 VALUES 
	 (_id,
	 _fecha,
	 _prestamo_id,
	 _usuario_id,
	 1,
	 _valor
	 );
	 
	 UPDATE tb_prestamo
	 SET estado_id= 3
	 WHERE id=(SELECT id FROM prueba2);
	 
	 UPDATE tb_usuario
	 SET estado_id=2
	 WHERE id=(SELECT usuario_id FROM prueba2);
	 END IF;
	END */$$
DELIMITER ;

/* Event structure for event `e_Eliminar_solicitudes` */

/*!50106 DROP EVENT IF EXISTS `e_Eliminar_solicitudes`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `e_Eliminar_solicitudes` ON SCHEDULE EVERY 1 MINUTE STARTS '2016-10-30 15:52:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	CREATE TEMPORARY TABLE PRUEBA AS(
        SELECT
	 tbp.*
        FROM
	 tb_prestamo tbp
        WHERE tbp.estado_id = 4 AND EXTRACT(HOUR FROM TIMEDIFF(NOW(),tbp.fecha_solicitud)) >= 1);
        
        Create Temporary table elemento AS(
        select 
        elemento_id
        FROM 
        tb_prestamo_elemento
        WHERE prestamo_id = (Select id From prueba)
        );        
        
        update tb_elemento e,(Select elemento_id From elemento) el SET librosPres= librosPres-1 WHERE e.id=el.elemento_id;
        UPDATE tb_usuario u , (SELECT * FROM PRUEBA) p SET solicitudes = (solicitudes - 1) WHERE u.id = p.usuario_id; 
        DELETE FROM tb_prestamo WHERE estado_id=4 AND id IN (Select id FROM PRUEBA ) ;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_agregar_autores` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_agregar_autores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_autores`(IN _nombre VARCHAR(50),IN _sexo CHAR, IN _nacionalidad INT,IN _año INT,IN _ip VARCHAR(100),IN _mac VARCHAR(100), IN _user VARCHAR(30))
BEGIN
    DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	DECLARE cantidad Int; 	
	SET _id = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id) + 1) ELSE 1 END FROM tb_autor);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_autor';
	SET _campos = CONCAT('id',',','nombre',',','sexo',',','nacionalidad',',','año_de_nacimiento');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombre, ',',_sexo,',', _nacionalidad , ',',_año);
	SELECT COUNT(*) INTO @cantidad FROM tb_autor WHERE nombre = _nombre;
        SELECT nombre FROM tb_autor WHERE nombre=_nombre;
	if @cantidad = 0 THEN
	INSERT INTO tb_autor
	(id, 
	nombre,
	sexo,
	nacionalidad,
	año_de_nacimiento
	)
	VALUES
	(_id,
	_nombre,
	_sexo,
	_nacionalidad ,
	_año                   
	);
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	end if;
    
       END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_agregar_categorias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_agregar_categorias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_categorias`(In _nombre VARCHAR(50),IN _ip VARCHAR(100), IN _mac VARCHAR(100), IN _user VARCHAR(50))
BEGIN
        DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000); 	
	SET _id = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id) + 1) ELSE 1 END FROM tb_categoria);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_categoria';
	SET _campos = CONCAT('id',',','nombre');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombre);
	set @categoria = 0 ; 
	SELECT COUNT(*) INTO @categoria FROM tb_categoria WHERE nombre=_nombre;
	
	select Count(*) FROM tb_categoria WHERE nombre=_nombre;
      if @categoria=0 THEN	
	INSERT INTO tb_categoria
	(id,nombre)
	VALUES
	(_id,_nombre);
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
       end if;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_agregar_elementos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_agregar_elementos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_elementos`(IN _nombre VARCHAR(50), IN _editorial VARCHAR(30), 
    IN _año Int,IN _tipo_id INT,IN _url VARCHAR(500) ,IN _cantidad INT,IN _reserva INT, IN _ip VARCHAR(100),IN _mac VARCHAR(100), IN _user VARCHAR(30))
BEGIN
	DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	DECLARE _librosDisp INT;
	DECLARE _cantidad1 INT;
	
	SET _id = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id) + 1) ELSE 1 END FROM tb_elemento);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_elemento';
	SET _campos = CONCAT('id',',', 'nombre',',', 'editorial',',', 'año',',','tipo_id',',','url',',', 'cantidad',',','reserva');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombre, ',', _editorial,',', _año, ',',_tipo_id,',',_url,',',_cantidad,',',_reserva);
	SET _librosDisp = _cantidad - _reserva;
	SET _cantidad1 =(SELECT COunt(*) FROM tb_elemento WHERE nombre=_nombre);
	
        SELECT nombre FROM tb_elemento WHERE nombre=_nombre;
        
        IF _cantidad1 =0 THEN	
	INSERT INTO tb_elemento
	(id, 
	nombre, 
	editorial, 
	año_publicacion, 
	tipo_id,
	url,
	cantidad,
	reserva,
	librosDisp
	)
	VALUES
	(_id,
	_nombre,
	_editorial,
	_año, 
	_tipo_id,
	_url,
	_cantidad,
	_reserva,
	_librosDisp                    
	);
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_agregar_prestamo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_agregar_prestamo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_prestamo`(IN _id INT,IN _id_administrador INT, IN _estado_id INT,IN _ip VARCHAR(100), IN _mac VARCHAR(100), IN _user VARCHAR (30))
BEGIN
    DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	DECLARE _fecha DATE;
	DECLARE _fecha_entrega DATE;
	DECLARE _dias_entrega int;
	DECLARE _id_elemento Int;
	DECLARE _id_usuario INT;
        SET _dias_entrega =(Select valor from tb_parametrizar WHERE llave LIKE "dias para bloquear el usuario");
	SET _fecha = (SELECT CURDATE());
	set _fecha_entrega = ADDDATE(_fecha, INTERVAL _dias_entrega DAY);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_prestamo';
	SET _campos = CONCAT('fecha',',','admin_id',',','fecha_entrega',',','estado_id');
	SET _antes = '';
	SET _ahora = CONCAT(_fecha, ',', _id_administrador, ',',_fecha_entrega,',',_estado_id);
	set _id_elemento = (SELECT elemento_id FROM tb_prestamo_elemento WHERE prestamo_id=_id);
	set _id_usuario = (SELECT usuario_id FROM tb_prestamo WHERE id=_id);
	
	UPDATE tb_prestamo
	set fecha=_fecha, admin_id=_id_administrador,fecha_entrega=_fecha_entrega, estado_id=_estado_id
	WHERE id=_id;
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_agregar_relacion_autores` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_agregar_relacion_autores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_relacion_autores`(IN _nombre VARCHAR(50),IN _id INT, IN _ip VARCHAR(100),IN _mac VARCHAR(100), IN _user VARCHAR(30))
BEGIN
        DECLARE _id_elemento int;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);	
	
	SET _id_elemento = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id)) ELSE 1 END FROM tb_elemento);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_elemento_autor';
	SET _campos = CONCAT('elemento_id',',','autor_id');
	SET _antes = '';
	SET _ahora = CONCAT(_id_elemento, ',', _id);
	INSERT INTO tb_elemento_autor
	(elemento_id, 
	autor_id
	)
	VALUES
	(_id_elemento,
	_id          
	);
	CALL sp_seguridad(_accion,_user,_tabla,_id_elemento,_ip,_mac,_campos,_antes,_ahora);
    
       END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_agregar_relacion_categorias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_agregar_relacion_categorias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_relacion_categorias`(IN _nombre VARCHAR(50),IN _id INT, IN _ip VARCHAR(100),IN _mac VARCHAR(100), IN _user VARCHAR(30))
BEGIN
        DECLARE _id_elemento INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);	
	
	SET _id_elemento = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id)) ELSE 1 END FROM tb_elemento);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_categoria_elemento';
	SET _campos = CONCAT('elemento_id',',','categoria_id');
	SET _antes = '';
	SET _ahora = CONCAT(_id_elemento, ',', _id);
	
	INSERT INTO tb_categoria_elemento
	(elemento_id, 
	categoria_id
	)
	VALUES
	(_id_elemento,
	_id             
	);
	CALL sp_seguridad(_accion,_user,_tabla,_id_elemento,_ip,_mac,_campos,_antes,_ahora);
    
       END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_agregar_SolPrestamo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_agregar_SolPrestamo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_SolPrestamo`(IN _id_elemento Int,IN _id_usuario INT, IN _estado_id INt,IN _ip VARCHAR(100), IN _mac varchar(100), In _user VARCHAR (30))
BEGIN
    DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	DECLARE cantidad INT;
	DECLARE _id_admin INT; 
	Declare _elem_pres INT;
        Declare _estado INT;	
        DECLARE _solicitudes INT;
        DECLARE _max_solicitudes INT;
        DECLARE fecha_solici DATETIME;
        Declare libros_disponibles Int;
        Declare libros_prestados INT;
        
        SET fecha_solici= (SELECT CURRENT_TIMESTAMP);
	SET _id = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id) + 1) ELSE 1 END FROM tb_prestamo);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_prestamo';
	SET _campos = CONCAT('id',',','id_usuario',',','estado_id',',','fecha_solicitud');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _id_usuario, ',',_estado_id,',',fecha_solici);
        SET _id_admin = 1;
        SET _estado = (select estado_id FROM tb_usuario WHERE id=_id_usuario);
        SET _solicitudes = (SELECT solicitudes FROM tb_usuario WHERE id=_id_usuario);
        set _max_solicitudes =(SELECT valor from tb_parametrizar WHERE llave like "elementos a prestar");
        Set libros_disponibles = (SELECT librosDisp from tb_elemento WHERE id=_id_elemento );
        SET libros_prestados = (SELECT librosPres FROM tb_elemento WHERE id=_id_elemento );
	
	IF _solicitudes = _max_solicitudes THEN
	SELECT nombre FROM tb_pais WHERE id=1 OR id=2 OR id=3;
	END IF;
	
        IF _estado =2 THEN
	SELECT nombre FROM tb_pais WHERE id=1;
	END IF;
	
	If libros_disponibles<=libros_prestados THEN 
	SELECT nombre FROM tb_pais WHERE id=1 OR id=2 OR id=3 OR id=4;
	END IF;
        
        IF (_estado != 2 AND _solicitudes < _max_solicitudes AND libros_disponibles>libros_prestados) then
        
        UPDATE tb_elemento SET librosPres = librosPres+1 WHERE id=_id_elemento;
        UPDATE tb_usuario SET solicitudes = solicitudes+1 WHERE id=_id_usuario;
	INSERT INTO tb_prestamo
	(id, 
	admin_id,
        usuario_id,
	estado_id,
	fecha_solicitud
	)
	VALUES
	(_id,
	_id_admin,
	_id_usuario,
	_estado_id,
	fecha_solici             
	);
	
	Insert Into tb_prestamo_elemento
	(prestamo_id,
	elemento_id)
	
	values
	(_id,
	 _id_elemento);
	 
	 
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	end IF; 
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_consultar_elemento` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_consultar_elemento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_elemento`()
BEGIN 
    
    Select u.id,
    u.nombre,
    u.editorial,
    u.año_publicacion,
    (SELECT GROUP_CONCAT(a.nombre) FROM tb_autor a JOIN tb_elemento_autor ea ON ea.autor_id = a.id WHERE ea.elemento_id=u.id) AS autores,
    (SELECT GROUP_CONCAT(c.nombre) FROM tb_categoria c JOIN tb_categoria_elemento ce on ce.categoria_id = c.id WHERE ce.elemento_id=u.id) AS categorias,    
    t.nombre AS tipoElemento ,u.url
    FROM tb_elemento u JOIN tb_tipo_elemento t 
    where u.tipo_id = t.id AND u.librosDisp > u.LibrosPres;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_consultar_prestamos_activos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_consultar_prestamos_activos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_prestamos_activos`()
BEGIN
    SELECT p.id,
     p.fecha,
     e.nombre,
     u.nickname,
     p.fecha_entrega,
     ep.nombre AS nombre_elemento
FROM tb_prestamo p JOIN tb_prestamo_elemento pe JOIN tb_elemento e JOIN tb_usuario u JOIN tb_estado_prestamo ep
WHERE p.id=pe.prestamo_id AND pe.elemento_id = e.id AND u.id = p.usuario_id AND p.estado_id = ep.id AND p.estado_id=1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_consultar_registrar_prestamo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_consultar_registrar_prestamo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_registrar_prestamo`()
BEGIN
    SELECT
    p.id AS Id,
    e.nombre,
    u.nickname
    FROM
    tb_prestamo p JOIN tb_prestamo_elemento pe JOIN tb_elemento e JOIN tb_usuario u
    WHERE p.id = pe.prestamo_id AND e.id = pe.elemento_id AND p.usuario_id = u.id AND p.estado_id = 4;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_desbloquear_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_desbloquear_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_desbloquear_usuario`(IN _id INT, IN _ip VARCHAR (100), IN _mac VARCHAR(100), IN _user Varchar (30))
BEGIN
         
        DECLARE _fecha DATE;
	DECLARE _tabla VARCHAR(50);
	DECLARE _accion VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	DECLARE _cancelado INT;
	DECLARE _solicitudes_canc INT;
		
        SELECT pe.elemento_id AS prs
        FROM tb_elemento e JOIN tb_prestamo p JOIN tb_prestamo_elemento pe 
        WHERE p.id=pe.prestamo_id AND e.id = pe.elemento_id AND p.usuario_id=_id AND p.estado_id=3;
 
	SET _solicitudes_canc = (SELECT COUNT(*) FROM tb_multa WHERE usuario_id=_id AND cancelado=0);
	SET _fecha = curdate();
	SET _cancelado = 1;
	SET _accion = 'Insertar';
	SET _tabla = 'tb_multa';
	SET _campos = CONCAT('fecha_pago',',','cancelado');
	SET _antes = '';
	SET _ahora = CONCAT(_fecha, ',', _cancelado);
	
	Update tb_multa SET fecha_pago=_fecha ,cancelado=_cancelado WHERE usuario_id=_id;
	Update tb_usuario SET estado_id=1 WHERE id=_id;
	Update tb_usuario SET solicitudes=solicitudes-_solicitudes_canc WHERE id=_id AND solicitudes>0;
	Update tb_prestamo SET estado_id=2 WHERE estado_id=3 AND usuario_id=_id;
       
         CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_descontar_elemento` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_descontar_elemento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_descontar_elemento`(IN _id INT)
BEGIN
    
    Update tb_elemento set librosPres=(librosPres-1) WHERE id=_id AND librosPres>0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_devolver_prestamo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_devolver_prestamo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_devolver_prestamo`(in _id INT)
BEGIN
    Declare _id_elemento int;
    Declare _id_usuario INt;
    set _id_usuario = ( SELECT usuario_id from tb_prestamo Where id=_id);
    SET _id_elemento = (Select elemento_id FROm tb_prestamo_elemento WHERE prestamo_id=_id);
    Update tb_prestamo Set estado_id=2 WHEre id=_id;
    Update tb_elemento Set librosPres=(librosPres-1) Where id=_id_elemento AND librosPres>0;
    update tb_usuario Set solicitudes=(solicitudes-1) WHERE id=_id_usuario AND solicitudes>0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminar_autores` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminar_autores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_autores`(IN _id INT, IN _ip Varchar(100),IN _mac VARCHAR(100),in _user Varchar (30))
BEGIN
    DECLARE _accion VARCHAR(30);
    DECLARE _tabla VARCHAR(50);
    DECLARE _campos VARCHAR(1000);
    DECLARE _antes VARCHAR(1000);
    DECLARE _ahora VARCHAR(1000);
    Declare cantidad int;	
	SET _accion = 'Eliminar';
	SET _tabla = 'tb_autor';
	SET _campos = CONCAT('id',',', 'nombre',',', 'sexo',',', 'nacionalidad',',','año_de_nacimiento');
	SET _antes = (SELECT CONCAT(id ,',', nombre ,',',sexo,',', nacionalidad,',',año_de_nacimiento) FROM tb_autor WHERE _id=id); 
	SET _ahora = '';
	Set cantidad = (select count(*) from tb_elemento_autor where autor_id=_id);
	
	If cantidad = 0 THEN 
	delete FROM tb_autor where id=_id;
	call sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	End if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminar_bibliotecarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminar_bibliotecarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_bibliotecarios`(In _id INT,IN _ip Varchar(20),IN _mac Varchar(100),in _user varchar(100))
BEGIN
    DECLARE _accion VARCHAR(30);
    DECLARE _tabla VARCHAR(50);
    DECLARE _campos VARCHAR(1000);
    DECLARE _antes VARCHAR(1000);
    DECLARE _ahora VARCHAR(1000);
	SET _accion = 'Eliminar';
	SET _tabla = 'tb_user';
	SET _campos = CONCAT('id',',', 'nombre',',', 'nickname',',', 'clave',',','correo',',','telefono',',', 'rol_id',',','estado_id');
	SET _antes = (SELECT CONCAT(id ,',', nombre ,',',nickname,',',correo,',',telefono,',',rol_id,',',estado_id) FROM tb_usuario WHERE _id=id); 
	SET _ahora = '';
	
	delete FROM tb_usuario where _id=id;
	call sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	  END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminar_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminar_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_categoria`(IN _id INT, IN _ip VARCHAR(100),IN _mac VARCHAR(100),IN _user VARCHAR (30))
BEGIN
    DECLARE _accion VARCHAR(30);
    DECLARE _tabla VARCHAR(50);
    DECLARE _campos VARCHAR(1000);
    DECLARE _antes VARCHAR(2000);
    DECLARE _ahora VARCHAR(2000);
    Declare cantidad int;
	SET _accion = 'Eliminar';
	SET _tabla = 'tb_categoria';
	SET _antes = '';
	SET _campos = CONCAT('id',',', 'nombre');
	SET _antes = (SELECT CONCAT(id ,',', nombre) FROM tb_categoria WHERE _id=id); 
	SET _ahora = '';
	Set cantidad = (select count(*) FROM tb_categoria_elemento WHere categoria_id=_id);
	
	if cantidad = 0 then
	DELETE FROM tb_categoria WHERE _id=id;
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	END IF;	
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminar_elemento` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminar_elemento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_elemento`(IN _id INT, IN _ip VARCHAR(100),IN _mac VARCHAR(100),IN _user VARCHAR (30))
BEGIN
    DECLARE _accion VARCHAR(30);
    DECLARE _tabla VARCHAR(50);
    DECLARE _campos VARCHAR(1000);
    DECLARE _antes VARCHAR(1500);
    DECLARE _ahora VARCHAR(1500);
    Declare cantidad int;	
	SET _accion = 'Eliminar';
	SET _tabla = 'tb_elemento';
	SET _campos = CONCAT('id',',', 'nombre',',', 'editorial',',', 'año_publicacion',',','tipo_id',',','url',',','cantidad',',','reserva');
	set _antes = '';
	SET _antes = (SELECT CONCAT(id ,',', nombre ,',', editorial ,',', año_publicacion,',',tipo_id,',',url) FROM tb_elemento WHERE _id=id); 
	SET _ahora = '';
	SET cantidad=(Select count(*) from tb_prestamo_elemento WHERE elemento_id=_id);	
	if cantidad=0 then 
	DELETE FROM tb_elemento WHERE _id=id;
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	End If;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_loggin` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_loggin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_loggin`(IN _nickname VARCHAR(50), IN _clave VARCHAR(50))
BEGIN
     SELECT 
      nombre,
      id AS usuario_id,
      nickname,
      rol_id
      FROM
      tb_usuario
      where
      nickname = _nickname 
      AND clave=_clave;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificar_autores` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificar_autores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_autores`(IN _id INT,IN _nombre Varchar(50),IN _año INT,IN _nacionalidad VARCHAR (30),IN _sexo CHAR,IN _ip VARCHAR(100),IN _mac VARChAR(100),IN _user VARCHAR(50))
BEGIN
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	DECLARE _cont int;
	SET _accion = 'Modificar';
	SET _tabla = 'tb_autor';	
	SET _campos = '';
	set _antes = '';
	set _ahora = '';
	SET _cont = (select count(*) FROM tb_autor where nombre=_nombre AND id != _id);
	
	IF(SELECT nombre FROM tb_autor WHERE id=_id) != _nombre THEN
	SET _campos= 'nombre';
	SET _antes=(SELECT nombre FROM tb_autor WHERE id=_id);
	SET _ahora = _nombre;
	END IF;
	
	IF(SELECT sexo FROM tb_autor WHERE id=_id) != _sexo  THEN
	SET _campos= CONCAT(_campos,',','sexo');
	SET _antes=CONCAT(_antes,',',(SELECT sexo FROM tb_autor WHERE id=_id));
	SET _ahora =CONCAT(_ahora,',',_sexo);
	END IF;
	
	IF(SELECT año_de_nacimiento FROM tb_autor WHERE id=_id) != _año  THEN
	SET _campos= CONCAT(_campos,',','año_de_nacimiento');
	SET _antes=CONCAT(_antes,',',(SELECT año_de_nacimiento FROM tb_autor WHERE id=_id));
	SET _ahora = CONCAT(_ahora,',',_año);
	END IF;
	
	IF(SELECT nacionalidad FROM tb_autor WHERE id=_id) != _nacionalidad  THEN
	SET _campos= CONCAT(_campos,',','nacionalidad');
	SET _antes=CONCAT(_antes,',',(SELECT nacionalidad FROM tb_autor WHERE id=_id));
	SET _ahora = CONCAT(_ahora,',',_nacionalidad);
	END IF;
	
	
	 IF _cont = 0 THEN
        UPDATE tb_autor
        
       
	SET
	nombre=_nombre,
	sexo=_sexo,
	año_de_nacimiento=_año,
	nacionalidad=_nacionalidad 
	WHERE id=_id;
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	end IF;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificar_usuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificar_usuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_usuarios`(IN _id int, IN _nombre VARCHAR(50), IN _nickname VARCHAR(30), 
    IN _clave VARCHAR(30),IN _correo VARCHAR(100),IN _telefono VARCHAR(10) , IN _ip VARCHAR(100),IN _mac VARCHAR(100), IN _user VARCHAR(30))
BEGIN
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
        Declare _nuevo VARCHAR(1000); 	
        DECLARE _cont int;	
	SET _accion = 'Modificar';
	SET _tabla = 'tb_usuario';
	set _campos ="";
	set _antes ="";
	set _ahora ="";	
	SET _cont = (select count(*) from tb_usuario WHERE nickname=_nickname AND id != _id);
	
	if(select nombre FROM tb_usuario where id=_id) != _nombre THEN
	set _campos= 'nombre';
	set _antes=(Select nombre from tb_usuario where id=_id);
	set _ahora = _nombre;
	End if;
	
	
	IF(SELECT nickname FROM tb_usuario WHERE id=_id) != _nickname  THEN
	SET _campos= concat(_campos,',','nickname');
	SET _antes=concat(_antes,',',(SELECT nickname FROM tb_usuario WHERE id=_id));
	SET _ahora =CONCAT(_ahora,',',_nickname);
	END IF;
	
	IF(SELECT clave FROM tb_usuario WHERE id=_id) !=_clave THEN
	SET _campos= CONCAT(_campos,',','clave');
	SET _antes=CONCAT(_antes,',',(SELECT clave FROM tb_usuario WHERE id=_id));
	SET _ahora = CONCAT(_ahora,',',_clave);
	END IF;
	
	IF(SELECT correo FROM tb_usuario WHERE id=_id) != _correo  THEN
	SET _campos= CONCAT(_campos,',','correo');
	SET _antes=CONCAT(_antes,',',(SELECT correo FROM tb_usuario WHERE id=_id));
	SET _ahora = CONCAT(_ahora,',',_correo);
	END IF;
	
	
	IF(SELECT telefono FROM tb_usuario WHERE id=_id) != _telefono THEN
	SET _campos= CONCAT(_campos,',','telefono');
	SET _antes=CONCAT(_antes,',',(SELECT telefono FROM tb_usuario WHERE id=_id));
	SET _ahora = CONCAT(_ahora,',',_telefono);
	END IF;
	
	IF _cont = 0 THEN
        update tb_usuario
	set
	nombre=_nombre,
	nickname=_nickname,
	clave=_clave, 
	correo=_correo,
	telefono=_telefono 
	where id=_id;
	
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_autores` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_autores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_autores`()
BEGIN
    SELECT 
    id, 
    nombre,
    sexo,
    nacionalidad,
    año_de_nacimiento
    FROM tb_autor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_bibliotecarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_bibliotecarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_bibliotecarios`()
BEGIN
    SELECT
    id AS cedula, 
    nombre,
    nickname,
    clave,
    telefono,
    correo
    FROM tb_usuario
    where rol_id = 2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_categorias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_categorias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_categorias`()
BEGIN
    Select 
    id,
    nombre
    From tb_categoria;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_deudores` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_deudores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_deudores`()
BEGIN
    SELECT 
    id, 
    nombre,
    nickname,
    correo
    FROM tb_usuario
    where estado_id=2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_elementos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_elementos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_elementos`()
BEGIN
    Select e.id AS cedula,
    e.nombre,
    e.editorial,
    e.año_publicacion,
    (SELECT GROUP_CONCAT(a.nombre) FROM tb_autor a JOIN tb_elemento_autor ea ON ea.autor_id = a.id WHERE ea.elemento_id=e.id) AS autores,
    (SELECT GROUP_CONCAT(c.nombre) FROM tb_categoria c JOIN tb_categoria_elemento ce ON ce.categoria_id = c.id WHERE ce.elemento_id=e.id) AS categorias,
    t.nombre AS tipo_nombre,
    e.url AS Ruta,
    e.cantidad,e.reserva
    FROM tb_elemento e join tb_tipo_elemento t 
    WHERE e.tipo_id = t.id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_elementos_autores` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_elementos_autores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_elementos_autores`(IN _id Int)
BEGIN
    SELECT t.autor_id AS Id,a.nombre AS Nombre
    FROM tb_elemento_autor t JOIN tb_autor a
    WHERE t.autor_id = a.id AND t.elemento_id=_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_estado` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_estado` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_estado`(IN _id INT)
BEGIN
    SELECT 
    e.nombre AS nombreLib,
    i.nombre AS nombreEstado,
    ifnull(p.fecha,"No programada") AS fecha,
    IFNULL(p.fecha_entrega,"No programada") AS fecha_entrega
    FROM tb_elemento e JOIN tb_prestamo_elemento pe JOIN tb_prestamo p JOIN tb_estado_prestamo i
    WHERE e.id = pe.elemento_id AND p.id=pe.prestamo_id AND i.id=p.estado_id AND p.usuario_id=_id AND p.estado_id!=2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_multas` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_multas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_multas`(in _id INT)
BEGIN
    SELECT
    m.id,
    m.fecha,
    u.nombre AS nombre_usuario,	
    u.nickname,
    e.nombre AS nombre_elemento,
    m.dias_mora,
    m.valor
    FROM tb_multa m JOIN tb_prestamo p JOIN tb_usuario u JOIN tb_prestamo_elemento pe JOIN tb_elemento e
    WHERE  p.id = pe.prestamo_id AND u.id = p.usuario_id AND e.id = pe.elemento_id AND m.prestamo_id = p.id AND u.id=_id AND m.cancelado=0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_multas_mensuales` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_multas_mensuales` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_multas_mensuales`()
BEGIN
    DECLARE _mes INT;
    SET _mes = MONTH(CURDATE());
    SELECT m.fecha,u.nombre,e.nombre AS elemento,m.dias_mora,m.fecha_pago,m.valor 
    FROM tb_usuario u JOIN tb_multa m JOIN tb_elemento e JOIN tb_prestamo p JOIN tb_prestamo_elemento pe
    WHERE u.id=m.usuario_id AND pe.elemento_id=e.id AND m.prestamo_id=p.id AND pe.prestamo_id=p.id AND pe.elemento_id=e.id AND MONTH(m.fecha_pago)=_mes;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_paises` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_paises` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_paises`()
BEGIN
    
    SELECT id,nombre
    from tb_pais;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_parametrizacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_parametrizacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_parametrizacion`()
BEGIN
    SELECT *
    FROM tb_parametrizar;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mostrar_tipos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mostrar_tipos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_tipos`()
BEGIN
    SELECT id,nombre
    FRom tb_tipo_elemento;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_obtener_producto` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_obtener_producto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtener_producto`()
BEGIN
   Select nombre,precio,cantidad
   From tb_productos;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_obtener_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_obtener_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtener_usuario`()
BEGIN
    
    select 
    u.id,
    u.nombre,
    u.nickname,
    r.nombre AS rol_name,
    e.nombre AS estado_name
    from tb_usuario u JOIN tb_rol r JOIN tb_estado_usuario e
    where u.rol_id=r.id and u.estado_id=e.id;
    
   END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_parametrizar` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_parametrizar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_parametrizar`(IN _dias INT, IN _valor INT,IN _libros INT)
BEGIN
    UPDATE tb_parametrizar
    SET valor=_dias
    where llave LIKE "dias para bloquear el usuario";
    
    
    UPDATE tb_parametrizar
    SET valor=_valor
    WHERE llave LIKE "valor multa por dia";
    
    
    UPDATE tb_parametrizar
    SET valor=_libros
    WHERE llave LIKE "elementos a prestar";
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_registrar_usuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_registrar_usuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_usuarios`(IN _nombre VARCHAR(50), IN _nickname VARCHAR(30), 
    IN _clave VARCHAR(30),IN _correo VARCHAR(100),IN _telefono Varchar(20) ,IN _rol_id INT,IN _estado_id INT, IN _ip VARCHAR(100),IN _mac VARCHAR(100), IN _user VARCHAR(30))
BEGIN
	DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	
	SET @cantidad_usuarios = 0;
	SET _id = (SELECT CASE WHEN COUNT(id) > 0 THEN (MAX(id) + 1) ELSE 1 END FROM tb_usuario);
	SET _accion = 'Insertar';
	SET _tabla = 'tb_usuario';
	SET _campos = CONCAT('id',',', 'nombre',',', 'nickname',',', 'clave',',','correo',',','telefono',',', 'rol_id',',','estado_id');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombre, ',', _nickname,',', _clave, ',',_correo,',',_telefono,',',_rol_id,',',_estado_id);
        SELECT count(*) into @cantidad_usuarios FROM tb_usuario WHERE nickname = _nickname OR correo=_correo;
        SELECT nombre FROM tb_usuario WHERE nickname = _nickname OR correo=_correo;
        If @cantidad_usuarios = 0 then	
	INSERT INTO tb_usuario
	(id, 
	nombre, 
	nickname, 
	clave, 
	correo,
	telefono,
	rol_id,
	estado_id
	)
	VALUES
	(_id,
	_nombre,
	_nickname,
	_clave, 
	_correo,
	_telefono,
	_rol_id,
	_estado_id                    
	);
	CALL sp_seguridad(_accion,_user,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
	end If;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_seguridad` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_seguridad` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_seguridad`(IN Acc VARCHAR(30), IN Usu VARCHAR(30), IN Tab VARCHAR (30), IN Reg VARCHAR(100), IN Ip VARCHAR(1000),IN Mac VARCHAR(100), IN Nombre VARCHAR(1000), IN Anterior VARCHAR(1500), IN Nuevo VARCHAR(1500))
BEGIN
	DECLARE IDLog INT;
	DECLARE fec DATETIME;
	
	SET fec = (SELECT CURRENT_TIMESTAMP);
	SET IDLog = (SELECT CASE WHEN COUNT(id_seguridad) > 0 THEN (MAX(id_seguridad) + 1) ELSE 1 END FROM seguridad);
	
	INSERT INTO seguridad(id_seguridad,accion,fecha,usuario,tabla,id_registro,ip,mac_address,nom_Campo_mod,valor_ant_campo,nuevo_valor_campo)
			VALUES(IDLog,Acc,fec,Usu,Tab,Reg,Ip,Mac,Nombre,Anterior,Nuevo) ;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
