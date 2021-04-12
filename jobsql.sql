--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-12 19:22:47

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
-- TOC entry 211 (class 1259 OID 18346)
-- Name: account_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    role character varying(10) NOT NULL,
    gender character varying(1) NOT NULL
);


ALTER TABLE public.account_user OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 18359)
-- Name: account_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.account_user_groups OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 18357)
-- Name: account_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 212
-- Name: account_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_user_groups_id_seq OWNED BY public.account_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 18344)
-- Name: account_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_id_seq OWNER TO postgres;

--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 210
-- Name: account_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account_user.id;


--
-- TOC entry 215 (class 1259 OID 18367)
-- Name: account_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.account_user_user_permissions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 18365)
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 214
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_user_user_permissions_id_seq OWNED BY public.account_user_user_permissions.id;


--
-- TOC entry 207 (class 1259 OID 18302)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 18300)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 18312)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 18310)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 18294)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 18292)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 217 (class 1259 OID 18423)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 18421)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 18284)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 18282)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 18273)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 18271)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 230 (class 1259 OID 18594)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 18504)
-- Name: jobapp_applicant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobapp_applicant (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    job_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.jobapp_applicant OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 18502)
-- Name: jobapp_applicant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobapp_applicant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobapp_applicant_id_seq OWNER TO postgres;

--
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 226
-- Name: jobapp_applicant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobapp_applicant_id_seq OWNED BY public.jobapp_applicant.id;


--
-- TOC entry 229 (class 1259 OID 18569)
-- Name: jobapp_bookmarkjob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobapp_bookmarkjob (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    job_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.jobapp_bookmarkjob OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18567)
-- Name: jobapp_bookmarkjob_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobapp_bookmarkjob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobapp_bookmarkjob_id_seq OWNER TO postgres;

--
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 228
-- Name: jobapp_bookmarkjob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobapp_bookmarkjob_id_seq OWNED BY public.jobapp_bookmarkjob.id;


--
-- TOC entry 223 (class 1259 OID 18485)
-- Name: jobapp_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobapp_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.jobapp_category OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18483)
-- Name: jobapp_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobapp_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobapp_category_id_seq OWNER TO postgres;

--
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 222
-- Name: jobapp_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobapp_category_id_seq OWNED BY public.jobapp_category.id;


--
-- TOC entry 225 (class 1259 OID 18493)
-- Name: jobapp_job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobapp_job (
    id integer NOT NULL,
    title character varying(300) NOT NULL,
    description text NOT NULL,
    location character varying(300) NOT NULL,
    job_type character varying(1) NOT NULL,
    salary character varying(30) NOT NULL,
    company_name character varying(300) NOT NULL,
    url character varying(200) NOT NULL,
    last_date date NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    user_id integer NOT NULL,
    company_description text,
    is_published boolean NOT NULL,
    is_closed boolean NOT NULL
);


ALTER TABLE public.jobapp_job OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18491)
-- Name: jobapp_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobapp_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobapp_job_id_seq OWNER TO postgres;

--
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 224
-- Name: jobapp_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobapp_job_id_seq OWNED BY public.jobapp_job.id;


--
-- TOC entry 219 (class 1259 OID 18447)
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 18445)
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO postgres;

--
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 218
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- TOC entry 221 (class 1259 OID 18459)
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18457)
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO postgres;

--
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 220
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- TOC entry 232 (class 1259 OID 18606)
-- Name: user_visit_uservisit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_visit_uservisit (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    session_key character varying(40) NOT NULL,
    remote_addr character varying(100) NOT NULL,
    ua_string text NOT NULL,
    uuid uuid NOT NULL,
    hash character varying(32) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.user_visit_uservisit OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 18604)
-- Name: user_visit_uservisit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_visit_uservisit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_visit_uservisit_id_seq OWNER TO postgres;

--
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 231
-- Name: user_visit_uservisit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_visit_uservisit_id_seq OWNED BY public.user_visit_uservisit.id;


--
-- TOC entry 2955 (class 2604 OID 18349)
-- Name: account_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user ALTER COLUMN id SET DEFAULT nextval('public.account_user_id_seq'::regclass);


--
-- TOC entry 2956 (class 2604 OID 18362)
-- Name: account_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_groups ALTER COLUMN id SET DEFAULT nextval('public.account_user_groups_id_seq'::regclass);


