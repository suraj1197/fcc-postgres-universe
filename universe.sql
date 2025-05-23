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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    distance_from_earth numeric
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
    name character varying(30) NOT NULL,
    description text,
    age integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    age integer,
    distance_from_earth numeric,
    has_life boolean,
    moon_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    age integer,
    distance_from_earth numeric,
    has_life boolean,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    age integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer,
    star_id integer NOT NULL
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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Ursa Major', 'Known as the Great Bear, contains the Big Dipper asterism.', 10, 80);
INSERT INTO public.constellation VALUES (2, 'Cassiopeia', 'Shaped like a “W”, named after a vain queen in Greek mythology.', 10, 228);
INSERT INTO public.constellation VALUES (3, 'Scorpius', 'Resembles a scorpion, visible in the southern sky.', 7, 570);
INSERT INTO public.constellation VALUES (4, 'Lyra', 'Small constellation, contains the bright star Vega.', 8, 25);
INSERT INTO public.constellation VALUES (5, 'Cygnus', 'Also known as the Northern Cross, represents a swan.', 10, 1400);
INSERT INTO public.constellation VALUES (6, 'Taurus', 'Represents a bull, contains the Hyades and Pleiades star clusters.', 9, 444);
INSERT INTO public.constellation VALUES (7, 'Leo', 'Shaped like a lion, one of the zodiac constellations.', 9, 79);
INSERT INTO public.constellation VALUES (8, 'Andromeda', 'Named after the princess in Greek mythology, contains the Andromeda Galaxy.', 10, 2500000);
INSERT INTO public.constellation VALUES (9, 'Pegasus', 'Represents the winged horse, features the Great Square.', 8, 1000);
INSERT INTO public.constellation VALUES (10, 'Sagittarius', 'Shaped like a teapot, home to the center of the Milky Way.', 8, 26500);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Our home galaxy', 14, 0, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 'Nearest major galaxy to the Milky Way', 10, 2537000, 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 'A small spiral galaxy near Andromeda', 12, 3000000, 3);
INSERT INTO public.galaxy VALUES ('Whirlpool', 'Spiral galaxy with a companion galaxy', 10, 23000000, 4);
INSERT INTO public.galaxy VALUES ('Sombrero', 'Galaxy with a bright nucleus and halo', 13, 31100000, 5);
INSERT INTO public.galaxy VALUES ('Large Magellanic', 'A satellite galaxy of the Milky Way', 13, 163000, 6);
INSERT INTO public.galaxy VALUES ('Small Magellanic', 'Smaller satellite of the Milky Way', 13, 200000, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 'Only natural satellite of Earth', 5, 0, false, 1);
INSERT INTO public.moon VALUES ('Europa', 1, 'Icy moon that may have subsurface ocean', 5, 0, false, 2);
INSERT INTO public.moon VALUES ('Phobos', 2, 'Irregularly shaped Martian moon', 4, 0, false, 3);
INSERT INTO public.moon VALUES ('Deimos', 2, 'Smaller Martian moon', 4, 0, false, 4);
INSERT INTO public.moon VALUES ('Ishtar', 3, 'Hypothetical moon of Venus (fictional)', 1, 0, false, 5);
INSERT INTO public.moon VALUES ('Proxima-b-I', 4, 'Moon orbiting Proxima b', 4, 4.24, false, 6);
INSERT INTO public.moon VALUES ('Proxima-b-II', 4, 'Small rocky moon', 4, 4.24, false, 7);
INSERT INTO public.moon VALUES ('Alpha-Cen-Ba', 5, 'Moon of Alpha Cen Bb', 5, 4.37, false, 8);
INSERT INTO public.moon VALUES ('Andromeda-M1', 6, 'Ice moon in Andromeda system', 2, 2537100, false, 9);
INSERT INTO public.moon VALUES ('Andromeda-M2', 6, 'Dusty moon with thin atmosphere', 2, 2537100, false, 10);
INSERT INTO public.moon VALUES ('Andromeda-M3', 7, 'Rocky moon', 1, 2537100, false, 11);
INSERT INTO public.moon VALUES ('Triangulum-M1', 8, 'Frozen outer moon', 6, 3000200, false, 12);
INSERT INTO public.moon VALUES ('Triangulum-M2', 9, 'Warmer inner moon', 6, 3000200, false, 13);
INSERT INTO public.moon VALUES ('Whirlpool-M1', 10, 'Recently formed small moon', 0, 23000050, false, 14);
INSERT INTO public.moon VALUES ('Whirlpool-M2', 10, 'Companion moon to Whirlpool-X1', 0, 23000050, false, 15);
INSERT INTO public.moon VALUES ('Sombrero-M1', 11, 'Large gas moon', 9, 31100300, false, 16);
INSERT INTO public.moon VALUES ('Sombrero-M2', 11, 'Icy moon with geysers', 9, 31100300, false, 17);
INSERT INTO public.moon VALUES ('Eden-Moon-1', 12, 'Habitable moon with atmosphere', 9, 31100300, true, 18);
INSERT INTO public.moon VALUES ('Eden-Moon-2', 12, 'Twin moon with liquid surface', 9, 31100300, true, 19);
INSERT INTO public.moon VALUES ('Eden-Moon-3', 12, 'Rocky desert moon', 9, 31100300, false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 'Habitable planet with life', 5, 0, true, 1);
INSERT INTO public.planet VALUES ('Mars', 1, 'Dry, cold desert planet', 5, 0, false, 2);
INSERT INTO public.planet VALUES ('Venus', 1, 'Hot planet with thick toxic atmosphere', 5, 0, false, 3);
INSERT INTO public.planet VALUES ('Proxima b', 2, 'Earth-sized exoplanet', 5, 4.24, false, 4);
INSERT INTO public.planet VALUES ('Alpha Cen Bb', 3, 'Close-in planet in Alpha Centauri B', 5, 4.37, false, 5);
INSERT INTO public.planet VALUES ('Andromeda-1b', 4, 'Giant gas planet in Andromeda', 2, 2537100, false, 6);
INSERT INTO public.planet VALUES ('Andromeda-1c', 4, 'Rocky planet possibly with water', 2, 2537100, false, 7);
INSERT INTO public.planet VALUES ('Triangulum-1a', 5, 'Frozen planet orbiting far from star', 6, 3000200, false, 8);
INSERT INTO public.planet VALUES ('Triangulum-1b', 5, 'Warm planet with thick atmosphere', 6, 3000200, false, 9);
INSERT INTO public.planet VALUES ('Whirlpool-X1', 6, 'Hot gas planet formed after a nova', 0, 23000050, false, 10);
INSERT INTO public.planet VALUES ('Sombrero-Prime', 7, 'Large ringed planet', 10, 31100300, false, 11);
INSERT INTO public.planet VALUES ('Sombrero-Eden', 7, 'Rocky planet, possibly life-bearing', 9, 31100300, true, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'Star at the center of our solar system', 5, 0, true, true, 1, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 'Nearest star outside the Solar System', 5, 4.24, false, true, 1, 2);
INSERT INTO public.star VALUES ('Alpha Centauri A', 'Part of a triple star system', 5, 4.37, false, true, 1, 3);
INSERT INTO public.star VALUES ('Andromeda Star 1', 'Bright giant in Andromeda Galaxy', 6, 2537100, false, true, 2, 4);
INSERT INTO public.star VALUES ('Triangulum Star A', 'Main sequence star in Triangulum', 7, 3000200, false, true, 3, 5);
INSERT INTO public.star VALUES ('Whirlpool Nova', 'A recent nova observed in Whirlpool', 0, 23000050, false, false, 4, 6);
INSERT INTO public.star VALUES ('Sombrero Star X', 'Ancient star near the galactic core', 10, 31100300, false, true, 5, 7);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 10, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

