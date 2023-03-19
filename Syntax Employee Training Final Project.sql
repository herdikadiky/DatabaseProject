CREATE SCHEMA IF NOT EXISTS `Employee Training` ;
USE `Employee Training` ;

-- -----------------------------------------------------
-- Table `Employee Training`.`Tabel_Unormalized`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee Training`.`Tabel_Unormalized` (
  `employee_id` VARCHAR(20) NOT NULL,
  `employee_name` VARCHAR(45) NULL,
  `department` VARCHAR(45) NULL,
  `designation` VARCHAR(45) NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  `days` INT UNSIGNED NULL,
  `skill_code` VARCHAR(20) NULL,
  `skill_upgrade` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `score` INT UNSIGNED NULL,
  `grade` VARCHAR(45) NULL,
  `trainer_id` VARCHAR(20) NULL,
  `trainer_name` VARCHAR(45) NULL,
  PRIMARY KEY (`employee_id`));
INSERT INTO `Employee Training`.`Tabel_Unormalized` VALUES
    ('BAC12345','Raj Sharma','Administration','Admin Assist.','2019-05-01','2019-05-05',5,'SKILL01','Call Management','Indoor','Room -3 Block A',8,'SUCCESS','TRA12301','James Smith'),
    ('BAC12353','Rajit','Administration','Admin Assist.','2019-05-01','2019-05-05',5,'SKILL01',NULL,NULL,NULL,5,'SUCCESS','TRA12301',NULL),
    ('BAC12346','Ravi Gupta','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02','Customer Support','Indoor','Room-8 Block C',9,'SUCCESS','TRA12302','Lucas '),
    ('BAC12347','Ashi Pura','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02',NULL,NULL,NULL,4,'FAILED','TRA12302',NULL),
    ('BAC12350','Abhinandan','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02',NULL,NULL,NULL,2,'FAILED','TRA12302',NULL),
    ('BAC12354','Shiva','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02',NULL,NULL,NULL,4,'FAILED','TRA12302',NULL),
    ('BAC12348','Ankita','Sales','Team Leader','2019-05-03','2019-05-08',6,'SKILL03','Team Spirit','Outdoor','BV Consultants ABC Bldg',5,'SUCCESS','TRA12303','Eva '),
    ('BAC12352','Krishna','Sales','Team Leader','2019-05-03','2019-05-08',6,'SKILL03',NULL,NULL,NULL,6,'SUCCESS','TRA12303',NULL),
    ('BAC12355','Rajoo','Sales','Team Leader','2019-05-03','2019-05-08',6,'SKILL03',NULL,NULL,NULL,7,'SUCCESS','TRA12303',NULL),
    ('BAC12349','Sujeet','Sales','Sales Rep','2019-05-05','2019-05-09',5,'SKILL04','Sales Pitch','Outdoor','BV Consultants ABC Bldg',7,'SUCCESS','TRA12304','Mike'),
    ('BAC12351','Gurukrupa','Sales','Sales Rep','2019-05-05','2019-05-09',5,'SKILL04',NULL,NULL,NULL,5,'SUCCESS','TRA12304',NULL);
SELECT*FROM `Employee Training`.`Tabel_Unormalized`;
SELECT*FROM Tabel_Unormalized ORDER BY skill_code ASC;


-- -----------------------------------------------------
-- Table `Employee Training`.`Tabel_Normalized`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee Training`.`Tabel_Normalized` (
  `employee_id` VARCHAR(20) NOT NULL,
  `employee_name` VARCHAR(45) NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  `designation` VARCHAR(45) NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `days` INT UNSIGNED NOT NULL,
  `skill_code` VARCHAR(20) NOT NULL,
  `skill_upgrade` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `score` INT UNSIGNED NOT NULL,
  `grade` VARCHAR(45) NOT NULL,
  `trainer_id` VARCHAR(20) NOT NULL,
  `trainer_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`));
