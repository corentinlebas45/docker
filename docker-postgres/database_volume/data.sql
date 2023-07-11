--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.auth_group (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);




--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.auth_group_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);




--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(18) DEFAULT NULL::character varying,
    name character varying(23) DEFAULT NULL::character varying
);



--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.auth_user (
    id smallint,
    password character varying(88) DEFAULT NULL::character varying,
    last_login character varying(10) DEFAULT NULL::character varying,
    is_superuser smallint,
    username character varying(6) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    email character varying(16) DEFAULT NULL::character varying,
    is_staff smallint,
    is_active smallint,
    date_joined character varying(10) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying
);




--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.auth_user_groups (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);




--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);




--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.django_admin_log (
    id smallint,
    object_id smallint,
    object_repr character varying(6) DEFAULT NULL::character varying,
    action_flag smallint,
    change_message character varying(15) DEFAULT NULL::character varying,
    content_type_id smallint,
    user_id smallint,
    action_time character varying(10) DEFAULT NULL::character varying
);




--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.django_content_type (
    id smallint,
    app_label character varying(12) DEFAULT NULL::character varying,
    model character varying(11) DEFAULT NULL::character varying
);




--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.django_migrations (
    id smallint,
    app character varying(12) DEFAULT NULL::character varying,
    name character varying(40) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);




--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.django_session (
    session_key character varying(32) DEFAULT NULL::character varying,
    session_data character varying(228) DEFAULT NULL::character varying,
    expire_date character varying(10) DEFAULT NULL::character varying
);




--
-- Name: _pcMaker_gpu; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public."pcMaker_gpu" (
    id smallint,
    marque character varying(6) DEFAULT NULL::character varying,
    modele character varying(7) DEFAULT NULL::character varying
);




--
-- Name: _pcMaker_motherboard; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public."pcMaker_motherboard" (
    id smallint,
    marque character varying(8) DEFAULT NULL::character varying,
    chipset character varying(4) DEFAULT NULL::character varying
);




--
-- Name: _pcMaker_ordinateur; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public."pcMaker_ordinateur" (
    id smallint,
    alimentation smallint,
    gpu_id smallint,
    "motherBoard_id" smallint,
    processeur_id smallint,
    ram_id smallint,
    user_id smallint
);




--
-- Name: _pcMaker_ordinateur_stockage; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public."pcMaker_ordinateur_stockage" (
    id smallint,
    ordinateur_id smallint,
    stockage_id smallint
);




--
-- Name: _pcMaker_processeur; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public."pcMaker_processeur" (
    id smallint,
    marque character varying(5) DEFAULT NULL::character varying,
    categorie character varying(2) DEFAULT NULL::character varying,
    modele character varying(5) DEFAULT NULL::character varying
);




--
-- Name: _pcMaker_ram; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public."pcMaker_ram" (
    id smallint,
    marque character varying(7) DEFAULT NULL::character varying,
    frequence smallint,
    taille smallint
);




--
-- Name: _pcMaker_stockage; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public."pcMaker_stockage" (
    id smallint,
    type character varying(3) DEFAULT NULL::character varying,
    taille smallint
);




--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public.sqlite_sequence (
    name character varying(27) DEFAULT NULL::character varying,
    seq smallint
);