--
-- TOC entry 2957 (class 2604 OID 18370)
-- Name: account_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.account_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 18305)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2954 (class 2604 OID 18315)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2952 (class 2604 OID 18297)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2958 (class 2604 OID 18426)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 18287)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 18276)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2964 (class 2604 OID 18507)
-- Name: jobapp_applicant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_applicant ALTER COLUMN id SET DEFAULT nextval('public.jobapp_applicant_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 18572)
-- Name: jobapp_bookmarkjob id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_bookmarkjob ALTER COLUMN id SET DEFAULT nextval('public.jobapp_bookmarkjob_id_seq'::regclass);


--
-- TOC entry 2962 (class 2604 OID 18488)
-- Name: jobapp_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_category ALTER COLUMN id SET DEFAULT nextval('public.jobapp_category_id_seq'::regclass);


--
-- TOC entry 2963 (class 2604 OID 18496)
-- Name: jobapp_job id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_job ALTER COLUMN id SET DEFAULT nextval('public.jobapp_job_id_seq'::regclass);


--
-- TOC entry 2960 (class 2604 OID 18450)
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- TOC entry 2961 (class 2604 OID 18462)
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- TOC entry 2966 (class 2604 OID 18609)
-- Name: user_visit_uservisit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_visit_uservisit ALTER COLUMN id SET DEFAULT nextval('public.user_visit_uservisit_id_seq'::regclass);


--
-- TOC entry 3211 (class 0 OID 18346)
-- Dependencies: 211
-- Data for Name: account_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_user (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, email, role, gender) FROM stdin;
2	pbkdf2_sha256$216000$EVzkW18lDAhV$02SPv8z4SUYaeCZxQf0YZjVdRJUqGk+eGqI0uPrS7eM=	\N	t			t	t	2021-04-09 16:25:52.18548+05:30	job@gmail.com		
3	pbkdf2_sha256$216000$BunYsGY4RArC$muvmtUXSZ8yNkRTsr1H6N/EEYwNBYHSsiv6daPfFqAo=	2021-04-10 13:05:11.760084+05:30	f	TCS - Tata consultancy	chennai	f	t	2021-04-09 16:32:17.089747+05:30	careers@tcs.com	employer	
4	pbkdf2_sha256$216000$3tbeKKGuZRSV$6npDx7PGS77XPb/9vfAF2V2cx6mJPrYpYAM0iaInrYY=	2021-04-10 13:08:51.151313+05:30	f	Kathrine	Sathi	f	t	2021-04-09 16:41:56.346572+05:30	k@gmail.com	employee	F
1	pbkdf2_sha256$216000$nTWA2fvVLh3Y$k2XOLGpzGP60M8cspe0mni5x3pdaDhEhyTsoKOdum5s=	2021-04-12 17:04:18.188106+05:30	t			t	t	2021-04-09 16:21:53.105328+05:30	jobporium@gmail.com		
\.


--
-- TOC entry 3213 (class 0 OID 18359)
-- Dependencies: 213
-- Data for Name: account_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3215 (class 0 OID 18367)
-- Dependencies: 215
-- Data for Name: account_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3207 (class 0 OID 18302)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3209 (class 0 OID 18312)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3205 (class 0 OID 18294)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add category	6	add_category
22	Can change category	6	change_category
23	Can delete category	6	delete_category
24	Can view category	6	view_category
25	Can add job	7	add_job
26	Can change job	7	change_job
27	Can delete job	7	delete_job
28	Can view job	7	view_job
29	Can add applicant	8	add_applicant
30	Can change applicant	8	change_applicant
31	Can delete applicant	8	delete_applicant
32	Can view applicant	8	view_applicant
33	Can add bookmark job	9	add_bookmarkjob
34	Can change bookmark job	9	change_bookmarkjob
35	Can delete bookmark job	9	delete_bookmarkjob
36	Can view bookmark job	9	view_bookmarkjob
37	Can add user	10	add_user
38	Can change user	10	change_user
39	Can delete user	10	delete_user
40	Can view user	10	view_user
41	Can add tag	11	add_tag
42	Can change tag	11	change_tag
43	Can delete tag	11	delete_tag
44	Can view tag	11	view_tag
45	Can add tagged item	12	add_taggeditem
46	Can change tagged item	12	change_taggeditem
47	Can delete tagged item	12	delete_taggeditem
48	Can view tagged item	12	view_taggeditem
49	Can add user visit	13	add_uservisit
50	Can change user visit	13	change_uservisit
51	Can delete user visit	13	delete_uservisit
52	Can view user visit	13	view_uservisit
\.


--
-- TOC entry 3217 (class 0 OID 18423)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-04-09 16:29:09.555923+05:30	1	Developer	1	[{"added": {}}]	6	1
2	2021-04-09 16:38:07.644074+05:30	1	web developer	2	[{"changed": {"fields": ["Is published"]}}]	7	1
3	2021-04-09 17:42:33.292125+05:30	2	Senior Software Engineer (Frontend)	2	[{"changed": {"fields": ["Is published"]}}]	7	1
\.


--
-- TOC entry 3203 (class 0 OID 18284)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	jobapp	category
7	jobapp	job
8	jobapp	applicant
9	jobapp	bookmarkjob
10	account	user
11	taggit	tag
12	taggit	taggeditem
13	user_visit	uservisit
\.


--
-- TOC entry 3201 (class 0 OID 18273)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-09 16:20:22.870173+05:30
2	contenttypes	0002_remove_content_type_name	2021-04-09 16:20:22.997305+05:30
3	auth	0001_initial	2021-04-09 16:20:23.090057+05:30
4	auth	0002_alter_permission_name_max_length	2021-04-09 16:20:23.319446+05:30
5	auth	0003_alter_user_email_max_length	2021-04-09 16:20:23.338394+05:30
6	auth	0004_alter_user_username_opts	2021-04-09 16:20:23.354351+05:30
7	auth	0005_alter_user_last_login_null	2021-04-09 16:20:23.368315+05:30
8	auth	0006_require_contenttypes_0002	2021-04-09 16:20:23.374298+05:30
9	auth	0007_alter_validators_add_error_messages	2021-04-09 16:20:23.389258+05:30
10	auth	0008_alter_user_username_max_length	2021-04-09 16:20:23.405218+05:30
11	auth	0009_alter_user_last_name_max_length	2021-04-09 16:20:23.422171+05:30
12	auth	0010_alter_group_name_max_length	2021-04-09 16:20:23.458076+05:30
13	auth	0011_update_proxy_permissions	2021-04-09 16:20:23.475028+05:30
14	account	0001_initial	2021-04-09 16:20:23.57875+05:30
15	account	0002_auto_20200425_1533	2021-04-09 16:20:23.783004+05:30
16	account	0003_auto_20200430_2350	2021-04-09 16:20:23.871718+05:30
17	account	0004_auto_20200501_0002	2021-04-09 16:20:23.891457+05:30
18	account	0005_auto_20200501_0004	2021-04-09 16:20:23.908928+05:30
19	account	0006_auto_20210409_1227	2021-04-09 16:20:23.936854+05:30
20	admin	0001_initial	2021-04-09 16:20:24.012887+05:30
21	admin	0002_logentry_remove_auto_add	2021-04-09 16:20:24.124748+05:30
22	admin	0003_logentry_add_action_flag_choices	2021-04-09 16:20:24.147785+05:30
23	auth	0012_alter_user_first_name_max_length	2021-04-09 16:20:24.162686+05:30
24	taggit	0001_initial	2021-04-09 16:20:24.260807+05:30
25	taggit	0002_auto_20150616_2121	2021-04-09 16:20:24.389228+05:30
26	taggit	0003_taggeditem_add_unique_index	2021-04-09 16:20:24.42156+05:30
27	jobapp	0001_initial	2021-04-09 16:20:24.52326+05:30
28	jobapp	0002_auto_20200426_1804	2021-04-09 16:20:24.862508+05:30
29	jobapp	0003_auto_20200426_2258	2021-04-09 16:20:24.954669+05:30
30	jobapp	0004_auto_20200427_1416	2021-04-09 16:20:25.114659+05:30
31	jobapp	0005_auto_20200427_1419	2021-04-09 16:20:25.252222+05:30
32	jobapp	0006_auto_20200427_1445	2021-04-09 16:20:25.297612+05:30
33	jobapp	0007_auto_20200427_1455	2021-04-09 16:20:25.335427+05:30
34	jobapp	0008_job_company_des	2021-04-09 16:20:25.36136+05:30
35	jobapp	0009_auto_20200427_1535	2021-04-09 16:20:25.458099+05:30
36	jobapp	0010_auto_20200427_1537	2021-04-09 16:20:25.512982+05:30
37	jobapp	0011_auto_20200427_1537	2021-04-09 16:20:25.553843+05:30
38	jobapp	0012_job_tags	2021-04-09 16:20:25.578776+05:30
39	jobapp	0013_bookmarkjob	2021-04-09 16:20:25.787833+05:30
40	jobapp	0014_job_is_published	2021-04-09 16:20:25.913269+05:30
41	jobapp	0015_job_is_closed	2021-04-09 16:20:25.946623+05:30
42	jobapp	0016_auto_20210409_1227	2021-04-09 16:20:25.984523+05:30
43	sessions	0001_initial	2021-04-09 16:20:26.022678+05:30
44	user_visit	0001_initial	2021-04-09 16:20:26.135568+05:30
45	user_visit	0002_add_created_at	2021-04-09 16:20:26.195107+05:30
\.


--
-- TOC entry 3230 (class 0 OID 18594)
-- Dependencies: 230
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
wxl0mjwutqglvd625nf82z64juphm29e	.eJxVjMsOwiAQRf-FtSEdoDxcuvcbyMAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJE4mzAHH63RLmB7cd0B3bbZZ5busyJbkr8qBdXmfi5-Vw_w4q9vqtOTnO3oNTgynAFp1G1mNRmpOm0ZF3yQBnVg7LQMWWbIIHsCGAoUDi_QH20DhG:1lVupe:mKB65b-bH6ZkL7b34x9AG480mGmqrw-pwKXb9PaEnco	2021-04-26 17:04:18.249786+05:30
\.


--
-- TOC entry 3227 (class 0 OID 18504)
-- Dependencies: 227
-- Data for Name: jobapp_applicant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobapp_applicant (id, "timestamp", job_id, user_id) FROM stdin;
1	2021-04-09 16:43:04.012045+05:30	1	4
2	2021-04-09 17:44:11.517183+05:30	2	4
\.


--
-- TOC entry 3229 (class 0 OID 18569)
-- Dependencies: 229
-- Data for Name: jobapp_bookmarkjob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobapp_bookmarkjob (id, "timestamp", job_id, user_id) FROM stdin;
1	2021-04-09 16:42:29.275432+05:30	1	4
2	2021-04-09 17:44:02.947923+05:30	2	4
\.


--
-- TOC entry 3223 (class 0 OID 18485)
-- Dependencies: 223
-- Data for Name: jobapp_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobapp_category (id, name) FROM stdin;
1	Developer
\.


--
-- TOC entry 3225 (class 0 OID 18493)
-- Dependencies: 225
-- Data for Name: jobapp_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobapp_job (id, title, description, location, job_type, salary, company_name, url, last_date, "timestamp", category_id, user_id, company_description, is_published, is_closed) FROM stdin;
1	web developer	<p>We are looking for someone who is passionate about building great web applications, enjoys working with a team of talented developers, and who is eager to take on big challenges.Strong understanding of JavaScript, jQuery, Javascript patterns.we also provide all type of support to our candidate like reference, live project experience, experience letter, third party verification and others thinks.Deep and proven knowledge of Angular 5, TypeScript.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Python developers should also be flexible and able to take on responsibilities outside of their job description, especially on smaller teams.</p>\r\n\r\n<p><strong>Desired Candidate Profile</strong></p>\r\n\r\n<p>Should be sincere, committed and hard working.</p>\r\n\r\n<p>Good Knowledge of MS Office and MS Excel.</p>\r\n\r\n<p>#Used any database and knows basic query language (Java, C#, C++)</p>\r\n\r\n<p>PHP 5, PHP7 Good reading skills Key Skills and Knowledge:.</p>\r\n\r\n<p>JavaScript, JQuery, HTML5, CSS3, cross-browser compatibility.</p>\r\n\r\n<p>Be able to work on own or in a team.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>WHATSAPP YOUR RESUME ON: ((9I-72-528-887-98))HR TEAM</strong></p>\r\n\r\n<p>Role<a href="https://www.naukri.com/graphic-web-designer-jobs" target="_blank">Graphic/Web Designer</a></p>\r\n\r\n<p>Industry Type<a href="https://www.naukri.com/recruitment-jobs" target="_blank">Recruitment</a>,<a href="https://www.naukri.com/staffing-jobs" target="_blank">&nbsp;Staffing</a></p>\r\n\r\n<p>Functional Area<a href="https://www.naukri.com/it-software-application-programming-jobs" target="_blank">IT Software - Application Programming</a>,<a href="https://www.naukri.com/maintenance-jobs" target="_blank">&nbsp;Maintenance</a></p>\r\n\r\n<p>Employment TypeFull Time, Permanent</p>\r\n\r\n<p>Role CategoryProgramming &amp; Design</p>\r\n\r\n<p>Education</p>\r\n\r\n<p>UG :Diploma in Any Specialization</p>	Chennai	1	30,000-40,000	TCS - Tata consultancy	https://www.tcs.com/	2021-05-26	2021-04-09 16:48:09.380755+05:30	1	3	<p><strong>Tata Consultancy Services Limited</strong>&nbsp;(TCS) is an Indian multinational information technology (IT) service and consulting company headquartered in Mumbai, Maharashtra, India. It is a subsidiary of&nbsp;<a href="https://www.bing.com/search?q=Tata+Group&amp;filters=sid%3adf28e286-b566-e49e-a091-c86ee2015ae8&amp;form=ENTLNK">Tata Group</a>&nbsp;and operates in 149 locations across 46 countries. TCS is the second largest Indian company by market capitalization.&nbsp;</p>	t	t
2	Senior Software Engineer (Frontend)	<p>The primary role of this position will be to develop rich web applications for a highly accessed and commercial digital content platform based on a high-performance CE device. We are looking for resources with web technology skills for user facing application development using TypeScript and React-Native JavaScript competency. Your primary focus will be on developing user interface components and implementing them following well-known web development workflows.</p>\r\n\r\n<p><strong>Responsibilities:</strong></p>\r\n\r\n<ul>\r\n\t<li>As an individual contributor understand the requirements, perform detailed design and coding, debugging, testing and release of the given modules.</li>\r\n\t<li>Development of new user-facing features using web technologies, re-usable components and front-end libraries.</li>\r\n\t<li>Rapid development ability to build and demonstrate quick web driven solutions.</li>\r\n\t<li>Work closely within a small team of experienced engineers to produce high-quality software products on a daring schedule.</li>\r\n\t<li>Demonstrate professional engineering practices including alignment to coding standards, producing design documentation, and supporting integration.</li>\r\n\t<li>Translating design and wireframes into high quality code, with an eye for performance on specific target devices.</li>\r\n\t<li>Write unit test and perform functional verification for the responsible modules</li>\r\n\t<li>Perform code reviews and sanity checks for the code developed.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Skills:</strong></p>\r\n\r\n<ul>\r\n\t<li>Good knowledge of Typescript /JavaScript, CSS, and HTML, with a deep understanding of the language features of JavaScript, including DOM manipulation and the JavaScript object model</li>\r\n\t<li>Thorough understanding of React.js and its core principles</li>\r\n\t<li>Understanding of latest ECMAScript standards</li>\r\n\t<li>Good knowledge of CSS pre-processors such as Sass, LESS</li>\r\n\t<li>Experience with modern front-end build pipelines and tools such as Babel, Webpack, NPM, etc.</li>\r\n\t<li>Knowledge of Jasmine/Mocha, Grunt</li>\r\n\t<li>React Design, Agile Scrum based Development</li>\r\n\t<li>Ability to communicate effectively and make effective Presentations</li>\r\n\t<li>Familiarity with other modern tech stack, such as NodeJS, VueJS, ExpressJS and associated ecosystems</li>\r\n\t<li>Hands on with RESTful APIs and GraphQL</li>\r\n\t<li>Familiarity with code versioning tools such as Git, SVN.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Qualifications:</strong></p>\r\n\r\n<ul>\r\n\t<li>Bachelor s Degree in computer science or related field, and Minimum of 3 years of experience in commercial software development, especially focusing on front-end.</li>\r\n\t<li>Expertise in object-oriented design methodologies</li>\r\n\t<li>Experience working with medium to large scale code bases in small to large groups</li>\r\n\t<li>A passion for front end application development</li>\r\n</ul>\r\n\r\n<p><strong>Desirable:</strong></p>\r\n\r\n<ul>\r\n\t<li>Experience building cloud deployed applications; Use of serverless architecture</li>\r\n\t<li>Timely and committed: Being able to work in a time constrained and demanding environment</li>\r\n\t<li>One who likes to push beyond own goals and makes way through challenges!</li>\r\n\t<li>Quality-driven, quick learner who is also a team player, can work independently without supervision</li>\r\n</ul>\r\n\r\n<p>Role<a href="https://www.naukri.com/software-developer-jobs" target="_blank">Software Developer</a></p>\r\n\r\n<p>Industry Type<a href="https://www.naukri.com/it-software-jobs" target="_blank">IT-Software</a>,<a href="https://www.naukri.com/software-services-jobs" target="_blank">&nbsp;Software Services</a></p>\r\n\r\n<p>Functional Area<a href="https://www.naukri.com/it-software-application-programming-jobs" target="_blank">IT Software - Application Programming</a>,<a href="https://www.naukri.com/maintenance-jobs" target="_blank">&nbsp;Maintenance</a></p>\r\n\r\n<p>Employment TypeFull Time, Permanent</p>\r\n\r\n<p>Role CategoryProgramming &amp; Design</p>	Chennai	1	30,000-40,000	TCS - Tata consultancy	https://www.tcs.com/	2021-05-26	2021-04-09 17:42:33.281091+05:30	1	3	<p><strong>Tata Consultancy Services Limited</strong>&nbsp;(TCS) is an Indian multinational information technology (IT) service and consulting company headquartered in Mumbai, Maharashtra, India. It is a subsidiary of&nbsp;<a href="https://www.bing.com/search?q=Tata+Group&amp;filters=sid%3adf28e286-b566-e49e-a091-c86ee2015ae8&amp;form=ENTLNK">Tata Group</a>&nbsp;and operates in 149 locations across 46 countries. TCS is the second largest Indian company by market capitalization.&nbsp;</p>	t	f
3	Mobile app developer	<p>We are looking for a strong mobile app developer who welcomes both engineering and maintenance tasks. The primary focus will be to implement new user interfaces and features together with automated unit and integration tests.You will be working with our candid and collaborative team, where your knowledge and advice about application architecture and the newest mobile technologies will be highly appreciated. The code you write will need to be cleanly organized and of the highest quality. You&rsquo;ll also help ensure solid application performance and an excellent user experience.<br />\r\n<br />\r\nResponsibilities and Duties:<br />\r\n<br />\r\n1. Developing new features and user interfaces from wireframe models<br />\r\n<br />\r\n2. Ensuring the best performance and user experience of the application<br />\r\n<br />\r\n3. Fixing bugs and performance problems<br />\r\n<br />\r\n4. Writing clean, readable, and testable code<br />\r\n<br />\r\n5. Cooperating with back-end developers, designers, and the rest of the team to deliver well architected and high-quality solutions<br />\r\n<br />\r\nMandatory Skill sets :<br />\r\n<br />\r\n6. Extensive knowledge about mobile app development. This includes the whole process, from the first line of code to publishing in the store(s)<br />\r\n<br />\r\n7. Deep knowledge of Android<br />\r\n<br />\r\n8. Proficiency with writing automated tests in JUnit, Espresso, Mocha, Jest, Enzyme, XCTest, etc. depending on the libraries you use to test<br />\r\n<br />\r\n9. Familiarity with Restful APIs and mobile libraries for networking, specifically Retrofit, axios, Alamofire, etc.<br />\r\n<br />\r\n10. Familiarity with the JSON format<br />\r\n<br />\r\n11. Experience with profiling and debugging mobile applications<br />\r\n<br />\r\n12. Strong knowledge of architectural patterns - MVP, MVC, MVVM, and Clean Architecture and the ability to choose the best solution for the app<br />\r\n<br />\r\n13. Familiarity with Git<br />\r\n<br />\r\n14. Familiarity with push notifications<br />\r\n<br />\r\n15. Understanding mobile app design guidelines on each platform and being aware of their differences<br />\r\n<br />\r\n16. Proficiency in Kotlin/Java/Swift/Objective-C/JavaScript/C#<br />\r\n<br />\r\n17. Specific hardware or sensors, like GPS or Bluetooth, that the app will use<br />\r\n<br />\r\n18. Integrations that will need to be done (Facebook, Firebase, etc.)</p>\r\n\r\n<p>Qualification: Graduate</p>	Chennai	3	30,000-40,000	TCS - Tata consultancy	https://www.tcs.com/	2021-05-12	2021-04-10 11:14:15.129731+05:30	1	3	<p><strong>Tata Consultancy Services Limited</strong>&nbsp;(TCS) is an Indian multinational information technology (IT) service and consulting company headquartered in Mumbai, Maharashtra, India. It is a subsidiary of&nbsp;<a href="https://www.bing.com/search?q=Tata+Group&amp;filters=sid%3adf28e286-b566-e49e-a091-c86ee2015ae8&amp;form=ENTLNK">Tata Group</a>&nbsp;and operates in 149 locations across 46 countries. TCS is the second largest Indian company by market capitalization.</p>	f	f
\.


--
-- TOC entry 3219 (class 0 OID 18447)
-- Dependencies: 219
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	TypeScript	typescript
2	Angular 5	angular-5
3	VueJS	vuejs
4	ExpressJS	expressjs
5	NodeJS	nodejs
6	RESTful APIs	restful-apis
7	GraphQL	graphql
8	Android studio	android-studio
9	flutter	flutter
\.


--
-- TOC entry 3221 (class 0 OID 18459)
-- Dependencies: 221
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	7	1
2	1	7	2
3	2	7	3
4	2	7	4
5	2	7	5
6	2	7	6
7	2	7	7
8	3	7	8
9	3	7	9
\.


--
-- TOC entry 3232 (class 0 OID 18606)
-- Dependencies: 232
-- Data for Name: user_visit_uservisit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_visit_uservisit (id, "timestamp", session_key, remote_addr, ua_string, uuid, hash, user_id, created_at) FROM stdin;
1	2021-04-09 16:28:55.215413+05:30	is9x9kd2hjy747yq0101eux7geieofdn	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36	6c1c920e-1e3e-4e7f-a497-17fe8289f6bc	6f515e03e63b3d5d9c24f4521423f058	1	2021-04-09 16:28:55.227386+05:30
2	2021-04-09 16:32:33.787603+05:30	ile24gey25bpn4fxjsiuzsr4zh6du3dn	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	e28ed2e5-092c-4990-9e24-a9cf1a3a1530	fbd202f252659f18d87d702fc4d29cdd	3	2021-04-09 16:32:33.800569+05:30
3	2021-04-09 16:42:07.532845+05:30	x4unhtuhx614bw0grvk0ebtbrpusz26j	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	5b38d28a-a2d1-451b-b420-b3e41bd446d3	6baa2db1c7872f34f051dfb7b91c10ac	4	2021-04-09 16:42:07.536834+05:30
4	2021-04-09 16:44:09.453586+05:30	zf5bemsiw75ev37kgi3kx2dwv3t7638y	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	84e50d29-aa4d-4af9-a48b-7481c20d969a	5b98ece9a736067a5aeae8df7b46e536	3	2021-04-09 16:44:09.45658+05:30
5	2021-04-09 17:36:02.466906+05:30	t6xz5qrbovddq6hl6icobyw7xrcnofax	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	d2dfc9f3-f639-4bec-9b6b-0c04cb94a975	f31b5eb6371e1ae42043d5bb0168348f	3	2021-04-09 17:36:02.469899+05:30
6	2021-04-09 17:43:52.825791+05:30	nifc288gl5b9wdt2yxjk2puc95ba4bji	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	09d3dd59-a914-4ecd-a88d-eaae2639bb33	d2b4760a730deee829903ea69c312439	4	2021-04-09 17:43:52.829785+05:30
7	2021-04-10 10:59:51.126968+05:30	700jxb0mv5wv70n8uu0nlq5r06f5qm1a	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	c5eb1d7d-c7a9-4847-bb75-fd2811b6df8b	9113c8d2f95437ac050e2aa1e7aa7704	3	2021-04-10 10:59:51.135233+05:30
8	2021-04-10 11:32:37.628417+05:30	is9x9kd2hjy747yq0101eux7geieofdn	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36	c8c14a67-1907-4a61-9a60-8e6855573574	ce23b5459806a3e8eff656604d079b12	1	2021-04-10 11:32:37.633078+05:30
9	2021-04-10 12:17:26.624528+05:30	yl1kbwrkax53mjcpz2j1ssjrqybl0zkn	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36	bda5bc9c-6e06-417d-a37b-70fde68108d9	d4bdcf8d33ee7912136dd01ec033ba9f	1	2021-04-10 12:17:26.628517+05:30
10	2021-04-10 12:41:34.157618+05:30	l3k319zpq52h4m1s2ca13szv8yueqnv1	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36	a3835be8-78d6-425a-83cd-f32c01a65de4	af653dbcf9621abfa1f0ff8b14f81cc5	1	2021-04-10 12:41:34.160607+05:30
11	2021-04-10 13:02:06.081694+05:30	urynw72w1dibdpdvff8yhycnrujsofm3	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	fd1ceb44-6240-4415-9025-d8c0f85284c6	de0c975fe67885cc518f0997d48fc69e	4	2021-04-10 13:02:06.097876+05:30
12	2021-04-10 13:05:11.872615+05:30	w8k4cjfs55tbhjmb4d2iskbl4loidx6z	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	2f947ac3-f8fd-4cb8-b43e-32f1aa3b9e53	98f5b672b6e3fa3e3efc0b2fb7c46a65	3	2021-04-10 13:05:11.876568+05:30
13	2021-04-10 13:08:51.304489+05:30	w0kg516usl8mwuxnxrzybjsa16gqhfij	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68	2a84687e-a52e-454a-8e08-ab6522df9224	96b1a0fdca100451763f609ff6aea96a	4	2021-04-10 13:08:51.308518+05:30
14	2021-04-10 13:30:09.059462+05:30	zhpd7a0bu3dkilbzb46rhmibcy90v0ar	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36	e287c3bd-c52c-4133-8af5-eb5fc67f92a5	61a4673c9f8a34e4471ae8701793d421	1	2021-04-10 13:30:09.071657+05:30
15	2021-04-12 17:04:18.413267+05:30	wxl0mjwutqglvd625nf82z64juphm29e	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36	6247486c-a2de-4f3e-8c39-54296453b848	7156f72bd375426004e5535d33a42366	1	2021-04-12 17:04:18.616407+05:30
\.


--
-- TOC entry 3254 (class 0 OID 0)
-- Dependencies: 212
-- Name: account_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_user_groups_id_seq', 1, false);


--
-- TOC entry 3255 (class 0 OID 0)
-- Dependencies: 210
-- Name: account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_user_id_seq', 4, true);


--
-- TOC entry 3256 (class 0 OID 0)
-- Dependencies: 214
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3257 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- TOC entry 3260 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);


