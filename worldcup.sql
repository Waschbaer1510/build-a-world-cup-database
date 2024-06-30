--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(40) NOT NULL,
    year integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 25, 26, 4, 2, 'Final', 2018);
INSERT INTO public.games VALUES (34, 27, 28, 2, 0, 'Third Place', 2018);
INSERT INTO public.games VALUES (35, 26, 28, 2, 1, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (36, 25, 27, 1, 0, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (37, 26, 29, 3, 2, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (38, 28, 30, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (39, 27, 31, 2, 1, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (40, 25, 32, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (41, 28, 33, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (42, 30, 34, 1, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (43, 27, 35, 3, 2, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (44, 31, 36, 2, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (45, 26, 37, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (46, 29, 38, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (47, 32, 39, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (48, 25, 40, 4, 3, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (49, 41, 40, 1, 0, 'Final', 2014);
INSERT INTO public.games VALUES (50, 42, 31, 3, 0, 'Third Place', 2014);
INSERT INTO public.games VALUES (51, 40, 42, 1, 0, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (52, 41, 31, 7, 1, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (53, 42, 43, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (54, 40, 27, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (55, 31, 33, 2, 1, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (56, 41, 25, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (57, 31, 44, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (58, 33, 32, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (59, 25, 45, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (60, 41, 46, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (61, 42, 36, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (62, 43, 47, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (63, 40, 34, 1, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (64, 27, 48, 2, 1, 'Eighth-Final', 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (25, 'France');
INSERT INTO public.teams VALUES (26, 'Croatia');
INSERT INTO public.teams VALUES (27, 'Belgium');
INSERT INTO public.teams VALUES (28, 'England');
INSERT INTO public.teams VALUES (29, 'Russia');
INSERT INTO public.teams VALUES (30, 'Sweden');
INSERT INTO public.teams VALUES (31, 'Brazil');
INSERT INTO public.teams VALUES (32, 'Uruguay');
INSERT INTO public.teams VALUES (33, 'Colombia');
INSERT INTO public.teams VALUES (34, 'Switzerland');
INSERT INTO public.teams VALUES (35, 'Japan');
INSERT INTO public.teams VALUES (36, 'Mexico');
INSERT INTO public.teams VALUES (37, 'Denmark');
INSERT INTO public.teams VALUES (38, 'Spain');
INSERT INTO public.teams VALUES (39, 'Portugal');
INSERT INTO public.teams VALUES (40, 'Argentina');
INSERT INTO public.teams VALUES (41, 'Germany');
INSERT INTO public.teams VALUES (42, 'Netherlands');
INSERT INTO public.teams VALUES (43, 'Costa Rica');
INSERT INTO public.teams VALUES (44, 'Chile');
INSERT INTO public.teams VALUES (45, 'Nigeria');
INSERT INTO public.teams VALUES (46, 'Algeria');
INSERT INTO public.teams VALUES (47, 'Greece');
INSERT INTO public.teams VALUES (48, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

