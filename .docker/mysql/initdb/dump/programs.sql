DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `network_id` int DEFAULT NULL,
  `active` int DEFAULT NULL,
  `rate` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `programs` VALUES (1,1,0,15),(2,1,0,2),(3,1,0,28),(4,2,0,18),(5,2,1,2),(6,3,1,18),(7,3,1,5),(8,3,1,28),(9,4,1,14),(10,4,1,23),(11,4,1,37),(12,4,1,43),(13,5,0,2),(14,5,0,25),(15,6,1,2),(16,6,1,5),(17,6,1,3),(18,7,0,2),(19,7,1,15),(20,7,1,25),(21,8,0,2);
