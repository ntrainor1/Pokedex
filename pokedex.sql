-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema pokedexdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pokedexdb` ;

-- -----------------------------------------------------
-- Schema pokedexdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokedexdb` DEFAULT CHARACTER SET utf8 ;
USE `pokedexdb` ;

-- -----------------------------------------------------
-- Table `pokémon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokémon` (
  `pokéid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `weight` INT NULL,
  `height` INT NULL,
  `exp` INT NULL,
  `img` TEXT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`pokéid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `type` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pokémon_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokémon_type` (
  `pokémon_id` INT NOT NULL,
  `type_id` INT NOT NULL,
  PRIMARY KEY (`pokémon_id`, `type_id`),
  INDEX `type_id_idx` (`type_id` ASC),
  CONSTRAINT `pokémon_id`
    FOREIGN KEY (`pokémon_id`)
    REFERENCES `pokémon` (`pokéid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `type_id`
    FOREIGN KEY (`type_id`)
    REFERENCES `type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE USER 'ash' IDENTIFIED BY 'pikachu';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'ash';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pokémon`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokedexdb`;
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');
INSERT INTO `pokémon` (`pokéid`, `name`, `weight`, `height`, `exp`, `img`, `description`) VALUES (1, 'bulbasaur', 69, 7, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png', 'Bulbasaur can be seen napping in bright sunlight.\\nThere is a seed on its back. By soaking up the sun?s rays,\\nthe seed grows progressively larger.');


COMMIT;


-- -----------------------------------------------------
-- Data for table `type`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokedexdb`;
INSERT INTO `type` (`id`, `name`) VALUES (1, 'bug');
INSERT INTO `type` (`id`, `name`) VALUES (2, 'dragon');
INSERT INTO `type` (`id`, `name`) VALUES (3, 'ice');
INSERT INTO `type` (`id`, `name`) VALUES (4, 'fighting');
INSERT INTO `type` (`id`, `name`) VALUES (5, 'fire');
INSERT INTO `type` (`id`, `name`) VALUES (6, 'flying');
INSERT INTO `type` (`id`, `name`) VALUES (7, 'ghost');
INSERT INTO `type` (`id`, `name`) VALUES (8, 'grass');
INSERT INTO `type` (`id`, `name`) VALUES (9, 'ground');
INSERT INTO `type` (`id`, `name`) VALUES (10, 'electric');
INSERT INTO `type` (`id`, `name`) VALUES (11, 'normal');
INSERT INTO `type` (`id`, `name`) VALUES (12, 'poison');
INSERT INTO `type` (`id`, `name`) VALUES (13, 'psychic');
INSERT INTO `type` (`id`, `name`) VALUES (14, 'rock');
INSERT INTO `type` (`id`, `name`) VALUES (15, 'water');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pokémon_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokedexdb`;
INSERT INTO `pokémon_type` (`pokémon_id`, `type_id`) VALUES (1, 8);
INSERT INTO `pokémon_type` (`pokémon_id`, `type_id`) VALUES (1, 12);

COMMIT;
