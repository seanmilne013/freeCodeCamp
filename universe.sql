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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_billions_of_years numeric,
    has_life boolean
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
    name character varying(50) NOT NULL,
    fun_fact text,
    number_of_rings integer,
    planet_id integer
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
    name character varying(50) NOT NULL,
    planet_type text,
    is_spherical boolean,
    number_of_moons integer,
    distance_from_sun character varying(30),
    number_of_rings integer,
    star_id integer
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
    name character varying(50) NOT NULL,
    star_type character varying(30),
    in_constellation character varying(50),
    spectral_type character varying(30),
    galaxy_id integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 10);
INSERT INTO public.constellation VALUES (2, 'Virgo', 15);
INSERT INTO public.constellation VALUES (3, 'Bootes', 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy where our Solar System is located', 13.61, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 81', 'A grand design spiral galaxy, in the Ursa Major constellation.', 13.31, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Among the brightest of the Messier objects.', 10.01, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 82', 'A starburst galaxy in the Ursa Major constellation.', 13.3, false);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 'A relatively isolated spiral galaxy in the Coma Berenices constellation', 13.28, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'A peculiar galaxy of unclear classification', 13.25, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth"s Moon', 'Has had 24 human visitors.', 0, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 'A small and lumpy, heavily cratered object', 0, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Will crash into Mars eventually', 0, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanically active', 0, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Most promising place to find environment suitable for life.', 0, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in our solar system', 0, 5);
INSERT INTO public.moon VALUES (7, 'Enceladus ', 'Has the whitest, most reflective surface in our solar system.', 1, 6);
INSERT INTO public.moon VALUES (8, 'Titan', 'Has liquid in the form of rivers, lakes, and seas.', 0, 6);
INSERT INTO public.moon VALUES (9, 'Ariel', 'Discovered by a guy who made a fortune brewing beer', 0, 7);
INSERT INTO public.moon VALUES (10, 'Oberon', '2nd largest moon of Uranus', 0, 7);
INSERT INTO public.moon VALUES (11, 'Puck', 'Named after a mischeivous sprite from a Shakespeare story', 0, 7);
INSERT INTO public.moon VALUES (12, 'Triton', 'Orbits in the opposite direction of the planet"s rotation', 0, 8);
INSERT INTO public.moon VALUES (13, 'Proteus', 'Has an odd box-like shape', 0, 8);
INSERT INTO public.moon VALUES (14, 'Charon', 'The same surfaces of Charon and Pluto always face each other', 0, 9);
INSERT INTO public.moon VALUES (15, 'Hydra', 'Named after nine-headed serpent that Hercules fought', 0, 9);
INSERT INTO public.moon VALUES (16, 'Styx', 'There is also a rock band named Styx', 0, 9);
INSERT INTO public.moon VALUES (17, 'Callisto', 'Most heavily crated object in our solar system', 0, 5);
INSERT INTO public.moon VALUES (18, 'Dione', 'Average temperature is -186 Celcius.', 0, 6);
INSERT INTO public.moon VALUES (19, 'Epimetheus', 'Potato-shaped.', 0, 6);
INSERT INTO public.moon VALUES (20, 'Iapetus', 'Discovered in 1671', 0, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', true, 0, '47.575 million km', 0, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', true, 0, '107.9 million km', 0, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, 1, '149.3 million km', 0, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', true, 2, '218.7 million km', 0, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf', true, 5, '5.179 billion km', 0, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neputian', true, 14, '4.475 billion km', 5, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Neputian', true, 27, '2.812 billion km', 13, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', true, 80, '741 million km', 4, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', true, 83, '1.474 billion km', 7, 7);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Dwarf', true, 0, '382 billion km', 0, 7);
INSERT INTO public.planet VALUES (11, 'Makemake', 'Dwarf', true, 1, '6.85 trillion km', 0, 7);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Dwarf', false, 2, '6.45 trillion km', 0, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Epsilon Eridani', 'Solar Analog', 'Eridanus', 'K2V', 1);
INSERT INTO public.star VALUES (2, 'Spica', 'Hot Blue Star', 'Virgo', 'B1V', 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Red Dwarf Star', 'Centaurus', 'M5.5ve', 1);
INSERT INTO public.star VALUES (4, 'Arcturus', 'Red Giant Star', 'Bootes', 'K1.5 ||| FE-0.5', 1);
INSERT INTO public.star VALUES (5, 'Sirius B', 'White Dwarf Star', 'Canis Major', 'DA2', 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Red Super Giant Stat', 'Orion', 'M1-2', 1);
INSERT INTO public.star VALUES (7, 'The Sun', 'Solar Analog', '', 'G2V', 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 5, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: constellation constellation_id_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_id_pk PRIMARY KEY (constellation_id);


--
-- Name: constellation constellation_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

