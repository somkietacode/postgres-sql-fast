--
-- PostgreSQL database cluster dump
--

\restrict zxj7eltnFt4RRGthA8f3Z2YjmrJOmRoONPML4uil1VNLr6UcB9aqMjWahVZIW42

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE code_ai_insight;
DROP DATABASE dev_offshore_db;
DROP DATABASE glex_talent_db;




--
-- Drop roles
--

DROP ROLE code_ai_insight;
DROP ROLE dev_offshore_admin;
DROP ROLE glex_talent;


--
-- Roles
--

CREATE ROLE code_ai_insight;
ALTER ROLE code_ai_insight WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:QIxSL0R44KVmQKESaUxmUQ==$rGNEZIycgH9hkclZbvZ2yWfpRc3e4A+D1gva4TWN1TU=:sNP+qG2Tbk1WedlvUT6DLYUJKhGODIbWyLttVYhpQ3E=';
CREATE ROLE dev_offshore_admin;
ALTER ROLE dev_offshore_admin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:5jQ8R05z+bIFpJt71poo0A==$Hff3/p1reYVecY76/mLUz3Khpc+ft/svcPudGvmKFRY=:PuA7n/W9L1d4uu/EOFisciEypkHcKLaJu1ViRr1e1Po=';
CREATE ROLE glex_talent;
ALTER ROLE glex_talent WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:lKgko9evqrlTV/eqqo1BOQ==$9F/2eGkYCJ+14ay3wnzAtVunOJZys9wOend3cA9FGW4=:7hKrpv2hiWK9TsKD+JhfUErdW8ac4rTV6XcHc2SAtzw=';

--
-- User Configurations
--








\unrestrict zxj7eltnFt4RRGthA8f3Z2YjmrJOmRoONPML4uil1VNLr6UcB9aqMjWahVZIW42

--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

\restrict Qsa5KR1QiNb58h7MqWGOB88P8QJFRoRtXF7rUJBWk57G7afFJpUmdzrxk067FfR

