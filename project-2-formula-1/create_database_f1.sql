CREATE DATABASE project2_f1;
USE project2_f1;


CREATE TABLE dim_driver (
    driver_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(20),
    surname VARCHAR(30),
    nationality VARCHAR(20),
    date_of_birth DATE
);

CREATE TABLE dim_constructor (
    constructor_id VARCHAR(25) PRIMARY KEY,
    name VARCHAR(25),
    nationality VARCHAR(20)
);

CREATE TABLE dim_circuit (
    circuit_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(40),
    location VARCHAR(25),
    country VARCHAR(15),
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    altitude INT
);

CREATE TABLE dim_race (
    race_id VARCHAR(10) PRIMARY KEY,
    race_date DATE,
    round INT
);

CREATE TABLE fact_qualy (
    qualy_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_id VARCHAR(20),
    constructor_id VARCHAR(25),
    circuit_id VARCHAR(20),
    race_id VARCHAR(10),
    q1 INT,
    q2 INT,
    q3 INT,

    CONSTRAINT fk_qualy_driver
        FOREIGN KEY (driver_id)
        REFERENCES dim_driver (driver_id),

    CONSTRAINT fk_qualy_constructor
        FOREIGN KEY (constructor_id)
        REFERENCES dim_constructor (constructor_id),

    CONSTRAINT fk_qualy_circuit
        FOREIGN KEY (circuit_id)
        REFERENCES dim_circuit (circuit_id),

    CONSTRAINT fk_qualy_race
        FOREIGN KEY (race_id)
        REFERENCES dim_race (race_id)
);

CREATE TABLE fact_pit (
    pit_id INT AUTO_INCREMENT PRIMARY KEY,
    race_id VARCHAR(10),
    driver_id VARCHAR(20),
    constructor_id VARCHAR(25),
    circuit_id VARCHAR(20),
    stop_number INT,
    lap_number INT,
    pit_time INT,

    CONSTRAINT fk_pit_driver
        FOREIGN KEY (driver_id)
        REFERENCES dim_driver (driver_id),

    CONSTRAINT fk_pit_constructor
        FOREIGN KEY (constructor_id)
        REFERENCES dim_constructor (constructor_id),

    CONSTRAINT fk_pit_circuit
        FOREIGN KEY (circuit_id)
        REFERENCES dim_circuit (circuit_id),

    CONSTRAINT fk_pit_race
        FOREIGN KEY (race_id)
        REFERENCES dim_race (race_id)
);

CREATE TABLE fact_results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    race_id VARCHAR(10),
    driver_id VARCHAR(20),
    constructor_id VARCHAR(25),
    circuit_id VARCHAR(20),
    start_pos INT,
    finish_pos INT,
    points INT,

    CONSTRAINT fk_results_driver
        FOREIGN KEY (driver_id)
        REFERENCES dim_driver (driver_id),

    CONSTRAINT fk_results_constructor
        FOREIGN KEY (constructor_id)
        REFERENCES dim_constructor (constructor_id),

    CONSTRAINT fk_results_circuit
        FOREIGN KEY (circuit_id)
        REFERENCES dim_circuit (circuit_id),

    CONSTRAINT fk_results_race
        FOREIGN KEY (race_id)
        REFERENCES dim_race (race_id)
);

-- DROP DATABASE project2_f1;
