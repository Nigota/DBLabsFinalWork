CREATE DATABASE IF NOT EXISTS cancer_diagnosis;

USE cancer_diagnosis;

CREATE TABLE CancerType (
    typeid INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(100),
    diagnosis VARCHAR(1),
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
    FOREIGN KEY (typeid) REFERENCES CancerType(typeid)
);