--
-- TOC entry 3261 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);


--
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 226
-- Name: jobapp_applicant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobapp_applicant_id_seq', 2, true);


--
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 228
-- Name: jobapp_bookmarkjob_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobapp_bookmarkjob_id_seq', 2, true);


--
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 222
-- Name: jobapp_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobapp_category_id_seq', 1, true);


--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 224
-- Name: jobapp_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobapp_job_id_seq', 3, true);


--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 218
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 9, true);


--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 220
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 9, true);


--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 231
-- Name: user_visit_uservisit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_visit_uservisit_id_seq', 15, true);


--
-- TOC entry 2991 (class 2606 OID 18356)
-- Name: account_user account_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_email_key UNIQUE (email);


--
-- TOC entry 2996 (class 2606 OID 18364)
-- Name: account_user_groups account_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2999 (class 2606 OID 18375)
-- Name: account_user_groups account_user_groups_user_id_group_id_4d09af3e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2993 (class 2606 OID 18354)
-- Name: account_user account_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3001 (class 2606 OID 18389)
-- Name: account_user_user_permissions account_user_user_permis_user_id_permission_id_48bdd28b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3004 (class 2606 OID 18372)
-- Name: account_user_user_permissions account_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 18342)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2985 (class 2606 OID 18328)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2988 (class 2606 OID 18317)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2982 (class 2606 OID 18307)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2975 (class 2606 OID 18319)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2977 (class 2606 OID 18299)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 18432)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2970 (class 2606 OID 18291)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2972 (class 2606 OID 18289)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2968 (class 2606 OID 18281)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3042 (class 2606 OID 18601)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3034 (class 2606 OID 18509)
-- Name: jobapp_applicant jobapp_applicant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_applicant
    ADD CONSTRAINT jobapp_applicant_pkey PRIMARY KEY (id);