-- Dumped from database version 16.10 (Debian 16.10-1.pgdg13+1)
-- Dumped by pg_dump version 16.10 (Debian 16.10-1.pgdg13+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: code_ai_insight
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO code_ai_insight;

\unrestrict Qsa5KR1QiNb58h7MqWGOB88P8QJFRoRtXF7rUJBWk57G7afFJpUmdzrxk067FfR
\connect template1
\restrict Qsa5KR1QiNb58h7MqWGOB88P8QJFRoRtXF7rUJBWk57G7afFJpUmdzrxk067FfR

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: code_ai_insight
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: code_ai_insight
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\unrestrict Qsa5KR1QiNb58h7MqWGOB88P8QJFRoRtXF7rUJBWk57G7afFJpUmdzrxk067FfR
\connect template1
\restrict Qsa5KR1QiNb58h7MqWGOB88P8QJFRoRtXF7rUJBWk57G7afFJpUmdzrxk067FfR

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: code_ai_insight
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict Qsa5KR1QiNb58h7MqWGOB88P8QJFRoRtXF7rUJBWk57G7afFJpUmdzrxk067FfR

--
-- Database "code_ai_insight" dump
--

--
-- PostgreSQL database dump
--

\restrict 2lScC2OrCkfmFQwwnVRkzM4UAflQd6oLOStaUHjict4q5yUM8YOYBTRBEgkYSep

-- Dumped from database version 16.10 (Debian 16.10-1.pgdg13+1)
-- Dumped by pg_dump version 16.10 (Debian 16.10-1.pgdg13+1)

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

--
-- Name: code_ai_insight; Type: DATABASE; Schema: -; Owner: code_ai_insight
--

CREATE DATABASE code_ai_insight WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE code_ai_insight OWNER TO code_ai_insight;

\unrestrict 2lScC2OrCkfmFQwwnVRkzM4UAflQd6oLOStaUHjict4q5yUM8YOYBTRBEgkYSep
\connect code_ai_insight
\restrict 2lScC2OrCkfmFQwwnVRkzM4UAflQd6oLOStaUHjict4q5yUM8YOYBTRBEgkYSep

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

--
-- PostgreSQL database dump complete
--

\unrestrict 2lScC2OrCkfmFQwwnVRkzM4UAflQd6oLOStaUHjict4q5yUM8YOYBTRBEgkYSep

--
-- Database "dev_offshore_db" dump
--

--
-- PostgreSQL database dump
--

\restrict WadRrjLcI7IStCWihpy1H3ft3Rg9Y3jyQZKKkvwOUvbn9LwqouvTL6zPfaos2qw

-- Dumped from database version 16.10 (Debian 16.10-1.pgdg13+1)
-- Dumped by pg_dump version 16.10 (Debian 16.10-1.pgdg13+1)

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

--
-- Name: dev_offshore_db; Type: DATABASE; Schema: -; Owner: code_ai_insight
--

CREATE DATABASE dev_offshore_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE dev_offshore_db OWNER TO code_ai_insight;

\unrestrict WadRrjLcI7IStCWihpy1H3ft3Rg9Y3jyQZKKkvwOUvbn9LwqouvTL6zPfaos2qw
\connect dev_offshore_db
\restrict WadRrjLcI7IStCWihpy1H3ft3Rg9Y3jyQZKKkvwOUvbn9LwqouvTL6zPfaos2qw

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

--
-- Name: bidstatus; Type: TYPE; Schema: public; Owner: dev_offshore_admin
--

CREATE TYPE public.bidstatus AS ENUM (
    'PENDING',
    'ACCEPTED',
    'REJECTED'
);


ALTER TYPE public.bidstatus OWNER TO dev_offshore_admin;

--
-- Name: coursestatus; Type: TYPE; Schema: public; Owner: dev_offshore_admin
--

CREATE TYPE public.coursestatus AS ENUM (
    'PENDING',
    'CONFIRMED',
    'COMPLETED',
    'CANCELLED'
);


ALTER TYPE public.coursestatus OWNER TO dev_offshore_admin;

--
-- Name: vehicletype; Type: TYPE; Schema: public; Owner: dev_offshore_admin
--

CREATE TYPE public.vehicletype AS ENUM (
    'MOTO',
    'VOITURE'
);


ALTER TYPE public.vehicletype OWNER TO dev_offshore_admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bid; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.bid (
    id integer NOT NULL,
    price integer NOT NULL,
    status public.bidstatus NOT NULL,
    created_at timestamp without time zone NOT NULL,
    licence_id character varying(20) NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.bid OWNER TO dev_offshore_admin;

--
-- Name: bid_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bid_id_seq OWNER TO dev_offshore_admin;

--
-- Name: bid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.bid_id_seq OWNED BY public.bid.id;


--
-- Name: bug_reports; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.bug_reports (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying(200) NOT NULL,
    description character varying(5000) NOT NULL,
    is_resolved boolean NOT NULL,
    resolved_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.bug_reports OWNER TO dev_offshore_admin;

--
-- Name: bug_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.bug_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bug_reports_id_seq OWNER TO dev_offshore_admin;

--
-- Name: bug_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.bug_reports_id_seq OWNED BY public.bug_reports.id;


--
-- Name: conducteur; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.conducteur (
    licence_id character varying(20) NOT NULL,
    phone_number character varying(20) NOT NULL,
    ca integer NOT NULL,
    tax_due integer NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.conducteur OWNER TO dev_offshore_admin;

--
-- Name: contracts; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.contracts (
    id integer NOT NULL,
    project_id integer NOT NULL,
    content character varying(10000) NOT NULL,
    signed boolean NOT NULL,
    signed_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.contracts OWNER TO dev_offshore_admin;

--
-- Name: contracts_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.contracts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contracts_id_seq OWNER TO dev_offshore_admin;

--
-- Name: contracts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.contracts_id_seq OWNED BY public.contracts.id;


--
-- Name: course; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.course (
    id integer NOT NULL,
    status public.coursestatus NOT NULL,
    lon_origin double precision NOT NULL,
    lat_origin double precision NOT NULL,
    lon_destination double precision NOT NULL,
    lat_destination double precision NOT NULL,
    vehicle_type public.vehicletype NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.course OWNER TO dev_offshore_admin;

--
-- Name: course_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.course_id_seq OWNER TO dev_offshore_admin;

--
-- Name: course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.course_id_seq OWNED BY public.course.id;


--
-- Name: id_checks; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.id_checks (
    id integer NOT NULL,
    id_type character varying(50) NOT NULL,
    checked boolean NOT NULL,
    file_path character varying(255),
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.id_checks OWNER TO dev_offshore_admin;

--
-- Name: id_checks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.id_checks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.id_checks_id_seq OWNER TO dev_offshore_admin;

--
-- Name: id_checks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.id_checks_id_seq OWNED BY public.id_checks.id;


--
-- Name: leads; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.leads (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    message character varying(5000) NOT NULL,
    project_price double precision NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.leads OWNER TO dev_offshore_admin;

--
-- Name: leads_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.leads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.leads_id_seq OWNER TO dev_offshore_admin;

--
-- Name: leads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.leads_id_seq OWNED BY public.leads.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    content character varying(1000) NOT NULL,
    sender_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    project_id integer
);


ALTER TABLE public.messages OWNER TO dev_offshore_admin;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.messages_id_seq OWNER TO dev_offshore_admin;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: password_reset_requests; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.password_reset_requests (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.password_reset_requests OWNER TO dev_offshore_admin;

--
-- Name: password_reset_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.password_reset_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.password_reset_requests_id_seq OWNER TO dev_offshore_admin;

--
-- Name: password_reset_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.password_reset_requests_id_seq OWNED BY public.password_reset_requests.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    titre character varying(100) NOT NULL,
    description character varying(50000) NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    budget double precision,
    belongs_to_id integer NOT NULL
);


ALTER TABLE public.projects OWNER TO dev_offshore_admin;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_id_seq OWNER TO dev_offshore_admin;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: responses; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.responses (
    id integer NOT NULL,
    content character varying(1000) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    project_id integer
);


ALTER TABLE public.responses OWNER TO dev_offshore_admin;

--
-- Name: responses_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.responses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.responses_id_seq OWNER TO dev_offshore_admin;

--
-- Name: responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.responses_id_seq OWNED BY public.responses.id;


--
-- Name: super_admins; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.super_admins (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    hashed_password character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.super_admins OWNER TO dev_offshore_admin;

--
-- Name: super_admins_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.super_admins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.super_admins_id_seq OWNER TO dev_offshore_admin;

--
-- Name: super_admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.super_admins_id_seq OWNED BY public.super_admins.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: dev_offshore_admin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    hashed_password character varying(100) NOT NULL,
    is_verified boolean NOT NULL,
    email_verification_token character varying(255),
    is_active boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO dev_offshore_admin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: dev_offshore_admin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO dev_offshore_admin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev_offshore_admin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: bid id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bid ALTER COLUMN id SET DEFAULT nextval('public.bid_id_seq'::regclass);


--
-- Name: bug_reports id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bug_reports ALTER COLUMN id SET DEFAULT nextval('public.bug_reports_id_seq'::regclass);


--
-- Name: contracts id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.contracts ALTER COLUMN id SET DEFAULT nextval('public.contracts_id_seq'::regclass);


--
-- Name: course id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.course ALTER COLUMN id SET DEFAULT nextval('public.course_id_seq'::regclass);


--
-- Name: id_checks id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.id_checks ALTER COLUMN id SET DEFAULT nextval('public.id_checks_id_seq'::regclass);


--
-- Name: leads id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.leads ALTER COLUMN id SET DEFAULT nextval('public.leads_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: password_reset_requests id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.password_reset_requests ALTER COLUMN id SET DEFAULT nextval('public.password_reset_requests_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: responses id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.responses ALTER COLUMN id SET DEFAULT nextval('public.responses_id_seq'::regclass);


--
-- Name: super_admins id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.super_admins ALTER COLUMN id SET DEFAULT nextval('public.super_admins_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: bid; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.bid (id, price, status, created_at, licence_id, course_id) FROM stdin;
1	200000	ACCEPTED	2025-12-10 09:18:15.741654	86tg58h#nxfQ	1
2	350000	ACCEPTED	2025-12-16 20:25:10.712171	86tg58h#nxfQ	25
\.


--
-- Data for Name: bug_reports; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.bug_reports (id, project_id, user_id, title, description, is_resolved, resolved_at, created_at) FROM stdin;
\.


--
-- Data for Name: conducteur; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.conducteur (licence_id, phone_number, ca, tax_due, is_active) FROM stdin;
86tg58h#nxfQ	72587871	550000	55000	t
ma#}P4BE1G2£	79125607	0	0	t
W45k.i&|X96!	70291305	0	0	t
\.


--
-- Data for Name: contracts; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.contracts (id, project_id, content, signed, signed_at, created_at) FROM stdin;
2	12	***\n\n# CONTRAT DE PRESTATION DE SERVICES INFORMATIQUES\n**Projet : Passerelle de Paiement Unifiée & Optimisation des Coûts (PPUOC)**\n\n**ENTRE LES SOUSSIGNÉS :**\n\n**1. Monsieur OUEDRAOGO Somkiéta**\nAgissant en qualité de : Architecte Solution Senior\nCi-après désigné le **« Prestataire »**,\n\n**D'UNE PART,**\n\n**ET :**\n\n**2. Yanick Ouedraogo**\nCi-après désignée le **« Client »**,\n\n**D'AUTRE PART.**\n\n*(Le Prestataire et le Client sont ci-après désignés individuellement la « Partie » et collectivement les « Parties »).*\n\n---\n\n### ARTICLE 1 : OBJET DU CONTRAT\n\nLe présent contrat a pour objet la conception et le développement d'une **API de passerelle de paiement unifiée (API Gateway)** visant à consolider l'intégration de multiples fournisseurs (Yellow Card, Afribapay, Paydunia) et à optimiser les coûts de transaction via une logique de routage intelligent.\n\nLa solution technique retenue est une architecture microservices basée sur **Python/FastAPI**.\n\n### ARTICLE 2 : PÉRIMÈTRE ET LIVRABLES\n\nLe Prestataire s'engage à fournir les livrables suivants, conformément à la méthodologie décrite dans la proposition commerciale :\n\n1.  **Documentation Technique Complète :** Spécifications API au format OpenAPI (Swagger/Redoc), incluant endpoints, schémas et codes d'erreur.\n2.  **Environnements Opérationnels :** Configuration de deux environnements distincts (Staging pour les tests, Production pour le live) avec une approche CI/CD.\n3.  **API Gateway Fonctionnelle (Code Source) :**\n    *   Implémentation des adaptateurs pour **Yellow Card Business** (focus stablecoins), **Afribapay** et **Paydunia**.\n    *   Logique de routage intelligent (Broker) pour l'optimisation des coûts (objectif cible ~4%).\n    *   Sécurité native (DevSecOps, gestion des secrets, OWASP Top 10).\n4.  **Documentation de Configuration :** Procédures pour l'ajout futur de nouveaux agrégateurs.\n\n### ARTICLE 3 : DURÉE ET DÉLAIS D'EXÉCUTION\n\nLa durée totale estimée pour la réalisation de la prestation est de **3 semaines (15 jours ouvrés)**.\n\n**Point de départ du délai :**\nConformément à l'accord des parties, le délai d'exécution de 15 jours ouvrés commence à courir **à compter de la date de signature du présent contrat** et sous réserve de la mise à disposition des accès API des fournisseurs externes par le Client.\n\nLe planning prévisionnel se décompose comme suit :\n*   **Jours 1-3 :** Conception, Setup Architecture & Pipeline CI/CD.\n*   **Jours 4-10 :** Développement des Adaptateurs (Yellow Card, Afribapay, Paydunia).\n*   **Jours 11-13 :** Implémentation du Routage Intelligent & Audit Sécurité.\n*   **Jours 14-15 :** Recette (Tests Staging) & Déploiement en Production.\n\n### ARTICLE 4 : CONDITIONS FINANCIÈRES\n\nEn contrepartie de la réalisation des prestations définies à l'Article 2, et après application de la remise commerciale pour collaboration initiale, le Client versera au Prestataire la somme forfaitaire et ferme de :\n\n**Montant Total : 800,00 € HT**\n\n\n**Modalités de paiement :**\n*   Le règlement intégral (100 %) est dû à la **livraison finale validée** de la passerelle en environnement de Production.\n*   Le paiement s'effectuera par virement bancaire sur le compte du Prestataire (RIB à fournir sur facture).\n\n### ARTICLE 5 : OBLIGATIONS ET COLLABORATION\n\n*   **Le Prestataire** s'engage à respecter les règles de l'art, notamment en matière de sécurité (DevSecOps) et à livrer une solution testée et documentée.\n*   **Le Client** s'engage à fournir les accès nécessaires (clés API des fournisseurs de paiement : Yellow Card, Afribapay, Paydunia) dans les plus brefs délais pour ne pas entraver le planning.\n\n### ARTICLE 6 : PROPRIÉTÉ INTELLECTUELLE\n\nDès le paiement intégral du prix mentionné à l'Article 4, le Prestataire cède au Client la totalité des droits de propriété intellectuelle et d'utilisation sur le code source spécifique et les documentations développés dans le cadre de ce contrat.\n\n### ARTICLE 7 : CONFIDENTIALITÉ\n\nLes Parties s'engagent à considérer comme strictement confidentielles toutes les informations, documents, données techniques (notamment les stratégies de trésorerie et flux financiers) échangés durant l'exécution du présent contrat.\n\n---\n\n**FAIT À :** OUAGADOUGOU\n**LE :** 10/12/2025\n\n*(Signature électronique valant accord)*\n	f	\N	2025-12-10 19:30:34.048026
\.


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.course (id, status, lon_origin, lat_origin, lon_destination, lat_destination, vehicle_type, created_at) FROM stdin;
1	COMPLETED	-1.5643478	12.3322023	-1.4845081076534359	12.331098350000001	MOTO	2025-12-10 09:05:23.115949
5	CANCELLED	-1.5695872	12.337152	-1.4581507	12.3707171	MOTO	2025-12-10 10:34:57.29061
3	CANCELLED	-1.5695872	12.337152	-1.491660273452305	12.3210873	MOTO	2025-12-10 10:23:55.826709
4	CANCELLED	-1.5695872	12.337152	-1.5280601302930839	12.31577335	MOTO	2025-12-10 10:27:29.72815
2	CANCELLED	-1.5695872	12.337152	-4.283578092620879	11.17984395	MOTO	2025-12-10 09:54:02.726568
6	CANCELLED	7.2010489	43.6816359	-1.5028592	12.3060727	MOTO	2025-12-10 19:07:55.160107
7	CANCELLED	-1.6277205	12.368009	-1.5755574649431898	12.32809595963226	MOTO	2025-12-10 19:10:16.919724
8	CANCELLED	-1.5695872	12.337152	-1.4845081076534359	12.331098350000001	MOTO	2025-12-10 19:23:51.959799
9	CANCELLED	-1.4374937	12.3194086	-1.5755574649431898	12.32809595963226	MOTO	2025-12-10 21:43:59.553419
10	CANCELLED	-1.5197	12.3714	-1.528314	12.3086013	MOTO	2025-12-11 00:47:10.997391
11	CANCELLED	-1.5197	12.3714	-1.5721573	12.3423407	MOTO	2025-12-11 15:55:01.718443
12	PENDING	-1.5197	12.3714	-1.5654336039997396	12.335564649999998	MOTO	2025-12-11 19:20:01.316485
13	PENDING	-1.5197	12.3714	-4.6260317	14.4646937	MOTO	2025-12-12 10:45:35.805693
14	PENDING	-1.5197	12.3714	-1.5755574649431898	12.32809595963226	MOTO	2025-12-12 11:30:59.799338
15	CANCELLED	-1.5197	12.3714	-3.6327625	12.5659572	MOTO	2025-12-12 18:49:35.891353
16	PENDING	-1.4994087499556141	12.378339575816797	-1.4710642006760253	12.342270450000001	MOTO	2025-12-12 18:50:17.317181
17	PENDING	-1.5197	12.3714	-2.3968800276944995	12.2429933	MOTO	2025-12-12 18:54:16.203198
18	CANCELLED	-1.5197	12.3714	-1.5654336039997396	12.335564649999998	MOTO	2025-12-12 19:00:11.801995
19	CANCELLED	-1.5197	12.3714	-1.5769251	12.3898683	MOTO	2025-12-12 19:00:19.878334
20	PENDING	-1.5197	12.3714	-1.5755574649431898	12.32809595963226	MOTO	2025-12-12 19:26:37.000817
21	CANCELLED	-1.5390067082431365	12.30957566749751	-1.5654336039997396	12.335564649999998	MOTO	2025-12-12 19:45:43.803815
22	PENDING	-1.5197	12.3714	-1.5693297	12.3432208	MOTO	2025-12-12 19:58:34.200946
23	PENDING	-1.5197	12.3714	-1.525977595289249	12.3329831488051	MOTO	2025-12-14 11:51:24.513532
24	CANCELLED	-1.5663104	12.3338752	-1.5755574649431898	12.32809595963226	MOTO	2025-12-15 20:01:38.204821
25	COMPLETED	-1.5663104	12.3338752	-1.4885081548332422	12.3333122	MOTO	2025-12-16 20:00:09.909149
26	CANCELLED	0.8426464	0.1452412	-1.5769251	12.3898683	MOTO	2025-12-17 06:25:59.189317
27	PENDING	0.8426464	0.1452412	-1.5271122488119704	12.30649075	MOTO	2025-12-17 06:27:01.685141
\.


--
-- Data for Name: id_checks; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.id_checks (id, id_type, checked, file_path, user_id, created_at) FROM stdin;
1	id_card	t	uploads/identity/user_1/id_card_1760718221.417283.png	1	2025-10-17 16:23:41.42774
2	passport	t	uploads/identity/user_9/passport_1763369465.210222.jpg	9	2025-11-17 08:51:05.494934
\.


--
-- Data for Name: leads; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.leads (id, email, message, project_price, created_at) FROM stdin;
4	kamboujedidia@gmail.com	Fluxa un application de vote et billetterie et un réseau social intégré \n Fluxa un application de vote et billetterie et un réseau social intégré	827.1556236159721	2025-11-08 02:59:21.320376
5	moussa60783979@gmail.com	Application de vidéo streaming \n Application de vidéo streaming pour des cour en ligne	630.6980207521374	2025-11-08 08:02:29.738948
6	ouedraogopierre945@gmail.com	Mise en relation Medias et Evenements \n Beaucoup d'activites et evenements se tiennnet de nos jours. Mais ont du mal a approcher les medias pour assurer la couvetrture mediatique de leur evenement par peur du dout des medias. Moi jessaie en ce moment de mettre a profis mes relations et copter quelques medias afin quils viennet couvrir l'activité.	299.7706283972921	2025-11-08 10:04:45.05712
7	ibamogo93@gmail.com	Système d'information hospitalier \n Application web basée sur le framework PHP Symfony. Elle permet la gestion administrative des patients, des actes de facturation et d'encaissement, des rendez vous, du dossier patient, de la pharmacie hospitalière, du laboratoire. La base de données utilisée est PostgreSQL. Elle va être déployée en ligne pour permettre à plusieurs centres de santé de l'utiliser.	679.6102008014653	2025-11-09 08:11:26.857541
8	test2018wire@gmail.com	Mise en place de JasperReport server et jasper report \n Produire des états avec jasper report \nProduire des états avec jasper report \nProduire des états avec jasper report	262.71693406080783	2025-11-09 10:58:43.520484
9	sanoubachir978@gmail.com	Application comme Facebook \n Une application qui a les meme fonctionnalités que facebook	467.67742635215546	2025-11-09 11:04:43.348505
10	michaelrogerzongo@gmail.com	Tôtô: application de livraison \n Tôtô est une application de livraison de colis partout au Burkina Faso.	318.64422365373616	2025-11-09 11:15:50.868103
11	jimnakongo14@gmail.com	gestion de stock \n gerer les entrees et sorties d"une boutique. faire linventaire	200.4965590437376	2025-11-09 11:17:32.556361
12	traore.cheickamed@gmail.com	Mise en place d'une application web et mobile de gestion immobiliere \n Le projet consiste à mettre en application, mobile dans un premier temps qui présente à des utilisateurs en quête d'un bien immobilier pour location, soit pour habitation ou pour en faire un bureau. L'application mobile doit permettre une visualisation du bien à 360 degrés, la réservation, qui bloque le bien sur un certain temps pour d'autres consultations. Un module de paiement, directement au profit du proporietaire du bien selon.les conditions fixées par ce dernier ! Le systeme pourrait présenter une version web pour les memes fonctionnalités. Un module de parametrage est à prevoir,  pour se positionner sur un pays, la ville et permettre l'enregistrement des differents biens! L'édition de factures ou reçu avant et après paiement doit etre disponible.	1084.856876760158	2025-11-09 11:46:17.08325
13	s.r.a.ouedraogo@gmail.com	Application de rencontre \n Bonjour, je voudrais créer une application de rencontre entre étudiant d'une même ville pour la collocation.	330.6562639244823	2025-11-14 12:54:59.069018
14	s.r.a.ouedraogo@gmail.com	Retouche magazine \n je suis dans une situation tendue sur un projet qui n'est pas le notre… je travaille avec des designers au Pakistan mais ca se passe mal et j'essaie de voir si je pourrai prendre leur projet de magazine en InDesign et possiblement le finir en direct avec quelqu'un de ton équipe qui accepte de travailler la journée sur mes horaires et qui peut dédier les 48 prochaines heures a etre avec moi en ligne…	155.76368420408596	2025-11-20 09:29:47.771921
15	testbaba52@gmail.com	Fiat to crypto to fiat \n Ce projet consiste à développer une API de passerelle de paiement unifiée sur mesure, agissant comme un intermédiaire intelligent entre l'application de transfert d'argent existante du client et divers fournisseurs de paiement (Yellow Card Business, Afribapay, Paydunia, et futurs agrégateurs comme Moneroo).\nL'objectif principal est d'optimiser les coûts de transaction actuels (autour de 4%) en tirant parti de la technologie stablecoin de Yellow Card pour les transferts internationaux et la gestion de trésorerie.\nDescription Technique :\nNous concevrons l'API selon les principes REST, en utilisant l'Adapter Pattern pour masquer la complexité de chaque fournisseur derrière une interface standardisée unique. Une logique de routage intelligent déterminera automatiquement le fournisseur le moins cher ou le plus efficace en fonction du pays, de la devise et de la méthode de paiement. Le projet suit une méthodologie DevSecOps, assurant une sécurité rigoureuse (OWASP Top 10, gestion des secrets	905.2219103431357	2025-12-10 17:20:53.490197
16	testbaba52@gmail.com	Fiatcrypto \n Ce projet consiste à développer une API de passerelle de paiement unifiée sur mesure, agissant comme un intermédiaire intelligent entre l'application de transfert d'argent existante du client et divers fournisseurs de paiement (Yellow Card Business, Afribapay, Paydunia, et futurs agrégateurs comme Moneroo).\nL'objectif principal est d'optimiser les coûts de transaction actuels (autour de 4%) en tirant parti de la technologie stablecoin de Yellow Card pour les transferts internationaux et la gestion de trésorerie.\nDescription Technique :\nNous concevrons l'API selon les principes REST, en utilisant l'Adapter Pattern pour masquer la complexité de chaque fournisseur derrière une interface standardisée unique. Une logique de routage intelligent déterminera automatiquement le fournisseur le moins cher ou le plus efficace en fonction du pays, de la devise et de la méthode de paiement. Le projet suit une méthodologie DevSecOps, assurant une sécurité rigoureuse (OWASP Top 10, gestion des secrets	880.4460159593191	2025-12-10 17:21:01.746483
17	kouandaachraf02@gmail.com	Création d'applications mobiles (Android & iOS) pour le site d'actualités et de concours \n Offre de Mission Freelance : Développeur Mobile Hybride (H/F) - Conversion du site ****\n\nTitre de la mission : Création d'applications mobiles (Android & iOS) pour le site d'actualités et de concours ****\nType de contrat : Mission ponctuelle (Freelance)\nDurée estimée : 10 jours ouvrés\nRémunération : Forfait total de 150 000 Francs CFA\nLieu : Télétravail\n\nContexte du Projet\n\nNous cherchons un(e) développeur(se) mobile talentueux(se) pour transformer notre site web ***** (développé majoritairement en PHP) en applications mobiles performantes pour Android et iOS.\n\nL'objectif n'est pas de créer un simple navigateur web, mais une véritable application offrant une expérience utilisateur fluide et engageante, tout en conservant la simplicité de gestion de notre site actuel. L'application se concentrera principalement sur la section des concours et la vente de documents PDF associés.\n\nVotre Mission\n\nEn vous basant sur une architecture hybride moderne (type Capacitor), vous serez responsable de	695.3060159481613	2025-12-11 15:13:22.442183
18	kouandaachraf02@gmail.com	Création d'applications mobiles (Android & iOS) pour le site d'actualités et de concours \n Offre de Mission Freelance : Développeur Mobile Hybride (H/F) - Conversion du site ****\n\nTitre de la mission : Création d'applications mobiles (Android & iOS) pour le site d'actualités et de concours ****\nType de contrat : Mission ponctuelle (Freelance)\nDurée estimée : 10 jours ouvrés\nRémunération : Forfait total de 150 000 Francs CFA\nLieu : Télétravail\n\nContexte du Projet\n\nNous cherchons un(e) développeur(se) mobile talentueux(se) pour transformer notre site web ***** (développé majoritairement en PHP) en applications mobiles performantes pour Android et iOS.\n\nL'objectif n'est pas de créer un simple navigateur web, mais une véritable application offrant une expérience utilisateur fluide et engageante, tout en conservant la simplicité de gestion de notre site actuel. L'application se concentrera principalement sur la section des concours et la vente de documents PDF associés.\n\nVotre Mission\n\nEn vous basant sur une architecture hybride moderne (type Capacitor), vous serez responsable de	695.3060159481613	2025-12-11 15:14:41.006387
19	fynds03@gmail.com	BRVM ×10 : La Décennie de la Maîtrise et de la Discipline \n Mon projet est de devenir un excellent trader-investisseur sur la BRVM en construisant une performance durable capable de multiplier mes investissements par 10 en dix ans. Il repose sur trois piliers : connaissance, discipline et vision long terme.\nLes premières années sont dédiées à l’apprentissage approfondi du marché régional : analyse fondamentale des sociétés cotées, compréhension des cycles économiques de l’UEMOA, fiscalité, liquidité et psychologie des marchés.\nEnsuite, je développe une stratégie claire combinant investissement de valeur, croissance et opportunités de marché, avec une gestion rigoureuse du risque et du capital. Chaque décision est documentée, analysée et améliorée.\nSur la durée, je vise la constance plutôt que les gains rapides, en capitalisant les rendements, en réinvestissant intelligemment et en adaptant mes méthodes. Ce projet est une démarche professionnelle, patiente et méthodique, orientée vers l’excellence et l’indépendance financière.	596.7184430242279	2025-12-12 09:48:47.562803
20	fynds03@gmail.com	BRVM ×10 : La Décennie de la Maîtrise et de la Discipline \n Mon projet est de devenir un excellent trader-investisseur sur la BRVM en construisant une performance durable capable de multiplier mes investissements par 10 en dix ans. Il repose sur trois piliers : connaissance, discipline et vision long terme.\nLes premières années sont dédiées à l’apprentissage approfondi du marché régional : analyse fondamentale des sociétés cotées, compréhension des cycles économiques de l’UEMOA, fiscalité, liquidité et psychologie des marchés.\nEnsuite, je développe une stratégie claire combinant investissement de valeur, croissance et opportunités de marché, avec une gestion rigoureuse du risque et du capital. Chaque décision est documentée, analysée et améliorée.\nSur la durée, je vise la constance plutôt que les gains rapides, en capitalisant les rendements, en réinvestissant intelligemment et en adaptant mes méthodes. Ce projet est une démarche professionnelle, patiente et méthodique, orientée vers l’excellence et l’indépendance financière.	596.7184430242279	2025-12-12 10:33:53.237137
21	yipenenye1@gmail.com	Transformation d'un site web en app mobile \n Offre de Mission Freelance : Développeur Mobile Hybride (H/F) - Conversion du site ****\n\nTitre de la mission : Création d'applications mobiles (Android & iOS) pour le site d'actualités et de concours ****\nType de contrat : Mission ponctuelle (Freelance)\nDurée estimée : 10 jours ouvrés\nLieu : Télétravail\n\nContexte du Projet\n\nNous cherchons un(e) développeur(se) mobile talentueux(se) pour transformer notre site web ***** (développé majoritairement en PHP) en applications mobiles performantes pour Android et iOS.\n\nL'objectif n'est pas de créer un simple navigateur web, mais une véritable application offrant une expérience utilisateur fluide et engageante, tout en conservant la simplicité de gestion de notre site actuel. L'application se concentrera principalement sur la section des concours et la vente de documents PDF associés.\n\nVotre Mission\n\nEn vous basant sur une architecture hybride moderne (type Capacitor), vous serez responsable de	789.126493015336	2025-12-12 11:06:53.719588
22	yempanimano5@gmail.com	Création d'application web de quiz de questions \n Une application web qui pourrait être, qui doit contenir des quiz de tout niveau d'éducation, avec une interface admin qui pourrait administrer les différents sujets de quiz.	657.4359239590881	2025-12-12 19:51:30.517924
23	ouedraogoalex038@gmail.com	Application pharmaceutique \n C’est le développement d’une application mobile pour rechercher les médicaments dans les pharmacies de garde avec les informations tel que la distance des pharmacies et localisation des pharmacies qui possèdent le médicament	550.3392250323408	2025-12-12 22:52:25.07462
24	nasertatsa@yahoo.fr	Application de gestion du transport urbain \n Le projet Taxi Numérique Cameroun vise à moderniser et structurer la mobilité urbaine à Douala à travers une plateforme digitale dédiée exclusivement aux taxis officiels et aux motos agréées par les communes.\nLa solution permet :\n•\tla commande de courses via application mobile,\n•\tun calcul automatique des tarifs,\n•\tune négociation encadrée chauffeur–passager à l’intérieur d’une fourchette réglementée,\n•\tla traçabilité complète des courses,\n•\tun outil de supervision pour la commune (Dashboard).	865.1194457321819	2025-12-17 13:14:21.50894
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.messages (id, content, sender_id, created_at, project_id) FROM stdin;
21	Hello Alex	6	2025-10-18 22:21:32.964033	7
22	Bonjour, comment allez vous ?	1	2025-10-19 01:59:07.78712	8
23	slt\n	8	2025-10-23 20:38:21.250541	10
24	quand je te parle de messagerie intégrée la, c'est comme cela je veux. c'est tres pratique\n	8	2025-10-23 20:38:59.147198	10
25	cool	8	2025-10-23 20:49:17.846542	10
\.


--
-- Data for Name: password_reset_requests; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.password_reset_requests (id, created_at, user_id) FROM stdin;
1	2025-10-16 20:43:26.418201	1
2	2025-10-17 01:19:44.697789	1
3	2025-10-17 01:20:04.024438	1
4	2025-10-17 01:21:10.061439	1
5	2025-10-17 10:54:14.676655	1
6	2025-10-26 19:24:18.636689	8
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.projects (id, titre, description, status, created_at, updated_at, budget, belongs_to_id) FROM stdin;
10	Mise à jour Glex Talent	Recruteur\n-\tProfil Recruteur : quand le candidat postule et qu'on consulte son profil, ses missions ne sont pas affichées. Pourtant c'est important de les avoir pendant la consultation du profil du candidat par le recruteur. Seulement le titre de poste de suffit.  Complément pour le profil Recruteur :\nInformations de contact\nCes données permettent à GLEX Talent et aux candidats de communiquer avec l’entreprise.\n\tNom de l’entreprise\n\tAdresse physique (siège ou antenne locale)\n\tEmail professionnel (pour les notifications et échanges)\n\tNuméro de téléphone (optionnel mais recommandé)\n\tNom du responsable RH ou recruteur référent\n\tLogo de l’entreprise (pour renforcer la visibilité des offres)\nInformations de facturation\nCes données sont nécessaires comme les services seront payants \n\tNom de l’entité juridique (si différent du nom commercial)\n\tAdresse de facturation\n\tNuméro d’identification fiscale ou RCCM\n\tEmail de réception des factures\n\tMode de paiement préféré (Mobile Money, carte bancaire, virement)\n \n\n	Validation	2025-10-23 20:34:00.849378	2025-10-23 20:43:31.736622	1	8
7	Développement d'une solution de marketing bancaire automatisé 	Profiler les clients done banque et leur recommander automatiquement des produits sur la base de leurs comportements. L'application doit utiliser le machine learning pour analyser les comportements des clients et l'analyse de similarité pour rassembler les clients dans des clusters, analyser les produits types souscrits par ces clusters, puis proposer ces produits aux clients des clusters qui n'ont pas souscrit	Soumission	2025-10-18 22:11:31.779084	2025-10-18 22:11:31.779087	1000	6
8	marketing bancaire automatisé	Profiler les clients done banque et leur recommander automatiquement des produits sur la base de leurs comportements. L'application doit utiliser le machine learning pour analyser les comportements des clients et l'analyse de similarité pour rassembler les clients dans des clusters, analyser les produits types souscrits par ces clusters, puis proposer ces produits aux clients des clusters qui n'ont pas souscrit	Soumission	2025-10-19 01:56:52.048964	2025-10-19 01:56:52.048967	1000	1
9	Mon Auto	une plateforme de vente et d’achat de voitures et pièces détachées entre particuliers et professionnels\nObjectif général\n\nCréer une plateforme (Android & iOS et pc) où :\n\nLes vendeurs particuliers et professionnels publient des annonces (voitures, motos, pièces détachées, accessoires).\n\nLes acheteurs recherchent selon des filtres précis (marque, modèle, prix, année, état, localisation…).\n\nL’application gère les transactions, les messages et la géolocalisation des annonces.	Soumission	2025-10-19 21:25:41.183118	2025-10-19 21:25:41.183121	500	7
14	Creation d'une application Web	Le projet Taxi Numérique Cameroun vise à moderniser et structurer la mobilité urbaine à Douala à travers une plateforme digitale dédiée exclusivement aux taxis officiels et aux motos agréées par les communes.\nLa solution permet :\n•\tla commande de courses via application mobile,\n•\tun calcul automatique des tarifs,\n•\tune négociation encadrée chauffeur–passager à l’intérieur d’une fourchette réglementée,\n•\tla traçabilité complète des courses,\n•\tun outil de supervision pour la commune (Dashboard).\n	Validation	2025-12-17 13:06:25.903748	2025-12-17 15:15:34.312155	500	11
12	Fiat_crypto	...984 107 048 #\nCe projet consiste à développer une API de passerelle de paiement unifiée sur mesure, agissant comme un intermédiaire intelligent entre l'application de transfert d'argent existante du client et divers fournisseurs de paiement (Yellow Card Business, Afribapay, Paydunia, et futurs agrégateurs comme Moneroo,cinetpay).\nL'objectif principal est d'optimiser les coûts de transaction actuels (autour de 4%) en tirant parti de la technologie stablecoin de Yellow Card pour les transferts internationaux et la gestion de trésorerie.\nDescription Technique :\nNous concevrons l'API selon les principes REST, en utilisant l'Adapter Pattern pour masquer la complexité de chaque fournisseur derrière une interface standardisée unique. Une logique de routage intelligent déterminera automatiquement le fournisseur le moins cher ou le plus efficace en fonction du pays, de la devise et de la méthode de paiement. Le projet suit une méthodologie DevSecOps, assurant une sécurité rigoureuse (OWASP Top 10, gestion des secrets\nDescription Technique :\nNous concevrons l'API selon les principes REST, en utilisant l'Adapter Pattern pour masquer la complexité de chaque fournisseur derrière une interface standardisée unique. Une logique de routage intelligent déterminera automatiquement le fournisseur le moins cher ou le plus efficace en fonction du pays, de la devise et de la méthode de paiement. Le projet suit une méthodologie DevSecOps, assurant une sécurité rigoureuse (OWASP Top 10, gestion des secrets) et un déploiement progressif via CI/CD et feature flags pour garantir la continuité du service de l'application cliente.\nLivrables :\nDocumentation OpenAPI complète.\nEnvironnements de staging et production.\nAPI de passerelle avec endpoints pour dépôts, retraits et statuts.\nCe projet offre une solution évolutive, sécurisée et économiquement avantageuse, permettant au client de rester compétitif sur le marché africain des transferts de fonds.	Validation	2025-12-10 17:40:59.559771	2025-12-10 18:34:41.798678	800	10
11	“Rising Star Gabon 2026”	Durée souhaitée : 1’00 à 2’00 minutes\nLivraison : avant le 5 décembre 2025\nLangue : Français\nType : Film promotionnel / mélange animation + B-Rolls / voix off\n\n1. Contexte du projet\n\nNotre agence Rising Africa, en partenariat avec l’association de soutien au leadership féminin BPW Section Gabon, organise le concours Rising Star Gabon 2026.\n\nLe 5 décembre, nous réunirons 300 femmes leaders, dirigeantes et entrepreneures gabonaises pour leur présenter officiellement le concours.\nLa vidéo à produire sera l’élément d’ouverture de l’événement — elle doit inspirer, émouvoir et donner envie de participer.\n\n2. Objectif de la vidéo\n\nCréer une courte vidéo promotionnelle (1 à 2 minutes) montrant comment les rêves d’enfants peuvent se transformer en parcours de femmes leaders.\nLe film doit être à la fois inspirant, dynamique et émotionnel.\n\n3. Concept narratif / déroulé souhaité\nPartie 1 – Enfants (animation simple type “dessin au crayon”)\n\nImages d’enfants (animation dessinée, silhouette au crayon ou effet crayonné).\n\nVoix d’enfants (que nous fournirons) exprimant leurs rêves d’enfant :\n\n« Je veux devenir docteure »\n\n« Je veux voyager »\n\n« Je veux inventer des choses »\n\n« Je veux aider les autres »\n\nAmbiance douce, légère, sensible.\n\nTransition\n\nPassage visuel du dessin animé vers la réalité (effet de transformation / morphing simple ou transition fluide).\n\nPartie 2 – Femmes leaders (images B-Rolls)\n\nSélection de footage professionnel : femmes actives, entrepreneures, ingénieures, scientifiques, dirigeantes, etc.\n\nLes images doivent représenter des femmes africaines et idéalement inclure des visuels évoquant le Gabon (sans obligation absolue).\n\nTon : dynamique, professionnel, optimiste, puissant.\n\nVoix off (que nous fournirons)\n\nUn texte court, rythme inspirant, venant relier les rêves d’enfants au leadership féminin d’aujourd’hui et de demain.\n\nFin de vidéo\n\nLogo Rising Star\n\nMention du concours Rising Star Gabon 2026\n\nGénérique partenaires : Rising Africa, BPW Gabon\n\nAmbiance visuelle institutionnelle, élégante, moderne.\n\n4. Ce que nous fournirons\n\nVoix off finale (format .wav ou .mp3)\n\nVoix d’enfants enregistrées par nos soins\n\nLogos en haute résolution\n\nTextes (si nécessaire)\n\n5. Ce que nous attendons du prestataire\n\nA. Production & montage\n\nRecherche, achat ou sourcing des B-Rolls et images stock nécessaires\n\nIntégration et synchronisation des voix enfants & voix off\n\nMontage complet (1–2 minutes)\n\nÉtalonnage, colorimétrie\n\nSound design léger (musique non libre de droits à inclure dans le devis)\n\nGénériques d’ouverture et de clôture\n\nB. Style visuel\n\nProfessionnel, moderne, inspirant\n\nTransition fluide entre animation enfant et images footage\n\nColorimétrie cohérente (tons lumineux, chaleureusement institutionnels)\n\nC. Livrables\n\nVersion finale en Full HD ou 4K (.mp4)\n\nVersion sous-titres (optionnelle si possible)\n\nFichiers sources du montage (optionnel)\n\n6. Compétences requises\n\nParfaite maîtrise du français (compréhension des voix + synchronisation)\n\nMontage vidéo professionnel (Premiere Pro / DaVinci / Final Cut)\n\nBonne expérience en animation simple / motion design\n\nCapacité à gérer l’achat de footage et l’esthétique finale\n\n7. Budget\n\nMerci de proposer un devis comprenant :\n\nLa prestation de montage\n\nL’achat de footage / images stock\n\nL’utilisation ou l’achat de musique\n\nUn éventuel style d’animation simple pour la partie enfants\n\n8. Deadline\n\nLivraison impérative de la version finale avant le 5 décembre 2025\n(une version brouillon devra être proposée quelques jours avant pour validation)	Terminé	2025-11-17 08:50:37.657599	2025-12-11 15:55:35.556351	520	9
13	Création d'une application web	Le projet Taxi Numérique Cameroun vise à moderniser et structurer la mobilité urbaine à Douala à travers une plateforme digitale dédiée exclusivement aux taxis officiels et aux motos agréées par les communes.\nLa solution permet :\n•\tla commande de courses via application mobile,\n•\tun calcul automatique des tarifs,\n•\tune négociation encadrée chauffeur–passager à l’intérieur d’une fourchette réglementée,\n•\tla traçabilité complète des courses,\n•\tun outil de supervision pour la commune (Dashboard).\n	Soumission	2025-12-17 13:03:44.469971	2025-12-17 13:03:44.469976	500	11
\.


--
-- Data for Name: responses; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.responses (id, content, created_at, project_id) FROM stdin;
4	Salut Alban	2025-10-18 22:19:14.788733	7
5	Salut, je prépare et t'envois le contrat dans la plateforme.	2025-10-20 00:16:32.838877	9
6	Salut	2025-10-23 20:36:51.748669	10
7	D'accord. Effectivement c'est pratique.	2025-10-23 20:39:48.139645	10
8	Allons étape par étapes. On vas y arriver.	2025-10-23 20:40:12.776627	10
9	Bonjour,\n\nJe comprends parfaitement votre enjeu : maîtriser ces 4% de frais de transaction tout en simplifiant l'intégration de vos multiples PSPs africains. L'architecture que vous décrivez (Adapter Pattern, routage intelligent) est la voie royale pour y parvenir.\n\nJe peux vous livrer cette passerelle sécurisée (DevSecOps), optimisant activement vos coûts, en 3 semaines. Pour cette collaboration directe, mon offre descend à 800€ (au lieu de 1055.72€). Vous ne réglez qu'à la livraison finale.\n\nVous trouverez l'offre détaillée en PDF ci-joint.\n\nQuestion experte : Pour affiner le routage stablecoin, quelle est la latence moyenne acceptable pour les appels aux APIs de Yellow Card concernant la gestion de trésorerie ?	2025-12-10 18:57:01.653438	12
\.


--
-- Data for Name: super_admins; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.super_admins (id, email, hashed_password, is_active, created_at, updated_at) FROM stdin;
2	code.ia.insights@gmail.com	$5$rounds=535000$vkoo8h5WFRzweb2O$bRLz8Snno1wbQWMHWiXEchtKKlphvpIUV/i71UOqovD	t	2025-10-16 14:10:31.764502	2025-10-16 14:10:31.764502
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dev_offshore_admin
--

COPY public.users (id, email, hashed_password, is_verified, email_verification_token, is_active, created_at, updated_at) FROM stdin;
3	s.r.alex.ouedraogo@gmail.com	$5$rounds=535000$8DzAw1kVcRinjAQM$F4Y6le7.PQI4GklKdAXC9v.MyRdGD6e1tx.HZxS6Dn1	f	InMuci5hbGV4Lm91ZWRyYW9nb0BnbWFpbC5jb20i.aPGHMA.QJENp2iERMpWs48thxvasNwNKF8	t	2025-10-17 00:00:52.86535	2025-10-17 00:00:52.86535
1	s.r.a.ouedraogo@gmail.com	$5$rounds=535000$YFkYQXCnoiCEOiWp$pe9qTIuBLrTQFB4lDp0YZ5sx8opUKb6XlpRATgowsZ3	t	InMuci5hLm91ZWRyYW9nb0BnbWFpbC5jb20i.aPESwA.xyn0TXqvhXPguuGHodq3-ML5ncQ	t	2025-10-16 15:44:04.206576	2025-10-18 17:17:26.733746
4	prodevking1@gmail.com	$5$rounds=535000$wbuhwN4V/o6LtgOG$2KPxkx.3N/I0FLf8qvGq7.p3zA7L/nfkvoIAbbS.sp7	t	InByb2RldmtpbmcxQGdtYWlsLmNvbSI.aPQIpA.Q_U2BFM-yKP5qJ04Zy3aAcRkrH0	t	2025-10-18 21:37:41.657676	2025-10-18 21:44:19.63402
5	yipenenye@gmail.COM	$5$rounds=535000$MNyQriwQbBOa97Nw$eWDd6lxKmZEszHUwuH3TLd.6mm5FsfUV8KOdztOFLj0	f	InlpcGVuZW55ZUBnbWFpbC5DT00i.aPQOWQ.cavLG_98drg_3yhiIceFUgXCD9o	t	2025-10-18 22:02:01.686199	2025-10-18 22:02:01.686203
6	wende.ouedraogo@gmail.com 	$5$rounds=535000$fuLRB8m9OypDvXdL$sGXFrGy86grUT0nIQacqpd6UnMEZZETHC6.BYTdAHE4	t	IndlbmRlLm91ZWRyYW9nb0BnbWFpbC5jb20gIg.aPQQkg.Za0iwOutYOEAJ-euVQI7NVGGlgA	t	2025-10-18 22:11:31.239785	2025-10-18 22:12:01.474273
7	sserge444@gmail.com	$5$rounds=535000$skHlMOs2bmLEZwse$YLqpItO/QoWsmBHxX/M07WWDzeu3Kix5ZTI6R0PwBC4	f	InNzZXJnZTQ0NEBnbWFpbC5jb20i.aPVV5A.lTQsfZUMd1Nvf4s0oAd0NyAlm24	t	2025-10-19 21:19:33.573024	2025-10-19 21:19:33.573028
8	ramdemichee@gmail.com	$5$rounds=535000$ExpQb6Dp0H7mbEJz$XI6IKTnGzLzQRlv5PhSjteoZJ1dYI.2J4eo4ub1wc.A	t	InJhbWRlbWljaGVlQGdtYWlsLmNvbSI.aPqRNg.X3tKakT273CurnEOJrk_apUT6fE	t	2025-10-23 20:34:00.336497	2025-10-26 19:27:30.760716
9	karine@womensrise.org	$5$rounds=535000$QHV7Ze178KsRw1FZ$nG6mZyK0Pmfahp1MBpEiZ.ryYlFVdpvpdOInQCbeJ5/	f	ImthcmluZUB3b21lbnNyaXNlLm9yZyI.aRrh2w.DLWcdPrH5Sr7jH9b6vUc6FBgdrw	t	2025-11-17 08:50:37.1061	2025-11-17 08:50:37.106105
10	ouedraogoyannick24@gmail.com	$5$rounds=535000$.dXgUaHlUIFXXN82$GL9pajnJSUvTSf8WT5zqsxraLh7zAE6GkgO7XBmVwo/	f	Im91ZWRyYW9nb3lhbm5pY2syNEBnbWFpbC5jb20i.aTmwng.vijFnS7O3wW3CaUIRXRbGS4X1YU	t	2025-12-10 17:40:52.833696	2025-12-10 17:40:52.833712
11	nasertatsa@yahoo.fr	$5$rounds=535000$qW7dsiChAa17S4AE$v6I39jlmbXfte5Z9jzTP.Bt/bvvOPzl5aHeAjUIIkw/	t	Im5hc2VydGF0c2FAeWFob28uZnIi.aUKqJg.r4ZA_Rpw4d-KNyxswdM9aHy19tY	t	2025-12-17 13:03:41.909479	2025-12-17 13:04:26.478487
\.


--
-- Name: bid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.bid_id_seq', 2, true);


--
-- Name: bug_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.bug_reports_id_seq', 1, true);


--
-- Name: contracts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.contracts_id_seq', 2, true);


--
-- Name: course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.course_id_seq', 27, true);


--
-- Name: id_checks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.id_checks_id_seq', 2, true);


--
-- Name: leads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.leads_id_seq', 24, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.messages_id_seq', 25, true);


--
-- Name: password_reset_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.password_reset_requests_id_seq', 6, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.projects_id_seq', 14, true);


--
-- Name: responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.responses_id_seq', 9, true);


--
-- Name: super_admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.super_admins_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev_offshore_admin
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- Name: bid bid_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (id);


--
-- Name: bug_reports bug_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bug_reports
    ADD CONSTRAINT bug_reports_pkey PRIMARY KEY (id);


--
-- Name: conducteur conducteur_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.conducteur
    ADD CONSTRAINT conducteur_pkey PRIMARY KEY (licence_id);


--
-- Name: contracts contracts_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.contracts
    ADD CONSTRAINT contracts_pkey PRIMARY KEY (id);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);


--
-- Name: id_checks id_checks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.id_checks
    ADD CONSTRAINT id_checks_pkey PRIMARY KEY (id);


--
-- Name: leads leads_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.leads
    ADD CONSTRAINT leads_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: password_reset_requests password_reset_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.password_reset_requests
    ADD CONSTRAINT password_reset_requests_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: responses responses_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.responses
    ADD CONSTRAINT responses_pkey PRIMARY KEY (id);


--
-- Name: super_admins super_admins_email_key; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.super_admins
    ADD CONSTRAINT super_admins_email_key UNIQUE (email);


--
-- Name: super_admins super_admins_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.super_admins
    ADD CONSTRAINT super_admins_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: bid bid_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(id);


--
-- Name: bid bid_licence_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_licence_id_fkey FOREIGN KEY (licence_id) REFERENCES public.conducteur(licence_id);


--
-- Name: bug_reports bug_reports_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bug_reports
    ADD CONSTRAINT bug_reports_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: bug_reports bug_reports_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.bug_reports
    ADD CONSTRAINT bug_reports_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: contracts contracts_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.contracts
    ADD CONSTRAINT contracts_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: id_checks id_checks_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.id_checks
    ADD CONSTRAINT id_checks_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: messages messages_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: messages messages_sender_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_sender_id_fkey FOREIGN KEY (sender_id) REFERENCES public.users(id);


--
-- Name: password_reset_requests password_reset_requests_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.password_reset_requests
    ADD CONSTRAINT password_reset_requests_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: projects projects_belongs_to_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_belongs_to_id_fkey FOREIGN KEY (belongs_to_id) REFERENCES public.users(id);


--
-- Name: responses responses_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dev_offshore_admin
--

ALTER TABLE ONLY public.responses
    ADD CONSTRAINT responses_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- PostgreSQL database dump complete
--

\unrestrict WadRrjLcI7IStCWihpy1H3ft3Rg9Y3jyQZKKkvwOUvbn9LwqouvTL6zPfaos2qw

--
-- Database "glex_talent_db" dump
--

--
-- PostgreSQL database dump
--

\restrict FWb2cq9ddMaGqjIfIuDWQ8D8hVPNH5mzTwSXQDXCHBDvpdcJV5S70VJcyNr7gby

-- Dumped from database version 16.10 (Debian 16.10-1.pgdg13+1)
-- Dumped by pg_dump version 16.10 (Debian 16.10-1.pgdg13+1)

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

--
-- Name: glex_talent_db; Type: DATABASE; Schema: -; Owner: glex_talent
--

CREATE DATABASE glex_talent_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE glex_talent_db OWNER TO glex_talent;

\unrestrict FWb2cq9ddMaGqjIfIuDWQ8D8hVPNH5mzTwSXQDXCHBDvpdcJV5S70VJcyNr7gby
\connect glex_talent_db
\restrict FWb2cq9ddMaGqjIfIuDWQ8D8hVPNH5mzTwSXQDXCHBDvpdcJV5S70VJcyNr7gby

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
-- Name: job_applications; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.job_applications (
    id integer NOT NULL,
    application_date timestamp without time zone,
    status character varying,
    cover_letter_text text,
    job_id integer NOT NULL,
    candidate_id integer NOT NULL
);


ALTER TABLE public.job_applications OWNER TO glex_talent;

--
-- Name: job_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.job_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_applications_id_seq OWNER TO glex_talent;

--
-- Name: job_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.job_applications_id_seq OWNED BY public.job_applications.id;


--
-- Name: job_postings; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.job_postings (
    id integer NOT NULL,
    title character varying NOT NULL,
    description text NOT NULL,
    company_name character varying,
    location character varying,
    job_type character varying,
    salary_range character varying,
    is_active boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    posted_by_id integer
);


ALTER TABLE public.job_postings OWNER TO glex_talent;

--
-- Name: job_postings_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.job_postings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_postings_id_seq OWNER TO glex_talent;

--
-- Name: job_postings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.job_postings_id_seq OWNED BY public.job_postings.id;


--
-- Name: job_skills; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.job_skills (
    id integer NOT NULL,
    job_id integer NOT NULL,
    skill_id integer NOT NULL,
    is_required boolean NOT NULL,
    level_required character varying(20)
);


ALTER TABLE public.job_skills OWNER TO glex_talent;

--
-- Name: job_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.job_skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_skills_id_seq OWNER TO glex_talent;

--
-- Name: job_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.job_skills_id_seq OWNED BY public.job_skills.id;


--
-- Name: meeting_attendees; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.meeting_attendees (
    user_id integer NOT NULL,
    meeting_id integer NOT NULL
);


ALTER TABLE public.meeting_attendees OWNER TO glex_talent;

--
-- Name: meetings; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.meetings (
    id integer NOT NULL,
    organizer_id integer NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(255),
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone NOT NULL,
    link character varying(255),
    address character varying(255),
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.meetings OWNER TO glex_talent;

--
-- Name: meetings_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.meetings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.meetings_id_seq OWNER TO glex_talent;

--
-- Name: meetings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.meetings_id_seq OWNED BY public.meetings.id;


--
-- Name: recruiter_jobs; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.recruiter_jobs (
    id integer NOT NULL,
    recruiter_id integer NOT NULL,
    job_title character varying(100) NOT NULL,
    job_description character varying(255),
    location character varying(100),
    company_name character varying(100),
    employment_type character varying(50),
    experience_level character varying(50),
    required_skills character varying(255),
    preferred_skills character varying(255),
    application_deadline timestamp without time zone,
    salary_range character varying(50),
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.recruiter_jobs OWNER TO glex_talent;

--
-- Name: recruiter_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.recruiter_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recruiter_jobs_id_seq OWNER TO glex_talent;

--
-- Name: recruiter_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.recruiter_jobs_id_seq OWNED BY public.recruiter_jobs.id;


--
-- Name: recruiter_profiles; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.recruiter_profiles (
    id integer NOT NULL,
    user_id integer NOT NULL,
    company_name character varying(100) NOT NULL,
    company_description character varying(255)
);


ALTER TABLE public.recruiter_profiles OWNER TO glex_talent;

--
-- Name: recruiter_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.recruiter_profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recruiter_profiles_id_seq OWNER TO glex_talent;

--
-- Name: recruiter_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.recruiter_profiles_id_seq OWNED BY public.recruiter_profiles.id;


--
-- Name: skills; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.skills (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.skills OWNER TO glex_talent;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.skills_id_seq OWNER TO glex_talent;

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- Name: test_answers; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.test_answers (
    id integer NOT NULL,
    question_id integer NOT NULL,
    user_id integer,
    answer_text character varying(255),
    selected_option character varying(255),
    is_correct boolean
);


ALTER TABLE public.test_answers OWNER TO glex_talent;

--
-- Name: test_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.test_answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_answers_id_seq OWNER TO glex_talent;

--
-- Name: test_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.test_answers_id_seq OWNED BY public.test_answers.id;


--
-- Name: test_questions; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.test_questions (
    id integer NOT NULL,
    test_id integer NOT NULL,
    question_text character varying(255) NOT NULL,
    question_type character varying(50) NOT NULL,
    options json
);


ALTER TABLE public.test_questions OWNER TO glex_talent;

--
-- Name: test_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.test_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_questions_id_seq OWNER TO glex_talent;

--
-- Name: test_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.test_questions_id_seq OWNED BY public.test_questions.id;


--
-- Name: test_results; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.test_results (
    id integer NOT NULL,
    user_id integer NOT NULL,
    test_id integer NOT NULL,
    score double precision NOT NULL,
    completed_at timestamp without time zone NOT NULL
);


ALTER TABLE public.test_results OWNER TO glex_talent;

--
-- Name: test_results_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.test_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_results_id_seq OWNER TO glex_talent;

--
-- Name: test_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.test_results_id_seq OWNED BY public.test_results.id;


--
-- Name: tests; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.tests (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(255),
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tests OWNER TO glex_talent;

--
-- Name: tests_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tests_id_seq OWNER TO glex_talent;

--
-- Name: tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;


--
-- Name: tutorial_comments; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.tutorial_comments (
    id integer NOT NULL,
    tutorial_id integer NOT NULL,
    user_id integer NOT NULL,
    content character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tutorial_comments OWNER TO glex_talent;

--
-- Name: tutorial_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.tutorial_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tutorial_comments_id_seq OWNER TO glex_talent;

--
-- Name: tutorial_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.tutorial_comments_id_seq OWNED BY public.tutorial_comments.id;


--
-- Name: tutorials; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.tutorials (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(255),
    created_at timestamp without time zone NOT NULL,
    content character varying(1000) NOT NULL,
    video_url character varying(255)
);


ALTER TABLE public.tutorials OWNER TO glex_talent;

--
-- Name: tutorials_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.tutorials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tutorials_id_seq OWNER TO glex_talent;

--
-- Name: tutorials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.tutorials_id_seq OWNED BY public.tutorials.id;


--
-- Name: user_education; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_education (
    id integer NOT NULL,
    user_id integer NOT NULL,
    institution character varying(100) NOT NULL,
    degree character varying(100) NOT NULL,
    start_date timestamp without time zone,
    end_date timestamp without time zone
);


ALTER TABLE public.user_education OWNER TO glex_talent;

--
-- Name: user_education_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_education_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_education_id_seq OWNER TO glex_talent;

--
-- Name: user_education_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_education_id_seq OWNED BY public.user_education.id;


--
-- Name: user_experience; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_experience (
    id integer NOT NULL,
    user_id integer NOT NULL,
    company character varying(100) NOT NULL,
    "position" character varying(100) NOT NULL,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    description character varying(500)
);


ALTER TABLE public.user_experience OWNER TO glex_talent;

--
-- Name: user_experience_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_experience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_experience_id_seq OWNER TO glex_talent;

--
-- Name: user_experience_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_experience_id_seq OWNED BY public.user_experience.id;


--
-- Name: user_notifications; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_notifications (
    id integer NOT NULL,
    user_id integer NOT NULL,
    message character varying(255) NOT NULL,
    is_read boolean NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_notifications OWNER TO glex_talent;

--
-- Name: user_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_notifications_id_seq OWNER TO glex_talent;

--
-- Name: user_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_notifications_id_seq OWNED BY public.user_notifications.id;


--
-- Name: user_profiles; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_profiles (
    id integer NOT NULL,
    user_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    bio character varying(1000)
);


ALTER TABLE public.user_profiles OWNER TO glex_talent;

--
-- Name: user_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_profiles_id_seq OWNER TO glex_talent;

--
-- Name: user_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_profiles_id_seq OWNED BY public.user_profiles.id;


--
-- Name: user_projects; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_projects (
    id integer NOT NULL,
    user_id integer NOT NULL,
    project_name character varying(100) NOT NULL,
    description character varying(255),
    start_date timestamp without time zone,
    end_date timestamp without time zone
);


ALTER TABLE public.user_projects OWNER TO glex_talent;

--
-- Name: user_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_projects_id_seq OWNER TO glex_talent;

--
-- Name: user_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_projects_id_seq OWNED BY public.user_projects.id;


--
-- Name: user_settings; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_settings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    theme character varying(20) NOT NULL,
    notifications_enabled boolean NOT NULL,
    language character varying(20) NOT NULL
);


ALTER TABLE public.user_settings OWNER TO glex_talent;

--
-- Name: user_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_settings_id_seq OWNER TO glex_talent;

--
-- Name: user_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_settings_id_seq OWNED BY public.user_settings.id;


--
-- Name: user_skills; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_skills (
    id integer NOT NULL,
    user_id integer NOT NULL,
    skill_id integer NOT NULL,
    skill_name character varying(50) NOT NULL,
    proficiency character varying(20),
    validity timestamp without time zone NOT NULL
);


ALTER TABLE public.user_skills OWNER TO glex_talent;

--
-- Name: user_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_skills_id_seq OWNER TO glex_talent;

--
-- Name: user_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_skills_id_seq OWNED BY public.user_skills.id;


--
-- Name: user_social_links; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.user_social_links (
    id integer NOT NULL,
    user_id integer NOT NULL,
    platform character varying(50) NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE public.user_social_links OWNER TO glex_talent;

--
-- Name: user_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.user_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_social_links_id_seq OWNER TO glex_talent;

--
-- Name: user_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.user_social_links_id_seq OWNED BY public.user_social_links.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: glex_talent
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    role character varying(20) NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO glex_talent;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: glex_talent
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO glex_talent;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: glex_talent
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: job_applications id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_applications ALTER COLUMN id SET DEFAULT nextval('public.job_applications_id_seq'::regclass);


--
-- Name: job_postings id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_postings ALTER COLUMN id SET DEFAULT nextval('public.job_postings_id_seq'::regclass);


--
-- Name: job_skills id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_skills ALTER COLUMN id SET DEFAULT nextval('public.job_skills_id_seq'::regclass);


--
-- Name: meetings id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.meetings ALTER COLUMN id SET DEFAULT nextval('public.meetings_id_seq'::regclass);


--
-- Name: recruiter_jobs id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.recruiter_jobs ALTER COLUMN id SET DEFAULT nextval('public.recruiter_jobs_id_seq'::regclass);


--
-- Name: recruiter_profiles id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.recruiter_profiles ALTER COLUMN id SET DEFAULT nextval('public.recruiter_profiles_id_seq'::regclass);


--
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- Name: test_answers id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_answers ALTER COLUMN id SET DEFAULT nextval('public.test_answers_id_seq'::regclass);


--
-- Name: test_questions id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_questions ALTER COLUMN id SET DEFAULT nextval('public.test_questions_id_seq'::regclass);


--
-- Name: test_results id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_results ALTER COLUMN id SET DEFAULT nextval('public.test_results_id_seq'::regclass);


--
-- Name: tests id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);


--
-- Name: tutorial_comments id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tutorial_comments ALTER COLUMN id SET DEFAULT nextval('public.tutorial_comments_id_seq'::regclass);


--
-- Name: tutorials id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tutorials ALTER COLUMN id SET DEFAULT nextval('public.tutorials_id_seq'::regclass);


--
-- Name: user_education id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_education ALTER COLUMN id SET DEFAULT nextval('public.user_education_id_seq'::regclass);


--
-- Name: user_experience id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_experience ALTER COLUMN id SET DEFAULT nextval('public.user_experience_id_seq'::regclass);


--
-- Name: user_notifications id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_notifications ALTER COLUMN id SET DEFAULT nextval('public.user_notifications_id_seq'::regclass);


--
-- Name: user_profiles id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_profiles ALTER COLUMN id SET DEFAULT nextval('public.user_profiles_id_seq'::regclass);


--
-- Name: user_projects id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_projects ALTER COLUMN id SET DEFAULT nextval('public.user_projects_id_seq'::regclass);


--
-- Name: user_settings id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_settings ALTER COLUMN id SET DEFAULT nextval('public.user_settings_id_seq'::regclass);


--
-- Name: user_skills id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_skills ALTER COLUMN id SET DEFAULT nextval('public.user_skills_id_seq'::regclass);


--
-- Name: user_social_links id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_social_links ALTER COLUMN id SET DEFAULT nextval('public.user_social_links_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: job_applications; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.job_applications (id, application_date, status, cover_letter_text, job_id, candidate_id) FROM stdin;
2	2025-10-17 13:13:28.847078	interview	yyttttt	1	14
1	2025-10-05 20:53:03.012004	accepted	HEHEHEHEHEHHEH	1	3
3	2025-10-18 11:46:53.412942	read	Madame, Monsieur,\nJe vous adresse ma candidature pour le poste de téléconseiller au sein de votre structure. Doté(e) d’un excellent sens de l’écoute, d’une aisance relationnelle et d’une forte capacité d’adaptation, je suis convaincu(e) de pouvoir contribuer efficacement à la qualité de votre service client.\nAu cours de mes expériences précédentes, j’ai développé des compétences solides en communication, gestion des appels entrants et sortants, traitement des demandes, et fidélisation des clients. Ma rigueur, ma patience et ma capacité à gérer les situations délicates me permettent d’apporter des réponses claires et rassurantes, tout en respectant les procédures internes.\nTravailler en tant que téléconseiller représente pour moi bien plus qu’un emploi : c’est l’opportunité de valoriser l’image de votre entreprise à travers chaque interaction, en plaçant l’humain au cœur de la relation.\nJe serais honoré(e) de pouvoir vous exposer plus en détail mes motivations lors d’un entretien. Je vous remercie par avance pour l’attention portée à ma candidature et reste à votre disposition pour toute information complémentaire.\nVeuillez agréer, Madame, Monsieur, l’expression de mes salutations distinguées.\n	2	3
\.


--
-- Data for Name: job_postings; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.job_postings (id, title, description, company_name, location, job_type, salary_range, is_active, created_at, updated_at, posted_by_id) FROM stdin;
2	Informatique & Télécommunications | Téléconseiller	\n  _Parler correctement le français, obligatoirement le Dioula et le Moore.  \n_avoir des connaissances sur l'utilisation des logiciels de bureautique courant. \n_Capacité a travailler en équipe dans un environnement dynamique et parfois sous pression  _etre flexible et disposé à travailler  de nuit. 	Anonyme 	Ouagadougou	part_time		t	2025-10-18 11:30:05.893107	2025-10-18 11:30:05.893111	17
1	ONG & Secteur Public | Responsable logistique	 Frontières Espagne est à la recherche d'un(e) Responsable Logistique pour\n renforcer son équipe.\n A. CONDITIONS GENERALES\n Poste\n Pays\n Lieu de travail\n Contrat\n Horaire\n Niveau salarial\n RESPONSABLE LOGISTIQUE\n BURKINA FASO\n MATIACOALI\n CDD 06 MOIS RENOUVELLABLE\n 40 HEURES/SEMAINE\n 09 Selon la grille des fonctions de MSF-Espagne au BF\n B. DESCRIPTION DE TACHES ET DES RESPONSABILITES\n ResponsnBl LITES PRINcIPALES\n @ Appuià ta coordination et ptanification logistique\n . \n. \n. \nAssister le Coordinateur de Projet dans la définition, la planificatior et le suivi des activités\n logistiques, en collaboration avec les responsables médicaux.\n ldentifier et répondre aux besoins logistiques liés à la construction, au transport, à la\n médicales, logements et bureaux.\n 42 Supewision des opérations Iogistiques\n ' \n. \n. \n. \n. \n. \n. \n. \n. \n. \nAssa in issement, éq u ipements et i \nnfrastructu res.\n communication, à l'hébergement, à l'eau, à l'assainissement, à la nourriture et aux articles non\n alimentaires essentiels (N Fl).\n Proposer des solutions adaptées pour l'entretien et l'approvisionnement des structures\n Suivre quotidiennement la mise en æuvre des activités logistiques : construction,\n approvisionnement, transport, communication, gestion de flotte, Eau Hygiène et\n Organiser les systèmes d'approvisionnement, d'entreposage et de distribution.\n Assurer le bon fonctionnement des véhicules, moteurs et équipemenls techniques.\n Mettre en æuvre les activités planifiées en eau et assainissement.\n Organiser le transport du personnel et des biens.\n Garantir la disponibilité et la fiabilité des moyens de communication.\n §| Gestion administrative et RH\n Gérer les aspects administratifs de la logistique : commandes, contrais, assurances, etc.\n Participer à la planification RH logistique (recrutement, formation, évaluation, développement\n du personnel).\n Encadrer et coacher l'équipe logistique du projet, en assurant leur mcntée en\n ffi nétérent technique et maintenance\n Être la référence technique pour toutes les questions logistiques du p.ojet.\n. \n. \nVeiller à l'installation et à l'entretien des espaces fonctionnels (bureaux, logements,\n médicales) \nll\n S'assurer que les équipements sont utilisés conformément aux protocoles MSF lbt aux\n recommandations des fabricants. \n0 Sprufm rifiéduclton dês flsoues\n il\n Définir et suivre les aspects techniques de la politique de sécurité : transport, commur'lication,\n protection, plan d'évacuation et de contingence. \nSurveiller I'application quotidienne des règles de sécurité et signaler tout incidênt au\n '-ÿ'-- \nCoordinateur de Projet. \nv \nCréer un environnement propice à la circulation sécurisée de l'information. \nffi Reporting \n. \ni\n ]i\n ]i\n I\n Participer à la rédaction des rapports mensuels logistiques selon tes directives établies. \n]\n 1\n Respor,rslBrLrrEs SpecrrreuEs A LA Secron MSF / Correxre \n42 Coordination des activités logistiques \n. \nl\n ]\n ]\n Superviser les activités logistiques dans les bureaux, maisons, structures de sapté\n . \nurbaines et périphériques, en collaboration avec le département médical. \nI\n Assurer la gestion des domaines suivants : sécurité appliquée, énergie, transpolrt,\n informatique et télécommunication, biomédical, chaîne de froid, abris, eau, \nI\n assainissement et articles non alimentaires essentiels (NFl). \n@ Sécurité et prévention des risques \n. \n]\n r\n Mettre en place et suivre les mesures de sécurité (extincteurs, bacs à sable, \nI\n ]\n . \n. \n. \nprotections électriques, salubrité des locaux, etc.). \n]\n Garantir la sécurité du personnel dans l'utilisation des équipements (électricité, j\n moteurs, pompes, etc.). \nd'évacuationetd;urgence '--'-----r \nr \n]\n Renforcer les dispositifs de sécurité incendie et participer à l'élaboration des pldns\n ' \nl\n Sensibiliser le personnel à l'utilisation correcte des outils et équipements techniques.\n ffi Maintenance et infrastructures \n. \nl\n l\n ldentifier, inventorier, maintenir et remplacer les équipements, y compris bioméflicaux,\n . \n. \nen collaboration avec les techniciens concernés. \n]\n Veiller à la conformité et au bon fonctionnement des installations électriques et I\n dispositifs de protection. \nf\n Participer à I'amélioration des infrastructures (eau, électricité, évacuation, etc.) et à la\n mise en æuvre de plans de contingence. \n6f Gestion opérationnelle\n . \n. \n' \n)\n Assurer le bon déroulement des activités logistiques : transport, hébergement, gestion\n de flotte, communication, etc.\n . \nÊtre le point focal logistique pour toutes les questions techniques à Matiacoali.\n Encadrer, former et coacher le personnel logistique local.\n @ Eau, Hygiène et Assainissement (EHA)\n . \n. \nCollaborer avec les techniciens eau hygiène et assainissement, pour\n l'eau potable et la qualité des infrastructures sanitaires.\n Suivre la gestion des déchets (médicaux, non médicaux, dangereux\n protocoles.\n æiè\n #\n §eFffi\n. \n/ \n. \nÉvaluer régulièrement les conditions EHA et mettre en æuvre des plans\n d'amélioration.\n Hygiène et propreté\n . \nSuperviser les hygiénistes et s'assurer de leur présence effective sur res postes.\n Veiller à Ia propreté des structures de santé (lits, matelas, cuisine, sanitaires, etc.)\n =-lo- l-= -o.--= p0llpére^{ian a{ Cantrâla daa lnfaetions).\n ffi Suivi, évaluation et reporting\n . \n. \n. \nTenir à jour les fichiers de suivi (carburant, consommables, inventaires, etc.).\n Evaluer les besoins en ressources humaines logistiques et définir les pricrités.\n Participer à la rédaction des rapports d'activités mensuels et d'intervention.\n Q approvisionnement et gestion des stocks\n . \n. \nAssurer I'approvisionnement en matériel et carburant selon les procédues MSF.\n Gérer les stocks et les flux logistiques (entrées/sorties) conformémenl aux normes.\n @ Communication et coordination\n . \n. \nOrganiser des réunions régulières avec l'équipe logistique et le responsable médical\n de la sous-base.\n Proposer et implémenter des outils innovants pour optimiser le support lagistique aux\n programmes médicaux.\n C. QUALIFICATIONS DEMANDEES\n Û EDUCATION\n . \n. \ntndispensable : Être titulaire d'une Licence en Génie civil, Eau, Hygiène et\n Assainissement, Logistique humanitaire, ou tout autre diplôme technique jugé\n pertinent.\n Un diplôme d'ingénieur constitue un atout.\n fi Expérience professionnelle\n . \n. \nlndispensable : Avoir au moins deux (02) ans d'expérience dans un poste\n logistique en lien avec les activités mentionnées.\n Une expérience préalable avec Médecins Sans Frontières (MSF) ou une autre ONG\n humanitaire est un atout.\n Q Langues\n . \n. \nlndispensable : Maîtrise du français (oral et écrit).\n La maîtrise de la langue locale est un atout.\n E Compétences informatiques\n . \nBonne maîtrise du pack Microsoft Office (Word, Excel, Outlook, PowePoint).\n @ Gompétences comportementales et techniques\n . \n. \n. \nGestion et développement du personnel\n Adhésion aux principes humanitaires de MSF\n .€Ë\n ffi\n Souplesse de comportement et capacité d'adaptation\n. \n. \nOrientation résultats et sens de la qualité\n Esprit d'équipe et coopération	Médecins Sans Frontières Espagne	Ouagadougou	full_time	Niveau salarial\t:\t09 Selon la grille des fonctions de MSF-Espagne au BF	f	2025-10-05 20:42:57.223109	2025-10-18 18:22:25.893086	2
\.


--
-- Data for Name: job_skills; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.job_skills (id, job_id, skill_id, is_required, level_required) FROM stdin;
1	1	1	t	professional
\.


--
-- Data for Name: meeting_attendees; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.meeting_attendees (user_id, meeting_id) FROM stdin;
14	1
2	1
3	2
2	2
\.


--
-- Data for Name: meetings; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.meetings (id, organizer_id, title, description, start_time, end_time, link, address, created_at) FROM stdin;
1	2	Entretien - ONG & Secteur Public | Responsable logistique	Entretien avec Hamidou KONFE pour le poste de ONG & Secteur Public | Responsable logistique.	2025-10-18 10:00:00	2025-10-18 11:00:00	https://workforcenow.adp.com/mascsr/default/mdf/recruitment/recruitment.html?cid=cefdcbd8-57ee-4443-850b-74160ac06342&ccId=19000101_000001&lang=en_CA&jobId=549117	\N	2025-10-17 13:17:12.987808
2	2	Entretien - ONG & Secteur Public | Responsable logistique	Entretien avec Michée RAMDE pour le poste de ONG & Secteur Public | Responsable logistique.	2025-10-19 10:00:00	2025-10-19 11:00:00	https://meet.google.com/mtr-kkhx-mrp	\N	2025-10-18 14:25:37.161953
\.


--
-- Data for Name: recruiter_jobs; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.recruiter_jobs (id, recruiter_id, job_title, job_description, location, company_name, employment_type, experience_level, required_skills, preferred_skills, application_deadline, salary_range, created_at) FROM stdin;
\.


--
-- Data for Name: recruiter_profiles; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.recruiter_profiles (id, user_id, company_name, company_description) FROM stdin;
2	17	SARL/Outsourcing	Télécommunication, call center
1	2	Glex Talent	Glex Talent est une plateforme numérique de recrutement et de gestion des talents qui vise à rendre l’insertion professionnelle plus transparente, efficace et inclusive
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.skills (id, name) FROM stdin;
1	Gestion et développement du personnel
2	Adhésion aux principes humanitaires de MSF
3	Excel
4	HTML
5	CSS
6	JavaScript
7	React
8	Git
9	API REST
10	SQL
11	Node
12	Node.js
13	Python
14	Power BI
15	Tableau
16	Machine Learning
17	statistiques
18	modélisation
19	Sémiologie
20	lecture ECG
21	gestes techniques
22	logiciels médicaux
23	rédaction de dossiers
24	protocoles
25	Soins infirmiers
26	gestion des urgences
27	surveillance post-op
28	outils biomédicaux
29	dossiers patients
30	SIRH
31	ATS (ex : Taleo)
32	rédaction d’annonces
33	entretiens structurés
34	reporting RH
35	Sage
36	QuickBooks
37	fiscalité
38	normes IFRS
39	analyse financière
40	gestion de trésorerie
41	AutoCAD
42	Revit
43	calculs de structure
44	normes ISO
45	gestion de chantier
46	topographie
47	Canva
48	Meta Business Suite
49	SEO
50	Google Analytics
51	rédaction web
52	Google Forms
53	Google sheets
54	Conception pédagogique
55	outils LMS (Moodle, Google Classroom)
56	évaluation
57	animation de groupe
58	TCP/IP
59	Linux
60	Windows Server
61	cybersécurité
62	virtualisation
63	dépannage matériel
64	ERP (SAP, Odoo)
65	gestion des stocks
66	planification
67	incoterms
68	suivi des livraisons
69	Rédaction juridique
70	veille réglementaire
71	droit du travail
72	outils de gestion documentaire
73	Code du travail Burkinabe
74	Rédaction d’actes
75	droit OHADA
76	outils de GED
77	analyse contractuelle
78	Cadre logique
79	budget prévisionnel
80	Suivi-Évaluation
81	outils collaboratifs
82	rapports bailleurs
83	Pack Office
84	classement
85	rédaction administrative
86	gestion d’agenda
87	archivage numérique
88	Gestion des dossiers du personnel
89	Maintenance d’équipements
90	lecture de schémas
91	normes de sécurité
92	calibration
93	GMAO
94	entretien clinique
95	rédaction de rapports
96	outils de suivi
97	partogramme
98	pare-feu
99	tableaux de bord
100	Photoshop
101	Illustrator
102	Premiere Pro
103	After Effects
104	storyboard
105	gestion d’équipe
106	sécurité
107	Saisie des pièces comptables
108	lettrage
109	rapprochements bancaires
110	gestion des journaux comptables
111	Suivi des encaissements/décaissements
112	gestion de caisse
113	états de rapprochement
114	Élaboration de tableaux de bord
115	suivi budgétaire
116	ventilation analytique
117	Déclarations fiscales (TVA, IR, IS)
118	veille réglementaire locale (ex : fiscalité burkinabè)
119	Classement des pièces
120	respect des procédures internes
121	préparation des audits
122	Rédaction de rapports financiers
123	synthèses pour les bailleurs ou la direction
124	Analyse des besoins
125	formulation d’objectifs pédagogiques
126	scénarisation
127	conception de parcours
128	Élaboration du plan de formation
129	évaluation d’impact
130	Indicateurs d’apprentissage
131	feedback 360°
132	Cartographie des compétences
133	entretiens de développement
134	plans de succession
135	Élaboration des contrats
136	suivi des dossiers du personnel
137	gestion des absences et congés
138	Préparation de la paie
139	calcul des cotisations
140	DSN
141	relations avec la CNSS et autres organismes
142	Suivi des effectifs
143	tableaux de bord sociaux
144	indicateurs RH (absentéisme, turnover, etc.)
145	Organisation des parcours d’intégration
146	livret d’accueil
147	suivi des périodes d’essai
148	Rédaction de notes de service
149	gestion des affichages obligatoires
150	relais entre direction et salarie
151	Publication d’annonces
152	tri de CV
153	organisation des entretiens
154	gestion des réponses aux candidats
155	mise à jour des fiches de poste
156	Techniques d’accueil physique et téléphonique
157	écoute active
158	gestion des réclamations
159	Argumentation et reformulation
160	gestion des objections
161	rédaction de mails et courriers professionnels
162	CRM (ex : Salesforce, Zoho)
163	logiciels de caisse
164	Identification des besoins
165	présentation de produits/services
166	techniques de closing
167	Saisie des commandes
168	mise à jour des bases clients
169	traitement des demandes
170	Médiation et désamorçage
171	gestion des clients difficiles
172	veille concurrentielle
173	Élaboration des demandes d’achat
174	passation de commandes
175	respect des procédures internes et bailleurs
176	Collecte des besoins, priorisation, rédaction des spécifications techniques
177	Recherche de fournisseurs
178	analyse comparative
179	négociation des prix et délais
180	Rédaction des bons de commande
181	suivi des contrats
182	archivage des pièces justificatives
183	gestion des retours
184	Tableaux de suivi des achats
185	indicateurs de performance
186	rapports périodiques
187	Maîtrise des cuissons
188	sauces
189	dressage
190	pâtisserie
191	découpes
192	Création de menus équilibrés
193	gestion des fiches techniques
194	Application des normes HACCP
195	contrôle des températures
196	nettoyage des postes
197	Réception des marchandises
198	inventaire
199	rotation des produits (FIFO)
200	gestion des pertes
201	Répartition des tâches
202	formation des commis
203	gestion des conflits
204	animation d’équipe
205	Calcul des ratios
206	optimisation des achats
207	adaptation des portions
208	suivi du coût matière
209	Anticipation des pics d’activité
210	coordination avec la salle
211	respect des délais
212	Utilisation de logiciels de gestion de cuisine (ex : ePack Hygiene, Nutrilog, Excel)
\.


--
-- Data for Name: test_answers; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.test_answers (id, question_id, user_id, answer_text, selected_option, is_correct) FROM stdin;
\.


--
-- Data for Name: test_questions; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.test_questions (id, test_id, question_text, question_type, options) FROM stdin;
\.


--
-- Data for Name: test_results; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.test_results (id, user_id, test_id, score, completed_at) FROM stdin;
\.


--
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.tests (id, name, description, created_at) FROM stdin;
\.


--
-- Data for Name: tutorial_comments; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.tutorial_comments (id, tutorial_id, user_id, content, created_at) FROM stdin;
\.


--
-- Data for Name: tutorials; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.tutorials (id, title, description, created_at, content, video_url) FROM stdin;
\.


--
-- Data for Name: user_education; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_education (id, user_id, institution, degree, start_date, end_date) FROM stdin;
1	3	Universite de Ouahigouya	Licence en Gestion des Ressources Humaines	2015-02-01 00:00:00	2017-11-06 00:00:00
2	3	Institut Burkinabè des Arts et de Métiers	Master en administration et gestion des entreprises	2018-02-01 00:00:00	2021-03-08 00:00:00
5	5	Complexe Scolaire les Élites 	BAC G2	2019-10-01 00:00:00	2020-08-08 00:00:00
6	5	Complexe Scolaire les Élites 	CAP Aide Comptable 	2019-10-01 00:00:00	2020-07-25 00:00:00
7	5	Complexe Scolaire Les Élites 	BEP ACC	2018-06-01 00:00:00	2019-06-10 00:00:00
4	5	Institut Burkinabé des Arts et Métiers 	Licence Professionnelle en comptabilité contrôle audit 	2023-10-02 00:00:00	2024-11-10 00:00:00
8	5	Institut Burkinabé des Arts et Métiers 	Brevet de Technicien Supérieur en Finance Comptabilité 	2022-10-01 00:00:00	2023-08-08 00:00:00
9	5	Cabinet BEGA Consult SARL 	Certificat en Excel Avancé 	2025-07-09 00:00:00	2025-07-23 00:00:00
10	5	Cabine BEGA Consult SARL 	Certificat de gestionnaire Financier et Comptable 	2025-08-08 00:00:00	2025-09-10 00:00:00
11	7	Université Aube Nouvelle	Licence profesdionnelle en sciences économique et de gestion option gestion de projet 	2022-10-03 00:00:00	2025-05-03 00:00:00
12	11	École Nationale de Santé Publique (ENSP) Ouhigouya 	Infirmier Diplômé t'etat	2015-09-01 00:00:00	2018-07-25 00:00:00
13	12	UNIVERSITE AUBE NOUVELLE	MASTER 1	2020-03-01 00:00:00	2021-04-18 00:00:00
14	12	UNIVERSITE THOMAS SANKARA	LICENCE 3 EN DROIT	2012-03-02 00:00:00	2018-04-18 00:00:00
15	11	Institut kalu	Master en Coopération Internationale et Aide Humanitaire 	2022-07-21 00:00:00	2024-01-08 00:00:00
16	11	Institut Polytechnique de Marrakech 	Epidémiologie, Santé Publique et promotion de la santé 	2024-03-12 00:00:00	2024-07-08 00:00:00
17	11	Institut kalu	Spécialiste en nutrition dans les situations d'urgence et de crises humanitaire 	2024-05-15 00:00:00	2024-12-06 00:00:00
18	14	Aube Nouvelle	Licence en Finances/Comptabilité	2019-12-01 00:00:00	\N
19	14	IUT/BOBO	BTS en Finances/Comptabilité	2021-08-01 00:00:00	2021-08-31 00:00:00
20	14	Lycée GASMO 2	BAC G2	2015-10-01 00:00:00	2018-07-31 00:00:00
3	3	Université Virtuelle du Burkina Faso	Master en Technologie de l'Education et de la Formation	2025-02-01 00:00:00	\N
21	3	Lycée Provincial de Koudougou	BACA4	2012-10-01 00:00:00	2014-07-31 00:00:00
22	26	Université Joseph KI-ZERBO de Ouagadougou 	Licence/Chimie et Applications 	2018-11-22 00:00:00	2024-11-22 00:00:00
23	26	Université Joseph KI-ZERBO de Ouagadougou 	Master 1/Chimie et Applications 	2024-10-01 00:00:00	2025-10-01 00:00:00
24	26	Lycée Provincial de Bogandé 	BAC /série D	2016-10-01 00:00:00	2018-07-01 00:00:00
25	26	Lycée Communal Bantia de Bogandé 	BEPC	2012-10-01 00:00:00	2015-07-01 00:00:00
26	26	École Primaire Publique de Kossougou 	CEP	2005-10-01 00:00:00	2011-06-01 00:00:00
\.


--
-- Data for Name: user_experience; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_experience (id, user_id, company, "position", start_date, end_date, description) FROM stdin;
2	6	Yup Burkina 	Agent commercial 	2018-05-01 00:00:00	2018-09-01 00:00:00	\N
3	6	Coris money 	Agent commercial 	2019-06-01 00:00:00	2019-10-01 00:00:00	\N
4	6	Performance Consulting 	Assistante Rh	2021-03-01 00:00:00	2021-10-31 00:00:00	\N
5	6	Imperium 	Assistante Rh 	2022-01-01 00:00:00	2022-06-30 00:00:00	\N
6	6	Competence For All-Institute	Assistante Rh 	2023-03-01 00:00:00	2023-05-31 00:00:00	\N
7	6	Centre Hospitalier Régional de Banfora	Assistante Rh 	2025-01-01 00:00:00	2025-03-31 00:00:00	\N
8	7	PDE-BURKINA 	Assistante technique en accompagnement des entreprises et organisations professionnels	2023-08-01 00:00:00	2023-10-31 00:00:00	\N
9	7	Association OPEN HEART 	Chargée aux partenariats 	2022-01-01 00:00:00	2024-12-31 00:00:00	\N
10	7	TYMS GROUP EXPERTISE	Assistante de direction 	2024-03-18 00:00:00	2025-01-14 00:00:00	\N
11	7	Association OPEN HEART 	Adjointe chargée de projet 	2025-01-01 00:00:00	\N	\N
12	12	PAM	Business support HR	2022-09-08 00:00:00	\N	\N
13	12	SITARAIL	STAGIAIRE RH	2022-04-01 00:00:00	2022-09-01 00:00:00	\N
14	12	CONAREF	STAGIAIRE A LA PROTECTION	2021-02-22 00:00:00	2021-08-21 00:00:00	\N
15	12	BCB	STAGIAIRE 	2021-01-10 00:00:00	2021-02-22 00:00:00	\N
16	12	ONEA	STAGIAIRE RH	2020-08-14 00:00:00	2020-10-14 00:00:00	\N
17	12	ENSEMBLEE NATIONALE	VOLONTAIRE 	2019-03-06 00:00:00	2019-06-06 00:00:00	\N
18	12	ASSEMBLEE NATIONALE	VOLONTAIRE 	2019-10-17 00:00:00	2020-01-03 00:00:00	\N
19	11	ONG TERRE DES HOMMES BURKINA FASO 	Infirmier traitant 	2018-07-02 00:00:00	2018-10-02 00:00:00	\N
20	14	Médecins Sans Frontières Espagne	Assistant des Ressources Humaines	2024-12-01 00:00:00	2025-09-30 00:00:00	\N
21	14	Médecins Sans Frontières Suisse	Assistant des Ressources Humaines/Finances	2022-05-01 00:00:00	2024-11-30 00:00:00	\N
23	3	Exterhum Africa	Stagiaire RH	2022-06-01 00:00:00	2022-12-31 00:00:00	\N
24	3	Independant	Consultant indépendant 	2021-01-01 00:00:00	2022-12-31 00:00:00	\N
25	3	Societe de recyclage/Secteur informel	Manager Général 	2022-01-01 00:00:00	2022-02-28 00:00:00	\N
26	3	Xpert SAS	Chef du département formations professionnelles et chargé des recrutements 	2021-09-01 00:00:00	2022-12-31 00:00:00	\N
27	3	Ison Xperiences	Assistant RH	2020-02-01 00:00:00	2020-05-31 00:00:00	\N
28	3	Ison Xperiences	Stagiaire RH 	2019-10-01 00:00:00	2020-01-31 00:00:00	\N
29	3	Ison Xperiences	Stagiaire RH	2019-07-01 00:00:00	2019-09-30 00:00:00	\N
30	3	AVANSEIL	Stagiaire RH	2019-06-01 00:00:00	2019-07-31 00:00:00	\N
31	3	Ison Xperiences	Stagiaire RH	2019-01-01 00:00:00	2019-06-30 00:00:00	\N
32	3	MINEFID	Stagiaire RH 	2018-10-01 00:00:00	2018-12-31 00:00:00	\N
33	3	COGEB International	Stagiaire RH	2018-04-01 00:00:00	2018-07-31 00:00:00	\N
34	3	Endeavour Mining	Stagiaire RH	2017-10-15 00:00:00	2017-11-15 00:00:00	\N
22	3	Exterhum Africa	Agent RH/Gestionnaire de recrutement	2023-01-01 00:00:00	2023-06-20 00:00:00	\N
1	3	MSF-Espagne	Recruteur	2023-06-23 00:00:00	\N	\N
\.


--
-- Data for Name: user_notifications; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_notifications (id, user_id, message, is_read, created_at) FROM stdin;
\.


--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_profiles (id, user_id, first_name, last_name, bio) FROM stdin;
2	7	Rokia Madongui	SANOU	
3	10	Abdoul Aziz	Zilbala	Je titulaire d'une Licence en Sciences Economiques et de Gestion à l'Université Thomas Sankara
4	12	Jamil Lionel Sanlé	TRAORE	Assistant support RH et titulaire d'une licence en droit etd'un master 1 en Gestion des ressources humaines j'accumule à ce jour 4 années 09 mois d'expériences professionnelles (CDD, Stages). Mes compétences s'articulent autour de plusieurs domaines de la fonction RH dont l'administration du personnel, (suivi des contrats, veuille du respect du règlement intérieur, la paie etc) le recrutement, l'onboarding des staffs et la conception de tableau de bord… De personnalité optimiste, mes valeurs humanistes conjuguées avec mes valeurs productives font de moi un excellent manager RH
1	3	Michée	RAMDE	Professionnel RH engagé, avec plus de 5 ans d’expérience dans le recrutement, la \ngestion administrative et le développement des compétences du personnel. \nExpérience dans des ONG internationales et des environnements multiculturels. \nApproche centrée sur l’humain, l’inclusivité et l’amélioration continue des processus \nRH.
5	14	Hamidou	KONFE	
6	15	Elsa	Somda	
7	20	Issaka	KOUDOUGOU	Etudiant en Informatique 
8	22	Wilfried w w Judicael	ZIDA	
9	24	Gildas 	SALOU 	Détecteur d'une licence en histoire et Archéologie. Polyvalent et dynamique, je recherche constamment à m'améliorer et perfectionner dans tous secteurs d'activité. 
10	25	Eric Sosthène	LANKOANDE	Titulaire d'un Bac+4 en transport logistique et des certificats en gestion des approvisionnements, de gestion de stock et pharmaceutiques, d’achats et logistique, j'ai acquis plusieurs compétences dans le domaine de la logistique. En effet lors de précédents postes j'ai exécuté les tâches telles que :\n- Supervision personnel: Diriger et motiver l'équipe, assigner des tâches, former le personnel et assurer le respect des procédures.\n- Coordination des opérations:\nPlanifier et coordonner les activités de chargement et de déchargement pour assurer l'efficacité et le respect des délais.\n- Contrôle des stocks: Gérer les niveaux de stock s'assurer que les marchandises sont correctement entreposées et que les rapports d'inventaire sont précis après l'inventaire journalier.\n-Planification du transport, Réception et livraison cargos des produits et\nmatériels, Réservation des billets et Programmation des vols et expéditions (Passagers & Cargos) sur la plateforme UNHAS,\n- Autres…
11	26	Gilbert 	BOURGOU	Chimiste de formation, diplômé d'une licence en Chimie Fondamentale et Appliquée, je suis passionné par les sciences et la recherche dans les domaines de la chimie minérale, organique, analytique et industrielle.\n\n
12	28	Sidy Mohamed	KONE	
\.


--
-- Data for Name: user_projects; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_projects (id, user_id, project_name, description, start_date, end_date) FROM stdin;
\.


--
-- Data for Name: user_settings; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_settings (id, user_id, theme, notifications_enabled, language) FROM stdin;
\.


--
-- Data for Name: user_skills; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_skills (id, user_id, skill_id, skill_name, proficiency, validity) FROM stdin;
1	12	3	Excel	professional	2027-10-16 00:00:00
2	12	1	Gestion et développement du personnel	professional	2027-10-16 00:00:00
3	12	2	Adhésion aux principes humanitaires de MSF	professional	2027-10-16 00:00:00
4	11	2	Adhésion aux principes humanitaires de MSF	professional	2027-10-16 00:00:00
5	11	3	Excel	professional	2027-10-16 00:00:00
6	14	2	Adhésion aux principes humanitaires de MSF	medium	2027-10-17 00:00:00
7	14	3	Excel	professional	2027-10-17 00:00:00
8	3	3	Excel	medium	2027-10-17 00:00:00
9	3	2	Adhésion aux principes humanitaires de MSF	medium	2027-10-17 00:00:00
10	3	83	Pack Office	medium	2027-10-17 00:00:00
11	3	73	Code du travail Burkinabe	professional	2027-10-17 00:00:00
12	3	32	rédaction d’annonces	professional	2027-10-17 00:00:00
13	3	47	Canva	medium	2027-10-17 00:00:00
14	3	54	Conception pédagogique	medium	2027-10-17 00:00:00
15	3	157	écoute active	professional	2027-10-17 00:00:00
16	3	135	Élaboration des contrats	professional	2027-10-17 00:00:00
17	3	88	Gestion des dossiers du personnel	professional	2027-10-17 00:00:00
18	3	203	gestion des conflits	medium	2027-10-17 00:00:00
19	3	1	Gestion et développement du personnel	professional	2027-10-17 00:00:00
20	3	52	Google Forms	professional	2027-10-17 00:00:00
21	3	53	Google sheets	professional	2027-10-17 00:00:00
22	3	144	indicateurs RH (absentéisme, turnover, etc.)	professional	2027-10-17 00:00:00
23	3	96	outils de suivi	professional	2027-10-17 00:00:00
24	3	85	rédaction administrative	professional	2027-10-17 00:00:00
25	3	95	rédaction de rapports	professional	2027-10-17 00:00:00
26	3	201	Répartition des tâches	professional	2027-10-17 00:00:00
27	3	141	relations avec la CNSS et autres organismes	professional	2027-10-17 00:00:00
28	26	79	budget prévisionnel	medium	2024-11-01 00:00:00
29	26	47	Canva	medium	2025-11-22 00:00:00
30	26	105	gestion d’équipe	medium	2022-11-22 00:00:00
31	26	4	HTML	medium	2023-11-22 00:00:00
\.


--
-- Data for Name: user_social_links; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.user_social_links (id, user_id, platform, url) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: glex_talent
--

COPY public.users (id, username, email, password, role, created_at) FROM stdin;
1	admin	admin@glex-talent.com	$5$rounds=535000$1dxdW4VjrGy33HY8$DeOWmuooLTM2Z8Et6kfuf2htsrjQCVj0OnbIDTrtYB8	admin	2025-10-05 19:49:11.447285
2	Glextalent	ramdemichee@gmail.com	$5$rounds=535000$jwMgmGmOvNuWk0ze$40vyaWY.Q2u8Mxa6NiMZA8LVweIpiVEmDGwY4mGN448	recruiter	2025-10-05 19:49:46.083675
3	RAMDE	ramdemichee@outlook.com	$5$rounds=535000$cPKTqPR8kiYU/DN6$2r7C2ST5CMdyhpxdQVqcjSzaI1sDi.08vhBlAURimMD	candidate	2025-10-05 19:51:48.550551
4	guirahaoua	guirahaoua@yahoo.fr	$5$rounds=535000$ZAGdi28tQ88X.c1B$JKFkkFtfdIaDHLPdFVJb3hMPkQp9axt..hOsG3k5EM4	candidate	2025-10-10 09:41:07.366647
5	KOHALADaouda	daoudakohala98@gmail.com	$5$rounds=535000$YV6EZsnoN8z.SIjJ$PfXQ84HIwRzUXLSNxnAykUFCKctwARdaZEc8AEX1473	candidate	2025-10-10 19:59:55.495793
6	Djeneba	diorhoua.traore@gmail.com	$5$rounds=535000$YnWtoFCtRXi8FRHe$AOWi.GPGP/GC7f3LhXHGA9uIyUMxtHFVJcb123sN7P4	candidate	2025-10-10 22:34:38.375604
7	SANOUMadongui	madonguirsanou@gmail.com	$5$rounds=535000$aXtW.KkYh4RI2qvI$i8OaMpS7A2vldWNDhxV2jWv2toprLNB0Fn0oHhCVtb7	candidate	2025-10-13 20:33:45.60901
8	MariameMB	mariame.ba@barcelona.msf.org	$5$rounds=535000$XDKk5koA7cdeh03X$knAbOnaRUcu8cH2GeGNQiiSUS7F0/r01/ZmpQXFOCiD	recruiter	2025-10-15 12:43:17.157667
9	son	sonrachidatou@gmail.com	$5$rounds=535000$44CgQM5dO8Ni1xyO$.8xmpE7jyE8sVzq/3O6C23WXNnugytMIJAK9xWe2Y/D	candidate	2025-10-15 20:17:01.390767
10	zilbalaabdoulaziz	zilbalaabdoulaziz86@gmail.com	$5$rounds=535000$M9WJbmb3GmwDQw6s$kyYjLcqw8PpLdUe4.BygNGSiXsp.hIU9gtNh2x0Tpy2	candidate	2025-10-16 00:32:52.174506
11	Kabore	kaborerahim18@gmail.com	$5$rounds=535000$A5twDeHVw4ir5Wci$bXAWSokucGqYyPhc5MFqaxbaH4I.3S6wyp6LFq2uYWC	candidate	2025-10-16 15:40:46.961235
12	JAMILTRAORE	traorerhpro92@gmail.com	$5$rounds=535000$omEJhrZeI6FPb5F6$xfkJZ3WnZMKM2V5a4sM9UoFt2HVkL9B/9dmOxwMEATA	candidate	2025-10-16 16:19:15.433755
13	Yameogo	wnelie452@gmail.com	$5$rounds=535000$TupVfwa/fECEXg.x$vxtTU4FJIS5DsXn6bxWNriDmoHi9NfTV1brZInpCMEA	candidate	2025-10-16 19:49:50.44228
14	Hamidou	Konfe1447@gmail.com	$5$rounds=535000$8bgJQbQKU.xiAXPz$HsYIvHcDDZP9WiWOV4fhakkxX6JMldMTkXVoTxe68jB	candidate	2025-10-17 12:59:53.229578
15	Elsasomda	elsa_somda@yahoo.com	$5$rounds=535000$hZH1kuQRgy/Vcuds$fIDLl34HCHt9fSKYIY8L5dIT7Z9ofrplMXKNDLssgA9	candidate	2025-10-17 13:30:24.787418
16	DahpougdyO	dahpougdyouoba@gmail.com	$5$rounds=535000$JvsIZ3YLXYY0EMPt$a4q.M8gp8VMxUQcRkwUSd40v9pwgx/8BtKoo0ZELUx5	recruiter	2025-10-18 10:34:42.565735
17	THOTxperiences	recruteshift@gmail.com	$5$rounds=535000$9BCPrrntfZcWyxuP$5ifSIcJ8LUEl/CSsWDD/C3wujO.mZZ9nwsJUKe.7XP8	recruiter	2025-10-18 11:00:20.481752
18	BARTHELEMYSAWADOGO	sawadogobarth08@gmail.com	$5$rounds=535000$ayBHXB3UiO7KO4DT$tKb3DVU.Oo/QQ2SqDZnNbWdTD7m8pF.isqIFPJCRRO8	candidate	2025-10-18 14:05:38.200715
19	SOME	01francoissome@gmail.com	$5$rounds=535000$cy6S6GEtu6lceYeg$/Vi7ArsYrTw4bW3ByAJ9daJucnTeLFTkj0iNyloVSh9	candidate	2025-10-22 22:39:04.602347
20	Issaka_KOUDOUGOU	koudougouissaka1998@gmail.com	$5$rounds=535000$qDN0wrspvGkgK/QP$lmtt/N1d9iHZIjIw.GVgGL6bRlgYdOKg0dasNJlLgd7	candidate	2025-10-23 04:14:15.827953
21	Konté	yameogojulie22@gmail.com	$5$rounds=535000$tndGXeiT6oFHhnRX$T08AEcZ9jnaTrKOKgBTsUXrd7tjhhz3OApYFnyASUG7	candidate	2025-10-24 22:12:26.162
22	Wilfried	wilfriedzida65@gmail.com	$5$rounds=535000$OuMIlDZcHcGG2fP6$z/tfRbJmVOJwq/lXCVaYwPWvVdvZkxUJa3y82sc..Y1	candidate	2025-11-01 10:45:52.202096
23	KABOREAlida	kbenjamine83@gmail.com	$5$rounds=535000$MM8kHwza/ABhUtrB$5B6hDdmFAqCYfLWasbNfWHWhqlGAzaTdvDgdwBpi3r9	candidate	2025-11-01 23:09:14.531941
24	SALOU	Salou.bien.yannick@gmail.com	$5$rounds=535000$eob1z1t..0UbQVg.$3N68i3RBgJhXItNUoXzqaQM.bYjhSe2j2hAZATfAUg8	candidate	2025-11-03 16:48:18.599296
25	lankoandeericsosthene@gmail.com	lankoandeericsosthene@gmail.com	$5$rounds=535000$sxyC7/NSEcjtVw5M$XrV6wKeTZkDmt7fUtGt59I0sOwkbKKC0zcVbX1GyNR0	candidate	2025-11-03 20:07:28.607362
26	gilberto	gilbertbourgou@gmail.com	$5$rounds=535000$ydynw4DDlPuV/6qq$be3gujQCIbrVQQ3zXJM0rsxwRI2DF/CzXhB/QeVO9I4	candidate	2025-11-22 11:26:15.80555
27	Naser	nasertatsa@yahoo.fr	$5$rounds=535000$3ckQGaYQsSr/DYP3$iixwV0bfjXeW1t4MiQbVp4uEYTVb7kTDJAyCZk87UC8	recruiter	2025-12-23 12:31:12.21174
28	Mohamed	mohamedsidy301@gmail.com	$5$rounds=535000$gvgFWvtmFhZBIXvq$axIKI2PqpBdqZbIecISvCvfNhKMUpvXfHH3AJzw/mx9	candidate	2025-12-26 20:17:40.909955
\.


--
-- Name: job_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.job_applications_id_seq', 3, true);


--
-- Name: job_postings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.job_postings_id_seq', 2, true);


--
-- Name: job_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.job_skills_id_seq', 1, true);


--
-- Name: meetings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.meetings_id_seq', 2, true);


--
-- Name: recruiter_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.recruiter_jobs_id_seq', 1, false);


--
-- Name: recruiter_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.recruiter_profiles_id_seq', 2, true);


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.skills_id_seq', 212, true);


--
-- Name: test_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.test_answers_id_seq', 1, false);


--
-- Name: test_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.test_questions_id_seq', 1, false);


--
-- Name: test_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.test_results_id_seq', 1, false);


--
-- Name: tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.tests_id_seq', 1, false);


--
-- Name: tutorial_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.tutorial_comments_id_seq', 1, false);


--
-- Name: tutorials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.tutorials_id_seq', 1, false);


--
-- Name: user_education_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_education_id_seq', 26, true);


--
-- Name: user_experience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_experience_id_seq', 34, true);


--
-- Name: user_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_notifications_id_seq', 1, false);


--
-- Name: user_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_profiles_id_seq', 12, true);


--
-- Name: user_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_projects_id_seq', 1, false);


--
-- Name: user_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_settings_id_seq', 1, false);


--
-- Name: user_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_skills_id_seq', 31, true);


--
-- Name: user_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.user_social_links_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: glex_talent
--

SELECT pg_catalog.setval('public.users_id_seq', 28, true);


--
-- Name: job_applications job_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_applications
    ADD CONSTRAINT job_applications_pkey PRIMARY KEY (id);


--
-- Name: job_postings job_postings_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_postings
    ADD CONSTRAINT job_postings_pkey PRIMARY KEY (id);


--
-- Name: job_skills job_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_skills
    ADD CONSTRAINT job_skills_pkey PRIMARY KEY (id);


--
-- Name: meeting_attendees meeting_attendees_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.meeting_attendees
    ADD CONSTRAINT meeting_attendees_pkey PRIMARY KEY (user_id, meeting_id);


--
-- Name: meetings meetings_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.meetings
    ADD CONSTRAINT meetings_pkey PRIMARY KEY (id);


--
-- Name: recruiter_jobs recruiter_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.recruiter_jobs
    ADD CONSTRAINT recruiter_jobs_pkey PRIMARY KEY (id);


--
-- Name: recruiter_profiles recruiter_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.recruiter_profiles
    ADD CONSTRAINT recruiter_profiles_pkey PRIMARY KEY (id);


--
-- Name: recruiter_profiles recruiter_profiles_user_id_key; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.recruiter_profiles
    ADD CONSTRAINT recruiter_profiles_user_id_key UNIQUE (user_id);


--
-- Name: skills skills_name_key; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_name_key UNIQUE (name);


--
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: test_answers test_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_answers
    ADD CONSTRAINT test_answers_pkey PRIMARY KEY (id);


--
-- Name: test_questions test_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_questions
    ADD CONSTRAINT test_questions_pkey PRIMARY KEY (id);


--
-- Name: test_results test_results_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT test_results_pkey PRIMARY KEY (id);


--
-- Name: tests tests_name_key; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_name_key UNIQUE (name);


--
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);


--
-- Name: tutorial_comments tutorial_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tutorial_comments
    ADD CONSTRAINT tutorial_comments_pkey PRIMARY KEY (id);


--
-- Name: tutorials tutorials_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tutorials
    ADD CONSTRAINT tutorials_pkey PRIMARY KEY (id);


--
-- Name: user_education user_education_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_education
    ADD CONSTRAINT user_education_pkey PRIMARY KEY (id);


--
-- Name: user_experience user_experience_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_experience
    ADD CONSTRAINT user_experience_pkey PRIMARY KEY (id);


--
-- Name: user_notifications user_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_notifications
    ADD CONSTRAINT user_notifications_pkey PRIMARY KEY (id);


--
-- Name: user_profiles user_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_profiles
    ADD CONSTRAINT user_profiles_pkey PRIMARY KEY (id);


--
-- Name: user_profiles user_profiles_user_id_key; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_profiles
    ADD CONSTRAINT user_profiles_user_id_key UNIQUE (user_id);


--
-- Name: user_projects user_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_projects
    ADD CONSTRAINT user_projects_pkey PRIMARY KEY (id);


--
-- Name: user_settings user_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_pkey PRIMARY KEY (id);


--
-- Name: user_skills user_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_skills
    ADD CONSTRAINT user_skills_pkey PRIMARY KEY (id);


--
-- Name: user_social_links user_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_social_links
    ADD CONSTRAINT user_social_links_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: ix_job_applications_id; Type: INDEX; Schema: public; Owner: glex_talent
--

CREATE INDEX ix_job_applications_id ON public.job_applications USING btree (id);


--
-- Name: ix_job_postings_id; Type: INDEX; Schema: public; Owner: glex_talent
--

CREATE INDEX ix_job_postings_id ON public.job_postings USING btree (id);


--
-- Name: ix_job_postings_title; Type: INDEX; Schema: public; Owner: glex_talent
--

CREATE INDEX ix_job_postings_title ON public.job_postings USING btree (title);


--
-- Name: job_applications job_applications_candidate_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_applications
    ADD CONSTRAINT job_applications_candidate_id_fkey FOREIGN KEY (candidate_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: job_applications job_applications_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_applications
    ADD CONSTRAINT job_applications_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job_postings(id) ON DELETE CASCADE;


--
-- Name: job_postings job_postings_posted_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_postings
    ADD CONSTRAINT job_postings_posted_by_id_fkey FOREIGN KEY (posted_by_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: job_skills job_skills_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_skills
    ADD CONSTRAINT job_skills_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job_postings(id) ON DELETE CASCADE;


--
-- Name: job_skills job_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.job_skills
    ADD CONSTRAINT job_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(id) ON DELETE CASCADE;


--
-- Name: meeting_attendees meeting_attendees_meeting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.meeting_attendees
    ADD CONSTRAINT meeting_attendees_meeting_id_fkey FOREIGN KEY (meeting_id) REFERENCES public.meetings(id) ON DELETE CASCADE;


--
-- Name: meeting_attendees meeting_attendees_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.meeting_attendees
    ADD CONSTRAINT meeting_attendees_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: meetings meetings_organizer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.meetings
    ADD CONSTRAINT meetings_organizer_id_fkey FOREIGN KEY (organizer_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: recruiter_jobs recruiter_jobs_recruiter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.recruiter_jobs
    ADD CONSTRAINT recruiter_jobs_recruiter_id_fkey FOREIGN KEY (recruiter_id) REFERENCES public.recruiter_profiles(id) ON DELETE CASCADE;


--
-- Name: recruiter_profiles recruiter_profiles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.recruiter_profiles
    ADD CONSTRAINT recruiter_profiles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: test_answers test_answers_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_answers
    ADD CONSTRAINT test_answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.test_questions(id) ON DELETE CASCADE;


--
-- Name: test_answers test_answers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_answers
    ADD CONSTRAINT test_answers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: test_questions test_questions_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_questions
    ADD CONSTRAINT test_questions_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(id) ON DELETE CASCADE;


--
-- Name: test_results test_results_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT test_results_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(id) ON DELETE CASCADE;


--
-- Name: test_results test_results_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT test_results_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: tutorial_comments tutorial_comments_tutorial_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tutorial_comments
    ADD CONSTRAINT tutorial_comments_tutorial_id_fkey FOREIGN KEY (tutorial_id) REFERENCES public.tutorials(id) ON DELETE CASCADE;


--
-- Name: tutorial_comments tutorial_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.tutorial_comments
    ADD CONSTRAINT tutorial_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_education user_education_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_education
    ADD CONSTRAINT user_education_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_experience user_experience_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_experience
    ADD CONSTRAINT user_experience_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_notifications user_notifications_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_notifications
    ADD CONSTRAINT user_notifications_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_profiles user_profiles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_profiles
    ADD CONSTRAINT user_profiles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_projects user_projects_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_projects
    ADD CONSTRAINT user_projects_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_settings user_settings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_skills user_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_skills
    ADD CONSTRAINT user_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(id) ON DELETE CASCADE;


--
-- Name: user_skills user_skills_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_skills
    ADD CONSTRAINT user_skills_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_social_links user_social_links_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: glex_talent
--

ALTER TABLE ONLY public.user_social_links
    ADD CONSTRAINT user_social_links_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict FWb2cq9ddMaGqjIfIuDWQ8D8hVPNH5mzTwSXQDXCHBDvpdcJV5S70VJcyNr7gby

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

\restrict Er4EXdj8BDE27BmecJp3kSblrHjae9z9nMtS7LzWPIYfVt2iLFlgo3cCVzdVZBZ

-- Dumped from database version 16.10 (Debian 16.10-1.pgdg13+1)
-- Dumped by pg_dump version 16.10 (Debian 16.10-1.pgdg13+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: code_ai_insight
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO code_ai_insight;

\unrestrict Er4EXdj8BDE27BmecJp3kSblrHjae9z9nMtS7LzWPIYfVt2iLFlgo3cCVzdVZBZ
\connect postgres
\restrict Er4EXdj8BDE27BmecJp3kSblrHjae9z9nMtS7LzWPIYfVt2iLFlgo3cCVzdVZBZ

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: code_ai_insight
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

\unrestrict Er4EXdj8BDE27BmecJp3kSblrHjae9z9nMtS7LzWPIYfVt2iLFlgo3cCVzdVZBZ

--
-- PostgreSQL database cluster dump complete
--

