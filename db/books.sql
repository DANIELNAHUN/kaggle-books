DROP DATABASE IF EXISTS books;
CREATE DATABASE books;
USE books;
--- My books datasets columns "ISBN";"Book-Title";"Book-Author";"Year-Of-Publication";"Publisher";"Image-URL-S";"Image-URL-M";"Image-URL-L"
CREATE TABLE IF NOT EXISTS books (
    isbn VARCHAR(20) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    year_of_publication INT,
    publisher VARCHAR(255),
    image_url_s VARCHAR(255),
    image_url_m VARCHAR(255),
    image_url_l VARCHAR(255)
);
--- My users datasets columns "User-ID";"Location";"Age"
CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY,
    location VARCHAR(255),
    age INT
);
--- My ratings datasets columns "User-ID";"ISBN";"Book-Rating"
CREATE TABLE IF NOT EXISTS ratings (
    user_id INT,
    isbn VARCHAR(20),
    rating INT CHECK (rating >= 1 AND rating <= 10),
    PRIMARY KEY (user_id, isbn),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (isbn) REFERENCES books(isbn)
);