--
-- TOC entry 3038 (class 2606 OID 18574)
-- Name: jobapp_bookmarkjob jobapp_bookmarkjob_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_bookmarkjob
    ADD CONSTRAINT jobapp_bookmarkjob_pkey PRIMARY KEY (id);


--
-- TOC entry 3027 (class 2606 OID 18490)
-- Name: jobapp_category jobapp_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_category
    ADD CONSTRAINT jobapp_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3030 (class 2606 OID 18501)
-- Name: jobapp_job jobapp_job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_job
    ADD CONSTRAINT jobapp_job_pkey PRIMARY KEY (id);


--
-- TOC entry 3012 (class 2606 OID 18454)
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- TOC entry 3014 (class 2606 OID 18452)
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- TOC entry 3017 (class 2606 OID 18456)
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- TOC entry 3020 (class 2606 OID 18482)
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- TOC entry 3024 (class 2606 OID 18464)
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- TOC entry 3046 (class 2606 OID 18618)
-- Name: user_visit_uservisit user_visit_uservisit_hash_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_visit_uservisit
    ADD CONSTRAINT user_visit_uservisit_hash_key UNIQUE (hash);


--
-- TOC entry 3048 (class 2606 OID 18614)
-- Name: user_visit_uservisit user_visit_uservisit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_visit_uservisit
    ADD CONSTRAINT user_visit_uservisit_pkey PRIMARY KEY (id);


