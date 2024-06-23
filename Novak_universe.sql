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
    constellation_name character varying(20) NOT NULL,
    visibility_month character varying(20) NOT NULL,
    grecoroman_ancient_origin boolean NOT NULL,
    attributed_to text NOT NULL
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
    galaxy_name character varying(20) NOT NULL,
    galaxy_type character varying(20) NOT NULL,
    constellation_id integer NOT NULL,
    galaxy_earth_distance_ly integer NOT NULL,
    blackholes boolean NOT NULL,
    active_blackhole boolean NOT NULL,
    blackhole_mass_suns integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_constellation_id_seq OWNED BY public.galaxy.constellation_id;


--
-- Name: galaxy_galaxy_earth_distance_ly_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_earth_distance_ly_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_earth_distance_ly_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_earth_distance_ly_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_earth_distance_ly_seq OWNED BY public.galaxy.galaxy_earth_distance_ly;


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
    moon_name character varying(20) NOT NULL,
    moon_planet character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    solar_system boolean NOT NULL,
    temperature_k integer
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(20) NOT NULL,
    planet_composition character varying(20) NOT NULL,
    star_name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    solar_system boolean NOT NULL,
    potentially_habitable boolean NOT NULL,
    moons integer NOT NULL,
    orbital_days numeric NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moons_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_moons_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_moons_seq OWNER TO freecodecamp;

--
-- Name: planet_moons_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_moons_seq OWNED BY public.planet.moons;


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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(20) NOT NULL,
    star_type character varying(20) NOT NULL,
    star_location text NOT NULL,
    galaxy_id integer NOT NULL,
    star_luminosity_lsun numeric NOT NULL,
    star_temperature_k integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: star_star_temperature_k_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_temperature_k_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_temperature_k_seq OWNER TO freecodecamp;

