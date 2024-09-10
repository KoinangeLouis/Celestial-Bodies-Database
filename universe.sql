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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    other_relevant_info text
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_million_of_years numeric,
    galaxy_type text NOT NULL,
    size integer NOT NULL
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
    name character varying(100) NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth bigint NOT NULL,
    size integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth bigint NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    stellar_size integer NOT NULL,
    distance_from_earth integer NOT NULL,
    size integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'Milky Way Galaxy', 'A barred spiral galaxy that contains our solar system.', 'Estimated to be 100,000 light-years in diameter.');
INSERT INTO public.description VALUES (2, 'Proxima Centauri', 'The closest known star to the Sun, part of the Alpha Centauri star system.', 'Has a potentially habitable exoplanet, Proxima Centauri b.');
INSERT INTO public.description VALUES (3, 'Ganymede', 'The largest moon of Jupiter and the largest moon in the solar system.', 'Has a magnetic field and might have an underground ocean.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Spiral', 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Spiral', 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 'Spiral', 60000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 5000, 'Spiral', 76000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9000, 'Elliptical', 49000);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic', 13000, 'Irregular', 14000);
INSERT INTO public.galaxy VALUES (7, 'Small Magellanic', 13600, 'Irregular', 7000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 384400, 3474, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', true, 9380, 22, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', true, 23460, 12, 2);
INSERT INTO public.moon VALUES (4, 'Io', true, 628356000, 3643, 4);
INSERT INTO public.moon VALUES (5, 'Europa', true, 628356000, 3121, 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 628356000, 5262, 4);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 628356000, 4820, 4);
INSERT INTO public.moon VALUES (8, 'Proxima Centauri c', false, 40100000000, 180, 5);
INSERT INTO public.moon VALUES (9, 'Kepler-442b Moon 1', true, 1120000000000, 3200, 6);
INSERT INTO public.moon VALUES (10, 'Kepler-442b Moon 2', false, 1120000000000, 1800, 6);
INSERT INTO public.moon VALUES (11, 'Rigel d Moon 1', true, 860000000000, 2600, 8);
INSERT INTO public.moon VALUES (12, 'Vega b Moon 1', true, 250400000000, 2100, 11);
INSERT INTO public.moon VALUES (13, 'GJ 1214b Moon 1', false, 1300000000000, 1200, 12);
INSERT INTO public.moon VALUES (14, 'GJ 1214b Moon 2', true, 1300000000000, 3800, 12);
INSERT INTO public.moon VALUES (15, 'HD 209458b Moon 1', false, 1500000000000, 1500, 13);
INSERT INTO public.moon VALUES (16, 'Titan', true, 1275000000, 5150, 4);
INSERT INTO public.moon VALUES (17, 'Enceladus', true, 1275000000, 504, 4);
INSERT INTO public.moon VALUES (18, 'Miranda', true, 2550000000, 471, 4);
INSERT INTO public.moon VALUES (19, 'Oberon', true, 2870000000, 1523, 4);
INSERT INTO public.moon VALUES (20, 'Triton', true, 4347500000, 2706, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4, true, 0, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4, false, 225000000, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 4, false, 42000000, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 4, false, 628000000, 1);
INSERT INTO public.planet VALUES (5, 'Proxima Centauri b', 4, false, 40100000000, 3);
INSERT INTO public.planet VALUES (6, 'Kepler-442b', 5, false, 1120000000000, 2);
INSERT INTO public.planet VALUES (7, 'Andromeda c', 6, false, 2537000000000, 6);
INSERT INTO public.planet VALUES (8, 'Rigel d', 3, false, 850000000000, 4);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 6, false, 1400000000000, 2);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 7, false, 40000000000, 5);
INSERT INTO public.planet VALUES (11, 'Vega b', 4, false, 250400000000, 5);
INSERT INTO public.planet VALUES (12, 'GJ 1214b', 6, false, 1300000000000, 3);
INSERT INTO public.planet VALUES (13, 'HD 209458b', 7, false, 1500000000000, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0, 1, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 887, 642, 20, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 0, 4, 0, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 78, 860, 21, 2);
INSERT INTO public.star VALUES (5, 'Vega', 2, 25, 2, 1);
INSERT INTO public.star VALUES (6, 'Andromeda A', 20, 2537000, 7, 2);
INSERT INTO public.star VALUES (7, 'Triangulum B', 10, 300000, 4, 3);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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
-- Name: star fkey_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkey_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fkey_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fkey_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkey_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkey_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

