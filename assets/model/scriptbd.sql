-- MySQL Workbench Synchronization
-- Generated: 2022-07-04 14:58
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Yara Prata

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `escola`.`notas` 
DROP FOREIGN KEY `fk_notas_classe1`,
DROP FOREIGN KEY `fk_notas_estudante`,
DROP FOREIGN KEY `fk_notas_discilinas1`;

ALTER TABLE `escola`.`classe` 
CHANGE COLUMN `id` `idclasse` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ,
ADD COLUMN `idcurso` INT(11) NOT NULL COMMENT '' AFTER `classe`,
ADD INDEX `fk_classe_curso1_idx` (`idcurso` ASC)  COMMENT '';

ALTER TABLE `escola`.`classes` 
CHANGE COLUMN `idclasse` `iddisciplina` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ,
CHANGE COLUMN `classe` `nome` VARCHAR(50) NULL DEFAULT NULL COMMENT '' ,
ADD COLUMN `idclasse` INT(11) NOT NULL COMMENT '' AFTER `nome`,
ADD INDEX `fk_disciplinas_classe1_idx` (`idclasse` ASC)  COMMENT '', RENAME TO  `escola`.`disciplinas` ;

ALTER TABLE `escola`.`estudante` 
DROP COLUMN `classe`,
CHANGE COLUMN `matricula` `idestudante` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ,
CHANGE COLUMN `nome` `nome` VARCHAR(80) NULL DEFAULT NULL COMMENT '' ,
CHANGE COLUMN `datanascimento` `datanascimento` VARCHAR(50) NULL DEFAULT NULL COMMENT '' ,
ADD COLUMN `idclasse` INT(11) NOT NULL COMMENT '' AFTER `email`,
ADD COLUMN `idcurso` INT(11) NOT NULL COMMENT '' AFTER `idclasse`,
ADD INDEX `fk_estudante_classe1_idx` (`idclasse` ASC)  COMMENT '',
ADD INDEX `fk_estudante_curso1_idx` (`idcurso` ASC)  COMMENT '';

ALTER TABLE `escola`.`notas` 
DROP COLUMN `discilinas_id`,
CHANGE COLUMN `nota` `nota1` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `idclasse`,
CHANGE COLUMN `id` `idnota` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ,
CHANGE COLUMN `estudante_matricula` `idestudante` INT(11) NOT NULL COMMENT '' ,
CHANGE COLUMN `classe_id` `idclasse` INT(11) NOT NULL COMMENT '' ,
ADD COLUMN `nota2` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota1`,
ADD COLUMN `nota3` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota2`,
ADD COLUMN `nota4` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota3`,
ADD COLUMN `nota5` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota4`,
ADD COLUMN `nota6` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota5`,
ADD COLUMN `nota7` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota6`,
ADD COLUMN `nota8` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota7`,
ADD COLUMN `nota9` FLOAT(11) NULL DEFAULT NULL COMMENT '' AFTER `nota8`,
ADD COLUMN `iddisciplina` INT(11) NOT NULL COMMENT '' AFTER `nota9`,
ADD INDEX `fk_notas_disciplinas1_idx` (`iddisciplina` ASC)  COMMENT '',
DROP INDEX `fk_notas_discilinas1_idx` ;

DROP TABLE IF EXISTS `escola`.`discilinas` ;

ALTER TABLE `escola`.`classe` 
ADD CONSTRAINT `fk_classe_curso1`
  FOREIGN KEY (`idcurso`)
  REFERENCES `escola`.`curso` (`idcurso`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `escola`.`classes` 
ADD CONSTRAINT `fk_disciplinas_classe1`
  FOREIGN KEY (`idclasse`)
  REFERENCES `escola`.`classe` (`idclasse`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `escola`.`estudante` 
ADD CONSTRAINT `fk_estudante_classe1`
  FOREIGN KEY (`idclasse`)
  REFERENCES `escola`.`classe` (`idclasse`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_estudante_curso1`
  FOREIGN KEY (`idcurso`)
  REFERENCES `escola`.`curso` (`idcurso`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `escola`.`notas` 
ADD CONSTRAINT `fk_notas_classe1`
  FOREIGN KEY (`idclasse`)
  REFERENCES `escola`.`classe` (`idclasse`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_notas_estudante`
  FOREIGN KEY (`idestudante`)
  REFERENCES `escola`.`estudante` (`idestudante`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_notas_disciplinas1`
  FOREIGN KEY (`iddisciplina`)
  REFERENCES `escola`.`disciplinas` (`iddisciplina`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
