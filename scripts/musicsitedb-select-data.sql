-- название и год выхода альбомов, вышедших в 2018 году
 SELECT "name" , release_year FROM album a 
 	WHERE release_year = 2018
 	
--название и продолжительность самого длительного трека
 SELECT "name" , duration FROM  song s
	ORDER BY duration DESC LIMIT 1
	
--название треков, продолжительность которых не менее 3,5 минуты	
SELECT "name" , duration FROM  song s
	WHERE duration >= 3.5
	
--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT "name" FROM collection c 
	WHERE release_year BETWEEN 2018 AND 2020
	
--исполнители, чье имя состоит из 1 слова	
SELECT name FROM singer s
	WHERE name NOT LIKE '%% %%'
	
--название треков, которые содержат слово "мой"/"my"
SELECT "name" FROM song s 
	WHERE "name" LIKE '%%мой%%'

SELECT "name" FROM song s 
	WHERE "name" LIKE '%%my%%'