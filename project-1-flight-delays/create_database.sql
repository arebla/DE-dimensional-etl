CREATE DATABASE flight_delays;
USE flight_delays;


CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    is_holiday BOOLEAN
);

CREATE TABLE dim_time (
    time_id VARCHAR(5) PRIMARY KEY,
    full_time TIME NOT NULL,
    hour_of_day INT NOT NULL,
    minute_of_hour INT NOT NULL,
    period_of_day VARCHAR(10) NOT NULL
);

CREATE TABLE dim_flight_info (
    flight_id VARCHAR(20) PRIMARY KEY,
    airline_code CHAR(2),
    airline_name VARCHAR(35),
    flight_number CHAR(4),
    tail_number VARCHAR(10)
);

CREATE TABLE dim_airport (
    airport_id VARCHAR(5) PRIMARY KEY,
    airport_name VARCHAR(100),
    state VARCHAR(4),
    city VARCHAR(50)
);

CREATE TABLE fact_delay (
    delay_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_id VARCHAR(20),
    date_id INT,
    hour_departure_id VARCHAR(5),
    hour_scheduled_id VARCHAR(5),
    origin_airport_id VARCHAR(5),
    destination_airport_id VARCHAR(5),
    departure_delay INT,

    CONSTRAINT fk_delay_date
        FOREIGN KEY (date_id)
        REFERENCES dim_date (date_id),

    CONSTRAINT fk_delay_time_dep
        FOREIGN KEY (hour_departure_id)
        REFERENCES dim_time (time_id),

    CONSTRAINT fk_delay_time_schedule
        FOREIGN KEY (hour_scheduled_id)
        REFERENCES dim_time (time_id),

    CONSTRAINT fk_delay_flight
        FOREIGN KEY (flight_id)
        REFERENCES dim_flight_info (flight_id),

    CONSTRAINT fk_delay_airport_origin
        FOREIGN KEY (origin_airport_id)
        REFERENCES dim_airport (airport_id),

    CONSTRAINT fk_delay_airport_destination
        FOREIGN KEY (destination_airport_id)
        REFERENCES dim_airport (airport_id)
);


SHOW DATABASES;

SELECT *
FROM fact_delay
LIMIT 100;

-- DROP DATABASE flight_delays;
