SELECT repos.repo_id, repos.full_name, commits.message FROM commits inner join repos on repos.repo_id = commits.repo_id;

SELECT * FROM commits;

SELECT count(*) FROM commits where repo_id = 3;

/*delete from commits;*/

ALTER TABLE commits AUTO_INCREMENT = 1;