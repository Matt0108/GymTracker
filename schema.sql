CREATE DATABASE IF NOT EXISTS gymtracker_db;
USE gymtracker_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE exercise_entries (
    exercise_entry_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    exercise_name VARCHAR(100) NOT NULL,
    weight DECIMAL(6,2) NOT NULL DEFAULT 0.00,
    sets INT NOT NULL DEFAULT 1,
    repetitions INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_exercise_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);
