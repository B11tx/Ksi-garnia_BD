

INSERT INTO genres (genre_id, name)
VALUES
(1, 'Fantasy'),
(2, 'Science Fiction'),
(3, 'Romantyka'),
(4, 'Thriller'),
(5, 'Horror'),
(6, 'Biznes'),
(7, 'Literary Fiction');

INSERT INTO authors (author_id, first_name, last_name)
VALUES
(1, 'Joanne Kathleen', 'Rowling'),
(2, 'John Ronald Reuel', 'Tolkien'),
(3, 'George Raymond Richard', 'Martin'),
(4, 'Patrick', 'Rothfuss'),
(5, 'Isaac', 'Asimov'),
(6, 'Frank', 'Herbert'),
(7, 'Philip Kindred', 'Dick'),
(8, 'Orson Scott', 'Card'),
(9, 'Jane', 'Austen'),
(10, 'Nicholas', 'Sparks'),
(11, 'Erika Leonard', 'James'),
(12, 'Jojo', 'Moyes'),
(13, 'Gillian', 'Flynn'),
(14, 'Stieg', 'Larsson'),
(15, 'Dan', 'Brown'),
(16, 'Paula', 'Hawkins'),
(17, 'Stephen', 'King'),
(18, 'William Peter', 'Blatty'),
(19, 'Shirley', 'Jackson'),
(20, 'Bram', 'Stoker'),
(21, 'Stephen R.', 'Covey'),
(22, 'Napoleon', 'Hill'),
(23, 'Dale', 'Carnegie'),
(24, 'Robert T.', 'Kiyosaki'),
(25, 'George S.', 'Clason');

INSERT INTO libraries (library_id, name, city)
VALUES
(1, 'Biblioteka Główna', 'Warszawa'),
(2, 'Biblioteka Miejska', 'Krakow'),
(3, 'Biblioteka Uniwersytecka', 'Katowice');

INSERT INTO customers (customer_id, first_name, last_name, email, phone)
VALUES
(1, 'Maciej', 'Bek', 'maceijbek@gmail.com', '+48 22 578 15 65'),
(2, 'Olek', 'Skowyra', 'skwra@onet.pl', '798 714 841'),
(3, 'Krystyna', 'Kulon', 'krystiku@onet.pl', '22 868 48 33'),
(4, 'Stefania', 'Tomaszewicz', 'steftom@interia.pl', '692-082-407'),
(5, 'Oliwia', 'Skórska', 'skoroliw@gmail.com', '506-965-126'),
(6, 'Karolina', 'Wołyniec', 'karw@wp.pl', '+48 22 532 92 09'),
(7, 'Agnieszka', 'Żukowska', 'zukowskaaga@onet.pl', '888 972 683'),
(8, 'Adam', 'Madejczyk', 'adamx@onet.eu', '+48 12 479 97 04'),
(9, 'Julian', 'Furgał', 'furgajul@wp.pl', '503-357-688'),
(10, 'Jerzy', 'Sierżant', 'sierzant@gmail.com', '511 404 737');

INSERT INTO books (book_id, title, isbn, price, publication_year, author_id, genre_id)
VALUES
(1, 'Harry Potter i Kamień Filozoficzny', '9780439708180', 39.99, 1997, 1, 1),
(2, 'Hobbit, czyli tam i z powrotem', '9780345339683', 29.99, 1937, 2, 1),
(3, 'Gra o tron', '9780553103540', 45.00, 1996, 3, 1),
(4, 'Imię wiatru', '9780756404741', 42.50, 2007, 4, 1),
(5, 'Fundacja', '9780553293357', 34.50, 1951, 5, 2),
(6, 'Diuna', '9780441172719', 49.99, 1965, 6, 2),
(7, 'Czy androidy marzą o elektrycznych owcach?', '9780345404473', 32.00, 1968, 7, 2),
(8, 'Gra Endera', '9780812550702', 37.99, 1985, 8, 2),
(9, 'Duma i uprzedzenie', '9780141439518', 24.99, 1813, 9, 3),
(10, 'Pamiętnik', '9780446605236', 28.50, 1996, 10, 3),
(11, 'Pięćdziesiąt twarzy Greya', '9780345803481', 31.99, 2011, 11, 3),
(12, 'Zanim się pojawiłeś', '9780143124542', 29.99, 2012, 12, 3),
(13, 'Zaginiona dziewczyna', '9780307588371', 38.00, 2012, 13, 4),
(14, 'Mężczyźni, którzy nienawidzą kobiet', '9780307949486', 34.99, 2005, 14, 4),
(15, 'Kod Leonarda da Vinci', '9780307474278', 35.50, 2003, 15, 4),
(16, 'Dziewczyna z pociągu', '9781594634024', 33.00, 2015, 16, 4),
(17, 'Lśnienie', '9780307743657', 36.99, 1977, 17, 5),
(18, 'Egzorcysta', '9780061007224', 29.50, 1971, 18, 5),
(19, 'Nawiedzony dom na wzgórzu', '9780143122357', 27.99, 1959, 19, 5),
(20, 'Drakula', '9780141439846', 24.00, 1897, 20, 5),
(21, '7 nawyków skutecznego działania', '9780743269513', 43.99, 1989, 21, 6),
(22, 'Myśl i bogać się', '9780449214923', 28.00, 1937, 22, 6),
(23, 'Jak zdobyć przyjaciół i zjednać sobie ludzi', '9780671027032', 30.00, 1936, 23, 6),
(24, 'Bogaty ojciec, biedny ojciec', '9781612680194', 35.00, 1997, 24, 6),
(25, 'Zabić drozda', '9780061120084', 33.00, 1960, 25, 7),
(26, 'Najbogatszy człowiek w Babilonie', '9788380878020', 36.90, 2019, 25, 6);

