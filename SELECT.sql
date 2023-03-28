/* 1 Количество исполнителей в каждом жанре */
 SELECT name, COUNT (*) 
   FROM genresartists AS ga
        JOIN genres AS g 
	    ON ga.genre_id = g.id 
  GROUP BY g.name
  ORDER BY COUNT (*);
  	  	 
/* 2 Количество треков, вошедших в альбомы 2019–2020 годов */
 SELECT a.name, year_of_issue, COUNT (*) 
   FROM albums AS a 
        JOIN tracks AS t 
        ON a.id = t.album_id 
  WHERE year_of_issue BETWEEN 2019 
  	AND 2020
  GROUP BY a.name, a.year_of_issue 
  ORDER BY COUNT (*); 	
  	 	
/* 3 Средняя продолжительность треков по каждому альбому */
 SELECT a.name, AVG(duration) 
   FROM tracks AS t
        JOIN albums AS a 
        ON a.id = t.album_id
  GROUP BY a.name  
  ORDER BY AVG; 
 
/* 4 Все исполнители, которые не выпустили альбомы в 2020 году */
 SELECT a.name
   FROM artists AS a 
        JOIN albums AS al
        ON a.id = al.id 
  WHERE year_of_issue NOT IN (2020)
  GROUP BY a.name; 	
  
/* 5 Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).*/
 SELECT c.name, a.name
   FROM collections AS c
        JOIN trackscollections AS tc 
        ON tc.collection_id = c.id 
        JOIN tracks AS t
        ON tc.track_id  = t.id 
        JOIN albumsartists AS al
        ON al.artist_id  = t.album_id 
        JOIN artists AS a 
        ON a.id  = al.album_id 
  WHERE a.name iLIKE '%Ely Bruna%'
  GROUP BY c. name, a.name;   
 
/* 6 Названия альбомов, в которых присутствуют исполнители более чем одного жанра.*/
 SELECT ab.name, COUNT(*) 
   FROM artists AS a 
        JOIN genresartists AS g  
        ON g.artist_id  = a.id 
        JOIN albumsartists AS al
        ON a.id = al.album_id 
        JOIN albums AS ab
        ON ab.id = al.album_id 
  GROUP BY ab.name
 HAVING COUNT(*) > 1;
 
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
        FROM tracks)
  GROUP BY a.name, t.duration;
 
/* 9 Названия альбомов, содержащих наименьшее количество треков.*/
 SELECT a.name, COUNT(*)
 FROM albums AS a
      JOIN tracks AS t 
      ON a.id = t.album_id
   GROUP BY a.name
   ORDER BY count
   LIMIT 1;
      