INSERT INTO `Employee Training`.`Tabel_Normalized` VALUES
    ('BAC12345','Raj Sharma','Administration','Admin Assist.','2019-05-01','2019-05-05',5,'SKILL01','Call Management','Indoor','Room -3 Block A',8,'SUCCESS','TRA12301','James Smith'),
    ('BAC12346','Ravi Gupta','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02','Customer Support','Indoor','Room-8 Block C',9,'SUCCESS','TRA12302','Lucas '),
    ('BAC12347','Ashi Pura','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02','Customer Support','Indoor','Room-8 Block C',4,'FAILED','TRA12302','Lucas '),
    ('BAC12348','Ankita','Sales','Team Leader','2019-05-03','2019-05-08',6,'SKILL03','Team Spirit','Outdoor','BV Consultants ABC Bldg',5,'SUCCESS','TRA12303','Eva '),
    ('BAC12349','Sujeet','Sales','Sales Rep','2019-05-05','2019-05-09',5,'SKILL04','Sales Pitch','Outdoor','BV Consultants ABC Bldg',7,'SUCCESS','TRA12304','Mike'),
    ('BAC12350','Abhinandan','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02','Customer Support','Indoor','Room-8 Block C',2,'FAILED','TRA12302','Lucas '),
    ('BAC12351','Gurukrupa','Sales','Sales Rep','2019-05-05','2019-05-09',5,'SKILL04','Sales Pitch','Outdoor','BV Consultants ABC Bldg',5,'SUCCESS','TRA12304','Mike'),
    ('BAC12352','Krishna','Sales','Team Leader','2019-05-03','2019-05-08',6,'SKILL03','Team Spirit','Outdoor','BV Consultants ABC Bldg',6,'SUCCESS','TRA12303','Eva '),
    ('BAC12353','Rajit','Administration','Admin Assist.','2019-05-01','2019-05-05',5,'SKILL01','Call Management','Indoor','Room -3 Block A',5,'SUCCESS','TRA12301','James Smith'),
    ('BAC12354','Shiva','Marketing','Telecaller','2019-05-02','2019-05-16',15,'SKILL02','Customer Support','Indoor','Room-8 Block C',4,'FAILED','TRA12302','Lucas '),
    ('BAC12355','Rajoo','Sales','Team Leader','2019-05-03','2019-05-08',6,'SKILL03','Team Spirit','Outdoor','BV Consultants ABC Bldg',7,'SUCCESS','TRA12303','Eva ');
SELECT*FROM `Employee Training`.`Tabel_Normalized`;


-- -----------------------------------------------------
-- Table `Employee Training`.`Tabel_Peserta_Training`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee Training`.`Tabel_Peserta_Training` (
  `employee_id` VARCHAR(20) NOT NULL,
  `employee_name` VARCHAR(45) NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  `designation` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`));
INSERT INTO `Employee Training`.`Tabel_Peserta_Training` VALUES
    ('BAC12345','Raj Sharma','Administration','Admin Assist.'),
    ('BAC12346','Ravi Gupta','Marketing','Telecaller'),
    ('BAC12347','Ashi Pura','Marketing','Telecaller'),
    ('BAC12348','Ankita','Sales','Team Leader'),
    ('BAC12349','Sujeet','Sales','Sales Rep'),
    ('BAC12350','Abhinandan','Marketing','Telecaller'),
    ('BAC12351','Gurukrupa','Sales','Sales Rep'),
    ('BAC12352','Krishna','Sales','Team Leader'),
    ('BAC12353','Rajit','Administration','Admin Assist.'),
    ('BAC12354','Shiva','Marketing','Telecaller'),
    ('BAC12355','Rajoo','Sales','Team Leader');
SELECT*FROM `Employee Training`.`Tabel_Peserta_Training`;


