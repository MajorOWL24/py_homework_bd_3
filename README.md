# py_homework_bd_3

ALTER TABLE public."Performers" DROP COLUMN genre_id;

CREATE TABLE IF NOT EXISTS public.performer_genre
(
    performer_id integer,
    genre_id integer,
    CONSTRAINT performer_genre_key PRIMARY KEY (performer_id, genre_id),
    CONSTRAINT genre FOREIGN KEY (genre_id)
        REFERENCES public.genres (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT performer FOREIGN KEY (performer_id)
        REFERENCES public."Performers" (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);


ALTER TABLE public.albums DROP COLUMN performer_id;

CREATE TABLE IF NOT EXISTS public.album_performer
(
    performer_id integer,
    album_id integer,
    CONSTRAINT album_performer_key PRIMARY KEY (performer_id, album_id),
    CONSTRAINT performer FOREIGN KEY (performer_id)
        REFERENCES public."Performers" (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT album FOREIGN KEY (album_id)
        REFERENCES public.albums (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

CREATE TABLE IF NOT EXISTS public.collection
(
    id integer,
    name character varying,
    year integer,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.collection_song
(
    collection_id integer,
    track_id integer,
    CONSTRAINT collection_song_key PRIMARY KEY (collection_id, track_id),
    CONSTRAINT collection FOREIGN KEY (collection_id)
        REFERENCES public.collection (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT track FOREIGN KEY (track_id)
        REFERENCES public.tracks (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);