--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_gpu	Can add gpu
26	7	change_gpu	Can change gpu
27	7	delete_gpu	Can delete gpu
28	7	view_gpu	Can view gpu
29	8	add_motherboard	Can add mother board
30	8	change_motherboard	Can change mother board
31	8	delete_motherboard	Can delete mother board
32	8	view_motherboard	Can view mother board
33	9	add_processeur	Can add processeur
34	9	change_processeur	Can change processeur
35	9	delete_processeur	Can delete processeur
36	9	view_processeur	Can view processeur
37	10	add_ram	Can add ram
38	10	change_ram	Can change ram
39	10	delete_ram	Can delete ram
40	10	view_ram	Can view ram
41	11	add_stockage	Can add stockage
42	11	change_stockage	Can change stockage
43	11	delete_stockage	Can delete stockage
44	11	view_stockage	Can view stockage
45	12	add_ordinateur	Can add ordinateur
46	12	change_ordinateur	Can change ordinateur
47	12	delete_ordinateur	Can delete ordinateur
48	12	view_ordinateur	Can view ordinateur
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$260000$hn327t5O3bbw2lOfhBRHE1$aozwMzizwWj+75WATBgVLBkauglkNYcl0kQ+9+SZ+JE=	2022-11-16	1	admin			1	1	2022-10-20	
2	pbkdf2_sha256$260000$7Z2Ks3fIMeyLtcj9IKZ7J2$ByccLsi3w39Ssv2OEybyBCNktqPGsA5dZZgxquWLXsc=		0	Niraj		deyneeraj666.com	0	1	2022-10-21	
3	pbkdf2_sha256$260000$wFOQvf9Ht79N8A4xj4QyN7$N4rDL0KHCiKIDo+g//ekUjPlkRmeqjYK/Hlx7rL+x9Y=	2022-11-16	0	alexis			0	1	2022-10-21	
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
1	3	alexis	1	[{"added": {}}]	4	1	2022-10-21
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
3	auth	group
2	auth	permission
4	auth	user
5	contenttypes	contenttype
7	pcMaker	gpu
8	pcMaker	motherboard
12	pcMaker	ordinateur
9	pcMaker	processeur
10	pcMaker	ram
11	pcMaker	stockage
6	sessions	session
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-10-20
2	auth	0001_initial	2022-10-20
3	admin	0001_initial	2022-10-20
4	admin	0002_logentry_remove_auto_add	2022-10-20
5	admin	0003_logentry_add_action_flag_choices	2022-10-20
6	contenttypes	0002_remove_content_type_name	2022-10-20
7	auth	0002_alter_permission_name_max_length	2022-10-20
8	auth	0003_alter_user_email_max_length	2022-10-20
9	auth	0004_alter_user_username_opts	2022-10-20
10	auth	0005_alter_user_last_login_null	2022-10-20
11	auth	0006_require_contenttypes_0002	2022-10-20
12	auth	0007_alter_validators_add_error_messages	2022-10-20
13	auth	0008_alter_user_username_max_length	2022-10-20
14	auth	0009_alter_user_last_name_max_length	2022-10-20
15	auth	0010_alter_group_name_max_length	2022-10-20
16	auth	0011_update_proxy_permissions	2022-10-20
17	auth	0012_alter_user_first_name_max_length	2022-10-20
18	pcMaker	0001_initial	2022-10-20
19	sessions	0001_initial	2022-10-20
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
32ur9kmvmuyidroucowzkhag7ovsirll	.eJxVjMsOwiAQRf-FtSHQ4dFx6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnAeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddvbQux9QQRABOCVQ61RnQF1KggZsPaG1-QULvReQPFDZ5TVJAUOB7E-wPAZDbF:1ovOda:zaRVkCE1TWCAUn7EJdAxDB67MgQ_WNu7Z3sP0a9YMaY	2022-11-30
a0jcxfvk46c3eb5daili5jtyutlyxhpg	.eJxVjMsOwiAQRf-FtSHQ4dFx6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnAeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddvbQux9QQRABOCVQ61RnQF1KggZsPaG1-QULvReQPFDZ5TVJAUOB7E-wPAZDbF:1ovOlk:uF0S6HSlFrXfu2tMB5zUUuHKiHDucCl4fvyTkMYlojc	2022-11-30
578gc05oizbrfvv6lltysprfa7xax5sq	.eJxVjMsOwiAQRf-FtSHQ4dFx6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnAeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddvbQux9QQRABOCVQ61RnQF1KggZsPaG1-QULvReQPFDZ5TVJAUOB7E-wPAZDbF:1ovOmF:UapSCFFXl3KRtGSFteR_fQLOPMJfFk8NDa3GLos3OkU	2022-11-30
4g0cr6uwixxrburytuco76rnwrunl353	.eJxVjMsOwiAQRf-FtSHQ4dFx6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnAeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddvbQux9QQRABOCVQ61RnQF1KggZsPaG1-QULvReQPFDZ5TVJAUOB7E-wPAZDbF:1ovOmx:SR7CTo0fN2HjGqawT2PXLQWkhX2g9fTOaW6M4WOv_MM	2022-11-30
7g45uh6tn90bua9mu85m0z0jtg033k8b	.eJxVjMsOwiAQRf-FtSHQ4dFx6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnAeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddvbQux9QQRABOCVQ61RnQF1KggZsPaG1-QULvReQPFDZ5TVJAUOB7E-wPAZDbF:1ovOps:cGlWo_zzNQdgpgrC-ScaEZFh36Rip5tLI_xZms8RmgA	2022-11-30
4rkjm4qdyip7yr2khfqzcvv0pbnzi399	.eJxVjMsOwiAQRf-FtSHQ4dFx6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnAeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddvbQux9QQRABOCVQ61RnQF1KggZsPaG1-QULvReQPFDZ5TVJAUOB7E-wPAZDbF:1ovOqF:KA5ispBpq7zFVRe3faGJQMLNqddOW8L8zNREocF0oy8	2022-11-30
7uzhrh02wno9wpyp7raus6mm4hgzxf5m	.eJxVjMsOwiAQRf-FtSHQ4dFx6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnAeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddvbQux9QQRABOCVQ61RnQF1KggZsPaG1-QULvReQPFDZ5TVJAUOB7E-wPAZDbF:1ovOrq:hUSPwdEkWW-Bfrof-q9E0bn2Hc42u1beqZyySAM_Tvw	2022-11-30
\.


