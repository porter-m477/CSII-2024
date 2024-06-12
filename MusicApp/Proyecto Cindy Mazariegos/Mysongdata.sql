CREATE DATABASE MusicDB;
USE MusicDB;

CREATE TABLE Songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cancion VARCHAR(255),
    artista VARCHAR(255),
    album VARCHAR(255),
    genero VARCHAR(255),
    imagen VARCHAR(255),
    link VARCHAR(255)
);

INSERT INTO Songs (cancion, artista, album, genero, imagen, link) VALUES
('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 'Rock', 'https://example.com/bohemian_rhapsody.jpg', 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ'),
('Hotel California', 'Eagles', 'Hotel California', 'Rock', 'https://example.com/hotel_california.jpg', 'https://www.youtube.com/watch?v=lrfhf1Gv4Tw'),
('Imagine', 'John Lennon', 'Imagine', 'Rock', 'https://example.com/imagine.jpg', 'https://www.youtube.com/watch?v=VOgFZfRVaww'),
('Hey Jude', 'The Beatles', 'Hey Jude', 'Rock', 'https://example.com/hey_jude.jpg', 'https://www.youtube.com/watch?v=A_MjCqQoLLA'),
('Stairway to Heaven', 'Led Zeppelin', 'Led Zeppelin IV', 'Rock', 'https://example.com/stairway_to_heaven.jpg', 'https://www.youtube.com/watch?v=QkF3oxziUI4'),
('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', 'Grunge', 'https://example.com/smells_like_teen_spirit.jpg', 'https://www.youtube.com/watch?v=hTWKbfoikeg');
