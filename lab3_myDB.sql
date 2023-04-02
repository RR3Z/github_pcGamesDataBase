-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `desired_games_to_users`
--

DROP TABLE IF EXISTS `desired_games_to_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desired_games_to_users` (
  `id_games` int NOT NULL,
  `id_users` int NOT NULL,
  PRIMARY KEY (`id_games`,`id_users`),
  KEY `fk_desired_users_games_id_users_idx` (`id_users`),
  CONSTRAINT `fk_desired_games_id_games` FOREIGN KEY (`id_games`) REFERENCES `pc_games` (`id_games`),
  CONSTRAINT `fk_desired_users_games_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desired_games_to_users`
--

LOCK TABLES `desired_games_to_users` WRITE;
/*!40000 ALTER TABLE `desired_games_to_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `desired_games_to_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `id_developers` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `site` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_developers`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'Square Enix','Япония: Синдзюку, Токио','https://www.square-enix-games.com/en_EU/home'),(2,'Ubisoft','Франция: Монтрёй','https://www.ubisoft.com/ru-ru/'),(3,'Konami','Япония: Минато, Токио','https://www.konami.com/en/'),(4,'Electronic Arts','США: Редвуд-Сити, Калифорния','https://www.ea.com/ru-ru'),(5,'Bandai Namco','Токио, Япония','https://en.bandainamcoent.eu'),(6,'Activision Blizzard','США: Санта-Моника, Калифорния','https://activisionblizzard.com'),(7,'Sega','Япония: Синагава, Токио[','https://www.sega.co.jp/en/index.html'),(8,'Nintendo','Япония, Киото','https://www.nintendo.com'),(9,'Xbox Game Studios','США: Редмонд, Вашингтон','https://www.xbox.com/en-US/xbox-game-studios'),(10,'Sony Computer Entertainment','США: Сан-Матео, Калифорния ','https://www.playstation.com/en-us/');
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id_games` int NOT NULL,
  `discount_price` float NOT NULL,
  `discount_percentage` int DEFAULT NULL,
  `start_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_games`),
  CONSTRAINT `id_games` FOREIGN KEY (`id_games`) REFERENCES `pc_games` (`id_games`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,1500,13,'2023-03-15 21:57:25','2023-03-15 21:57:25'),(2,1,100,'2023-03-15 21:57:25','2023-03-15 21:57:25'),(3,1,100,'2023-03-15 21:57:25','2023-03-15 21:57:25'),(4,2,100,'2023-03-15 21:57:25','2023-03-15 21:57:25'),(5,2,100,'2023-03-15 21:57:25','2023-03-15 21:57:25');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id_genres` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id_genres`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'ACTION','Экшн'),(2,'FPS','FPS'),(3,'RPG','RPG'),(4,'Fighting','Fighting'),(5,'BEAT-EM UP','BEAT-EM UP'),(6,'Stealth','Stealth'),(7,'Survival','Survival'),(8,'Adventure','Adventure'),(9,'Horror','Horror'),(10,'Метроидвания','Метроидвания'),(11,'Novel','Novel');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id_orders` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_units` int NOT NULL,
  `id_users` int NOT NULL,
  PRIMARY KEY (`id_orders`),
  KEY `fk_users_id_users_idx` (`id_users`),
  CONSTRAINT `fk_orders_users_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-03-15 21:56:50',15,1),(2,'2023-03-15 21:58:19',1,2),(3,'2023-03-15 21:58:19',1,2),(4,'2023-03-15 21:58:19',1,3),(5,'2023-03-15 21:58:19',1,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_games`
--

DROP TABLE IF EXISTS `pc_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc_games` (
  `id_games` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `available_units` int DEFAULT NULL,
  `price` float NOT NULL,
  `release_date` date NOT NULL,
  `id_genres` int NOT NULL,
  `id_publishers` int NOT NULL,
  `id_developers` int NOT NULL,
  PRIMARY KEY (`id_games`),
  KEY `fk_genres_id_genre_idx` (`id_genres`),
  KEY `fk_publishers_id_publisher_idx` (`id_publishers`),
  KEY `fk_developers_id_developer_idx` (`id_developers`),
  CONSTRAINT `fk_developers_id_developer` FOREIGN KEY (`id_developers`) REFERENCES `developers` (`id_developers`),
  CONSTRAINT `fk_genres_id_genre` FOREIGN KEY (`id_genres`) REFERENCES `genres` (`id_genres`),
  CONSTRAINT `fk_publishers_id_publisher` FOREIGN KEY (`id_publishers`) REFERENCES `publishers` (`id_publishers`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_games`
--

LOCK TABLES `pc_games` WRITE;
/*!40000 ALTER TABLE `pc_games` DISABLE KEYS */;
INSERT INTO `pc_games` VALUES (1,'Sleeping Dogs','Компьютерная игра в жанре action-adventure в открытом мире. Разработана студией United Front Games и издана Square Enix. Релиз состоялся 14 августа 2012 года для Windows, PlayStation 3 и Xbox 360.',5,200,'2001-01-20',1,1,1),(2,'The Settlers','Стройте поселения и участвуйте в сражениях в реальном времени в лучших традициях серии игр с почти 30-летней историей. Выбирайте одну из 3 уникальных фракций, завоевывайте новый мир и наслаждайтесь современной графикой. Мир игры еще никогда не казался настолько живым.',3,390,'2015-03-20',2,2,2),(3,'metal gear solid v: the phantom pain','Компьютерная игра в жанре action-adventure и стелс-экшен с открытым миром, разработанная студией Kojima Productions под руководством геймдизайнера Хидэо Кодзимы и изданная компанией Konami для Windows, PlayStation 3, PlayStation 4, Xbox 360',15,1000,'2001-01-20',3,3,3),(4,'Call of Duty Modern Warfare 2','Компьютерная игра в жанре королевской битвы, выход которой состоялся 16 ноября 2022 года для PlayStation 4, PlayStation 5, Xbox One, Windows и Xbox Series X/S. Это продолжение Call of Duty: Warzone 2020 года.',1000,100,'2015-03-20',4,4,4),(5,'Elden Ring','Компьютерная игра в жанре action/RPG с открытым миром, разработанная японской компанией FromSoftware и изданная компанией Bandai Namco Entertainment для платформ Windows, PlayStation 4, PlayStation 5, Xbox One и Xbox Series X/S. Руководителем',1500,10,'2025-02-20',5,5,5),(6,'Call of Duty Warzone 2','Компьютерная игра в жанре королевской битвы, выход которой состоялся 16 ноября 2022 года для PlayStation 4, PlayStation 5, Xbox One, Windows и Xbox Series X/S. Это продолжение Call of Duty: Warzone 2020 года.',155,0,'2015-01-20',6,6,6),(7,'Company of Heroes 3','Третья часть популярной тактической стратегии в реальном времени.',1,1789,'2023-02-20',7,7,7),(8,'Splatoon 3','Добро пожаловать в Плюхтон, расположенный в залитой солнцем Плюхтонии! Вас ждет новое оружие, боевые приемы, поля боя и улетные прикиды! Ныряйте с головой в красочные сражения, отражайте атаки самонидов и сдерживайте нашествие осьморян.',15,1800,'2015-12-20',8,8,8),(9,'Forza Horizon 5','Пятая часть гоночной серии Forza Horizon. На этот раз игрокам предлагается прокатиться по невероятно красивому и самобытному миру Мексики.',198,5000,'2009-11-20',9,9,9),(10,'Days Gone','Компьютерная игра в жанре action-adventure в открытом мире с элементами survival horror, разработанная американской студией Bend Studio и изданная компанией Sony Interactive Entertainment.',500,1000,'2009-11-20',10,10,10);
/*!40000 ALTER TABLE `pc_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_games_to_orders`
--

DROP TABLE IF EXISTS `pc_games_to_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc_games_to_orders` (
  `id_games` int NOT NULL,
  `id_orders` int NOT NULL,
  PRIMARY KEY (`id_games`,`id_orders`),
  KEY `fk_orders_id_orders_idx` (`id_orders`),
  CONSTRAINT `fk_orders_to_games_id_orders` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id_orders`),
  CONSTRAINT `fk_pc_games_id_games` FOREIGN KEY (`id_games`) REFERENCES `pc_games` (`id_games`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_games_to_orders`
--

LOCK TABLES `pc_games_to_orders` WRITE;
/*!40000 ALTER TABLE `pc_games_to_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `pc_games_to_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_games_to_reviews`
--

DROP TABLE IF EXISTS `pc_games_to_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc_games_to_reviews` (
  `id_games` int NOT NULL,
  `id_reviews` int NOT NULL,
  PRIMARY KEY (`id_games`,`id_reviews`),
  KEY `fk_reviews_id_reviews_idx` (`id_reviews`),
  CONSTRAINT `fk_games_to_reviews_id_games` FOREIGN KEY (`id_games`) REFERENCES `pc_games` (`id_games`),
  CONSTRAINT `fk_reviews_id_reviews` FOREIGN KEY (`id_reviews`) REFERENCES `reviews` (`id_reviews`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_games_to_reviews`
--

LOCK TABLES `pc_games_to_reviews` WRITE;
/*!40000 ALTER TABLE `pc_games_to_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `pc_games_to_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `id_publishers` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `site` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_publishers`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'United Front Games','Канада: Британская Колумбия, Ванкувер','https://unitedfrontgames.com'),(2,'Ubisoft','Франция: Монтрёй','https://www.ubisoft.com/ru-ru/'),(3,'Konami Studios','Япония: Минато, Токио','https://www.konami.com/en/'),(4,'Infinity Ward','США: Лос-Анджелес, Калифорния и Остин, Техас','https://www.infinityward.com'),(5,'FromSoftware','Япония: Токио','https://www.fromsoftware.jp/ww/'),(6,'Raven Software','США: Мэдисон, Висконсин','https://www.ravensoftware.com'),(7,'Relic Entertainment','Канада: Ванкувер','https://www.relic.com'),(8,'Nintendo','Япония, Киото','https://www.nintendo.com'),(9,'Playground Games ','Великобритания: Ройал-Лемингтон-Спа, Англия','https://playground-games.com'),(10,'Bend Studio','asd','asd');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id_reviews` int NOT NULL AUTO_INCREMENT,
  `feedback` varchar(1000) DEFAULT NULL,
  `score` int NOT NULL,
  `id_users` int NOT NULL,
  PRIMARY KEY (`id_reviews`),
  KEY `fk_users_id_users_idx` (`id_users`),
  CONSTRAINT `fk_reviews_users_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Крута!',5,1),(2,'Ужасна!',6,2),(3,'Весела!',7,3);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id_transactions` int NOT NULL AUTO_INCREMENT,
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `sum` int NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_orders` int NOT NULL,
  PRIMARY KEY (`id_transactions`),
  KEY `fk_orders_to_transactions_id_orders_idx` (`id_orders`),
  CONSTRAINT `fk_orders_to_transactions_id_orders` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id_orders`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,1500,'VISA','2023-03-15 21:57:25',1),(2,0,1,'Сбербанк','2023-03-15 21:58:23',2),(3,1,0,'Сбербанк','2023-03-15 21:58:23',3),(4,1,1,'Сбербанк','2023-03-15 21:58:23',4),(5,0,1,'Яндекс Деньги','2023-03-15 21:58:23',5);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_users` int NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rr','123','Egorka','123@mail.ru','2015-02-20 23:00:00'),(2,'nikita','321','Nikitka','rr@mail.ru','2015-02-20 23:00:00'),(3,'maks','21','Maksimka','lx@gmail.com','2015-02-20 23:00:00'),(4,'danik','31','Danilka','rr123@gmail.com','2015-02-20 23:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db'
--

--
-- Dumping routines for database 'db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 21:32:38
