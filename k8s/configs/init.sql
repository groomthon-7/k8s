CREATE SCHEMA IF NOT EXISTS groomthon DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON groomthon.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `groomthon`;

