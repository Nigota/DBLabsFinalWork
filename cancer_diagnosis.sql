CREATE DATABASE cancer_diagnosis;

USE cancer_diagnosis;

CREATE TABLE cell_nucleus (
    id INT NOT NULL AUTO_INCREMENT,
    diagnosis VARCHAR(1),
    radius_mean FLOAT,
    texture_mean FLOAT,
    perimeter_mean FLOAT,
    area_mean FLOAT,
    smoothness_mean FLOAT,
    compactness_mean FLOAT,
    concavity_mean FLOAT,
    concave_points_mean FLOAT,
    symmetry_mean FLOAT,
    fractal_dimension_mean FLOAT,
    radius_se FLOAT,
    texture_se FLOAT,
    perimeter_se FLOAT,
    area_se FLOAT,
    smoothness_se FLOAT,
    compactness_se FLOAT,
    concavity_se FLOAT,
    concave_points_se FLOAT,
    symmetry_se FLOAT,
    fractal_dimension_se FLOAT,
    radius_worst FLOAT,
    texture_worst FLOAT,
    perimeter_worst FLOAT,
    area_worst FLOAT,
    smoothness_worst FLOAT,
    compactness_worst FLOAT,
    concavity_worst FLOAT,
    concave_points_worst FLOAT,
    symmetry_worst FLOAT,
    fractal_dimension_worst FLOAT,
    PRIMARY KEY (id)
);

INSERT INTO cell_nucleus (diagnosis, radius_mean, texture_mean, perimeter_mean, 
                          area_mean, smoothness_mean, compactness_mean, concavity_mean, 
                          concave_points_mean, symmetry_mean, fractal_dimension_mean, 
                          radius_se, texture_se, perimeter_se, area_se, smoothness_se, 
                          compactness_se, concavity_se, concave_points_se, symmetry_se, 
                          fractal_dimension_se, radius_worst, texture_worst, perimeter_worst, 
                          area_worst, smoothness_worst, compactness_worst, concavity_worst, 
                          concave_points_worst, symmetry_worst, fractal_dimension_worst)
VALUES 
('B', 17.99, 10.38, 122.8, 1001, 0.1184, 0.2776, 0.3001, 0.1471, 0.2419, 0.07871, 
  1.095, 0.9053, 8.589, 153.4, 0.006399, 0.04904, 0.05373, 0.01587, 0.03003, 0.006193,
  25.38, 17.33, 184.6, 2019, 0.1622, 0.6656, 0.7119, 0.2654, 0.4601, 0.1189);