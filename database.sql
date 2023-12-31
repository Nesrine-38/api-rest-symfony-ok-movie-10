-- Active: 1685437722112@@127.0.0.1@3306@cinema
DROP TABLE IF EXISTS genre_movie;
Drop TABLE IF EXISTS movie;

DROP TABLE IF EXISTS genre;

CREATE Table 
    movie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    content TEXT,
    released DATE,
    duration INT,
    picture VARCHAR(255)
);
CREATE TABLE 
    genre (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(255)
); 

CREATE TABLE 
    genre_movie (
    id_movie INT,
    id_genre INT,
    PRIMARY KEY (id_movie,id_genre),
    Foreign Key (id_movie) REFERENCES movie(id) ON DELETE CASCADE,
    Foreign Key (id_genre) REFERENCES genre(id) ON DELETE CASCADE
);

INSERT INTO `movie` (`title`, `content`, `released`, `duration`) VALUES ('titanic', ' épave du Titanic est objet une exploration fiévreuse, menée par des chercheurs de trésor en quête un diamant bleu qui se trouvait à bord. Frappée par un reportage télévisé, une des rescapées du naufrage, âgée de 102 ans, Rose DeWitt, se rend sur place et évoque ses souvenirs. 1912. Fiancée à un industriel arrogant, Rose croise sur le bateau un artiste sans le sou.' , '1998-01-07', 500);
INSERT INTO `movie` (`title`, `content`, `released`, `duration`) VALUES ('SICCIN', '  Le second film de la franchise fut le film d’horreur ayant remporté le plus grand succès en Turquie en 2015, et avait été présenté à l’Ithaca International Fantastic Film Festival de New York.' , '2012-09-20', 98);

INSERT INTO `movie` (`title`, `content`, `released`, `duration`) VALUES ('The mother', 'Une tueuse à gages se retrouve forcée de sortir de sa cachette afin de protéger sa fille qu elle a abandonnée il y a des années, qui est prise pour cible par ses anciens collègues.' , '2023-05-12', 118);
INSERT INTO `movie` (`title`, `content`, `released`, `duration`) VALUES ('Jungle Cruise', 'Chercheuse intrépide, la doctoresse Lily Houghton quitte Londres pour explorer la jungle amazonienne à la recherche un remède miraculeux. Pour descendre le fleuve, elle engage Frank Wolff, un capitaine roublard aussi douteux que son vieux rafiot délabré. Bien décidée à découvrir larbre séculaire dont les extraordinaires pouvoirs de guérison pourraient changer l avenir de la médecine, Lily se lance dans une quête épique.' , '2021-07-28', 118);

INSERT INTO `genre`(`label`) VALUES ('Action');
INSERT INTO `genre`(`label`) VALUES ('horreur');
INSERT INTO `genre`(`label`) VALUES ('romantique');
INSERT into `genre`(`label`) VALUES ('comedien');

INSERT into `genre_movie` (`id_movie`,`id_genre`) VALUES (1,3);
INSERT into `genre_movie` (`id_movie`,`id_genre`) VALUES (1,4);
INSERT into `genre_movie` (`id_movie`,`id_genre`) VALUES (2,2);
INSERT into `genre_movie` (`id_movie`,`id_genre`) VALUES (3,1);
INSERT into `genre_movie` (`id_movie`,`id_genre`) VALUES (4,4);



SELECT movie.title, genre.label From movie 
INNER join genre_movie on movie.id=genre_movie.id_movie
INNER join genre on genre.id=genre_movie.id_genre;