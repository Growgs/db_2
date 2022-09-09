create table if not exists Genre(
genre_id integer PRIMARY KEY,
genre_name VARCHAR(80)
);

create table if not exists Artist(
artist_id integer primary key,
artist_name varchar(80)
);

CREATE TABLE IF NOT EXISTS Genre_Artist(
genre_id integer references Genre(genre_id),
artist_id integer references Artist(artist_id)
);

CREATE TABLE IF NOT EXISTS Album(
album_id SERIAL PRIMARY KEY,
album_name varchar(80),
release_year integer
);

CREATE TABLE IF NOT EXISTS Artist_Album(
artist_id integer REFERENCES Artist(artist_id),
album_id integer REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track(
track_id SERIAL PRIMARY KEY,
track_name varchar(80),
album_id integer REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection(
collection_id SERIAL PRIMARY KEY,
collection_name varchar(80),
track_id integer REFERENCES Track(track_id)
);

