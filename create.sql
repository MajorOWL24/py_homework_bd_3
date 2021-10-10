CREATE TABLE public."Performers" (
    singer character varying,
    id integer NOT NULL,
    name character varying
);

CREATE TABLE public.album_performer (
    performer_id integer NOT NULL,
    album_id integer NOT NULL
);

CREATE TABLE public.albums (
    name character varying,
    id integer NOT NULL,
    "year of issue" smallint
);

CREATE TABLE public.collection (
    id integer NOT NULL,
    name character varying,
    year integer
);

CREATE TABLE public.collection_song (
    collection_id integer NOT NULL,
    track_id integer NOT NULL
);


CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying
);

CREATE TABLE public.performer_genre (
    performer_id integer NOT NULL,
    genre_id integer NOT NULL
);

CREATE TABLE public.tracks (
    name character varying,
    id integer NOT NULL,
    "length of time" smallint,
    album_id integer
);

ALTER TABLE ONLY public."Performers"
    ADD CONSTRAINT "Performers_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY public.album_performer
    ADD CONSTRAINT album_performer_key PRIMARY KEY (performer_id, album_id);

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.collection_song
    ADD CONSTRAINT collection_song_key PRIMARY KEY (collection_id, track_id);

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.performer_genre
    ADD CONSTRAINT performer_genre_key PRIMARY KEY (performer_id, genre_id);

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.album_performer
    ADD CONSTRAINT album FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT album_track FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY public.collection_song
    ADD CONSTRAINT collection FOREIGN KEY (collection_id) REFERENCES public.collection(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY public.performer_genre
    ADD CONSTRAINT genre FOREIGN KEY (genre_id) REFERENCES public.genres(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY public.performer_genre
    ADD CONSTRAINT performer FOREIGN KEY (performer_id) REFERENCES public."Performers"(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY public.album_performer
    ADD CONSTRAINT performer FOREIGN KEY (performer_id) REFERENCES public."Performers"(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY public.collection_song
    ADD CONSTRAINT track FOREIGN KEY (track_id) REFERENCES public.tracks(id) ON UPDATE CASCADE ON DELETE CASCADE;
