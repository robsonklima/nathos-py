-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: nhatos
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Temporary view structure for view `tasks_get_all`
--

DROP TABLE IF EXISTS `tasks_get_all`;
/*!50001 DROP VIEW IF EXISTS `tasks_get_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tasks_get_all` AS SELECT 
 1 AS `task_id`,
 1 AS `name`,
 1 AS `requirement_id`,
 1 AS `percentage_completed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `categories_get_all`
--

DROP TABLE IF EXISTS `categories_get_all`;
/*!50001 DROP VIEW IF EXISTS `categories_get_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `categories_get_all` AS SELECT 
 1 AS `title`,
 1 AS `projects_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `requirements_get_untranslated`
--

DROP TABLE IF EXISTS `requirements_get_untranslated`;
/*!50001 DROP VIEW IF EXISTS `requirements_get_untranslated`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `requirements_get_untranslated` AS SELECT 
 1 AS `requirement_id`,
 1 AS `project_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `type`,
 1 AS `rat`,
 1 AS `translated`,
 1 AS `user_modified_at`,
 1 AS `bot_modified_at`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projects_get_untranslated`
--

DROP TABLE IF EXISTS `projects_get_untranslated`;
/*!50001 DROP VIEW IF EXISTS `projects_get_untranslated`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `projects_get_untranslated` AS SELECT 
 1 AS `project_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `size`,
 1 AS `translated`,
 1 AS `classified`,
 1 AS `user_modified_at`,
 1 AS `bot_modified_at`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `requirements_get_unprocessed`
--

DROP TABLE IF EXISTS `requirements_get_unprocessed`;
/*!50001 DROP VIEW IF EXISTS `requirements_get_unprocessed`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `requirements_get_unprocessed` AS SELECT 
 1 AS `requirement_id`,
 1 AS `project_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `type`,
 1 AS `rat`,
 1 AS `translated`,
 1 AS `processed`,
 1 AS `user_modified_at`,
 1 AS `bot_modified_at`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `requirements_get_all`
--

DROP TABLE IF EXISTS `requirements_get_all`;
/*!50001 DROP VIEW IF EXISTS `requirements_get_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `requirements_get_all` AS SELECT 
 1 AS `requirement_id`,
 1 AS `project_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `type`,
 1 AS `rat`,
 1 AS `translated`,
 1 AS `user_modified_at`,
 1 AS `bot_modified_at`,
 1 AS `created_at`,
 1 AS `tasks_count`,
 1 AS `percentage_completed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projects_get_unclassified`
--

DROP TABLE IF EXISTS `projects_get_unclassified`;
/*!50001 DROP VIEW IF EXISTS `projects_get_unclassified`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `projects_get_unclassified` AS SELECT 
 1 AS `project_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `size`,
 1 AS `translated`,
 1 AS `classified`,
 1 AS `user_modified_at`,
 1 AS `bot_modified_at`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projects_get_all`
--

DROP TABLE IF EXISTS `projects_get_all`;
/*!50001 DROP VIEW IF EXISTS `projects_get_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `projects_get_all` AS SELECT 
 1 AS `project_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `translated`,
 1 AS `classified`,
 1 AS `user_modified_at`,
 1 AS `bot_modified_at`,
 1 AS `created_at`,
 1 AS `categories_count`,
 1 AS `requirements_count`,
 1 AS `tasks_count`,
 1 AS `percentage_completed`,
 1 AS `size`,
 1 AS `methodology`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `recommendations_get_all`
--

DROP TABLE IF EXISTS `recommendations_get_all`;
/*!50001 DROP VIEW IF EXISTS `recommendations_get_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `recommendations_get_all` AS SELECT 
 1 AS `requirement_a_id`,
 1 AS `project_a_id`,
 1 AS `project_a_name`,
 1 AS `requirement_a_description`,
 1 AS `requirement_b_id`,
 1 AS `project_b_id`,
 1 AS `project_b_name`,
 1 AS `Requirement_b_description`,
 1 AS `distance`,
 1 AS `created_at`,
 1 AS `created_at_days`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `tasks_get_all`
--

/*!50001 DROP VIEW IF EXISTS `tasks_get_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tasks_get_all` AS select `tasks`.`task_id` AS `task_id`,`tasks`.`name` AS `name`,`tasks`.`requirement_id` AS `requirement_id`,cast(`tasks`.`percentage_completed` as decimal(10,2)) AS `percentage_completed` from `tasks` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `categories_get_all`
--

/*!50001 DROP VIEW IF EXISTS `categories_get_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `categories_get_all` AS select `c`.`title` AS `title`,count(`p`.`project_id`) AS `projects_count` from (`categories` `c` join `projects` `p` on((`p`.`project_id` = `c`.`project_id`))) group by `c`.`title` order by count(`p`.`project_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `requirements_get_untranslated`
--

/*!50001 DROP VIEW IF EXISTS `requirements_get_untranslated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `requirements_get_untranslated` AS select `r`.`requirement_id` AS `requirement_id`,`r`.`project_id` AS `project_id`,`r`.`title` AS `title`,`r`.`description` AS `description`,`r`.`type` AS `type`,`r`.`rat` AS `rat`,`r`.`translated` AS `translated`,`r`.`user_modified_at` AS `user_modified_at`,`r`.`bot_modified_at` AS `bot_modified_at`,`r`.`created_at` AS `created_at` from `requirements` `r` where (isnull(`r`.`translated`) or (`r`.`translated` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projects_get_untranslated`
--

/*!50001 DROP VIEW IF EXISTS `projects_get_untranslated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projects_get_untranslated` AS select `p`.`project_id` AS `project_id`,`p`.`name` AS `name`,`p`.`description` AS `description`,`p`.`size` AS `size`,`p`.`translated` AS `translated`,`p`.`classified` AS `classified`,`p`.`user_modified_at` AS `user_modified_at`,`p`.`bot_modified_at` AS `bot_modified_at`,`p`.`created_at` AS `created_at` from `projects` `p` where (isnull(`p`.`translated`) or (`p`.`translated` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `requirements_get_unprocessed`
--

/*!50001 DROP VIEW IF EXISTS `requirements_get_unprocessed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `requirements_get_unprocessed` AS select `requirements`.`requirement_id` AS `requirement_id`,`requirements`.`project_id` AS `project_id`,`requirements`.`title` AS `title`,`requirements`.`description` AS `description`,`requirements`.`type` AS `type`,`requirements`.`rat` AS `rat`,`requirements`.`translated` AS `translated`,`requirements`.`processed` AS `processed`,`requirements`.`user_modified_at` AS `user_modified_at`,`requirements`.`bot_modified_at` AS `bot_modified_at`,`requirements`.`created_at` AS `created_at` from `requirements` where ((`requirements`.`processed` = 0) or isnull(`requirements`.`processed`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `requirements_get_all`
--

/*!50001 DROP VIEW IF EXISTS `requirements_get_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `requirements_get_all` AS select `r`.`requirement_id` AS `requirement_id`,`r`.`project_id` AS `project_id`,`r`.`title` AS `title`,`r`.`description` AS `description`,`r`.`type` AS `type`,`r`.`rat` AS `rat`,`r`.`translated` AS `translated`,`r`.`user_modified_at` AS `user_modified_at`,`r`.`bot_modified_at` AS `bot_modified_at`,`r`.`created_at` AS `created_at`,(select count(1) from `tasks` `t` where (`t`.`requirement_id` = `r`.`requirement_id`)) AS `tasks_count`,cast(((select sum(`t`.`percentage_completed`) from `tasks` `t` where (`t`.`requirement_id` = `r`.`requirement_id`)) / (select count(1) from `tasks` `t` where (`t`.`requirement_id` = `r`.`requirement_id`))) as decimal(10,1)) AS `percentage_completed` from `requirements` `r` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projects_get_unclassified`
--

/*!50001 DROP VIEW IF EXISTS `projects_get_unclassified`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projects_get_unclassified` AS select `projects`.`project_id` AS `project_id`,`projects`.`name` AS `name`,`projects`.`description` AS `description`,`projects`.`size` AS `size`,`projects`.`translated` AS `translated`,`projects`.`classified` AS `classified`,`projects`.`user_modified_at` AS `user_modified_at`,`projects`.`bot_modified_at` AS `bot_modified_at`,`projects`.`created_at` AS `created_at` from `projects` where ((`projects`.`classified` = 0) or isnull(`projects`.`classified`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projects_get_all`
--

/*!50001 DROP VIEW IF EXISTS `projects_get_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projects_get_all` AS select `p`.`project_id` AS `project_id`,`p`.`name` AS `name`,`p`.`description` AS `description`,`p`.`translated` AS `translated`,`p`.`classified` AS `classified`,`p`.`user_modified_at` AS `user_modified_at`,`p`.`bot_modified_at` AS `bot_modified_at`,`p`.`created_at` AS `created_at`,(select count(1) from `categories` where (`categories`.`project_id` = `p`.`project_id`)) AS `categories_count`,(select count(1) from `requirements` where (`requirements`.`project_id` = `p`.`project_id`)) AS `requirements_count`,(select count(1) from `tasks` `t` where `t`.`requirement_id` in (select `requirements`.`requirement_id` from `requirements` where (`requirements`.`project_id` = `p`.`project_id`))) AS `tasks_count`,cast(((select sum(`t`.`percentage_completed`) from `tasks` `t` where `t`.`requirement_id` in (select `requirements`.`requirement_id` from `requirements` where (`requirements`.`project_id` = `p`.`project_id`))) / (select count(1) from `tasks` `t` where `t`.`requirement_id` in (select `requirements`.`requirement_id` from `requirements` where (`requirements`.`project_id` = `p`.`project_id`)))) as decimal(10,1)) AS `percentage_completed`,`p`.`size` AS `size`,`p`.`methodology` AS `methodology` from `projects` `p` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recommendations_get_all`
--

/*!50001 DROP VIEW IF EXISTS `recommendations_get_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recommendations_get_all` AS select `req_a`.`requirement_id` AS `requirement_a_id`,`proj_a`.`project_id` AS `project_a_id`,`proj_a`.`name` AS `project_a_name`,substr(`req_a`.`description`,1,150) AS `requirement_a_description`,`req_b`.`requirement_id` AS `requirement_b_id`,`proj_b`.`project_id` AS `project_b_id`,`proj_b`.`name` AS `project_b_name`,substr(`req_b`.`description`,1,150) AS `Requirement_b_description`,cast(`rec`.`distance` as decimal(4,3)) AS `distance`,`rec`.`created_at` AS `created_at`,(to_days(now()) - to_days(`rec`.`created_at`)) AS `created_at_days` from ((((`recommendations` `rec` left join `requirements` `req_a` on((`req_a`.`requirement_id` = `rec`.`requirement_a_id`))) left join `requirements` `req_b` on((`req_b`.`requirement_id` = `rec`.`requirement_b_id`))) left join `projects` `proj_a` on((`req_a`.`project_id` = `proj_a`.`project_id`))) left join `projects` `proj_b` on((`req_b`.`project_id` = `proj_b`.`project_id`))) where ((1 = 1) and (`proj_a`.`project_id` <> `proj_b`.`project_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'nhatos'
--
/*!50003 DROP PROCEDURE IF EXISTS `cursor_insert_tasks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_insert_tasks`()
BEGIN

  -- Definição de variáveis utilizadas na Procedure
  DECLARE existe_mais_linhas INT DEFAULT 0;
  DECLARE cursor_requirement_id INT DEFAULT 0;
  DECLARE cursor_requirement_title varchar(145) DEFAULT NULL;
  
  DECLARE x INT;
  DECLARE str VARCHAR(255);
  

  -- Definição do cursor
  DECLARE meuCursor CURSOR FOR SELECT requirement_id, title FROM requirements ORDER BY 1 ASC;

  -- Definição da variável de controle de looping do cursor
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET existe_mais_linhas=1;

  -- Abertura do cursor
  OPEN meuCursor;

  -- Looping de execução do cursor
  meuLoop: LOOP
  FETCH meuCursor INTO cursor_requirement_id, cursor_requirement_title;
  
  SET x = (SELECT FLOOR((RAND() * (10-1+1))+1));
  
  loop_label: LOOP
    IF x = 0 THEN
      LEAVE loop_label;
    END IF;
    
    INSERT INTO  Tasks (name, requirement_id, percentage_completed) 
    VALUES 			 ((SELECT LEFT(UUID(), 8)), cursor_requirement_id, (SELECT FLOOR((RAND() * (100-1+1))+1)));
    SET x = x - 1;
    ITERATE loop_label;
  END LOOP;

  -- Controle de existir mais registros na tabela
  IF existe_mais_linhas = 1 THEN
  LEAVE meuLoop;
  END IF;

  -- Retorna para a primeira linha do loop
  END LOOP meuLoop;

  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-22 16:28:07
