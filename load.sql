USE cancer_diagnosis;

START TRANSACTION;

    CREATE TEMPORARY TABLE IF NOT EXISTS temp_table (
    id INT,
    diagnosis VARCHAR(1),
    radius_mean FLOAT,
    texture_mean FLOAT,
    perimeter_mean FLOAT,
    area_mean INT,
    smoothness_mean FLOAT,
    compactness_mean FLOAT,
    concavity_mean FLOAT,
    concave_points_mean FLOAT,
    symmetry_mean FLOAT,
    fractal_dimension_mean FLOAT,
    radius_se FLOAT,
    texture_se FLOAT,
    perimeter_se FLOAT,
    area_se INT,
    smoothness_se FLOAT,
    compactness_se FLOAT,
    concavity_se FLOAT,
    concave_points_se FLOAT,
    symmetry_se FLOAT,
    fractal_dimension_se FLOAT,
    radius_worst FLOAT,
    texture_worst FLOAT,
    perimeter_worst FLOAT,
    area_worst INT,
    smoothness_worst FLOAT,
    compactness_worst FLOAT,
    concavity_worst FLOAT,
    concave_points_worst FLOAT,
    symmetry_worst FLOAT,
    fractal_dimension_worst FLOAT
);
    LOAD DATA INFILE 'C://Users//Nikita//Desktop//data.csv'
	INTO TABLE temp_table
    FIELDS OPTIONALLY ENCLOSED BY '"' TERMINATED BY ','
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES;
    
    INSERT INTO CancerType (type, diagnosis) VALUES
      ("Some Type", "M"),
      ("Some Type", "B");
    
    INSERT INTO CellNucleus (typeid, radius, texture, perimeter, area, smoothness, 
    compactness, concavity, concave_points, symmetry, fractal_dimension)
    SELECT typeid, radius_mean, texture_mean, perimeter_mean, area_mean, smoothness_mean, 
    compactness_mean, concavity_mean, concave_points_mean, symmetry_mean, fractal_dimension_mean 
      FROM temp_table
        JOIN CancerType ON CancerType.diagnosis = temp_table.diagnosis;

COMMIT;
