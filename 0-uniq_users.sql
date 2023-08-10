-- SQL script to create a table users with specific attributes
-- id: integer, never null, auto increment, primary key
-- email: string (255 characters), never null, unique
-- name: string (255 characters)

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    PRIMARY KEY (id)
);
