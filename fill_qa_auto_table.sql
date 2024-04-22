CREATE SCHEMA qauto;
USE qauto;
CREATE TABLE car_brands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
CREATE TABLE car_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carBrandId INT,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    carBrandId INT,
    carModelId INT,
    mileage float,
    initialMileage float,
    FOREIGN KEY (userId) REFERENCES users(id),
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY (carModelId) REFERENCES car_models(id)
);


INSERT INTO qauto.car_brands (title) VALUES
    ('Audi'), ('Honda'), ('Ford'), ('Chevrolet'), ('BMW');

INSERT INTO qauto.car_models (carBrandId, title) VALUES
    (1, 'A6'), (1, 'Q5'), (2, 'Civic'), (3, 'Focus'), (4, 'Aveo'), (5, 'X3');

INSERT INTO qauto.users (firstName, lastName, email, password) VALUES
    ('Joe', 'Doe', 'johndoe@example.com', 'password1'),
    ('Almika', 'Smith', 'asmith@example.com', 'password2'),
    ('Boss', 'Johnson', 'bjohnson@example.com', 'password3'),
    ('Edward', 'Brown', 'ebrown@example.com', 'password4'),
    ('Michael', 'Davis', 'mdavis@example.com', 'password5');

INSERT INTO qauto.cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES
    (1, 1, 1, 50000, 20000), (2, 1, 2, 60000, 30000), (3, 2, 3, 45000, 15000),
    (4, 3, 4, 70000, 25000), (5, 5, 6, 30000, 10000);