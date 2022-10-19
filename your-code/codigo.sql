-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Cardealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Cardealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Cardealership` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Cardealership` ;

-- -----------------------------------------------------
-- Table `Cardealership`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cardealership`.`Customers` (
  `customer_id` INT NOT NULL,
  `phone` VARCHAR(10) NOT NULL,
  `email` VARCHAR(20) NULL DEFAULT NULL,
  `adress` VARCHAR(3) NULL DEFAULT NULL,
  `city` DATE NULL DEFAULT NULL,
  `state_province` VARCHAR(20) NULL DEFAULT NULL,
  `country` VARCHAR(20) NULL DEFAULT NULL,
  `zip_postal` VARCHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Cardealership`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cardealership`.`Salespersons` (
  `Name` VARCHAR(20) NULL DEFAULT NULL,
  `Store` VARCHAR(15) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Cardealership`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cardealership`.`Invoices` (
  `invoice_id` INT NOT NULL,
  `date_` DATE NULL DEFAULT NULL,
  `car` VARCHAR(20) NOT NULL,
  `customer` VARCHAR(20) NOT NULL,
  `salesperson` VARCHAR(20) NULL DEFAULT NULL,
  `Customers_customer_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`, `Customers_customer_id`),
  INDEX `fk_Invoices_Customers_idx` (`Customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`Customers_customer_id`)
    REFERENCES `Cardealership`.`Customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`invoice_id`)
    REFERENCES `Cardealership`.`Salespersons` (`Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Cardealership`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cardealership`.`Cars` (
  `VIN` INT NOT NULL,
  `Manufacturer` VARCHAR(20) NULL DEFAULT NULL,
  `Model` VARCHAR(10) NOT NULL,
  `Year` DATE NOT NULL,
  `Color` VARCHAR(10) NOT NULL,
  `Invoices_invoice_id` INT NOT NULL,
  `Invoices_Customers_customer_id` INT NOT NULL,
  PRIMARY KEY (`VIN`, `Invoices_invoice_id`, `Invoices_Customers_customer_id`),
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_invoice_id` ASC, `Invoices_Customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_invoice_id` , `Invoices_Customers_customer_id`)
    REFERENCES `Cardealership`.`Invoices` (`invoice_id` , `Customers_customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
