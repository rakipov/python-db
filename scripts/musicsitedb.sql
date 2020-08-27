CREATE DATABASE musicsitedb;

CREATE USER pydb WITH PASSWORD 'pass';

ALTER DATABASE musicsitedb OWNER TO pydb;

CREATE TABLE IF NOT EXISTS Genre(
	id serial primary key,
	name varchar(80)
);

CREATE TABLE IF NOT EXISTS Singer(
	id serial primary key,
	name varchar(80) not null,
);

CREATE TABLE IF NOT EXISTS Singer_Genre(
	id serial primary key,
	singer_id integer references Singer(id),
	genre_id integer references Genre(id)
);

CREATE TABLE IF NOT EXISTS Album(
	id serial primary key,
	name varchar(80) not null,
	release_year integer,
);

CREATE TABLE IF NOT EXISTS Singer_Album(
	id serial primary key,
	singer_id integer references Singer(id),
	album_id integer references Album(id)
);

CREATE TABLE IF NOT EXISTS Song(
	id serial primary key,
	name varchar(80) not null,
	duration numeric,
	album_id integer references Album(id)
);

CREATE TABLE IF NOT EXISTS Collection(
	id serial primary key,
	name varchar(80) not null,
	release_year integer
);

CREATE TABLE IF NOT EXISTS Collection_Song(
	id serial primary key,
	collection_id integer references Collection(id),
	song_id integer references Song(id)
);
