/*----------------------------------*/
CREATE TABLE student
(
    id   INT PRIMARY KEY,
    name VARCHAR(255),
    age  INT
);

INSERT INTO student(id, name, age)
values (2, 'Timur', 18),
       (3, 'Timur', 18),
       (4, 'Timur', 18),
       (5, 'Timur', 18);

/*----------------------------------*/
CREATE TABLE student2
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age  INT
);

INSERT INTO student2(name, age)
values ('Adilet', 18),
       ('Adilet', 18),
       ('Adilet', 18),
       ('Adilet', 18);

/*----------------------------------*/
CREATE TABLE courses
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO courses(name)
VALUES ('java6 junior'),
       ('java6 middle');

/*----------------------------------*/
CREATE TABLE teachers
(
    id          INTEGER PRIMARY KEY,
    name_teachers VARCHAR(20),
    id_teachers  INT REFERENCES courses (id)
);

INSERT INTO teachers(id, name_teachers, id_teachers)
VALUES (1, 'Muhamed', 1),
       (2, 'Zamir', 2);

/*----------------------------------*/
CREATE TABLE passport
(
    id  SERIAL PRIMARY KEY,
    inn INTEGER NOT NULL
);

INSERT INTO passport(inn)
VALUES (123456789),
       (987654321),
       (125459876);

/*----------------------------------*/
CREATE TABLE person
(
    number      INTEGER,
    name_person VARCHAR(50),
    id_pass   INTEGER REFERENCES passport (id)
);

INSERT INTO person(number, name_person, id_pass)
VALUES (1, 'Ali', 1),
       (2, 'Hasan', 2),
       (3, 'Husein', 3);

/*----------------------------------*/
CREATE TABLE money
(
    id       SERIAL PRIMARY KEY,
    name_money VARCHAR(50)
);

INSERT INTO money(name_money)
VALUES ('Dollar'),
       ('Ruble'),
       ('Som'),
       ('Tenge'),
       ('Lira');

/*----------------------------------*/
CREATE TABLE money_country
(
    country   VARCHAR,
    id_money INTEGER REFERENCES money (id)
);
INSERT INTO money_country(country, id_money)
VALUES ('America', 1),
       ('Russia', 1),
       ('Kyrgyzstan', 1),
       ('Kazakhstan', 1),
       ('Turkey', 1);

/*----------------------------------*/
CREATE TABLE actor
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR
);

INSERT INTO actor(name)
VALUES ('Daniel Radcliffe'),
       ('Michael Sheen'),
       ('David Tennant'),
       ('Some Girl'),
       ('Orlando Bloom');

/*----------------------------------*/
CREATE TABLE actor_role
(
    role_by_actor VARCHAR(50),
    id_role INTEGER REFERENCES actor(id)
);
INSERT INTO actor_role(role_by_actor, id_role)
VALUES ('Harry Potter', 1),
       ('Aziraphale', 2),
       ('Crowley', 3),
       ('Angry Fae', 4),
       ('Detective', 5);

/*----------------------------------*/
CREATE TABLE workers
(
    id     INTEGER PRIMARY KEY,
    name   VARCHAR,
    gender VARCHAR
);

INSERT INTO workers(id, name, gender)
VALUES (1, 'Asan', 'man'),
       (2, 'Uson', 'man'),
       (3, 'Batma', 'woman'),
       (4, 'Zuura', 'woman'),
       (5, 'Bekten', 'man');


/*----------------------------------*/
CREATE TABLE company
(
    name   VARCHAR(50),
    phone   INTEGER,
    id_company INTEGER REFERENCES workers (id)
);
INSERT INTO company (name, phone, id_company)
VALUES ('Microsoft', 1234567, 1),
       ('Facebook', 7654321, 2),
       ('Google', 1237654, 3),
       ('Samsung', 7651234, 4),
       ('Amazon', 1234567, 5);

/*----------------------------------*/
CREATE TABLE Dog
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(10)
);
INSERT INTO Dog(name)
VALUES ('CHARLIE'),
       ('REX'),
       ('RUDY'),
       ('BAILEY'),
       ('TEDDY');

/*----------------------------------*/
CREATE TABLE breed
(
    count    INT,
    breeds    VARCHAR(50),
    id_dogs INTEGER REFERENCES Dog (id)
);

INSERT INTO breed(count, breeds, id_dogs)
VALUES (3, 'AKITA', 1),
       (5, 'BULLDOG', 2),
       (5, 'BULLDOG', 3),
       (2, 'BEAGLIER', 4),
       (2, 'BEAGLIER', 5);

/*----------------------------------*/
CREATE TABLE soccer_player
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(10)
);
INSERT INTO soccer_player(name)
VALUES ('Ronaldo'),
       ('Messi');

/*----------------------------------*/
CREATE TABLE football_club
(
    id         INTEGER,
    name       VARCHAR(40),
    id_player INTEGER REFERENCES soccer_player (id)
);

INSERT INTO football_club(id, name, id_player)
VALUES (7, 'Manchester United', 1),
       (9, 'Paris Saint Germain', 2);

