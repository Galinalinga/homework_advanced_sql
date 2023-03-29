/* 1 Количество исполнителей в каждом жанре */
 SELECT name, COUNT (*) 
   FROM genresartists AS ga
        JOIN genres AS g 
	    ON ga.genre_id = g.id 
  GROUP BY g.name
  ORDER BY COUNT (*);
  	  	 
/* 2 Количество треков, вошедших в альбомы 2019–2020 годов */
 SELECT COUNT(t.id) 
  FROM tracks AS t            
       JOIN albums AS a  
       ON t.album_id = a.id   
  WHERE year_of_issue BETWEEN 2019
    AND 2020;                 
 
/* 3 Средняя продолжительность треков по каждому альбому */
 SELECT a.name, AVG(duration) 
   FROM tracks AS t
        JOIN albums AS a 
        ON a.id = t.album_id
  GROUP BY a.name  
  ORDER BY AVG; 
 
/* 4 Все исполнители, которые не выпустили альбомы в 2020 году */
  SELECT name 
   FROM artists  
  WHERE name NOT IN  
        (SELECT a.name 
        FROM artists AS a  
        JOIN albumsartists AS aa
        ON aa.album_id  = a.id  
        JOIN albums AS al  
        ON aa.artist_id  = al.id  
        WHERE year_of_issue = 2020 
  );
  
/* 5 Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).*/
 SELECT DISTINCT c.name, a.name
   FROM collections AS c
        JOIN trackscollections AS tc 
        ON tc.collection_id = c.id 
        JOIN tracks AS t
        ON tc.track_id  = t.id 
        JOIN albumsartists AS al
        ON al.artist_id  = t.album_id 
        JOIN artists AS a 
        ON a.id  = al.album_id 
  WHERE a.name iLIKE '%Ely Bruna%';
   
 
/* 6 Названия альбомов, в которых присутствуют исполнители более чем одного жанра.*/
 SELECT DISTINCT a.name 
  FROM albums AS a  
       JOIN albumsartists AS aa  
       ON a.id  = aa.artist_id  
       JOIN artists AS ar  
       ON aa.album_id  = ar.id  
       JOIN genresartists AS g  
       ON g.artist_id  = ar.id  
 GROUP BY a.name, g.artist_id  
HAVING COUNT(g.genre_id) > 1; 
 
/* 7 Наименования треков, которые не входят в сборники.*/
 SELECT t.name 
   FROM tracks AS t 
        LEFT JOIN trackscollections AS tr 
        ON t.id = tr.track_id 
  WHERE tr.track_id IS NULL; 
 
/* 8 Исполнитель или исполнители, написавшие самый короткий по продолжительности трек.*/
 SELECT a.name, t.duration
   FROM tracks AS t
        JOIN albums AS al 
        ON t.album_id = al.id
        JOIN artists AS a
        ON a.id = t.album_id 
  WHERE duration = 
        (SELECT MIN(duration) 
        FROM tracks);
  
 
/* 9 Названия альбомов, содержащих наименьшее количество треков.*/
   
SELECT a.name 
  FROM albums AS a
       JOIN tracks AS t  
       ON a.id  = t.album_id  
 GROUP BY a.name 
HAVING COUNT(t.id) = ( 
    SELECT COUNT(t.id) FROM tracks AS t 
    GROUP BY t.album_id  
    ORDER BY 1 
    LIMIT 1 
);
      