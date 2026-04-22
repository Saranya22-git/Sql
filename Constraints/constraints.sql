CREATE TABLE constraints(
    id INT UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT CHECK(age>=18),
    location VARCHAR(100) DEFAULT "HYD"
);