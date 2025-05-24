

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(50)
);

CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(40) UNIQUE
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    isbn VARCHAR(13) UNIQUE,
    price NUMERIC(10,2),
    publication_year INT,
    author_id INT REFERENCES authors(author_id),
    genre_id INT REFERENCES genres(genre_id)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(30)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    book_id INT REFERENCES books(book_id),
    quantity INT,
    price_each NUMERIC(10,2)
);

CREATE TABLE inventory (
    book_id INT PRIMARY KEY REFERENCES books(book_id),
    quantity_in_stock INT,
    available BOOLEAN DEFAULT TRUE
);

CREATE TABLE libraries (
    library_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE library_inventory (
    book_id INT REFERENCES books(book_id),
    library_id INT REFERENCES libraries(library_id),
    quantity INT NOT NULL,
    can_be_borrowed BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (book_id, library_id)
);
