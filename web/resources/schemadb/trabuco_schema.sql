SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `trabuco_db` ;
CREATE SCHEMA IF NOT EXISTS `trabuco_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `trabuco_db` ;

-- -----------------------------------------------------
-- Table `trabuco_db`.`seccion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `trabuco_db`.`seccion` ;

CREATE TABLE IF NOT EXISTS `trabuco_db`.`seccion` (
  `pk` SMALLINT NOT NULL,
  `seccion` VARCHAR(100) NOT NULL,
  `activa` TINYINT(1) NULL,
  PRIMARY KEY (`pk`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabuco_db`.`nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `trabuco_db`.`nota` ;

CREATE TABLE IF NOT EXISTS `trabuco_db`.`nota` (
  `pk` MEDIUMINT NOT NULL,
  `titulo` VARCHAR(1000) NOT NULL,
  `descripcion` VARCHAR(10000) NOT NULL,
  `fecha_alta` DATETIME NULL,
  `alias` VARCHAR(1000) NULL,
  `vigencia` DATETIME NULL,
  `seccion_pk` SMALLINT NOT NULL,
  PRIMARY KEY (`pk`),
  INDEX `fk_nota_seccion_idx` (`seccion_pk` ASC),
  CONSTRAINT `fk_nota_seccion`
    FOREIGN KEY (`seccion_pk`)
    REFERENCES `trabuco_db`.`seccion` (`pk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabuco_db`.`media_nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `trabuco_db`.`media_nota` ;

CREATE TABLE IF NOT EXISTS `trabuco_db`.`media_nota` (
  `nota_pk` MEDIUMINT NOT NULL,
  `media` BLOB NOT NULL,
  `mime` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(1000) NULL,
  INDEX `fk_media_nota_nota1_idx` (`nota_pk` ASC),
  CONSTRAINT `fk_media_nota_nota1`
    FOREIGN KEY (`nota_pk`)
    REFERENCES `trabuco_db`.`nota` (`pk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabuco_db`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `trabuco_db`.`user` ;

CREATE TABLE IF NOT EXISTS `trabuco_db`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `trabuco_db`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `trabuco_db`.`category` ;

CREATE TABLE IF NOT EXISTS `trabuco_db`.`category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));


-- -----------------------------------------------------
-- Table `trabuco_db`.`timestamps`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `trabuco_db`.`timestamps` ;

CREATE TABLE IF NOT EXISTS `trabuco_db`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
