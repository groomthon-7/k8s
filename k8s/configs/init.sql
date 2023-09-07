CREATE SCHEMA IF NOT EXISTS 'groomthon' DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON groomthon.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `groomthon`;

DROP TABLE IF EXISTS 'CampingSite';
CREATE TABLE CampingSite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    businessName VARCHAR(255),
    phoneNumber VARCHAR(20),
    address VARCHAR(255),
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6),
    glampingCount INT,
    caravanCount INT,
    campingDeckCount INT,
    outdoorCampingCount INT,
    hasToilet CHAR(1),
    hasShower CHAR(1),
    hasWashbasin CHAR(1),
    parkingCapacity INT,
    tags VARCHAR(255)
);

INSERT INTO CampingSite (businessName, phoneNumber, address, latitude, longitude, glampingCount, caravanCount, campingDeckCount, outdoorCampingCount, hasToilet, hasShower, hasWashbasin, parkingCapacity, tags)
VALUES
    ('에어그라운드(AIR GROUND)', NULL, '제주특별자치도 서귀포시 남원읍 남태해안로 439, 에어그라운드', 33.2820546, 126.7465564, 6, NULL, NULL, NULL, 'Y', 'Y', 'Y', NULL, '조용한, 아늑한, 로맨틱한, 친근한, 취사가능, 평화로운, 바베큐, 카라반'),
    ('제주파인비치 카라반', '064-764-2918', '제주특별자치도 서귀포시 남원읍 태위로 976-10', 33.28744282, 126.7481404, 6, 6, 'Y', 'Y', 'Y', 'Y', 'Y', NULL, '조용한, 아늑한, 친근한, 바베큐, 카라반'),
    ('리썸카라반', '0507-1465-6769', '제주특별자치도 서귀포시 대정읍 일과대수로27번길 12', 33.2393683, 126.2301921, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '조용한, 아늑한, 친근한, 바베큐, 카라반, 평화로운, 취사가능')
    ;
