-- Create the tables with the required constraints

CREATE TABLE books
(
    id_book NUMBER(4) NOT NULL,
    id_type NUMBER(4) NOT NULL,
    id_publisher NUMBER(4),
    title VARCHAR2(30),
    no_pages NUMBER(4),
    publishing_year NUMBER(4),
    CONSTRAINT pk_books PRIMARY KEY (id_book),
    CONSTRAINT fk_books_type FOREIGN KEY (id_type) REFERENCES book_types (id_type),
    CONSTRAINT fk_books_pub FOREIGN KEY (id_publisher) REFERENCES publishers (id_publisher)
    );

CREATE TABLE book_types
(
    id_type NUMBER(4) NOT NULL,
    type VARCHAR2(30),
    CONSTRAINT pk_type PRIMARY KEY(id_type)
);

CREATE TABLE publishers
(
    id_publisher NUMBER(4) NOT NULL,
    name VARCHAR2(20),
    CONSTRAINT pk_publishers PRIMARY KEY(id_publisher)
);

CREATE TABLE books_authors
(
    id_book NUMBER(4) NOT NULL,
    id_author NUMBER(4) NOT NULL,
    CONSTRAINT fk_books_books FOREIGN KEY (id_book) REFERENCES books (id_book),
    CONSTRAINT fk_books_author FOREIGN KEY (id_author) REFERENCES authors (id_authors),
    CONSTRAINT uq_books UNIQUE (id_book, id_author)
);

CREATE TABLE authors
(
    id_authors NUMBER(4) NOT NULL,
    firstname VARCHAR2(30),
    lastname VARCHAR2(30),
    CONSTRAINT pk_authors PRIMARY KEY (id_authors)
);

-- Insert into tables for exemplification

insert into book_types values (1, 'Literatura de Specialitate');
insert into book_types values (2, 'Literatura Obligatorie');
insert into book_types values (3, 'Beletristica');


insert into publishers values(1, 'HUMANITAS');
insert into publishers values(2, 'Nemira');
insert into publishers values(3, 'ART');

insert into books values(1, 1, 1, 'Luceafarul', 23, 1966);
insert into books values(2, 2, 3, 'Tratate de Medicina', 250, 2003);
insert into books values(3, 1, 2, 'Ion', 350, 1920);

insert into authors values(1, 'Mihai', 'Eminescu');
insert into authors values(2, 'Ana', 'Aslan');
insert into authors values(3, 'Liviu', 'Rebreanu');

insert into books_authors values(1, 1);
insert into books_authors values(2, 2);
insert into books_authors values(3, 3);

-- Set of commands to alter the tables

update books set no_pages = 100 where id_book = 1;
update books set publishing_year = 2000 where title = 'LUCEAFARU';

delete from book_types where id_type = 3;