--
-- TOC entry 3051 (class 2606 OID 18616)
-- Name: user_visit_uservisit user_visit_uservisit_uuid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_visit_uservisit
    ADD CONSTRAINT user_visit_uservisit_uuid_key UNIQUE (uuid);


--
-- TOC entry 2989 (class 1259 OID 18373)
-- Name: account_user_email_0bd7c421_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_user_email_0bd7c421_like ON public.account_user USING btree (email varchar_pattern_ops);


--
-- TOC entry 2994 (class 1259 OID 18387)
-- Name: account_user_groups_group_id_6c71f749; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_user_groups_group_id_6c71f749 ON public.account_user_groups USING btree (group_id);


--
-- TOC entry 2997 (class 1259 OID 18386)
-- Name: account_user_groups_user_id_14345e7b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_user_groups_user_id_14345e7b ON public.account_user_groups USING btree (user_id);


--
-- TOC entry 3002 (class 1259 OID 18401)
-- Name: account_user_user_permissions_permission_id_66c44191; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_user_user_permissions_permission_id_66c44191 ON public.account_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3005 (class 1259 OID 18400)
-- Name: account_user_user_permissions_user_id_cc42d270; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_user_user_permissions_user_id_cc42d270 ON public.account_user_user_permissions USING btree (user_id);


