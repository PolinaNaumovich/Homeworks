CREATE TABLE IF NOT EXISTS Genre (
		genre_id SERIAL PRIMARY key,
		genre_name VARCHAR(50) NOT null
);

CREATE TABLE IF NOT EXISTS Singer (
		singer_id SERIAL PRIMARY key,
		singer_name VARCHAR(50) NOT null
);

CREATE TABLE IF NOT EXISTS Genre_Singer (
		gs_id SERIAL PRIMARY key,
		genre_id INTEGER REFERENCES Genre(genre_id),
		singer_id INTEGER REFERENCES Singer(singer_id)
);

CREATE TABLE IF NOT EXISTS Album (
		album_id SERIAL PRIMARY key,
		album_name VARCHAR(50) NOT null,
		year_create DATE NOT null
);

CREATE TABLE IF NOT EXISTS Song (
		song_id SERIAL PRIMARY key,
		song_name VARCHAR(100) NOT null,
		s_duration TIME NOT null,
		album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Singer_Album (
		sa_id SERIAL PRIMARY key,
		singer_id INTEGER REFERENCES Singer(singer_id),
		album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
		collection_id SERIAL PRIMARY key,
		collection_name VARCHAR(100) NOT null,
		year_collection DATE NOT null
);

CREATE TABLE IF NOT EXISTS Tracks_Collection (
		tc_id SERIAL PRIMARY key,
		song_id INTEGER REFERENCES Song(song_id),
		collection_id INTEGER REFERENCES Collection(collection_id)
);
		
