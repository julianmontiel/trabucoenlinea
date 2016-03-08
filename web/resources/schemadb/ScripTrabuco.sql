SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `trabucobd` ;
CREATE SCHEMA IF NOT EXISTS `trabucobd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `trabucobd` ;

-- -----------------------------------------------------
-- Table `trabucobd`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabucobd`.`nota` (
  `pk` INT NOT NULL,
  `titulo` VARCHAR(500) NOT NULL,
  `alias` VARCHAR(500) NULL,
  `categoria` VARCHAR(100) NOT NULL,
  `estado` VARCHAR(50) NULL,
  `acceso` VARCHAR(50) NULL,
  `destacado` VARCHAR(2) NULL,
  `descripcion` VARCHAR(10000) NOT NULL,
  PRIMARY KEY (`pk`))
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabucobd`.`detalles_nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabucobd`.`detalles_nota` (
  `fk_nota` INT NOT NULL,
  `media` LONGBLOB NULL,
  `tipo` VARCHAR(45) NULL,
  `nota_pk` INT NOT NULL,
  PRIMARY KEY (`fk_nota`, `nota_pk`),
  INDEX `fk_detalles_nota_nota_idx` (`nota_pk` ASC),
  CONSTRAINT `fk_detalles_nota_nota`
  FOREIGN KEY (`nota_pk`)
  REFERENCES `trabucobd`.`nota` (`pk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;