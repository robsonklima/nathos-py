DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_insert_risks`()
BEGIN

  -- Definição de variáveis utilizadas na Procedure
  DECLARE there_are_more_lines INT DEFAULT 0;
  DECLARE risk varchar(145) DEFAULT NULL;
  
  DECLARE x INT;
  

  -- Definição do cursor
  DECLARE myCursor CURSOR FOR SELECT 'Failure to perceive technological constraints' risk UNION SELECT 'Components intended for use may not be suitable or project needs' risk UNION SELECT 'Not being in the development and technical standards of the company' risk UNION SELECT 'Absence of a communication plan' risk UNION SELECT 'Low engagement or commitment on the part of those involved in the project' risk UNION SELECT 'Delays in key company processes with respect to the project' risk UNION SELECT 'Parties involved are not aware of the impacts of the project or challenges' risk UNION SELECT 'Lack of prioritization of functionalities or needs that impact others systems' risk UNION SELECT 'Project team responsibilities not outlined or clear' risk UNION SELECT 'Sponsors have some lack of knowledge of the scope and impacts from the project' risk UNION SELECT 'Cancellation or suspension of the project due to company prioritization changes' risk UNION SELECT 'Reduced project budget due to changes in company prioritization' risk UNION SELECT 'Key business areas not involved in defining project scope' risk UNION SELECT 'Scope of project constantly changes' risk UNION SELECT 'Complexity of the project not correctly measured' risk UNION SELECT 'Estimated project size less than the actual project to be implemented' risk UNION SELECT 'Lack of coordination or prioritization between dependent projects' risk UNION SELECT 'Changes in legislation that impact project requirements' risk UNION SELECT 'Incomplete or outdated documentation of services to be used for system integration' risk UNION SELECT 'External pressure to anticipate the project delivery date or phases before agreed period' risk UNION SELECT 'Project sponsors exchange' risk UNION SELECT 'Users or areas of the company are against the implementation of the proposed solution' risk UNION SELECT 'Morosity or lack of definition in scope definitions' risk UNION SELECT 'Delay in completeness of project milestones' risk UNION SELECT 'Reworks with mass production of data for testing and homologation of application' risk UNION SELECT 'Infrastructure often unavailable' risk UNION SELECT 'Maintenance in infrastructure or in systems used without due planning and warning' risk UNION SELECT 'Delay in providing the necessary resources to the project team' risk UNION SELECT 'Defects in software not detected until deployed to production' risk UNION SELECT 'High defect rate found during product approval' risk UNION SELECT 'Quality of products or by-products do not reach customer expectation' risk UNION SELECT 'Non-synchronization for production deployment of all systems involved' risk UNION SELECT 'Possibility of noise due to salary differences or promotions' risk UNION SELECT 'Unavailability of project team members' risk UNION SELECT 'Key people vacations on the project team' risk UNION SELECT 'Exit or reallocation of key people in the project team' risk UNION SELECT 'Need for training or knowledge needed by those involved in the project' risk UNION SELECT 'Lack of training in the use of company tools or frameworks' risk UNION SELECT 'Strike by the project team or parallel project teams required for integration' risk UNION SELECT 'Overallocating members to project activities' risk UNION SELECT 'Difficulty in allocating or contracting the necessary resources to the project' risk UNION SELECT 'Team inexperienced to the level of complexity of the project, Technical or Business' risk UNION SELECT 'Dispersed project team or lack of rapport between team members' risk UNION SELECT 'Disagreement or conflicts between key team members' risk UNION SELECT 'No assessment of data migration need for legacy systems' risk UNION SELECT 'Need to integrate or interface with legacy systems' risk UNION SELECT 'Hardware available is not suited to the technical needs of the project' risk UNION SELECT 'Unable to evaluate the security-related scope of project information';

  -- Definição da variável de controle de looping do cursor
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET there_are_more_lines=1;

  -- Abertura do cursor
  OPEN myCursor;

  -- Looping de execução do cursor
  myLoop: LOOP
  FETCH myCursor INTO risk;
  
  SET x = (SELECT FLOOR((RAND() * (10-1+1))+1));
  
  loop_label: LOOP
    IF x = 0 THEN
      LEAVE loop_label;
    END IF;
    
    INSERT INTO  risks (description, project_id, created_at) 
    VALUES 			 (risk, (select project_id from projects ORDER BY RAND() LIMIT 1), now());
    SET x = x - 1;
    ITERATE loop_label;
  END LOOP;

  -- Controle de existir mais registros na tabela
  IF there_are_more_lines = 1 THEN
  LEAVE myLoop;
  END IF;

  -- Retorna para a primeira linha do loop
  END LOOP myLoop;

  END$$
DELIMITER ;
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
