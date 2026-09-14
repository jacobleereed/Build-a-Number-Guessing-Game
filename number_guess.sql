--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guess_count integer DEFAULT 1
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (21, 24, 1);
INSERT INTO public.games VALUES (23, 25, 1);
INSERT INTO public.games VALUES (22, 25, 817);
INSERT INTO public.games VALUES (24, 24, 1);
INSERT INTO public.games VALUES (25, 24, 1);
INSERT INTO public.games VALUES (26, 24, 1);
INSERT INTO public.games VALUES (20, 24, 261);
INSERT INTO public.games VALUES (27, 26, 1);
INSERT INTO public.games VALUES (28, 26, 1);
INSERT INTO public.games VALUES (29, 27, 1);
INSERT INTO public.games VALUES (30, 27, 1);
INSERT INTO public.games VALUES (31, 26, 1);
INSERT INTO public.games VALUES (32, 26, 1);
INSERT INTO public.games VALUES (33, 26, 1);
INSERT INTO public.games VALUES (35, 28, 1);
INSERT INTO public.games VALUES (37, 29, 1);
INSERT INTO public.games VALUES (36, 29, 78);
INSERT INTO public.games VALUES (38, 28, 1);
INSERT INTO public.games VALUES (39, 28, 1);
INSERT INTO public.games VALUES (40, 28, 1);
INSERT INTO public.games VALUES (34, 28, 98);
INSERT INTO public.games VALUES (42, 30, 1);
INSERT INTO public.games VALUES (44, 31, 1);
INSERT INTO public.games VALUES (43, 31, 326);
INSERT INTO public.games VALUES (45, 30, 1);
INSERT INTO public.games VALUES (46, 30, 1);
INSERT INTO public.games VALUES (47, 30, 1);
INSERT INTO public.games VALUES (41, 30, 288);
INSERT INTO public.games VALUES (49, 32, 1);
INSERT INTO public.games VALUES (51, 33, 1);
INSERT INTO public.games VALUES (50, 33, 191);
INSERT INTO public.games VALUES (52, 32, 1);
INSERT INTO public.games VALUES (53, 32, 1);
INSERT INTO public.games VALUES (54, 32, 1);
INSERT INTO public.games VALUES (48, 32, 945);
INSERT INTO public.games VALUES (56, 34, 1);
INSERT INTO public.games VALUES (58, 35, 1);
INSERT INTO public.games VALUES (57, 35, 966);
INSERT INTO public.games VALUES (59, 34, 1);
INSERT INTO public.games VALUES (60, 34, 1);
INSERT INTO public.games VALUES (61, 34, 1);
INSERT INTO public.games VALUES (55, 34, 50);
INSERT INTO public.games VALUES (63, 36, 1);
INSERT INTO public.games VALUES (65, 37, 1);
INSERT INTO public.games VALUES (64, 37, 810);
INSERT INTO public.games VALUES (66, 36, 1);
INSERT INTO public.games VALUES (67, 36, 1);
INSERT INTO public.games VALUES (68, 36, 1);
INSERT INTO public.games VALUES (62, 36, 567);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (24, 'user_1789408945664');
INSERT INTO public.users VALUES (25, 'user_1789408945663');
INSERT INTO public.users VALUES (26, 'user_1789409077774');
INSERT INTO public.users VALUES (27, 'user_1789409077773');
INSERT INTO public.users VALUES (28, 'user_1789409100972');
INSERT INTO public.users VALUES (29, 'user_1789409100971');
INSERT INTO public.users VALUES (30, 'user_1789409125975');
INSERT INTO public.users VALUES (31, 'user_1789409125974');
INSERT INTO public.users VALUES (32, 'user_1789409152084');
INSERT INTO public.users VALUES (33, 'user_1789409152083');
INSERT INTO public.users VALUES (34, 'user_1789409204638');
INSERT INTO public.users VALUES (35, 'user_1789409204637');
INSERT INTO public.users VALUES (36, 'user_1789409238310');
INSERT INTO public.users VALUES (37, 'user_1789409238309');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 68, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 37, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

