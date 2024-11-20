SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Empresas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empresas` (
  `idEmpresas` INT NOT NULL,
  PRIMARY KEY (`idEmpresas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Religion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Religion` (
  `id Religion` INT NOT NULL,
  `Tipo de Religion` VARCHAR(45) NULL,
  PRIMARY KEY (`id Religion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AG`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AG` (
  `id Trabajadores` INT NOT NULL,
  `id Empresa` VARCHAR(45) NOT NULL,
  `id AG` VARCHAR(45) NOT NULL,
  `Fecha y Hora` VARCHAR(45) NULL,
  PRIMARY KEY (`id Trabajadores`, `id Empresa`, `id AG`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trabajadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Trabajadores` (
  `id Trabajadores` INT NOT NULL,
  `Experiencia Profesional` VARCHAR(45) NULL,
  `Nombre` VARCHAR(45) NULL,
  `DNI` VARCHAR(45) NULL,
  `Empresas_idEmpresas` INT NOT NULL,
  `Religion_id Religion` INT NOT NULL,
  `AG_id Trabajadores` INT NOT NULL,
  `AG_id Empresa` VARCHAR(45) NOT NULL,
  `AG_id AG` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id Trabajadores`),
  INDEX `fk_Trabajadores_Empresas1_idx` (`Empresas_idEmpresas` ASC),
  INDEX `fk_Trabajadores_Religion1_idx` (`Religion_id Religion` ASC),
  INDEX `fk_Trabajadores_AG1_idx` (`AG_id Trabajadores` ASC, `AG_id Empresa` ASC, `AG_id AG` ASC),
  CONSTRAINT `fk_Trabajadores_Empresas1`
    FOREIGN KEY (`Empresas_idEmpresas`)
    REFERENCES `mydb`.`Empresas` (`idEmpresas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Trabajadores_Religion1`
    FOREIGN KEY (`Religion_id Religion`)
    REFERENCES `mydb`.`Religion` (`id Religion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Trabajadores_AG1`
    FOREIGN KEY (`AG_id Trabajadores` , `AG_id Empresa` , `AG_id AG`)
    REFERENCES `mydb`.`AG` (`id Trabajadores` , `id Empresa` , `id AG`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Raza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Raza` (
  `idRaza` INT NOT NULL,
  `Tipo de Raza` VARCHAR(45) NULL,
  `Trabajadores_id Trabajadores` INT NOT NULL,
  PRIMARY KEY (`idRaza`),
  INDEX `fk_Raza_Trabajadores1_idx` (`Trabajadores_id Trabajadores` ASC),
  CONSTRAINT `fk_Raza_Trabajadores1`
    FOREIGN KEY (`Trabajadores_id Trabajadores`)
    REFERENCES `mydb`.`Trabajadores` (`id Trabajadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Antecedentes Penales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Antecedentes Penales` (
  `idAntecedentes Penales` INT NOT NULL,
  `Numero de Incidencias` VARCHAR(45) NULL,
  `Gravedad` VARCHAR(45) NULL,
  PRIMARY KEY (`idAntecedentes Penales`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Antecedentes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Antecedentes` (
  `idAntecedentes Penales` INT NOT NULL,
  `Numero de Antecedentes` VARCHAR(45) NULL,
  `Indole` VARCHAR(45) NULL,
  `Trabajadores_id Trabajadores` INT NOT NULL,
  PRIMARY KEY (`idAntecedentes Penales`),
  INDEX `fk_Antecedentes_Trabajadores1_idx` (`Trabajadores_id Trabajadores` ASC),
  CONSTRAINT `fk_Antecedentes_Trabajadores1`
    FOREIGN KEY (`Trabajadores_id Trabajadores`)
    REFERENCES `mydb`.`Trabajadores` (`id Trabajadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empresas_has_Trabajadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empresas_has_Trabajadores` (
  `Empresas_idEmpresas` INT NOT NULL,
  `Trabajadores_id Trabajadores` INT NOT NULL,
  `` VARCHAR(45) NULL,
  PRIMARY KEY (`Empresas_idEmpresas`, `Trabajadores_id Trabajadores`),
  INDEX `fk_Empresas_has_Trabajadores_Trabajadores1_idx` (`Trabajadores_id Trabajadores` ASC),
  INDEX `fk_Empresas_has_Trabajadores_Empresas_idx` (`Empresas_idEmpresas` ASC),
  CONSTRAINT `fk_Empresas_has_Trabajadores_Empresas`
    FOREIGN KEY (`Empresas_idEmpresas`)
    REFERENCES `mydb`.`Empresas` (`idEmpresas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Empresas_has_Trabajadores_Trabajadores1`
    FOREIGN KEY (`Trabajadores_id Trabajadores`)
    REFERENCES `mydb`.`Trabajadores` (`id Trabajadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Incidencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Incidencias` (
  `idIncidencias` INT NOT NULL,
  `Numero de Incidencias` VARCHAR(45) NULL,
  `Indole` VARCHAR(45) NULL,
  `Sancion` VARCHAR(45) NULL,
  PRIMARY KEY (`idIncidencias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trabajadores_has_Antecedentes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Trabajadores_has_Antecedentes` (
  `Trabajadores_id Trabajadores` INT NOT NULL,
  `Antecedentes_idAntecedentes Penales` INT NOT NULL,
  PRIMARY KEY (`Trabajadores_id Trabajadores`, `Antecedentes_idAntecedentes Penales`),
  INDEX `fk_Trabajadores_has_Antecedentes_Antecedentes1_idx` (`Antecedentes_idAntecedentes Penales` ASC),
  INDEX `fk_Trabajadores_has_Antecedentes_Trabajadores1_idx` (`Trabajadores_id Trabajadores` ASC),
  CONSTRAINT `fk_Trabajadores_has_Antecedentes_Trabajadores1`
    FOREIGN KEY (`Trabajadores_id Trabajadores`)
    REFERENCES `mydb`.`Trabajadores` (`id Trabajadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Trabajadores_has_Antecedentes_Antecedentes1`
    FOREIGN KEY (`Antecedentes_idAntecedentes Penales`)
    REFERENCES `mydb`.`Antecedentes` (`idAntecedentes Penales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Incidencias_has_Trabajadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Incidencias_has_Trabajadores` (
  `Incidencias_idIncidencias` INT NOT NULL,
  `Trabajadores_id Trabajadores` INT NOT NULL,
  PRIMARY KEY (`Incidencias_idIncidencias`, `Trabajadores_id Trabajadores`),
  INDEX `fk_Incidencias_has_Trabajadores_Trabajadores1_idx` (`Trabajadores_id Trabajadores` ASC),
  INDEX `fk_Incidencias_has_Trabajadores_Incidencias1_idx` (`Incidencias_idIncidencias` ASC),
  CONSTRAINT `fk_Incidencias_has_Trabajadores_Incidencias1`
    FOREIGN KEY (`Incidencias_idIncidencias`)
    REFERENCES `mydb`.`Incidencias` (`idIncidencias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Incidencias_has_Trabajadores_Trabajadores1`
    FOREIGN KEY (`Trabajadores_id Trabajadores`)
    REFERENCES `mydb`.`Trabajadores` (`id Trabajadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE USER 'Jefe';

CREATE USER 'Revisor';

CREATE USER 'Secretaria';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
