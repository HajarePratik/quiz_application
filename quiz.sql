-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `difficulty_level` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Java','Easy','final','const','static','let','Which keyword is used to define a constant in Java?','final'),(2,'Java','Easy','Code reusability','Code encapsulation','Code readability','Code destruction','What does inheritance represent in object-oriented programming?','Code reusability'),(3,'Java','Intermediate','catch','throw','throws','try','What keyword is used to handle exceptions in Java?','try'),(4,'Java','Hard','List','Map','Set','Collection','What interface in Java provides the framework for working with groups of objects?','Collection'),(5,'Java','Intermediate','To create a class-level variable or method','To access instance variables and methods','To define a constant value','To initialize objects','What is the purpose of the \'static\' keyword in Java?','To create a class-level variable or method'),(6,'Java','Intermediate','0','null','Depends on the type of the variable','Undefined','What is the default value of a variable declared without initialization in Java?','Depends on the type of the variable'),(7,'Java','Easy','for loop','do-while loop','while loop','enhanced for loop','Which loop is guaranteed to execute at least once in Java?','do-while loop'),(8,'Java','Easy','super','this','self','current','What is the Java keyword used to refer to objects of the current class?','this'),(9,'Java','Easy','To declare constants','To refer to the immediate parent class object','To access static variables','To call methods from the child class','What is the purpose of the \'super\' keyword in Java?','To refer to the immediate parent class object'),(10,'Java','Easy','Encapsulation','Inheritance','Polymorphism','Abstraction','Which Java feature allows a method to have different forms?','Polymorphism'),(11,'Spring Boot','Easy','application.properties','config.xml','settings.ini','app.config','Which file is used for externalized configuration in Spring Boot?','application.properties'),(12,'Spring Boot','Intermediate','@Autowired','@Inject','@Bean','@Component','Which annotation in Spring Boot is used for dependency injection?','@Autowired'),(13,'Spring Boot','Easy','8080','9090','8000','8181','What is the default server port for a Spring Boot application?','8080'),(14,'Spring Boot','Intermediate','Marks a class as a data repository','Indicates a controller for RESTful APIs','Manages database transactions','Defines a scheduled task','What does the @RestController annotation do in Spring Boot?','Indicates a controller for RESTful APIs'),(15,'Spring Boot','Hard','Scans for database changes','Scans for security vulnerabilities','Scans for memory leaks','Specifies the base packages to scan for Spring components','What is the purpose of @ComponentScan in Spring Boot?','Specifies the base packages to scan for Spring components'),(16,'Spring Boot','Intermediate','spring-boot-starter-web','spring-boot-starter-test','spring-boot-starter-jdbc','spring-boot-starter-data','Which Spring Boot starter is used for building web applications?','spring-boot-starter-web'),(17,'Spring Boot','Intermediate','Configures the application\'s database','Indicates the starting point of the application','Initiates the application\'s security','Manages RESTful endpoints','What is the purpose of @SpringBootApplication in Spring Boot?','Indicates the starting point of the application'),(18,'Spring Boot','Intermediate','Defines the primary bean for the application','Specifies database table relationships','Maps HTTP requests to handler methods','Maps exceptions to error pages','What does the @RequestMapping annotation do in Spring Boot?','Maps HTTP requests to handler methods'),(19,'Spring Boot','Intermediate','Defines an aspect in Aspect-Oriented Programming','Declares a method to produce a bean to be managed by the Spring container','Marks a class as a Spring bean','Enables global exception handling','What is the role of the @Bean annotation in Spring Boot?','Declares a method to produce a bean to be managed by the Spring container'),(20,'Spring Boot','Hard','To monitor and manage Spring Boot applications','To handle asynchronous tasks','To manage external configurations','To integrate with microservices','What is the purpose of Spring Boot Actuator?','To monitor and manage Spring Boot applications'),(21,'SQL','Easy','Data Definition Language','Data Description Language','Database Definition Language','Database Description Language','What does the SQL acronym DDL stand for?','Data Definition Language'),(22,'SQL','Hard','LEFT JOIN','INNER JOIN','OUTER JOIN','RIGHT JOIN','Which SQL join returns only the rows that have matching values in both tables?','INNER JOIN'),(23,'SQL','Intermediate','GROUP BY','HAVING','ORDER BY','WHERE','What SQL keyword is used to filter the result set based on a specified condition?','WHERE'),(24,'SQL','Hard','It filters records based on a specified condition','It performs a join operation between tables','It groups rows that have the same values into summary rows','It sorts the result set in ascending or descending order','What is the purpose of the GROUP BY clause in SQL?','It groups rows that have the same values into summary rows'),(25,'SQL','Easy','UPDATE','INSERT INTO','CREATE','ADD','Which SQL statement is used to insert new data into a database?','INSERT INTO'),(26,'SQL','Easy','Data Manipulation Language','Data Modeling Language','Data Migration Language','Data Mapping Language','What does the SQL acronym DML stand for?','Data Manipulation Language'),(27,'SQL','Intermediate','ORDER BY','SORT BY','GROUP BY','ARRANGE BY','Which SQL clause is used to sort the result set in ascending or descending order?','ORDER BY'),(28,'SQL','Intermediate','MIN()','AVG()','MAX()','SUM()','What SQL function is used to return the maximum value of a column?','MAX()'),(29,'SQL','Hard','It limits the number of rows returned','It calculates the average of distinct values in a column','It removes duplicate rows from the result set','It performs a cross join between tables','What is the purpose of the SQL keyword DISTINCT?','It removes duplicate rows from the result set'),(30,'SQL','Intermediate','REMOVE','DELETE','TRUNCATE','DROP','Which SQL statement is used to delete rows from a database table?','DELETE');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'JQuiz'),(2,'SQLQuiz');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_questions` (
  `quiz_id` int NOT NULL,
  `questions_id` int NOT NULL,
  KEY `FKpmfvwer12y1nrjc0efm04dq16` (`questions_id`),
  KEY `FKcgp9e1c6ww3t383aui4w8feae` (`quiz_id`),
  CONSTRAINT `FKcgp9e1c6ww3t383aui4w8feae` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  CONSTRAINT `FKpmfvwer12y1nrjc0efm04dq16` FOREIGN KEY (`questions_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions`
--

LOCK TABLES `quiz_questions` WRITE;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
INSERT INTO `quiz_questions` VALUES (1,4),(1,10),(1,3),(1,1),(1,5),(2,26),(2,28),(2,29),(2,23),(2,30);
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23 21:30:43
