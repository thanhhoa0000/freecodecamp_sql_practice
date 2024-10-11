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
    name character varying(20),
    description text,
    age_in_millions_of_years integer,
    galaxy_types_id integer NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean,
    distance_from_earth numeric(10,2),
    planet_id integer NOT NULL
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
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean,
    distance_from_earth numeric(10,2),
    star_id integer NOT NULL,
    planet_types_id integer NOT NULL
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Milky Way is the galaxy that contains our Solar System.', 13600, 1);
INSERT INTO public.galaxy VALUES (2, 'Condor', 'Condor is the galaxy located in the constellation Grus.', 10000, 1);
INSERT INTO public.galaxy VALUES (3, 'Comet', 'Comet is a galaxy located in the constellation Pegasus.', 2000, 1);
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron', 'Eye of Sauron is a galaxy located in the constellation Leo.', 1000, 5);
INSERT INTO public.galaxy VALUES (5, 'Grasshopher', 'Grasshopher is a galaxy located in the constellation Virgo.', 10000, 1);
INSERT INTO public.galaxy VALUES (6, 'Fireworks', 'Fireworks is a galaxy located in the constellation Cygnus.', 5000, 1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Lenticular', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', NULL);
INSERT INTO public.galaxy_types VALUES (4, 'Active', NULL);
INSERT INTO public.galaxy_types VALUES (5, 'Seyfert', NULL);
INSERT INTO public.galaxy_types VALUES (6, 'Quasars', NULL);
INSERT INTO public.galaxy_types VALUES (7, 'Blazars', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'dsdsdss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (2, 'dsddsfsdss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (3, 'aaaa', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (4, 's', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (5, 'sfss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (6, 'sfsdfsss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (7, 'sfsdsdfsss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (8, 'sfsdsfsasdfsss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (9, 'sfsddfsss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (10, 'sfsddwwfsss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (11, 'fger', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (12, 'fgsder', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (13, 'dg', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (14, 'dgsdfds', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (15, 'sf', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (16, 'sff', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (17, 'ssfsff', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (18, 'sssfafsff', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (20, 'sssfafsdsff', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);
INSERT INTO public.moon VALUES (21, 'sssfafsdfssdsff', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Earth is the third planet from the Sun and the only known planet to support life.', 4540, true, 0.00, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, true, 225.00, 1, 1);
INSERT INTO public.planet VALUES (4, 'A', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, true, 225.00, 1, 1);
INSERT INTO public.planet VALUES (5, 'BA', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, true, 225.00, 1, 1);
INSERT INTO public.planet VALUES (6, 'BsA', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, true, 225.00, 1, 1);
INSERT INTO public.planet VALUES (7, 'BssA', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, true, 225.00, 1, 1);
INSERT INTO public.planet VALUES (8, 'a', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1, 1);
INSERT INTO public.planet VALUES (10, 'asd', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1, 1);
INSERT INTO public.planet VALUES (11, 'asdd', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1, 1);
INSERT INTO public.planet VALUES (12, 'd', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1, 1);
INSERT INTO public.planet VALUES (13, 'dss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1, 1);
INSERT INTO public.planet VALUES (14, 'dsdss', 'Mars is the fourth planet from the Sun in our solar system and is often referred to as the "Red Planet" due to its reddish appearance, which comes from iron oxide (rust) on its surface.', 4603, false, 225.00, 1, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', NULL);
INSERT INTO public.planet_types VALUES (2, 'Neptunian', NULL);
INSERT INTO public.planet_types VALUES (3, 'Gas giant', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Also known as the Dog Star, it is the brightest star in the night sky and is part of the constellation Canis Major.', 200, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'A red supergiant star in the constellation Orion, known for its distinctive reddish color and one of the largest stars visible to the naked eye.', 10, 1);
INSERT INTO public.star VALUES (3, 'Polaris', 'Also known as the North Star, it is located nearly directly above the North Pole and is part of the constellation Ursa Minor.', 70, 1);
INSERT INTO public.star VALUES (4, 'Aldebaran', 'The eye of the bull in the constellation Taurus, this red giant star is easily recognizable due to its brightness.', 6000, 1);
INSERT INTO public.star VALUES (5, 'Antares', 'A red supergiant in the heart of the Scorpius constellation, it is often referred to as the "heart of the scorpion."', 15, 1);
INSERT INTO public.star VALUES (6, 'Deneb', 'A bright star in the constellation Cygnus, it is one of the most distant stars visible to the naked eye and is part of the Summer Triangle.', 10, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: galaxy_types unique_galaxy_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT unique_galaxy_type_name UNIQUE (name);


--
-- Name: galaxy_types unique_galaxy_types_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT unique_galaxy_types_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: planet_types unique_planet_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT unique_planet_type_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy fk_galaxy_types; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_types FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_types; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_types FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

