
--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_message (id, user_id, message) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add message	4	add_message
11	Can change message	4	change_message
12	Can delete message	4	delete_message
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add log entry	8	add_logentry
23	Can change log entry	8	change_logentry
24	Can delete log entry	8	delete_logentry
25	Can add banner	9	add_banner
26	Can change banner	9	change_banner
27	Can delete banner	9	delete_banner
28	Can add day parting	10	add_dayparting
29	Can change day parting	10	change_dayparting
30	Can delete day parting	10	delete_dayparting
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
1	admin			admin@test.com	sha1$97617$036e5a466a1264af3e9819a51794c988238f7faa	t	t	t	2013-01-14 14:34:59+02	2013-01-12 22:47:46+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: banner_banner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY banner_banner (id, name, is_enabled, file, click_tag, start_date, end_date) FROM stdin;
2	Second banner working only in first day part	t	images/2.jpg	http://test.com/	2013-01-14	2013-01-31
1	First banner working all day	t	images/1.jpg	http://test.com/	2013-01-14	2013-01-31
3	Third banner working only on evening	t	images/3.jpg	http://modnakasta.ua/	2013-01-14	2013-01-31
\.


--
-- Data for Name: banner_dayparting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY banner_dayparting (id, banner_id_id, hour) FROM stdin;
1	2	0
3	2	1
4	2	2
5	2	3
6	2	4
7	2	5
8	2	6
9	2	7
10	2	8
11	2	9
12	2	10
13	2	11
14	2	12
15	2	13
25	1	0
26	1	1
27	1	2
28	1	3
29	1	4
30	1	5
31	1	6
32	1	7
33	1	8
34	1	9
35	1	10
36	1	11
37	1	12
38	1	13
39	1	14
40	1	15
41	1	16
42	1	17
43	1	18
44	1	19
45	1	20
46	1	21
47	1	22
48	1	23
49	3	18
50	3	19
51	3	20
52	3	21
53	3	22
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	message	auth	message
5	content type	contenttypes	contenttype
6	session	sessions	session
7	site	sites	site
8	log entry	admin	logentry
9	banner	banner	banner
10	day parting	banner	dayparting
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
fc822a94897a7bd8f109283868bfee9a	OGI0YTRjMjQyYTdlNzczM2VhODFjZDkxMmZhMWRiN2Q3NTQ4Mjc5ODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2013-01-28 14:34:59.717268+02
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_site (id, domain, name) FROM stdin;
1	rotator.com	rotator.com
\.
