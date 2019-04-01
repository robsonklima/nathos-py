
DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `requirement_id` int(11) DEFAULT NULL,
  `percentage_completed` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8731 DEFAULT CHARSET=utf8;

ALTER TABLE tasks AUTO_INCREMENT = 1;


CALL `nhatos`.`cursor_insert_tasks`();
