-- Заполнение таблиц

--Table Genres:

INSERT INTO genres (name)
     VALUES ('indie_rock');
    
INSERT INTO genres (name)
     VALUES ('rock');
    
INSERT INTO genres (name)
     VALUES ('electronics');
    
INSERT INTO genres (name)
     VALUES ('classical');
    
INSERT INTO genres (name)
     VALUES ('jazz');
    
--Table Artists:
    
INSERT INTO artists (name)
     VALUES ('Imagin Dragons'); 
    
INSERT INTO artists (name)
     VALUES ('Metallica');  
    
INSERT INTO artists (name)
     VALUES ('Depeche Mode'); 
    
INSERT INTO artists (name)
     VALUES ('Sinitana');  
    
INSERT INTO artists (name)
     VALUES ('Emil Gilels'); 
    
INSERT INTO artists (name)
     VALUES ('Giv Evans');  
    
INSERT INTO artists (name)
     VALUES ('Ely Bruna'); 
    
INSERT INTO artists (name)
     VALUES ('On-The-Go'); 
    
--Table GenresArtists:

INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (1, 1); 
    
INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (2, 2); 
    
INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (3, 3); 
    
INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (4, 4); 
    
INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (4, 5); 
    
INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (5, 6); 

INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (5, 7); 
    
INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (1, 8); 
    
INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (2, 8); 
        
    
--Table Albums:
INSERT INTO albums (name, year_of_issue)
     VALUES ('Evolve', '2017'); 
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Metallica', '1991'); 
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Violator', '1990'); 
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Classic', '2018'); 
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Sonatas', '2019'); 
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Modern Jazz', '2020'); 
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Day Breaks', '2016'); 
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Unsaid', '2020');
    
INSERT INTO albums (name, year_of_issue)
     VALUES ('Roots', '2015');
    
--Table AlbumsArtists:
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (1, 1); 
    
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (2, 2); 
    
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (3, 3); 
    
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (4, 4); 
    
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (5, 5); 
    
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (6, 7); 

INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (7, 6); 
    
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (8, 8); 
    
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (9, 1); 
    
--Table Tracks:
INSERT INTO tracks (album_id, name, duration)
     VALUES ('1','Whatever it Takes', '220'); 
        
INSERT INTO tracks (album_id, name, duration)
     VALUES ('1','Thunder', '204'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('2','The Unfargiven', '383'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('2','Nothing Else Matters', '385'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('3','Precious', '242'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('3','Freelove', '259'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('4','Inside', '206'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('4','My Matinee', '178'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('5','Sonata 14', '148'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('5','Sonata 80', '189'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('7','My pease', '237'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('7','Burn', '285'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('6','American Boy', '259'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('6','Sailing', '268'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('8','Happy', '192'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('8','Lucky', '266'); 
    
INSERT INTO tracks (album_id, name, duration)
     VALUES ('9','Levitate', '199'); 

INSERT INTO tracks (album_id, name, duration)
     VALUES ('1','Yesterday', '209'); 
  
    
    
    
--Table Collections:
INSERT INTO collections (name, year_of_issue)
     VALUES ('Jazz Today', '2022'); 
    
INSERT INTO collections (name, year_of_issue)
     VALUES ('Classical Music', '2021'); 
    
INSERT INTO collections (name, year_of_issue)
     VALUES ('Lights', '2020'); 
    
INSERT INTO collections (name, year_of_issue)
     VALUES ('Sky', '2019'); 
        
INSERT INTO collections (name, year_of_issue)
     VALUES ('Sunny Day', '2018'); 
    
INSERT INTO collections (name, year_of_issue)
     VALUES ('All Flowers', '2017'); 
    
INSERT INTO collections (name, year_of_issue)
     VALUES ('Everything', '2016'); 
    
INSERT INTO collections (name, year_of_issue)
     VALUES ('Old Rock and Electronic', '2015');  
    
INSERT INTO collections (name, year_of_issue)
     VALUES ('Imagin Dragons', '2022');   
    
--Table TracksCollections:

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (1, 30); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (1, 31); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (1, 32); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (1, 33); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (2, 26); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (2, 27); 

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (2, 28); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (2, 29); 

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (3, 19); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (3, 21); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (3, 34); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (3, 35); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (4, 28); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (4, 29); 

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (4, 26); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (4, 27); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (5, 26); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (5, 27); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (5, 30); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (5, 31); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (6, 24); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (6, 25); 

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (6, 30); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (6, 31); 

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (7, 19); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (7, 22); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (7, 24); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (7, 30); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (8, 22); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (8, 23); 

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (8, 24); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (8, 25);     
    
 INSERT INTO trackscollections (collection_id, track_id)
     VALUES (9, 19); 

INSERT INTO trackscollections (collection_id, track_id)
     VALUES (9, 21); 
    
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (9, 36);  
    
