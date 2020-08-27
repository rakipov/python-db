-- количество исполнителей в каждом жанре
SELECT count(singer_id) AS "Количество исполнителей", g2."name" FROM singer_genre
JOIN genre g2 ON singer_genre.genre_id = g2.id
GROUP BY g2."name" 

-- количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(s.id) AS "Количество треков" FROM song s
JOIN album a ON s.album_id = a.id
WHERE a.release_year = 2019
OR a.release_year = 2020

-- средняя продолжительность треков по каждому альбому
SELECT AVG(duration) FROM  song s2 
JOIN album a ON s2.album_id = a.id
GROUP BY a.id

-- все исполнители, которые не выпустили альбомы в 2020 году
SELECT s."name" FROM singer_album sa 
JOIN singer s ON s.id = sa.singer_id
JOIN album a ON a.id = sa.album_id
WHERE a.release_year != 2020

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT c."name" FROM collection_song cs 
JOIN collection c ON c.id = cs.collection_id
JOIN song s ON cs.song_id = s.id
JOIN album a2 on s.album_id = a2.id
JOIN singer_album sa ON a2.id = sa.album_id
JOIN singer s5 ON s5.id = sa.singer_id
WHERE s5."name" = 'James Arthur'
GROUP BY c."name" 

-- название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT a."name" FROM singer_album sa 
JOIN album a ON sa.album_id = a.id
JOIN singer s ON sa.singer_id = s.id
JOIN singer_genre sg ON s.id = sg.singer_id 
JOIN genre g ON sg.genre_id = g.id 
GROUP BY a."name" 
HAVING COUNT(g."name") > 1

-- наименование треков, которые не входят в сборники
SELECT s2."name" FROM song s2
FULL OUTER JOIN collection_song cs ON s2.id = cs.song_id 
LEFT JOIN collection c ON cs.collection_id = c.id 
WHERE c.id IS null

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT s2."name" FROM singer s2 
JOIN singer_album sa ON s2.id = sa.singer_id 
JOIN album a2 ON sa.album_id = a2.id 
JOIN song s3 ON s3.album_id = a2.id
WHERE s3.duration = (
	SELECT MIN(duration) FROM song)

-- название альбомов, содержащих наименьшее количество треков
SELECT a2.name, COUNT(s2.id) FROM album a2 
JOIN song s2 ON a2.id = s2.album_id
GROUP BY album_id, a2."name"
HAVING COUNT(s2.id) = (
	SELECT MIN(c) FROM (
		SELECT COUNT(id) AS c FROM song s3
        GROUP BY album_id) AS foo)