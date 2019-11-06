CREATE TABLE series(
    id INTEGER PRIMARY KEY,
    title STRING,
    author_id INTEGER,
    subgenre_id INTEGER
);

CREATE TABLE subgenres(
    id INTEGER PRIMARY KEY,
    name STRING
);

CREATE TABLE authors(
    id INTEGER PRIMARY KEY,
    name STRING
);

CREATE TABLE books(
    id INTEGER PRIMARY KEY,
    title STRING,
    YEAR STRING,
    series_id INTEGER
);

CREATE TABLE characters(
    id INTEGER PRIMARY KEY,
    name STRING,
    motto STRING,
    species STRING,
    author_id INTEGER
);

CREATE TABLE character_books(
    id INTEGER PRIMARY KEY,
    character_id INTEGER,
    book_id INTEGER
);