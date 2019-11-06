INSERT INTO series (title, author_id, subgenre_id) 
VALUES ('harry potter', 1, 1), ('the chronicles of narnia', 2, 2);

INSERT INTO subgenres (name) 
VALUES ('magic children'), ('magic lands');

INSERT INTO authors (name) 
VALUES ('J. K. Rowling'), ('C. S. Lewis');

INSERT INTO books (title, year, series_id) 
VALUES ("The Philosopher's Stone", "1997", 1), ("The Chamber of Secrets", "1998", 1), ("The Prisoner of Azkaban", "1999", 1),
("The Lion, the Witch and the Wardrobe", "1950", 2), ("Prince Caspian", "1951", 2), ("The Voyage of the Dawn Treader", "1952", 2);

INSERT INTO characters (name, motto, species, author_id) 
VALUES 
('Aslan', 'im a magic lion', 'lion', 2), 
('Lucy', 'where am i', 'human', 2),
('Prince Caspian', 'im a prince', 'human', 2),
('Eustace', 'im a miserable git', 'human', 2),
('Harry Potter', 'it burns it burns', 'human', 1),
('Hagrid', 'blimey im large', 'half-giant', 1),
('Professor Quirrell', '*whimpering*', 'human', 1),
('Buckbeak', '*flapping*', 'hippogriff', 1);

INSERT INTO character_books(character_id, book_id)
VALUES
(1, 4), (1, 5), (1, 6), (2, 4), (2, 5), (2, 6),
(3, 5), (4, 6), (5, 1), (5, 2), (5, 3), (6, 1),
(6, 2), (6, 3), (7, 1), (8, 3);