--
-- TOC entry 2978 (class 1259 OID 18343)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2983 (class 1259 OID 18339)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2986 (class 1259 OID 18340)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2973 (class 1259 OID 18325)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3006 (class 1259 OID 18443)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3009 (class 1259 OID 18444)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3040 (class 1259 OID 18603)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3043 (class 1259 OID 18602)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3032 (class 1259 OID 18532)
-- Name: jobapp_applicant_job_id_816333ba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobapp_applicant_job_id_816333ba ON public.jobapp_applicant USING btree (job_id);


--
-- TOC entry 3035 (class 1259 OID 18533)
-- Name: jobapp_applicant_user_id_76443eed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobapp_applicant_user_id_76443eed ON public.jobapp_applicant USING btree (user_id);


--
-- TOC entry 3036 (class 1259 OID 18585)
-- Name: jobapp_bookmarkjob_job_id_ecef1c7a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobapp_bookmarkjob_job_id_ecef1c7a ON public.jobapp_bookmarkjob USING btree (job_id);


--
-- TOC entry 3039 (class 1259 OID 18586)
-- Name: jobapp_bookmarkjob_user_id_8474c040; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobapp_bookmarkjob_user_id_8474c040 ON public.jobapp_bookmarkjob USING btree (user_id);


--
-- TOC entry 3028 (class 1259 OID 18520)
-- Name: jobapp_job_catagory_id_65ab7b51; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobapp_job_catagory_id_65ab7b51 ON public.jobapp_job USING btree (category_id);


