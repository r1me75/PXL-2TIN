DROP DATABASE IF EXISTS voorbeelden;

CREATE DATABASE voorbeelden;

USE voorbeelden;

CREATE TABLE person
(
   id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   name varchar(30) NOT NULL
);
INSERT INTO `person` (`id`, `name`) VALUES
(1, 'tim'),
(2, 'sofie'),
(3, 'nele');
