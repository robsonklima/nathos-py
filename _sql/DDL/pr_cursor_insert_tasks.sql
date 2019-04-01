DELIMITER $$
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

  END$$
DELIMITER ;
