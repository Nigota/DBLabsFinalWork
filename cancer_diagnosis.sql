CREATE DATABASE IF NOT EXISTS cancer_diagnosis;

USE cancer_diagnosis;

CREATE TABLE IF NOT EXISTS CancerType (
    typeid INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(100),
    diagnosis VARCHAR(1),
    PRIMARY KEY (typeid)
);

CREATE TABLE IF NOT EXISTS CellNucleus (
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

INSERT INTO CancerType (type, diagnosis) VALUES ('SomeType', 'M');

INSERT INTO CellNucleus (typeid, radius, texture, perimeter, area, smoothness, compactness, 
concavity, concave_points, symmetry, fractal_dimension) VALUES (1, 17.99, 10.38, 122.8, 
1001, 0.1184, 0.2776, 0.3001, 0.1471, 0.2419, 0.07871);