--
-- TOC entry 3031 (class 1259 OID 18521)
-- Name: jobapp_job_user_id_0153e37a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobapp_job_user_id_0153e37a ON public.jobapp_job USING btree (user_id);


--
-- TOC entry 3010 (class 1259 OID 18465)
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- TOC entry 3015 (class 1259 OID 18466)
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3018 (class 1259 OID 18478)
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- TOC entry 3021 (class 1259 OID 18480)
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- TOC entry 3022 (class 1259 OID 18477)
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- TOC entry 3025 (class 1259 OID 18479)
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- TOC entry 3044 (class 1259 OID 18624)
-- Name: user_visit_uservisit_hash_62c40efb_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_visit_uservisit_hash_62c40efb_like ON public.user_visit_uservisit USING btree (hash varchar_pattern_ops);


--
-- TOC entry 3049 (class 1259 OID 18625)
-- Name: user_visit_uservisit_user_id_7d503bee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_visit_uservisit_user_id_7d503bee ON public.user_visit_uservisit USING btree (user_id);


--
-- TOC entry 3056 (class 2606 OID 18381)
-- Name: account_user_groups account_user_groups_group_id_6c71f749_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3055 (class 2606 OID 18376)
-- Name: account_user_groups account_user_groups_user_id_14345e7b_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3058 (class 2606 OID 18395)
-- Name: account_user_user_permissions account_user_user_pe_permission_id_66c44191_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3057 (class 2606 OID 18390)
-- Name: account_user_user_permissions account_user_user_pe_user_id_cc42d270_fk_account_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3054 (class 2606 OID 18334)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3053 (class 2606 OID 18329)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3052 (class 2606 OID 18320)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3059 (class 2606 OID 18433)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3060 (class 2606 OID 18438)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3065 (class 2606 OID 18522)
-- Name: jobapp_applicant jobapp_applicant_job_id_816333ba_fk_jobapp_job_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_applicant
    ADD CONSTRAINT jobapp_applicant_job_id_816333ba_fk_jobapp_job_id FOREIGN KEY (job_id) REFERENCES public.jobapp_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3066 (class 2606 OID 18527)
