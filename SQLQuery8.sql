-- Drop existing tables if they exist (in correct dependency order)
DROP TABLE IF EXISTS borrowings;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS books;

-- Create books table
CREATE TABLE books (
    book_id INT IDENTITY PRIMARY KEY,
    title NVARCHAR(255),
    author NVARCHAR(255),
    genre NVARCHAR(100),
    available BIT
);

-- Create users table
CREATE TABLE users (
    user_id INT IDENTITY PRIMARY KEY,
    name NVARCHAR(255),
    email NVARCHAR(255)
);

-- Create borrowings table with foreign keys
CREATE TABLE borrowings (
    borrow_id INT IDENTITY PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
