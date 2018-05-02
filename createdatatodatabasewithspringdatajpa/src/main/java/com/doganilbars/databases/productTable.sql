CREATE TABLE `schemaproduct`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(250) NOT NULL,
  `price` DECIMAL(10,1) NOT NULL,
  `quantity` INT NOT NULL,
  `description` TEXT(250) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`));

  
  INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Mobile 2', '1.0', '5', 'description 2', '1');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Mobile 1', '2.0', '2', 'description 1', '1');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Mobile 3', '3.0', '9', 'description 3', '1');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Computer 1', '5.0', '12', 'description 4', '0');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Computer 2', '7.0', '5', 'description 5', '1');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Computer 3', '12.0', '2', 'description 6', '1');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Laptop 1', '3.0', '8', 'description 7', '0');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Laptop 2', '4.0', '11', 'description 8', '0');
INSERT INTO `schemaproduct`.`product` (`name`, `price`, `quantity`, `description`, `status`) VALUES ('Laptop 3', '2.0', '15', 'description 9', '1');
