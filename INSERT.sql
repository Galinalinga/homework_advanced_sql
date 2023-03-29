-- Заполнение таблиц

--Table Genres:

INSERT INTO genres (name)
     VALUES ('indie_rock'),
            ('rock'),
            ('electronics'),
            ('classical'),
            ('jazz');

    
--Table Artists:
    
INSERT INTO artists (name)
     VALUES ('Imagin Dragons'), 
            ('Metallica'),  
            ('Depeche Mode'), 
            ('Sinitana'),  
            ('Emil Gilels'), 
            ('Giv Evans'),  
            ('Ely Bruna'), 
            ('OnTheGo'); 
    
--Table GenresArtists:

INSERT INTO genresartists  (genre_id, artist_id)
     VALUES (1, 1),
            (2, 2), 
            (3, 3), 
            (4, 4), 
            (4, 5), 
            (5, 6),
            (5, 7),
            (1, 8), 
            (2, 8); 
        
    
--Table Albums:
INSERT INTO albums (name, year_of_issue)
     VALUES ('Evolve', '2017'), 
            ('Metallica', '1991'), 
            ('Violator', '1990'), 
            ('Classic', '2018'), 
            ('Sonatas', '2019'), 
            ('Modern Jazz', '2020'), 
            ('Day Breaks', '2016'),
            ('Unsaid', '2020'),
            ('Roots', '2015');
    
--Table AlbumsArtists:
INSERT INTO albumsartists  (album_id, artist_id)
     VALUES (1, 1), 
            (2, 2), 
            (3, 3), 
            (4, 4),
            (5, 5), 
            (6, 7), 
            (7, 6), 
            (8, 8),
            (9, 1); 
    
--Table Tracks:
INSERT INTO tracks (album_id, name, duration)
     VALUES ('1','Whatever it Takes', '220'), 
            ('1','Thunder', '204'),
            ('1','Yesterday', '209'),
            ('2','The Unfargiven', '383'), 
            ('2','Nothing Else Matters', '385'), 
            ('3','Precious', '242'), 
            ('3','Freelove', '259'), 
            ('4','Inside', '206'), 
            ('4','My Matinee', '178'), 
            ('5','Sonata 14', '148'), 
            ('5','Sonata 80', '189'), 
            ('7','My pease', '237'),
            ('7','Burn', '285'), 
            ('6','American Boy', '259'),
            ('6','Sailing', '268'), 
            ('8','Happy', '192'), 
            ('8','Lucky', '266'), 
            ('9','Levitate', '199'); 
      
--Table Collections:
INSERT INTO collections (name, year_of_issue)
     VALUES ('Jazz Today', '2022'),
            ('Classical Music', '2021'), 
            ('Lights', '2020'), 
            ('Sky', '2019'), 
            ('Sunny Day', '2018'), 
            ('All Flowers', '2017'), 
            ('Everything', '2016'), 
            ('Old Rock and Electronic', '2015'),  
            ('Imagin Dragons', '2022');   
    
--Table TracksCollections:
INSERT INTO trackscollections (collection_id, track_id)
     VALUES (1, 12), 
            (1, 13), 
            (1, 14), 
            (1, 15), 
            (2, 8), 
            (2, 9), 
            (2, 10), 
            (2, 11), 
            (3, 1), 
            (3, 2), 
            (3, 16), 
            (3, 17), 
            (4, 10), 
            (4, 11), 
            (4, 8), 
            (4, 9), 
            (5, 8), 
            (5, 9), 
            (5, 12), 
            (5, 13), 
            (6, 6), 
            (6, 7), 
            (6, 12), 
            (6, 13), 
            (7, 1), 
            (7, 4), 
            (7, 6), 
            (7, 12), 
            (8, 4), 
            (8, 5), 
            (8, 6), 
            (8, 7),     
            (9, 1), 
            (9, 2), 
            (9, 18);  
    
