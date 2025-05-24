

CREATE INDEX idx_books_isbn ON books(isbn);
CREATE INDEX idx_books_title ON books(title);
CREATE INDEX idx_books_author_id ON books(author_id);
CREATE INDEX idx_books_genre_id ON books(genre_id);
CREATE INDEX idx_customers_email ON customers(email);
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_order_items_order_id ON order_items(order_id);
CREATE INDEX idx_order_items_book_id ON order_items(book_id);
CREATE INDEX idx_inventory_book_id ON inventory(book_id);
CREATE INDEX idx_library_inventory_book_id ON library_inventory(book_id);
CREATE INDEX idx_library_inventory_library_id ON library_inventory(library_id);


Sprawdzenie czy dziala indeks:

EXPLAIN ANALYZE
SELECT * FROM books WHERE isbn = '9788380870937';
