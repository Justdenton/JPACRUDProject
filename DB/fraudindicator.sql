-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fraudindicatordb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fraudindicatordb` ;

-- -----------------------------------------------------
-- Schema fraudindicatordb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fraudindicatordb` DEFAULT CHARACTER SET utf8 ;
USE `fraudindicatordb` ;

-- -----------------------------------------------------
-- Table `fraud_indicator`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fraud_indicator` ;

CREATE TABLE IF NOT EXISTS `fraud_indicator` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` TEXT NULL,
  `category` VARCHAR(15) NULL,
  `image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS frauduser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'frauduser'@'localhost' IDENTIFIED BY 'frauduser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'frauduser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
