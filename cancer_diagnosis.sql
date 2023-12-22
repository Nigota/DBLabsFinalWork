CREATE DATABASE cancer_diagnosis;

USE cancer_diagnosis;

CREATE TABLE CancerType (
    typeid INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(100),
    diagnos VARCHAR(1),
    PRIMARY KEY (typeid)
);

CREATE TABLE CellNucleus (
    id INT NOT NULL AUTO_INCREMENT,
    typeid INT,
    radius FLOAT,
    texture FLOAT,
    perimeter FLOAT,
    area FLOAT,
    smoothness FLOAT,
    compactness FLOAT,
    concavity FLOAT,
    concave_points FLOAT,
    symmetry FLOAT,
    fractal_dimension FLOAT,
    PRIMARY KEY (id),
    FOREIGN KEY (typeid) REFERENCES CancerType(typeid) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO CancerType (type, diagnos) VALUES ('SomeType', 'M');

INSERT INTO CellNucleus (typeid, radius, texture, perimeter, area, smoothness, compactness, 
concavity, concave_points, symmetry, fractal_dimension) VALUES (1, 17.99, 10.38, 122.8, 
1001, 0.1184, 0.2776, 0.3001, 0.1471, 0.2419, 0.07871);

/*
Возможное появление ошибок:
1. Программа ругается на путь к файлу: возможно в пути есть кириллица
2. Программа ругается на доступ к файлу: в файле my.ini (C:\ProgramData\MySQL\MySQL Server 8.0)
надо поменять secure-file-priv="Тут какой-то путь" -> secure-file-priv="",
т.е просто стереть этот путь и всё
*/
LOAD DATA INFILE 'путь к data.csv'
INTO TABLE CellNucleus
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;