-- Name: jobapp_applicant jobapp_applicant_user_id_76443eed_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_applicant
    ADD CONSTRAINT jobapp_applicant_user_id_76443eed_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3067 (class 2606 OID 18575)
-- Name: jobapp_bookmarkjob jobapp_bookmarkjob_job_id_ecef1c7a_fk_jobapp_job_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_bookmarkjob
    ADD CONSTRAINT jobapp_bookmarkjob_job_id_ecef1c7a_fk_jobapp_job_id FOREIGN KEY (job_id) REFERENCES public.jobapp_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3068 (class 2606 OID 18580)
-- Name: jobapp_bookmarkjob jobapp_bookmarkjob_user_id_8474c040_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_bookmarkjob
    ADD CONSTRAINT jobapp_bookmarkjob_user_id_8474c040_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3063 (class 2606 OID 18534)
-- Name: jobapp_job jobapp_job_category_id_3a0e51b4_fk_jobapp_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_job
    ADD CONSTRAINT jobapp_job_category_id_3a0e51b4_fk_jobapp_category_id FOREIGN KEY (category_id) REFERENCES public.jobapp_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3064 (class 2606 OID 18589)
-- Name: jobapp_job jobapp_job_user_id_0153e37a_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobapp_job
    ADD CONSTRAINT jobapp_job_user_id_0153e37a_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3061 (class 2606 OID 18467)
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3062 (class 2606 OID 18472)
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3069 (class 2606 OID 18619)
-- Name: user_visit_uservisit user_visit_uservisit_user_id_7d503bee_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_visit_uservisit
    ADD CONSTRAINT user_visit_uservisit_user_id_7d503bee_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-04-12 19:22:48

--
-- PostgreSQL database dump complete
--

