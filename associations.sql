-- TABLE : Realisateur
CREATE TABLE Realisateur (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    date_naissance DATE
);

-- TABLE : Acteur
CREATE TABLE Acteur (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    date_naissance DATE
);

-- TABLE : Genre
CREATE TABLE Genre (
    id INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(50) NOT NULL
);

-- TABLE : Film
CREATE TABLE Film (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    annee_sortie INT NOT NULL,
    duree_minutes INT NOT NULL,
    note DECIMAL(2,1),
    pays VARCHAR(100),
    id_realisateur INT NOT NULL,
    FOREIGN KEY (id_realisateur) REFERENCES Realisateur(id)
);

-- TABLE : Projection
CREATE TABLE Projection (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_heure DATETIME NOT NULL,
    salle VARCHAR(50) NOT NULL,
    id_film INT NOT NULL,
    FOREIGN KEY (id_film) REFERENCES Film(id)
);

-- TABLE : FilmGenre (relation Film <-> Genre)
CREATE TABLE FilmGenre (
    id_film INT,
    id_genre INT,
    PRIMARY KEY (id_film, id_genre),
    FOREIGN KEY (id_film) REFERENCES Film(id),
    FOREIGN KEY (id_genre) REFERENCES Genre(id)
);


-- TABLE : FilmActeur (relation Film <-> Acteur)
CREATE TABLE FilmActeur (
    id_film INT,
    id_acteur INT,
    PRIMARY KEY (id_film, id_acteur),
    FOREIGN KEY (id_film) REFERENCES Film(id),
    FOREIGN KEY (id_acteur) REFERENCES Acteur(id)
);