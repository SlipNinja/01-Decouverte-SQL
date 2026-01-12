-- Afficher tous les films
SELECT * FROM films;

-- Afficher uniquement les titre + realisateurs
SELECT titre, realisateur FROM films;

-- Afficher les films sortis après 2010
SELECT * FROM films WHERE annee_sortie > 2010;

-- Afficher films qui contiennent "in"
SELECT * FROM films WHERE titre LIKE '%in%';

-- Afficher les films de comédie
SELECT * FROM films WHERE genre = 'Comédie';

-- Modifier la durée du film Parasite à 133 minutes
UPDATE films SET duree_minutes = 133 WHERE titre = 'Parasite';

-- Changer le genre d'Inception en Thriller
UPDATE films SET genre = 'Thriller' WHERE titre = 'Inception';

-- Supprimer le film "Le fabuleux destin.."
DELETE FROM films WHERE titre = "Le Fabuleux Destin d'Amélie Poulain";

-- Ajouter films
INSERT INTO films (titre, annee_sortie, genre, duree_minutes, note) VALUES
('Your name', 2016, 'Animation', 106, 8.5);

-- Reduire de 5mn la duree de tous les films de genre "Comédie"
UPDATE films SET duree_minutes = duree_minutes - 5 WHERE genre = 'Comédie';
