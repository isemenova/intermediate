CREATE TABLE test_table (
    name VARCHAR(10) NOT NULL CHECK (char_length(name) BETWEEN 4 AND 10),
    surname VARCHAR(50),
    city VARCHAR(50),
    age INTEGER CHECK (age > 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('John', 'Doe', 'New York', 28),
('Anna', 'Smith', 'Los Angeles', 22),
('Mike', 'Brown', 'Chicago', 35),
('Sue', 'Wilson', 'Houston', 45),
('Tom', 'Davis', 'Phoenix', 55),
('Kate', 'Miller', 'Philadelphia', 65),
('Paul', 'Taylor', 'San Antonio', 75),
('Lucy', 'Anderson', 'San Diego', 85),
('Mark', 'Thomas', 'Dallas', 95),
('Emma', 'Jackson', 'San Jose', 105),
('Leo', 'White', 'Austin', 115),
('Lily', 'Harris', 'Jacksonville', 125),
('Max', 'Martin', 'Fort Worth', 135),
('Zoe', 'Garcia', 'Columbus', 145),
('Eli', 'Martinez', 'Charlotte', 30),
('Ivy', 'Robinson', 'San Francisco', 40),
('Ben', 'Clark', 'Indianapolis', 50),
('Mia', 'Rodriguez', 'Seattle', 60),
('Sam', 'Lewis', 'Denver', 70),
('Amy', 'Lee', 'Washington', 80);