INSERT INTO orders (order_id, customer_id, order_date)
VALUES
(1, 1, '2024-07-03'),
(2, 1, '2024-06-29'),
(3, 2, '2024-12-25'),
(4, 7, '2024-06-21'),
(5, 3, '2024-12-11');

INSERT INTO orders (order_id, customer_id)
VALUES
(6, 3);

INSERT INTO order_items (order_item_id, order_id, book_id, quantity, price_each)
VALUES
(1, 1, 25, 2, 66.00),
(2, 2, 17, 2, 73.98),
(3, 3, 16, 2, 66.00),
(4, 4, 20, 1, 36.90),
(5, 5, 18, 2, 59.00),
(6, 6, 6, 2, 59.00);


INSERT INTO library_inventory (book_id, library_id, quantity, can_be_borrowed)
VALUES
(1, 1, 3, true),
(1, 2, 0, false),
(1, 3, 5, true),
(2, 1, 6, true),
(2, 2, 2, true),
(2, 3, 0, false),
(3, 1, 1, true),
(3, 2, 7, true),
(3, 3, 0, false),
(4, 1, 0, false),
(4, 2, 4, true),
(4, 3, 6, true),
(5, 1, 2, true),
(5, 2, 0, false),
(5, 3, 8, true),
(6, 1, 0, false),
(6, 2, 3, true),
(6, 3, 5, true),
(7, 1, 7, true),
(7, 2, 0, false),
(7, 3, 1, true),
(8, 1, 4, true),
(8, 2, 6, true),
(8, 3, 0, false),
(9, 1, 0, false),
(9, 2, 5, true),
(9, 3, 3, true),
(10, 1, 2, true),
(10, 2, 0, false),
(10, 3, 6, true),
(11, 1, 1, true),
(11, 2, 8, true),
(11, 3, 0, false),
(12, 1, 0, false),
(12, 2, 7, true),
(12, 3, 4, true),
(13, 1, 3, true),
(13, 2, 0, false),
(13, 3, 5, true),
(14, 1, 6, true),
(14, 2, 2, true),
(14, 3, 0, false),
(15, 1, 1, true),
(15, 2, 7, true),
(15, 3, 0, false),
(16, 1, 0, false),
(16, 2, 4, true),
(16, 3, 6, true),
(17, 1, 2, true),
(17, 2, 0, false),
(17, 3, 8, true),
(18, 1, 0, false),
(18, 2, 3, true),
(18, 3, 5, true),
(19, 1, 7, true),
(19, 2, 0, false),
(19, 3, 1, true),
(20, 1, 4, true),
(20, 2, 6, true),
(20, 3, 0, false),
(21, 1, 0, false),
(21, 2, 5, true),
(21, 3, 3, true),
(22, 1, 2, true),
(22, 2, 0, false),
(22, 3, 6, true),
(23, 1, 1, true),
(23, 2, 8, true),
(23, 3, 0, false),
(24, 1, 0, false),
(24, 2, 7, true),
(24, 3, 4, true),
(25, 1, 3, true),
(25, 2, 0, false),
(25, 3, 5, true);

INSERT INTO inventory (book_id, quantity_in_stock)
VALUES
(1, 10),
(2, 15),
(4, 5),
(5, 7),
(6, 12),
(8, 9),
(9, 11),
(10, 14),
(11, 6),
(12, 10),
(13, 15),
(14, 20),
(15, 7),
(16, 5),
(17, 9),
(18, 12),
(19, 8),
(21, 11),
(22, 13),
(23, 7),
(24, 6),
(25, 8);


INSERT INTO inventory (book_id, quantity_in_stock, available)
VALUES
(3, 20, false),
(7, 8, false),
(20, 10, false);


