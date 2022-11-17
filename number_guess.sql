--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL,
    games_played integer,
    best_game integer DEFAULT 99999
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1668700848411', NULL, NULL);
INSERT INTO public.users VALUES (2, 'user_1668700848410', NULL, NULL);
INSERT INTO public.users VALUES (3, 'user_1668701627732', NULL, NULL);
INSERT INTO public.users VALUES (4, 'user_1668701627731', NULL, NULL);
INSERT INTO public.users VALUES (5, 'user_1668702043355', NULL, NULL);
INSERT INTO public.users VALUES (6, 'user_1668702043354', NULL, NULL);
INSERT INTO public.users VALUES (7, 'user_1668702154488', NULL, NULL);
INSERT INTO public.users VALUES (8, 'user_1668702154487', NULL, NULL);
INSERT INTO public.users VALUES (9, 'user_1668702598038', NULL, NULL);
INSERT INTO public.users VALUES (10, 'user_1668702598037', NULL, NULL);
INSERT INTO public.users VALUES (11, 'Pat', NULL, NULL);
INSERT INTO public.users VALUES (13, 'user_1668703380521', NULL, NULL);
INSERT INTO public.users VALUES (14, 'user_1668703380520', NULL, NULL);
INSERT INTO public.users VALUES (15, 'user_1668703433068', NULL, NULL);
INSERT INTO public.users VALUES (16, 'user_1668703433067', NULL, NULL);
INSERT INTO public.users VALUES (17, 'p', NULL, NULL);
INSERT INTO public.users VALUES (18, 'f', NULL, NULL);
INSERT INTO public.users VALUES (19, 't', NULL, NULL);
INSERT INTO public.users VALUES (20, 'q', NULL, NULL);
INSERT INTO public.users VALUES (21, 'user_1668703956389', NULL, NULL);
INSERT INTO public.users VALUES (22, 'user_1668703956388', NULL, NULL);
INSERT INTO public.users VALUES (23, 'user_1668704966640', NULL, 99999);
INSERT INTO public.users VALUES (24, 'user_1668704966639', NULL, 99999);
INSERT INTO public.users VALUES (25, 'user_1668705144767', NULL, 99999);
INSERT INTO public.users VALUES (26, 'user_1668705144766', NULL, 99999);
INSERT INTO public.users VALUES (12, 'pat', 1, 10);
INSERT INTO public.users VALUES (29, 'user_1668705931616', 2, 590);
INSERT INTO public.users VALUES (28, 'user_1668705931617', 5, 69);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


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
-- PostgreSQL database dump complete
--