-- -----------------------------------------------------
-- Table `Employee Training`.`Tabel_Trainer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee Training`.`Tabel_Trainer` (
  `trainer_id` VARCHAR(20) NOT NULL,
  `trainer_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`trainer_id`));
INSERT INTO `Employee Training`.`Tabel_Trainer` VALUES
    ('TRA12301','James Smith'),
    ('TRA12302','Lucas'),
    ('TRA12303','Eva'),
    ('TRA12304','Mike');
SELECT*FROM `Employee Training`.`Tabel_Trainer`;


-- -----------------------------------------------------
-- Table `Employee Training`.`Tabel_Skill_Upgrade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee Training`.`Tabel_Skill_Upgrade` (
  `skill_upgrade` VARCHAR(45) NOT NULL,
  `skill_code` VARCHAR(20) NOT NULL,
  `trainer_id` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`skill_upgrade`),
  INDEX `trainer_id_idx` (`trainer_id` ASC) VISIBLE,
  CONSTRAINT `trainer_id`
    FOREIGN KEY (`trainer_id`)
    REFERENCES `Employee Training`.`Tabel_Trainer` (`trainer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
INSERT INTO `Employee Training`.`Tabel_Skill_Upgrade` VALUES
    ('Call Management','SKILL01','TRA12301'),
    ('Customer Support','SKILL02','TRA12302'),
    ('Team Spirit','SKILL03','TRA12303'),
    ('Sales Pitch','SKILL04','TRA12304');
SELECT*FROM `Employee Training`.`Tabel_Skill_Upgrade`;


-- -----------------------------------------------------
-- Table `Employee Training`.`Tabel_Grades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee Training`.`Tabel_Grades` (
  `skill_upgrade` VARCHAR(45) NOT NULL,
  `employee_id` VARCHAR(20) NOT NULL,
  `score` INT UNSIGNED NOT NULL,
  `grade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`,`skill_upgrade`),
  INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `Employee Training`.`Tabel_Peserta_Training` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
INSERT INTO `Employee Training`.`Tabel_Grades` VALUES
   ('Call Management','BAC12345',8,'SUCCESS'),
    ('Customer Support','BAC12346',9,'SUCCESS'),
    ('Customer Support','BAC12347',4,'FAILED'),
    ('Team Spirit','BAC12348',5,'SUCCESS'),
    ('Sales Pitch','BAC12349',7,'SUCCESS'),
    ('Customer Support','BAC12350',2,'FAILED'),
    ('Sales Pitch','BAC12351',5,'SUCCESS'),
    ('Team Spirit','BAC12352',6,'SUCCESS'),
    ('Call Management','BAC12353',5,'SUCCESS'),
    ('Customer Support','BAC12354',4,'FAILED'),
    ('Team Spirit','BAC12355',7,'SUCCESS');
SELECT*FROM `Employee Training`.`Tabel_Grades`;

-- -----------------------------------------------------
-- Table `Employee Training`.`Tabel_Jadwal_Training`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee Training`.`Tabel_Jadwal_Training` (
  `skill_code` VARCHAR(20) NOT NULL,
  `skill_upgrade` VARCHAR(45) NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `days` INT UNSIGNED NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`skill_code`),
  INDEX `skill_upgrade_idx` (`skill_upgrade` ASC) VISIBLE,
  UNIQUE INDEX `skill_upgrade_UNIQUE` (`skill_upgrade` ASC) VISIBLE,
    FOREIGN KEY (`skill_upgrade`)
    REFERENCES `Employee Training`.`Tabel_Skill_Upgrade` (`skill_upgrade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
INSERT INTO `Employee Training`.`Tabel_Jadwal_Training` VALUES
    ('SKILL01','Call Management','2019-05-01','2019-05-05',5,'Indoor','Room -3 Block A'),
    ('SKILL02','Customer Support','2019-05-02','2019-05-16',15,'Indoor','Room-8 Block C'),
    ('SKILL03','Team Spirit','2019-05-03','2019-05-08',6,'Outdoor','BV Consultants ABC Bldg'),
    ('SKILL04','Sales Pitch','2019-05-05','2019-05-09',5,'Outdoor','BV Consultants ABC Bldg');
SELECT*FROM `Employee Training`.`Tabel_Jadwal_Training`;


-- -----------------------------------------------------
-- JOIN TABEL
-- -----------------------------------------------------

-- INNER JOIN Tabel_Trainer + Tabel_Skill_Upgrade
SELECT `Tabel_Skill_Upgrade`.`skill_upgrade`, `Tabel_Skill_Upgrade`.`skill_code`, `Tabel_Skill_Upgrade`.`trainer_id`, `Tabel_Trainer`.`trainer_name`
FROM `Tabel_Skill_Upgrade`
INNER JOIN `Tabel_Trainer` ON `Tabel_Skill_Upgrade`.`trainer_id` = `Tabel_Trainer`.`trainer_id`;

-- LEFT JOIN Tabel_Grades + Tabel_Skill_Upgrade
SELECT*FROM `Tabel_Grades`
LEFT JOIN `Tabel_Skill_Upgrade`
ON `Tabel_Grades`.`skill_upgrade` = `Tabel_Skill_Upgrade`.`skill_upgrade`;

SELECT Tabel_Grades.skill_upgrade, Tabel_Grades.employee_id, Tabel_Grades.score, Tabel_Grades.grade, Tabel_Skill_Upgrade.skill_code
FROM `Tabel_Grades` LEFT JOIN `Tabel_Skill_Upgrade`
ON `Tabel_Grades`.`skill_upgrade` = `Tabel_Skill_Upgrade`.`skill_upgrade`;

-- RIGHT JOIN Tabel_Trainer + Tabel_Skill_Upgrade
SELECT*FROM `Tabel_Skill_Upgrade`
RIGHT JOIN `Tabel_Trainer`
ON `Tabel_Skill_Upgrade`.`trainer_id` = `Tabel_Trainer`.`trainer_id`;

SELECT skill_upgrade AS SKILL, COUNT(trainer_name) AS TOTAL_TRAINER FROM `Tabel_Skill_Upgrade`
INNER JOIN `Tabel_Trainer` ON `Tabel_Skill_Upgrade`.`trainer_id` = `Tabel_Trainer`.`trainer_id` GROUP BY skill_upgrade;

-- -----------------------------------------------------
-- FUNGSI AGREGAT
-- -----------------------------------------------------

SELECT MAX(`score`)
FROM `Tabel_Grades`;

SELECT*FROM Tabel_Grades WHERE score=(SELECT MAX(score) FROM Tabel_Grades);

SELECT MIN(`score`)
FROM `Tabel_Grades`;

SELECT*FROM Tabel_Grades WHERE score=(SELECT MIN(score) FROM Tabel_Grades);

SELECT employee_id, MIN(DISTINCT score) AS minimum_score FROM Tabel_Grades GROUP BY employee_id;
#Fungsi DISTINCT adalah menghapus baris yang duplikat

SELECT `grade`, COUNT(`score`)
FROM `Tabel_Grades`
GROUP BY `grade`;

SELECT `grade`, AVG(`score`) AS RataRata_Nilai
FROM `Tabel_Grades`
GROUP BY `grade`;

SELECT skill_upgrade, score,  
GROUP_CONCAT(DISTINCT employee_id SEPARATOR '; ') AS "Employee ID Training"
FROM Tabel_Grades GROUP BY skill_upgrade;
#Kurang maksimal digunakan karena tidak dapat dapat mencangkup semua record pada Tabel_Grades

-- -----------------------------------------------------
-- FUNGSI KLAUSA
-- -----------------------------------------------------

SELECT  `employee_id`,`score`,`grade` FROM `Tabel_Grades` WHERE `score` > 5;

SELECT  `employee_id`,`employee_name`,`department` FROM `Tabel_Peserta_Training`;

SELECT*FROM `Tabel_Grades` ORDER BY `score` ASC;

SELECT*FROM `Tabel_Peserta_Training` ORDER BY `employee_name` ASC;

SELECT*FROM `Tabel_Peserta_Training` ORDER BY `employee_name` DESC;

SELECT*FROM `Tabel_Peserta_Training` ORDER BY `employee_name` ASC LIMIT 0,4;

SELECT*FROM `Tabel_Trainer` WHERE `trainer_name`='Lucas';

SELECT*FROM `Tabel_Trainer` WHERE `trainer_name` LIKE 'Lucas'; 		#LIKE dan = fungsinya sama #

SELECT*FROM `Tabel_Jadwal_Training` WHERE `skill_upgrade` LIKE '%t' OR `location` LIKE 'R%';

SELECT*FROM `Tabel_Jadwal_Training` WHERE `skill_upgrade` LIKE '%t' AND `location` LIKE 'R%';

SELECT trainer_id AS t_id, trainer_name AS t_name FROM `Tabel_Trainer`;