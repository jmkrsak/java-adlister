DROP DATABASE IF EXISTS adlister_db;
CREATE DATABASE adlister_db;
USE adlister_db;
CREATE USER IF NOT EXISTS 'master'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON adlister_db.* To 'master'@'localhost';
CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
INSERT INTO users (username, email, password) VALUES ('MattW', '@MattW', '5678');
INSERT INTO users (username, email, password) VALUES ('AldanisV', '@AldanisV', '9012');
INSERT INTO users (username, email, password) VALUES ('AlvinM', '@AlvinM', '3456');
INSERT INTO users (username, email, password) VALUES ('MichaelK', '@MichaelK', '4235');
INSERT INTO users (username, email, password) VALUES ('HectorP', '@HectorP', '7654');

