INSERT INTO singer (name) VALUES 
	('Eminem'),
	('Баста'),
	('Макс Корж'),
	('James Arthur'),
	('Ed Sheeran'),
	('Lauv'),
	('Гречка'),
	('LOBODA'),
	('Zivert'),
	('Вера Брежнева');

INSERT INTO genre (name) VALUES 
	('Rock'),
	('Jazz'),
	('Dubstep'),
	('Techno'),
	('Country Music'),
	('Electro'),
	('Pop'),
	('Rap');
	
INSERT INTO album (name, release_year) VALUES 
	('Revival', 2017),
	('Баста 4', 2013),
	('Домашний', 2017),
	('Back from the Edge', 2017),
	('X', 2017),
	('I Met You When I Was 18', 2018),
	('Недокасаемость', 2018),
	('Мира мало', 2019),
	('Vinyl #1', 2019),
	('V.', 2020);
	
INSERT INTO singer_album (singer_id, album_id) VALUES 
	(2, 1),
	(3, 2),
	(4, 3),
	(5, 4),
	(6, 5),
	(7, 6),
	(8, 7),
	(9, 8),
	(10, 9),
	(11, 10);
	
INSERT INTO singer_genre (singer_id, genre_id) VALUES 
	(2, 8),
	(3, 8),
	(4, 8),
	(5, 7),
	(6, 7),
	(7, 6),
	(8, 6),
	(9, 7),
	(10, 7),
	(11, 7)
	(11, 6);
	
INSERT INTO song (name, duration, album_id) VALUES 
	('Believe', 5.15, 1),
	('Untouchable', 6.10, 1),
	('Мама', 4.35, 2),
	('Чистый кайф', 6.05, 2),
	('Пламенный свет', 3.56, 3),
	('Эгоист', 4.46, 3),
	('Train Wreck', 3.28, 4),
	('Finally', 4.21, 4),
	('Afire Love', 5.24, 5),
	('Photograph', 4.19, 5),
	('I Like Me Better', 3.17, 6),
	('Easy my Love', 3.44, 6),
	('Анимешница', 2.52, 7),
	('Крики', 1.49, 7),
	('В зоне риска', 3.24, 8),
	('Bon appétit', 3.30, 8),
	('Привет мой мир', 3.56, 9),
	('Дорога', 6.43, 9),
	('Просто люди', 3.41, 10), 
	('Тихо', 4.19, 10)
	('Громко', 4.5, 10);
	
INSERT INTO collection (name, release_year) VALUES 
	('Life', 2017),
	('Танцевальные хиты', 2013),
	('Earth', 2017),
	('Back', 2017),
	('XX', 2017),
	('Guys', 2018),
	('Недокасаемость', 2018),
	('Non-touch', 2019),
	('Vin', 2019),
	('Everyone is here', 2020);
	
INSERT INTO collection_song (collection_id , song_id) VALUES 
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(3, 6),
	(4, 7),
	(4, 8),
	(5, 9),
	(5, 10),
	(6, 11),
	(6, 12),
	(7, 13),
	(7, 14),
	(8, 15),
	(8, 16),
	(9, 17),
	(9, 18),
	(10, 19), 
	(10, 20);