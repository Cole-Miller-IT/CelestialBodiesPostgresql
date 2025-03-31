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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    spin integer,
    axis numeric,
    description text,
    habitable boolean,
    inhabited boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    spin integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: persons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.persons (
    persons_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    weight integer
);


ALTER TABLE public.persons OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    spin integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    spin integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way 1', 100, 1, 1, 'Galaxy 1', true, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way 2', 100, 1, 1, 'Galaxy 1', true, true);
INSERT INTO public.galaxy VALUES (3, 'Milky Way 3', 100, 1, 1, 'Galaxy 1', true, true);
INSERT INTO public.galaxy VALUES (4, 'Milky Way 4', 100, 1, 1, 'Galaxy 1', true, true);
INSERT INTO public.galaxy VALUES (5, 'Milky Way 5', 100, 1, 1, 'Galaxy 1', true, true);
INSERT INTO public.galaxy VALUES (6, 'Milky Way 6', 100, 1, 1, 'Galaxy 1', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 100, 20, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 100, 20, 1);
INSERT INTO public.moon VALUES (3, 'Moon 3', 100, 20, 1);
INSERT INTO public.moon VALUES (4, 'Moon 4', 100, 10, 1);
INSERT INTO public.moon VALUES (5, 'Moon 5', 100, 10, 1);
INSERT INTO public.moon VALUES (6, 'Moon 6', 100, 10, 1);
INSERT INTO public.moon VALUES (7, 'Moon 7', 100, 10, 1);
INSERT INTO public.moon VALUES (8, 'Moon 8', 100, 10, 1);
INSERT INTO public.moon VALUES (9, 'Moon 9', 100, 10, 1);
INSERT INTO public.moon VALUES (10, 'Moon 10', 100, 10, 1);
INSERT INTO public.moon VALUES (11, 'Moon 11', 100, 10, 1);
INSERT INTO public.moon VALUES (12, 'Moon 12', 100, 10, 1);
INSERT INTO public.moon VALUES (13, 'Moon 13', 100, 10, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 100, 10, 1);
INSERT INTO public.moon VALUES (15, 'Moon 15', 100, 10, 1);
INSERT INTO public.moon VALUES (16, 'Moon 16', 100, 10, 1);
INSERT INTO public.moon VALUES (17, 'Moon 17', 100, 10, 1);
INSERT INTO public.moon VALUES (18, 'Moon 18', 100, 10, 1);
INSERT INTO public.moon VALUES (19, 'Moon 19', 100, 10, 1);
INSERT INTO public.moon VALUES (20, 'Moon 20', 100, 10, 1);


--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.persons VALUES (1, 'Cole 1', 100, 100);
INSERT INTO public.persons VALUES (2, 'Cole 2', 100, 100);
INSERT INTO public.persons VALUES (3, 'Cole 3', 100, 100);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth 1', 100, 20, 1);
INSERT INTO public.planet VALUES (2, 'Earth 2', 100, 10, 1);
INSERT INTO public.planet VALUES (3, 'Earth 3', 100, 10, 1);
INSERT INTO public.planet VALUES (4, 'Earth 4', 100, 10, 1);
INSERT INTO public.planet VALUES (5, 'Earth 5', 100, 10, 1);
INSERT INTO public.planet VALUES (6, 'Earth 6', 100, 10, 1);
INSERT INTO public.planet VALUES (7, 'Earth 7', 100, 10, 1);
INSERT INTO public.planet VALUES (8, 'Earth 8', 100, 10, 1);
INSERT INTO public.planet VALUES (9, 'Earth 9', 100, 10, 1);
INSERT INTO public.planet VALUES (10, 'Earth 10', 100, 10, 1);
INSERT INTO public.planet VALUES (11, 'Earth 11', 100, 10, 1);
INSERT INTO public.planet VALUES (12, 'Earth 12', 100, 10, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun 1', 100, 10, 1);
INSERT INTO public.star VALUES (2, 'Sun 2', 100, 10, 1);
INSERT INTO public.star VALUES (3, 'Sun 3', 100, 10, 1);
INSERT INTO public.star VALUES (4, 'Sun 4', 100, 10, 1);
INSERT INTO public.star VALUES (5, 'Sun 5', 100, 10, 1);
INSERT INTO public.star VALUES (6, 'Sun 6', 100, 10, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: persons persons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_name_key UNIQUE (name);


--
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (persons_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

