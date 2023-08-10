-- Task 1: In and not out
-- Create a table users with the following attributes:
-- id: integer, never null, auto increment, and primary key
-- email: string (255 characters), never null, and unique
-- name: string (255 characters)
-- country: enumeration of countries (US, CO, TN), never null, default US
-- If the table already exists, the script should not fail
-- The script can be executed on any database

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',
    PRIMARY KEY (id)
);