--
-- Name: star_star_temperature_k_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_temperature_k_seq OWNED BY public.star.star_temperature_k;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN constellation_id SET DEFAULT nextval('public.galaxy_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_earth_distance_ly; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_earth_distance_ly SET DEFAULT nextval('public.galaxy_galaxy_earth_distance_ly_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: planet moons; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN moons SET DEFAULT nextval('public.planet_moons_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star star_temperature_k; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_temperature_k SET DEFAULT nextval('public.star_star_temperature_k_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'leo', 'april', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (2, 'sagittarius', 'august', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (3, 'cetus', 'november', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (4, 'libra', 'june', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (5, 'pegasus', 'october', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (6, 'andromeda', 'november', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (7, 'virgo', 'may', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (8, 'canes venaciti', 'may', false, 'Johannes Hevelius');
INSERT INTO public.constellation VALUES (9, 'ursa major', 'april', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (10, 'pavo', 'august', false, 'Pieter Keyser and Frederick de Houtman');
INSERT INTO public.constellation VALUES (11, 'cygnus', 'september', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (12, 'perseus', 'december', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (13, 'sextans', 'april', false, 'Johannes Hevelius');
INSERT INTO public.constellation VALUES (14, 'coma berenices', 'may', true, 'Ptolemy');
INSERT INTO public.constellation VALUES (15, 'aquarius', 'october', true, 'Ptolemy');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 2, 25881, true, true, 4000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 6, 2537000, true, true, 4000000);
INSERT INTO public.galaxy VALUES (3, 'Fireworks', 'spiral', 11, 10000000, true, true, 25);
INSERT INTO public.galaxy VALUES (5, 'M81', 'spiral', 9, 11800000, true, true, 70000000);
INSERT INTO public.galaxy VALUES (6, 'NGC 2903', 'spiral', 1, 20500000, true, true, 9000000);
INSERT INTO public.galaxy VALUES (7, 'Hockey stick', 'spiral', 8, 30000000, false, false, NULL);
INSERT INTO public.galaxy VALUES (8, 'Whirlpool', 'spiral', 8, 31000000, false, false, NULL);
INSERT INTO public.galaxy VALUES (9, 'Sombrero', 'elliptical', 7, 31000000, true, true, 1000000000);
INSERT INTO public.galaxy VALUES (10, 'Perseus', 'lenticular', 12, 32000000, true, true, 60000000);
INSERT INTO public.galaxy VALUES (14, 'Spindle', 'lenticular', 13, 50000000, true, true, 1000000000);
INSERT INTO public.galaxy VALUES (11, 'M95', 'spiral', 1, 33000000, false, false, NULL);
INSERT INTO public.galaxy VALUES (12, 'Squid', 'spiral', 3, 47000000, true, false, NULL);
INSERT INTO public.galaxy VALUES (13, 'Caldwell 30', 'spiral', 5, 49000000, true, true, NULL);
INSERT INTO public.galaxy VALUES (15, 'M88', 'spiral', 14, 50000000, true, true, 1000000000);
INSERT INTO public.galaxy VALUES (17, 'NGC 4526', 'lenticular', 7, 55000000, true, true, 450000000);
INSERT INTO public.galaxy VALUES (18, 'M90', 'spiral', 7, 58700000, false, false, NULL);
INSERT INTO public.galaxy VALUES (19, 'M85', 'lenticular', 14, 60000000, true, true, 100000000);
INSERT INTO public.galaxy VALUES (20, 'Butterfly', 'spiral', 7, 62000000, false, false, NULL);
INSERT INTO public.galaxy VALUES (21, 'Vacuum cleaner', 'spiral', 9, 67200000, false, false, NULL);
INSERT INTO public.galaxy VALUES (22, 'Medusa merger', 'irregular', 9, 128000000, true, true, NULL);
INSERT INTO public.galaxy VALUES (23, 'Condor', 'spiral', 10, 212000000, false, false, NULL);
INSERT INTO public.galaxy VALUES (16, 'Virgo A', 'elliptical', 7, 53000000, true, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'earth', 3, true, 220);
INSERT INTO public.moon VALUES (2, 'io', 'jupiter', 5, true, 130);
INSERT INTO public.moon VALUES (3, 'europa', 'jupiter', 5, true, 102);
INSERT INTO public.moon VALUES (4, 'ganymede', 'jupiter', 5, true, 110);
INSERT INTO public.moon VALUES (5, 'callisto', 'jupiter', 5, true, 134);
INSERT INTO public.moon VALUES (6, 'mimas', 'saturn', 6, true, 64);
INSERT INTO public.moon VALUES (7, 'enceladus', 'saturn', 6, true, 75);
INSERT INTO public.moon VALUES (8, 'tethys', 'saturn', 6, true, 64);
INSERT INTO public.moon VALUES (9, 'dione', 'saturn', 6, true, 87);
INSERT INTO public.moon VALUES (10, 'rhea', 'saturn', 6, true, 76);
INSERT INTO public.moon VALUES (11, 'titan', 'saturn', 6, true, 94);
INSERT INTO public.moon VALUES (12, 'lapetus', 'saturn', 6, true, 130);
INSERT INTO public.moon VALUES (13, 'miranda', 'uranus', 7, true, 59);
INSERT INTO public.moon VALUES (14, 'ariel', 'uranus', 7, true, 58);
INSERT INTO public.moon VALUES (15, 'umbriel', 'uranus', 7, true, 61);
INSERT INTO public.moon VALUES (16, 'titania', 'uranus', 7, true, 60);
INSERT INTO public.moon VALUES (17, 'oberon', 'uranus', 7, true, 61);
INSERT INTO public.moon VALUES (18, 'triton', 'neptune', 8, true, 38);
INSERT INTO public.moon VALUES (19, 'charon', 'pluto', 9, true, 53);
INSERT INTO public.moon VALUES (20, 'hydra', 'pluto', 9, true, 23);
INSERT INTO public.moon VALUES (21, 'kepler 1625b I', 'kepler 1625b', 15, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 'terrestrial', 'sun', 1, true, false, 0, 87.96);
INSERT INTO public.planet VALUES (2, 'venus', 'terrestrial', 'sun', 1, true, true, 0, 224.7);
INSERT INTO public.planet VALUES (3, 'earth', 'terrestrial', 'sun', 1, true, true, 1, 365.25);
INSERT INTO public.planet VALUES (4, 'mars', 'terrestrial', 'sun', 1, true, false, 2, 686.97);
INSERT INTO public.planet VALUES (5, 'jupiter', 'gas', 'sun', 1, true, false, 95, 4332.59);
INSERT INTO public.planet VALUES (6, 'saturn', 'gas', 'sun', 1, true, false, 146, 10759.22);
INSERT INTO public.planet VALUES (7, 'uranus', 'ice', 'sun', 1, true, false, 28, 30688.5);
INSERT INTO public.planet VALUES (8, 'neptune', 'ice', 'sun', 1, true, false, 16, 60182);
INSERT INTO public.planet VALUES (9, 'pluto', 'terrestrial', 'sun', 1, true, false, 5, 247.00);
INSERT INTO public.planet VALUES (10, 'ceres', 'terrestrial', 'sun', 1, true, true, 0, 1678.63);
INSERT INTO public.planet VALUES (11, 'harriot', 'gas', 'copernicus', 10, false, false, 0, 260.00);
INSERT INTO public.planet VALUES (12, 'gliese 581c', 'unknown', 'gliese 581', 11, false, false, 0, 12.9);
INSERT INTO public.planet VALUES (13, 'trappist-1d', 'terrestrial', 'trappist-1', 9, false, true, 0, 4.05);
INSERT INTO public.planet VALUES (14, 'pollux b', 'unknown', 'pollux', 6, false, false, 0, 589.00);
INSERT INTO public.planet VALUES (15, 'kepler 1625b', 'gas', 'kepler 1625', 11, false, false, 1, 287.37);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'yellow dwarf', 'Solar system', 1, 1.00, 5772);
INSERT INTO public.star VALUES (2, 'alfa centauri A', 'red dwarf', 'Centauri constellation', 1, 0.005, 5891);
INSERT INTO public.star VALUES (3, 'helvetios', 'yellow dwarf', 'Pegasus constellation', 2, 0.36, 5768);
INSERT INTO public.star VALUES (4, 'aldebaran', 'red giant', 'Taurus constellation', 1, 439.00, 3900);
INSERT INTO public.star VALUES (5, 'sirio b', 'white dwarf', 'Canis major constellation', 1, 1.03, 25200);
INSERT INTO public.star VALUES (6, 'pollux', 'giant', 'Gemini constellation', 1, 32.70, 4586);
INSERT INTO public.star VALUES (7, 'betelgeuse', 'red supergiant', 'Orion constellation', 1, 140000.00, 3500);
INSERT INTO public.star VALUES (8, 'rigel', 'supergiant', 'Orion constellation', 1, 47000.00, 11500);
INSERT INTO public.star VALUES (9, 'gliese 581', 'red dwarf', 'Libra constellation', 1, 0.02, 3424);
INSERT INTO public.star VALUES (10, 'beta persei', 'blue-white dwarf', 'Perseus constellation', 10, 182.00, 4500);
INSERT INTO public.star VALUES (11, 'kepler 1625', 'yellow subgiant', 'Cygnus constellation', 1, 2.57, 5563);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 1, false);


--
-- Name: galaxy_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_constellation_id_seq', 1, false);


--
-- Name: galaxy_galaxy_earth_distance_ly_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_earth_distance_ly_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_moons_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_moons_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: star_star_temperature_k_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_temperature_k_seq', 1, false);


--
-- PostgreSQL database dump complete
--



