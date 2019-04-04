CREATE DATABASE  IF NOT EXISTS `nhatos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nhatos`;
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
-- Temporary view structure for view `vw_requirements_untranslated`
--

DROP TABLE IF EXISTS `vw_requirements_untranslated`;
/*!50001 DROP VIEW IF EXISTS `vw_requirements_untranslated`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_requirements_untranslated` AS SELECT 
 1 AS `requirement_id`,
 1 AS `project_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `type`,
 1 AS `rat`,
 1 AS `translated`,
 1 AS `processed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_projects_unclassified`
--

DROP TABLE IF EXISTS `vw_projects_unclassified`;
/*!50001 DROP VIEW IF EXISTS `vw_projects_unclassified`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_projects_unclassified` AS SELECT 
 1 AS `project_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `size`,
 1 AS `translated`,
 1 AS `classified`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_projects_untranslated`
--

DROP TABLE IF EXISTS `vw_projects_untranslated`;
/*!50001 DROP VIEW IF EXISTS `vw_projects_untranslated`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_projects_untranslated` AS SELECT 
 1 AS `project_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `size`,
 1 AS `translated`,
 1 AS `classified`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_requirements`
--

DROP TABLE IF EXISTS `vw_requirements`;
/*!50001 DROP VIEW IF EXISTS `vw_requirements`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_requirements` AS SELECT 
 1 AS `requirement_id`,
 1 AS `project_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `type`,
 1 AS `rat`,
 1 AS `translated`,
 1 AS `created_at`,
 1 AS `tasks_count`,
 1 AS `percentage_completed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_recommendations`
--

DROP TABLE IF EXISTS `vw_recommendations`;
/*!50001 DROP VIEW IF EXISTS `vw_recommendations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_recommendations` AS SELECT 
 1 AS `recommendation_id`,
 1 AS `type`,
 1 AS `requirement_id`,
 1 AS `project_a_id`,
 1 AS `project_a_name`,
 1 AS `proj_a_percentage_completed`,
 1 AS `requirement_a_description`,
 1 AS `requirement_compared_id`,
 1 AS `project_b_id`,
 1 AS `project_b_name`,
 1 AS `proj_b_percentage_completed`,
 1 AS `Requirement_b_description`,
 1 AS `distance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_categories`
--

DROP TABLE IF EXISTS `vw_categories`;
/*!50001 DROP VIEW IF EXISTS `vw_categories`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_categories` AS SELECT 
 1 AS `title`,
 1 AS `projects_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_tasks`
--

DROP TABLE IF EXISTS `vw_tasks`;
/*!50001 DROP VIEW IF EXISTS `vw_tasks`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_tasks` AS SELECT 
 1 AS `task_id`,
 1 AS `name`,
 1 AS `requirement_id`,
 1 AS `percentage_completed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_projects`
--

DROP TABLE IF EXISTS `vw_projects`;
/*!50001 DROP VIEW IF EXISTS `vw_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_projects` AS SELECT 
 1 AS `project_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `size`,
 1 AS `methodology`,
 1 AS `translated`,
 1 AS `classified`,
 1 AS `created_at`,
 1 AS `categories_count`,
 1 AS `requirements_count`,
 1 AS `tasks_count`,
 1 AS `percentage_completed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_requirements_unprocessed`
--

DROP TABLE IF EXISTS `vw_requirements_unprocessed`;
/*!50001 DROP VIEW IF EXISTS `vw_requirements_unprocessed`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_requirements_unprocessed` AS SELECT 
 1 AS `requirement_id`,
 1 AS `project_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `type`,
 1 AS `rat`,
 1 AS `translated`,
 1 AS `processed`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_requirements_untranslated`
--

/*!50001 DROP VIEW IF EXISTS `vw_requirements_untranslated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_requirements_untranslated` AS select `r`.`requirement_id` AS `requirement_id`,`r`.`project_id` AS `project_id`,`r`.`title` AS `title`,`r`.`description` AS `description`,`r`.`type` AS `type`,`r`.`rat` AS `rat`,`r`.`translated` AS `translated`,`r`.`processed` AS `processed` from `tb_requirements` `r` where (isnull(`r`.`translated`) or (`r`.`translated` = 0)) limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_projects_unclassified`
--

/*!50001 DROP VIEW IF EXISTS `vw_projects_unclassified`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_projects_unclassified` AS select `tb_projects`.`project_id` AS `project_id`,`tb_projects`.`name` AS `name`,`tb_projects`.`description` AS `description`,`tb_projects`.`size` AS `size`,`tb_projects`.`translated` AS `translated`,`tb_projects`.`classified` AS `classified` from `tb_projects` where ((`tb_projects`.`translated` = 1) and ((`tb_projects`.`classified` = 0) or isnull(`tb_projects`.`classified`))) limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_projects_untranslated`
--

/*!50001 DROP VIEW IF EXISTS `vw_projects_untranslated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_projects_untranslated` AS select `p`.`project_id` AS `project_id`,`p`.`name` AS `name`,`p`.`description` AS `description`,`p`.`size` AS `size`,`p`.`translated` AS `translated`,`p`.`classified` AS `classified` from `tb_projects` `p` where (isnull(`p`.`translated`) or (`p`.`translated` = 0)) limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_requirements`
--

/*!50001 DROP VIEW IF EXISTS `vw_requirements`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_requirements` AS select `r`.`requirement_id` AS `requirement_id`,`r`.`project_id` AS `project_id`,`r`.`title` AS `title`,`r`.`description` AS `description`,`r`.`type` AS `type`,`r`.`rat` AS `rat`,`r`.`translated` AS `translated`,`r`.`created_at` AS `created_at`,(select count(1) from `tb_tasks` `t` where (`t`.`requirement_id` = `r`.`requirement_id`)) AS `tasks_count`,cast(((select sum(`t`.`percentage_completed`) from `tb_tasks` `t` where (`t`.`requirement_id` = `r`.`requirement_id`)) / (select count(1) from `tb_tasks` `t` where (`t`.`requirement_id` = `r`.`requirement_id`))) as decimal(10,1)) AS `percentage_completed` from `tb_requirements` `r` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_recommendations`
--

/*!50001 DROP VIEW IF EXISTS `vw_recommendations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_recommendations` AS select `data`.`recommendation_id` AS `recommendation_id`,`data`.`type` AS `type`,`data`.`requirement_id` AS `requirement_id`,`data`.`project_a_id` AS `project_a_id`,`data`.`project_a_name` AS `project_a_name`,`data`.`proj_a_percentage_completed` AS `proj_a_percentage_completed`,`data`.`requirement_a_description` AS `requirement_a_description`,`data`.`requirement_compared_id` AS `requirement_compared_id`,`data`.`project_b_id` AS `project_b_id`,`data`.`project_b_name` AS `project_b_name`,`data`.`proj_b_percentage_completed` AS `proj_b_percentage_completed`,`data`.`Requirement_b_description` AS `Requirement_b_description`,`data`.`distance` AS `distance` from (select `rec`.`recommendation_id` AS `recommendation_id`,`rec`.`type` AS `type`,`req_a`.`requirement_id` AS `requirement_id`,`proj_a`.`project_id` AS `project_a_id`,`proj_a`.`name` AS `project_a_name`,cast(((select sum(`t`.`percentage_completed`) from `nhatos`.`tb_tasks` `t` where `t`.`requirement_id` in (select `req_a_aux`.`requirement_id` from `nhatos`.`tb_requirements` `req_a_aux` where (`req_a_aux`.`project_id` = `proj_a`.`project_id`))) / (select count(distinct `nhatos`.`tb_tasks`.`task_id`) from `nhatos`.`tb_tasks` where `nhatos`.`tb_tasks`.`requirement_id` in (select `req_a_aux`.`requirement_id` from `nhatos`.`tb_requirements` `req_a_aux` where (`req_a_aux`.`project_id` = `proj_a`.`project_id`)))) as decimal(10,1)) AS `proj_a_percentage_completed`,substr(`req_a`.`description`,1,150) AS `requirement_a_description`,`req_b`.`requirement_id` AS `requirement_compared_id`,`proj_b`.`project_id` AS `project_b_id`,`proj_b`.`name` AS `project_b_name`,cast(((select sum(`t`.`percentage_completed`) from `nhatos`.`tb_tasks` `t` where `t`.`requirement_id` in (select `req_a_aux`.`requirement_id` from `nhatos`.`tb_requirements` `req_a_aux` where (`req_a_aux`.`project_id` = `proj_b`.`project_id`))) / (select count(distinct `nhatos`.`tb_tasks`.`task_id`) from `nhatos`.`tb_tasks` where `nhatos`.`tb_tasks`.`requirement_id` in (select `req_a_aux`.`requirement_id` from `nhatos`.`tb_requirements` `req_a_aux` where (`req_a_aux`.`project_id` = `proj_b`.`project_id`)))) as decimal(10,1)) AS `proj_b_percentage_completed`,substr(`req_b`.`description`,1,150) AS `Requirement_b_description`,cast(`rec`.`distance` as decimal(4,3)) AS `distance` from (((((`nhatos`.`tb_recommendations` `rec` left join `nhatos`.`tb_requirements` `req_a` on((`req_a`.`requirement_id` = `rec`.`requirement_id`))) left join `nhatos`.`tb_requirements` `req_b` on((`req_b`.`requirement_id` = `rec`.`requirement_compared_id`))) left join `nhatos`.`tb_projects` `proj_a` on((`req_a`.`project_id` = `proj_a`.`project_id`))) left join `nhatos`.`tb_projects` `proj_b` on((`req_b`.`project_id` = `proj_b`.`project_id`))) left join `nhatos`.`tb_requirements_recommendations` `req_rec` on((`req_rec`.`recommendation_id` = `rec`.`recommendation_id`))) where ((1 = 1) and (`rec`.`distance` < 0.9) and (`proj_a`.`size` = `proj_b`.`size`) and (`proj_a`.`methodology` = `proj_b`.`methodology`) and (`proj_a`.`project_id` <> `proj_b`.`project_id`) and isnull(`req_rec`.`requirement_recommendation_id`) and (not(`rec`.`requirement_compared_id` in (select `nhatos`.`tb_recommendations`.`requirement_compared_id` from `nhatos`.`tb_recommendations` where `nhatos`.`tb_recommendations`.`recommendation_id` in (select `nhatos`.`tb_requirements_recommendations`.`recommendation_id` from `nhatos`.`tb_requirements_recommendations` where (`nhatos`.`tb_requirements_recommendations`.`project_id` = `proj_a`.`project_id`))))))) `data` where (`data`.`proj_a_percentage_completed` between (`data`.`proj_b_percentage_completed` - 5) and (`data`.`proj_b_percentage_completed` + 5)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_categories`
--

/*!50001 DROP VIEW IF EXISTS `vw_categories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_categories` AS select `c`.`title` AS `title`,count(`p`.`project_id`) AS `projects_count` from (`tb_categories` `c` join `tb_projects` `p` on((`p`.`project_id` = `c`.`project_id`))) group by `c`.`title` order by count(`p`.`project_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_tasks`
--

/*!50001 DROP VIEW IF EXISTS `vw_tasks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_tasks` AS select `tb_tasks`.`task_id` AS `task_id`,`tb_tasks`.`name` AS `name`,`tb_tasks`.`requirement_id` AS `requirement_id`,cast(`tb_tasks`.`percentage_completed` as decimal(10,2)) AS `percentage_completed` from `tb_tasks` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_projects`
--

/*!50001 DROP VIEW IF EXISTS `vw_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_projects` AS select `p`.`project_id` AS `project_id`,`p`.`name` AS `name`,`p`.`description` AS `description`,`p`.`size` AS `size`,`p`.`methodology` AS `methodology`,`p`.`translated` AS `translated`,`p`.`classified` AS `classified`,`p`.`created_at` AS `created_at`,count(distinct `c`.`category_id`) AS `categories_count`,count(distinct `r`.`requirement_id`) AS `requirements_count`,count(distinct `t`.`task_id`) AS `tasks_count`,cast(((select sum(`t`.`percentage_completed`) from `tb_tasks` `t` where `t`.`requirement_id` in (select `tb_requirements`.`requirement_id` from `tb_requirements` where (`tb_requirements`.`project_id` = `p`.`project_id`))) / count(distinct `t`.`task_id`)) as decimal(10,1)) AS `percentage_completed` from (((`tb_projects` `p` left join `tb_categories` `c` on((`p`.`project_id` = `c`.`project_id`))) left join `tb_requirements` `r` on((`p`.`project_id` = `r`.`project_id`))) left join `tb_tasks` `t` on((`r`.`requirement_id` = `t`.`requirement_id`))) group by `p`.`project_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_requirements_unprocessed`
--

/*!50001 DROP VIEW IF EXISTS `vw_requirements_unprocessed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_requirements_unprocessed` AS select `tb_requirements`.`requirement_id` AS `requirement_id`,`tb_requirements`.`project_id` AS `project_id`,`tb_requirements`.`title` AS `title`,`tb_requirements`.`description` AS `description`,`tb_requirements`.`type` AS `type`,`tb_requirements`.`rat` AS `rat`,`tb_requirements`.`translated` AS `translated`,`tb_requirements`.`processed` AS `processed` from `tb_requirements` where ((`tb_requirements`.`translated` = 1) and ((`tb_requirements`.`processed` = 0) or isnull(`tb_requirements`.`processed`))) limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'nhatos'
--

--
-- Dumping routines for database 'nhatos'
--
/*!50003 DROP PROCEDURE IF EXISTS `fc_insert_tasks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_insert_tasks`()
BEGIN

  -- Definição de variáveis utilizadas na Procedure
  DECLARE existe_mais_linhas INT DEFAULT 0;
  DECLARE cursor_requirement_id INT DEFAULT 0;
  DECLARE cursor_requirement_title varchar(145) DEFAULT NULL;
  
  DECLARE x INT;
  DECLARE str VARCHAR(255);
  

  -- Definição do cursor
  DECLARE meuCursor CURSOR FOR SELECT requirement_id, title FROM tb_requirements ORDER BY 1 ASC;

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
    
    INSERT INTO  tb_tasks (name, requirement_id, percentage_completed) 
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

-- Dump completed on 2019-04-04 10:25:22
