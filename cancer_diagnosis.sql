CREATE DATABASE cancer_diagnosis;

USE cancer_diagnosis;

CREATE TABLE CellNucleus (
    id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(100),
    diagnos VARCHAR(1),
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
    PRIMARY KEY (id)
);

INSERT INTO CellNucleus (type, diagnos, radius, texture, perimeter, 
                          area, smoothness, compactness, concavity, 
                          concave_points, symmetry, fractal_dimension)
VALUES 
('B', 17.99, 10.38, 122.8, 1001, 0.1184, 0.2776, 0.3001, 0.1471, 0.2419, 0.07871);