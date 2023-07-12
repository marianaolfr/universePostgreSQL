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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: colors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.colors (
    colors_id integer NOT NULL,
    name character varying(20) NOT NULL,
    my_opinion character varying(10)
);


ALTER TABLE public.colors OWNER TO freecodecamp;

--
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_id_seq OWNER TO freecodecamp;

--
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.colors_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years_of_existence numeric,
    number_of_visit_by_humans integer NOT NULL,
    distance_of_us numeric NOT NULL,
    description text,
    is_it_possible_to_visit boolean NOT NULL,
    do_i_want_to_visit boolean NOT NULL,
    my_opinion character varying(10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years_of_existence integer,
    number_of_visit_by_humans integer NOT NULL,
    distance_of_us numeric NOT NULL,
    description text,
    is_it_possible_to_visit boolean NOT NULL,
    do_i_want_to_visit boolean NOT NULL,
    planet_id integer,
    my_opinion character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years_of_existence integer,
    number_of_visit_by_humans integer NOT NULL,
    distance_of_us numeric NOT NULL,
    description text,
    is_it_possible_to_visit boolean NOT NULL,
    do_i_want_to_visit boolean NOT NULL,
    star_id integer,
    colors_id integer NOT NULL,
    my_opinion character varying(10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years_of_existence integer,
    number_of_visit_by_humans integer NOT NULL,
    distance_of_us numeric NOT NULL,
    description text,
    is_it_possible_to_visit boolean NOT NULL,
    do_i_want_to_visit boolean NOT NULL,
    galaxy_id integer,
    my_opinion character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: colors colors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colors ALTER COLUMN colors_id SET DEFAULT nextval('public.colors_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.colors VALUES (1, 'Yellow', NULL);
INSERT INTO public.colors VALUES (2, 'Red', NULL);
INSERT INTO public.colors VALUES (3, 'Blue', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Andromeda', 10010000000000000, 0, 2537000, 'Andromeda, which is shortened from "Andromeda Galaxy", gts its name from the area of the sky in which it appears, the constellation of Andromeda.', false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 13610000000000000, 1, 0, 'The galaxy containing the Sun and its Solar System, and therefore Earth', true, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Needle', 13240000000000000, 0, 38490000, 'Named due to its slender', false, true, NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 13610000000000000, 1, 0, 'The galaxy containing the Sun and its Solar System, and therefore Ear4th', true, true, NULL);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 13610000000000000, 1, 0, 'The galaxy containing the Sun and its Solar System, and therefore Ear45th', true, true, NULL);
INSERT INTO public.galaxy VALUES (9, 'Milky Way', 13610000000000000, 1, 0, 'The galaxy containing the Sun and its Solar System, and therefore Ear456th', true, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 45300000, 13, 384400, 'I love her', true, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Fobos', 46000000, 0, 77790000, 'Its gonna die soon', false, false, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Titã', 100000000, 0, 759000, 'Its Saturn largest moon', false, false, 3, NULL);
INSERT INTO public.moon VALUES (4, 'a', 1, 1, 2, 'Tired', false, false, 1, NULL);
INSERT INTO public.moon VALUES (5, 'a', 1, 1, 2, 'Calm', false, false, 1, NULL);
INSERT INTO public.moon VALUES (6, 'a', 1, 1, 2, 'e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (7, 'a', 1, 1, 2, 'fe', false, false, 1, NULL);
INSERT INTO public.moon VALUES (8, 'a', 1, 1, 2, '5e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (9, 'a', 1, 1, 2, '6e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (10, 'a', 1, 1, 2, '67e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (11, 'a', 1, 1, 2, '687e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (12, 'a', 1, 1, 2, '6897e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (13, 'a', 1, 1, 2, '689710e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (14, 'a', 1, 1, 2, '68119710e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (15, 'a', 1, 1, 2, '6811971012e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (16, 'a', 1, 1, 2, '681197101213e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (17, 'a', 1, 1, 2, '68119710121143e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (18, 'a', 1, 1, 2, '6811971012114153e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (19, 'a', 1, 1, 2, '681197101211415316e', false, false, 1, NULL);
INSERT INTO public.moon VALUES (20, 'a', 1, 1, 2, '68119710121141517316e', false, false, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4543000, 1, 0, 'We live innit', true, true, 3, 3, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 4603000, 0, 1400000, 'We want it', false, false, 3, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Saturn', 4600000, 0, 887000000, 'Many rings', false, true, 3, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Ms', 4603000, 0, 1400000, 'Wt', false, false, 3, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 4600000, 0, 887000000, '4s', false, true, 3, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Ms', 4603000, 0, 1400000, 'Wt', false, false, 3, 2, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', 4600000, 0, 887000000, '4s7', false, true, 3, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Ms', 4603000, 0, 1400000, 'Wt', false, false, 3, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Saturn', 4600000, 0, 887000000, '4s79', false, true, 3, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Ms', 4603000, 0, 1400000, 'Wt', false, false, 3, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Saturn', 4600000, 0, 887000000, '4s7911', false, true, 3, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Ms', 4603000, 0, 1400000, 'Wt', false, false, 3, 2, NULL);
INSERT INTO public.planet VALUES (13, 'Saturn', 4600000, 0, 887000000, '4s79113', false, true, 3, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 60000000, 0, 98.87, 'I a binary star with an apparent magnitude of +2.06. It is a hot blue star.', false, true, 4, NULL);
INSERT INTO public.star VALUES (2, 'Many of them Star', 0, 0, 1, 'There aretrillions of them. we dont have information about a single one', false, false, 6, NULL);
INSERT INTO public.star VALUES (3, 'Sun', 10, 800000000, 0, 'ITS THE F SUN', false, false, 5, NULL);
INSERT INTO public.star VALUES (4, '4Many of them Star', 0, 0, 1, 'There aretrillions of them. we dont have information about a single one', false, false, 6, NULL);
INSERT INTO public.star VALUES (5, '4Many of them Star', 0, 0, 1, 'There aretrillions of them. we dont have information about a single one5', false, false, 6, NULL);
INSERT INTO public.star VALUES (6, '4Many of them Star', 0, 0, 1, 'There aretrillions of them. we dont have information about a single one65', false, false, 6, NULL);


--
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.colors_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: colors colors_my_opinion_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_my_opinion_key UNIQUE (my_opinion);


--
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (colors_id);


--
-- Name: galaxy galaxy_my_opinion_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_my_opinion_key UNIQUE (my_opinion);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_my_opinion_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_my_opinion_key UNIQUE (my_opinion);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_my_opinion_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_my_opinion_key UNIQUE (my_opinion);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_my_opinion_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_my_opinion_key UNIQUE (my_opinion);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_colors; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_colors FOREIGN KEY (colors_id) REFERENCES public.colors(colors_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