--
-- Data for Name: _pcMaker_gpu; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public."pcMaker_gpu" (id, marque, modele) FROM stdin;
1	Nvidia	RTX4090
2	AMD	RX6900
\.


--
-- Data for Name: _pcMaker_motherboard; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public."pcMaker_motherboard" (id, marque, chipset) FROM stdin;
1	Asus	B550
2	Gigabyte	X570
3	Asrock	X570
\.


--
-- Data for Name: _pcMaker_ordinateur; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public."pcMaker_ordinateur" (id, alimentation, gpu_id, "motherBoard_id", processeur_id, ram_id, user_id) FROM stdin;
8	1200	1	1	1	1	1
10	1000	1	2	1	1	1
15	900	1	2	1	1	1
16	666	1	3	3	2	3
\.


--
-- Data for Name: _pcMaker_ordinateur_stockage; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public."pcMaker_ordinateur_stockage" (id, ordinateur_id, stockage_id) FROM stdin;
6	8	1
7	8	2
8	10	1
9	10	2
15	15	1
16	15	2
17	16	1
18	16	3
\.


--
-- Data for Name: _pcMaker_processeur; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public."pcMaker_processeur" (id, marque, categorie, modele) FROM stdin;
1	Intel	i7	12700
2	Intel	i5	12600
3	Ryzen	R5	7600X
\.


--
-- Data for Name: _pcMaker_ram; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public."pcMaker_ram" (id, marque, frequence, taille) FROM stdin;
1	Corsair	3600	64
2	G.Skill	3200	32
\.


--
-- Data for Name: _pcMaker_stockage; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public."pcMaker_stockage" (id, type, taille) FROM stdin;
1	SSD	1000
2	SSD	256
3	HDD	2000
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.sqlite_sequence (name, seq) FROM stdin;
django_migrations	19
django_admin_log	1
django_content_type	12
auth_permission	48
auth_group	0
auth_user	3
pcMaker_motherboard	3
pcMaker_processeur	3
pcMaker_gpu	2
pcMaker_ram	2
pcMaker_stockage	3
pcMaker_ordinateur	16
pcMaker_ordinateur_stockage	18
\.


--
-- PostgreSQL database dump complete
--

