-- MySQL Workbench Synchronization
-- Generated: 2022-07-13 20:41
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Yara Prata

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `school`.`classecursodisciplinaprofessor` (
  `iddisciplina` INT(11) NOT NULL COMMENT '',
  `idclasse` INT(11) NOT NULL COMMENT '',
  `idcurso` INT(11) NOT NULL COMMENT '',
  `idprofessor` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`iddisciplina`, `idclasse`)  COMMENT '',
  INDEX `fk_disciplina_has_classes_classes1_idx` (`idclasse` ASC)  COMMENT '',
  INDEX `fk_disciplina_has_classes_disciplina1_idx` (`iddisciplina` ASC)  COMMENT '',
  INDEX `fk_disciplina_has_classes_curso1_idx` (`idcurso` ASC)  COMMENT '',
  INDEX `fk_disciplina_has_classes_professor1_idx` (`idprofessor` ASC)  COMMENT '',
  CONSTRAINT `idclasse`
    FOREIGN KEY (`idclasse`)
    REFERENCES `school`.`classes` (`idclasse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcurso`
    FOREIGN KEY (`idcurso`)
    REFERENCES `school`.`curso` (`idcurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `iddisciplina`
    FOREIGN KEY (`iddisciplina`)
    REFERENCES `school`.`disciplina` (`iddisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idprofessor`
    FOREIGN KEY (`idprofessor`)
    REFERENCES `school`.`professor` (`idprofessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

ALTER TABLE `school`.`notas` 
DROP COLUMN `idcurso`,
ADD COLUMN `idcurso` INT(11) NOT NULL COMMENT '' AFTER `idtrimeste`,
ADD INDEX `fk_notas_curso1_idx` (`idcurso` ASC)  COMMENT '',
DROP INDEX `fk_notas_curso1_idx` ;

DROP TABLE IF EXISTS `school`.`classecursodisciplinaprofessor` ;

ALTER TABLE `school`.`notas` 
ADD CONSTRAINT `fk_notas_curso1`
  FOREIGN KEY (`idcurso`)
  REFERENCES `school`.`curso` (`idcurso`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
