CREATE TABLE IF NOT EXISTS Genre(
id SERIAL PRIMARY KEY,
genre_name varchar(80)
);

CREATE TABLE IF NOT EXISTS Artist(
id SERIAL PRIMARY KEY,
artist_name varchar(80)
);

CREATE TABLE IF NOT EXISTS Genre_Artist( 
genre_id integer REFERENCES Genre(id),
artist_id integer REFERENCES Artist(id),
CONSTRAINT genre_album_pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Track(
track_id SERIAL PRIMARY KEY,
track_name varchar(80)
);

CREATE TABLE IF NOT EXISTS Album (
id SERIAL PRIMARY KEY,
album_name varchar(80),
track_id integer REFERENCES Track(track_id),
release_year integer
);

CREATE TABLE IF NOT EXISTS Artist_Album(
artist_id integer REFERENCES Artist(id),
album_id integer REFERENCES Album(id),
CONSTRAINT artist_albom_pk primary key (artist_id, album_id)
);


CREATE TABLE IF NOT EXISTS Collection(
collection_id SERIAL PRIMARY KEY,
collection_name varchar(80),
track_id integer REFERENCES Track(track_id)
);