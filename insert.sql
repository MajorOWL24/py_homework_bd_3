INSERT INTO public.genres (id, name) VALUES (2, 'nu metal');
INSERT INTO public.genres (id, name) VALUES (5, 'power');
INSERT INTO public.genres (id, name) VALUES (1, 'industrial');
INSERT INTO public.genres (id, name) VALUES (3, 'EBM');
INSERT INTO public.genres (id, name) VALUES (4, 'russian_rock');

INSERT INTO public."Performers" (singer, id, name) VALUES ('KMFDM', 1, 'KMFDM');
INSERT INTO public."Performers" (singer, id, name) VALUES ('Sonata Arctica', 3, 'Sonata Arctica');
INSERT INTO public."Performers" (singer, id, name) VALUES ('Blutengel', 4, 'Blutengel');
INSERT INTO public."Performers" (singer, id, name) VALUES ('[:SITD:]', 5, '[:SITD:]');
INSERT INTO public."Performers" (singer, id, name) VALUES ('Виктор Цой', 6, 'Виктор Цой');
INSERT INTO public."Performers" (singer, id, name) VALUES ('System of a Dawn', 7, 'System of a Dawn');
INSERT INTO public."Performers" (singer, id, name) VALUES ('Korn', 8, 'Korn');
INSERT INTO public."Performers" (singer, id, name) VALUES ('Алиса', 2, 'Алиса');

INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (1, 1);
INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (2, 4);
INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (3, 5);
INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (4, 3);
INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (5, 3);
INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (6, 4);
INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (7, 2);
INSERT INTO public.performer_genre (performer_id, genre_id) VALUES (8, 2);

INSERT INTO public.albums (name, id, "year of issue") VALUES ('Labyrinth', 1, 2007);
INSERT INTO public.albums (name, id, "year of issue") VALUES ('WWIII', 2, 2003);
INSERT INTO public.albums (name, id, "year of issue") VALUES ('Toxicty', 4, 2001);
INSERT INTO public.albums (name, id, "year of issue") VALUES ('Дурень', 5, 1997);
INSERT INTO public.albums (name, id, "year of issue") VALUES ('Stronghold', 6, 2003);
INSERT INTO public.albums (name, id, "year of issue") VALUES ('Черный альбом', 7, 1991);
INSERT INTO public.albums (name, id, "year of issue") VALUES ('Follow the leader', 8, 1998);
INSERT INTO public.albums (name, id, "year of issue") VALUES ('Deliverance', 3, 2018);

INSERT INTO public.album_performer (performer_id, album_id) VALUES (1, 2);
INSERT INTO public.album_performer (performer_id, album_id) VALUES (2, 5);
INSERT INTO public.album_performer (performer_id, album_id) VALUES (3, 3);
INSERT INTO public.album_performer (performer_id, album_id) VALUES (4, 1);
INSERT INTO public.album_performer (performer_id, album_id) VALUES (5, 6);
INSERT INTO public.album_performer (performer_id, album_id) VALUES (6, 7);
INSERT INTO public.album_performer (performer_id, album_id) VALUES (7, 4);
INSERT INTO public.album_performer (performer_id, album_id) VALUES (8, 8);

INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('A new dawn', 1, 294, 1);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('A beauty and delight', 2, 290, 1);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Last things', 3, 305, 2);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('WWIII', 4, 298, 2);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Peacemaker', 5, 209, 3);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Needles', 6, 195, 4);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Chop suey', 7, 214, 4);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Aerials', 8, 235, 4);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Psycho', 9, 227, 4);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Трасса Е-95', 10, 216, 5);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Snuff Machinery', 11, 386, 6);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Кукушка', 12, 400, 7);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Freak on a leash', 13, 255, 8);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Rose-Coloured skies', 14, 363, 6);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Laughingstock', 15, 408, 6);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES ('Test My', 16, 30, 5);
INSERT INTO public.tracks (name, id, "length of time", album_id) VALUES (' мой ', 17, 30, 6);

INSERT INTO public.collection (id, name, year) VALUES (4, 'Dream', 2021);
INSERT INTO public.collection (id, name, year) VALUES (5, 'Russian', 2021);
INSERT INTO public.collection (id, name, year) VALUES (6, 'Joy', 2021);
INSERT INTO public.collection (id, name, year) VALUES (7, 'Dark', 2021);
INSERT INTO public.collection (id, name, year) VALUES (8, 'Germany', 2021);
INSERT INTO public.collection (id, name, year) VALUES (1, 'Melancholy', 2018);
INSERT INTO public.collection (id, name, year) VALUES (2, 'Military', 2019);
INSERT INTO public.collection (id, name, year) VALUES (3, 'Romantic', 2020);

INSERT INTO public.collection_song (collection_id, track_id) VALUES (1, 3);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (2, 11);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (1, 12);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (3, 5);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (4, 1);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (5, 10);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (5, 12);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (6, 6);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (6, 10);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (7, 11);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (7, 1);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (8, 1);
INSERT INTO public.collection_song (collection_id, track_id) VALUES (8, 11);
