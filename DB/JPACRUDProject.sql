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
  `description` VARCHAR(300) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `create_date` DATETIME NULL,
  `last_update` DATETIME NULL,
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

-- -----------------------------------------------------
-- Data for table `fraud_indicator`
-- -----------------------------------------------------
START TRANSACTION;
USE `fraudindicatordb`;
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (1, 'The vehicle was recovered stripped or burned, with no evidence of forced entry.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (2, 'The vehicle\'s identification number (VIN) has been tampered with or is missing.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (3, 'Claimant recently purchased or leased the vehicle with minimal or no down payment.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (4, 'Claimant cannot produce a title, registration, or proof of ownership.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (5, 'Vehicle was stolen from a location where theft is unlikely, such as a secure parking area.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (6, 'There is no report of the theft to the police, or the police report is delayed.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (7, 'The vehicle was recovered and returned to the claimant before the theft was reported.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (8, 'Claimant is unable to produce keys for the stolen vehicle.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (9, 'Claimant\'s description of the accident is inconsistent with the damage or injuries.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (10, 'The accident occurs in a location known for a high incidence of fraudulent claims.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (11, 'Witnesses to the accident are friends or associates of the claimant.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (12, 'Multiple passengers in the vehicle all claim similar injuries, such as soft-tissue damage, which is difficult to objectively verify.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (13, 'Repair shop inflates the cost of repairs or adds damage that wasn’t present.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (14, 'Claimant insists on using a specific repair shop that has a history of fraudulent claims.', 'auto', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (15, 'Fire occurs shortly after the property was insured or after a significant increase in coverage.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (16, 'The insured has financial difficulties or a motive to destroy the property (e.g., a failing business).', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (17, 'Fire is reported to have started in an area with no known fire hazards.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (18, 'The property was recently appraised or was listed for sale at an inflated value.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (19, 'Claimant provides a detailed inventory of destroyed items, including brand-new or high-value items.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (20, 'Fire-damaged property was recently appraised or was for sale.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (21, 'Fire appears to have multiple points of origin or shows signs of accelerants.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (22, 'Claimant refuses or delays allowing the insurance company to inspect the damage.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');
INSERT INTO `fraud_indicator` (`id`, `description`, `category`, `create_date`, `last_update`) VALUES (23, 'Claimant\'s description of the fire is inconsistent with the fire investigation report.', 'home', '2024-08-18 14:45:00', '2024-08-18 14:55:00');

COMMIT;

