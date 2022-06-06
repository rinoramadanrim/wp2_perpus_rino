/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 10.4.18-MariaDB : Database - pustaka
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varbinary(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `buku` */

insert  into `buku`(`id`,`judul_buku`,`id_kategori`,`pengarang`,`penerbit`,`tahun_terbit`,`isbn`,`stok`,`dipinjam`,`dibooking`,`image`) values (1,'Statistika dengan Program Komputer',1,'Ahmad Kholiqul Amin','Deep Publish',2014,'2121',6,1,1,'1.jpg'),(2,'Mudah Belajar Komputer untuk Anak',1,'Bambang Agus Setiawan','Huta Media',2014,'2121',5,3,1,'2.jpg'),(3,'PHP Komplet',1,'Jubilee','Elex Media Komputindo',2017,'2121',5,1,1,'3.jpg'),(4,'Detektif Conan EP 200',9,'Okigawa Sasuke','Cultura',2016,'2121',5,0,0,'4.jpg'),(5,'Bahasa Indonesia',2,'Umri Nur\'aini dan Indriyani','Pusat Perbukuan',2015,'2121',3,0,0,'5.jpg'),(6,'Komunikasi Lintas Budaya',5,'Dr. Dedy Kurnia','Published',2015,'2121',5,0,0,'6.jpg'),(7,'Kolaborasi Codeigniter dan Ajax dalam Perancangan',1,'Anton Subagia','Elex Media Komputindo',2017,'2121',5,0,0,'7.jpg'),(8,'From Hobby to Money',4,'Deasylawati','Elex Media Komputindo',2015,'2121',5,0,0,'8.jpg'),(9,'Buku Saku Pramuka',8,'Rudi Himawan','Pusat Perbukuan',2016,'2121',6,0,0,'9.jpg'),(10,'Rahasia Keajaiban Bumi',3,'Nurul Ihsan','Luxima',2014,'2121',5,0,0,'10.jpg');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(45) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`) values (1,'Komputer'),(2,'Bahasa'),(3,'Sains'),(4,'Hobby'),(5,'Komunikasi'),(6,'Hukum'),(7,'Agama'),(8,'Populer'),(11,'Komik');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `role` */

insert  into `role`(`id`,`role`) values (1,'administrator'),(2,'member');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `password_tidak_enkripsi` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`nama`,`email`,`image`,`password`,`password_tidak_enkripsi`,`role_id`,`is_active`,`tanggal_input`) values (1,'test','test@gmail.com','test.jpg','test','',1,1,0),(3,'qwerty','qwerty@gmail.com','default.jpg','$2y$10$yYWE05ZntKVlqS410KP34exAjPSW2RNRbBH/ocy5Bsp5TNoD1b2gC','qwerty',2,1,1653286015),(4,'123','123@gmail.com','default.jpg','$2y$10$vUCLWXJyOQBZaZ9RLf96qeIvyoR2WoyIB9Dk/myYIO8IDee/IsKH6','123',2,1,1653286091),(5,'456','456@gmail.com','default.jpg','$2y$10$kTA3BrLF2wp5Vc87mmsq5e3gat3PJyEEk96dX5ncpVbSMG78x8T/O','456',2,1,1653286137),(6,'yanto','yanto@gmail.com','default.jpg','$2y$10$B/UKPlPvIt29bKMcGyqP3O/pdHRxTWWuM1QqlwamN656LCSc0EuWi','yanto',1,1,1653286210),(7,'Matakuliah WEB 2','web2@gmail.com','pro1653884504.png','$2y$10$IqEjCDhV55rcIlUKA0pHfOw.NBUB07zOUElQJrzROR7dWmITbJxWO','web2',1,1,1653286426),(8,'Nama 1','nama1@gmail.com','pro1653885393.png','$2y$10$rCJ9htOtWOCqhOucLGSuCOKevhS.dxd7tbHNNkt4g/FKhN6agtmZW','nama1',1,1,1653885337);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
