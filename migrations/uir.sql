--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-08-27 22:05:54

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
-- TOC entry 225 (class 1259 OID 50516)
-- Name: client_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client_user (
    user_id uuid NOT NULL,
    email character varying(128) NOT NULL,
    password character varying(256) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.client_user OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 50453)
-- Name: conference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conference (
    name character varying(400) NOT NULL,
    conference_id uuid NOT NULL,
    article_name character varying(300) NOT NULL,
    co_authors character varying(200) NOT NULL,
    language character varying(40) NOT NULL,
    type_id integer NOT NULL,
    student_id uuid NOT NULL
);


ALTER TABLE public.conference OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 50504)
-- Name: dissertation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dissertation (
    title_path character varying(512) NOT NULL,
    pz_path character varying(512) NOT NULL,
    dissertation_id uuid NOT NULL,
    status_id integer NOT NULL,
    student_id uuid NOT NULL,
    publish_date date NOT NULL
);


ALTER TABLE public.dissertation OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 50443)
-- Name: exam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exam (
    exam_name character varying(256) NOT NULL,
    exam_id integer NOT NULL
);


ALTER TABLE public.exam OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 50492)
-- Name: publication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publication (
    publication_id uuid NOT NULL,
    name character varying(512) NOT NULL,
    output_data character varying(256) NOT NULL,
    num_of_pages integer NOT NULL,
    co_authors character varying(300) NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.publication OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 50438)
-- Name: specialization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.specialization (
    name character varying(128) NOT NULL,
    specialization_id integer NOT NULL
);


ALTER TABLE public.specialization OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 50477)
-- Name: status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.status (
    status_name character varying(128) NOT NULL,
    status_id integer NOT NULL
);


ALTER TABLE public.status OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 50526)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    user_id uuid NOT NULL,
    student_id uuid NOT NULL,
    start_date date NOT NULL,
    department character varying(256) NOT NULL,
    enrollment_order character varying(256) NOT NULL,
    academic_leave boolean NOT NULL,
    plan_path character varying(512) NOT NULL,
    studying_duration integer NOT NULL,
    full_name character varying(256) NOT NULL,
    specialization_id integer NOT NULL,
    publication_id uuid NOT NULL,
    supervisor_id uuid,
    faculty character varying(512) NOT NULL,
    group_name character varying(100) NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 50482)
-- Name: student_exam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_exam (
    mark integer NOT NULL,
    date date NOT NULL,
    exam_id integer NOT NULL,
    student_id uuid NOT NULL
);


ALTER TABLE public.student_exam OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 50465)
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    subject_id uuid NOT NULL,
    name character varying(256) NOT NULL,
    main_teacher character varying(256) NOT NULL,
    hours integer NOT NULL,
    student_id uuid NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 50431)
-- Name: supervisor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supervisor (
    user_id uuid NOT NULL,
    full_name character varying(256) NOT NULL,
    supervisor_id uuid NOT NULL
);


ALTER TABLE public.supervisor OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 50448)
-- Name: type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type (
    type_id integer NOT NULL,
    type_name character varying(128) NOT NULL
);


ALTER TABLE public.type OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 50472)
-- Name: user_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_class (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.user_class OWNER TO postgres;

--
-- TOC entry 3417 (class 0 OID 50516)
-- Dependencies: 225
-- Data for Name: client_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client_user (user_id, email, password, id) FROM stdin;
5f6c58e4-dded-4a77-a073-4384ae18c976	mbenedicto0@google.ru	JMZiTi6rXPxw	1
9ee66b6f-e67c-4a27-b269-d7d332a5a9ec	lfuentes1@wix.com	aC3P2EssmKbw	2
61656004-e755-4e45-aa58-415e99f83dee	csowrey2@icq.com	7j2D2Gl0iJQe	3
b9e3f8c4-108c-44e0-b592-6acd39cd234a	davrahm3@utexas.edu	wnOi4p8w	3
395ab8f1-050a-4246-b8cd-a13c02e6fcd5	mmeace4@ameblo.jp	1ZA8MIv27SjC	3
53b26510-922e-40ea-8406-fae3f5c1c22e	aslocom5@miibeian.gov.cn	M6wfpYFA1qp1	3
be555608-70c3-4f5d-9252-c4f61b9363bd	estood6@comsenz.com	0eUs2wY8xn2	1
131f10c8-6429-4587-a9f9-b331c418c4ef	igippes7@seesaa.net	IyN62jt	1
02be313f-cadd-4478-906d-a69322edb948	mhassey8@blogs.com	ctkpPi37a	2
150f6c4c-6719-49b0-b4a6-cce0adb40107	mtregear9@i2i.jp	ZQWhVEhjeHa2	2
5c491353-2e0a-48fd-888b-131722b81f06	aseacrofta@pinterest.com	DQ3NtcQ	1
9771bdb8-9aa7-43eb-b274-e3e7d67fa816	fgoodbyb@mapy.cz	qFgE2H3	3
d731f6b6-a287-4d6a-816c-060bdc60d304	tellicottc@jiathis.com	RqG3pQQf	2
2a3cf441-1529-4f54-be19-cf4453ab4949	loscroftd@vinaora.com	PtATa3gZMJ	2
ce037c9a-b450-4f75-bf11-19104586f3fa	ngarterye@cargocollective.com	WOeV0m60FR	1
1e5702ee-1c0a-4cdf-a411-670cdef06a08	sdrillingcourtf@nps.gov	0CSEnMM	3
9e039973-43eb-45b0-89e0-e53a3f859cdb	jdmtrovicg@yahoo.co.jp	RAyljaLg2uA	3
535c1854-69da-4ce8-911f-cde050e720c6	pmacelroyh@edublogs.org	dwUruOnQo	1
24fa037d-0e6a-48fc-829f-4afd057ee792	pklussi@amazon.co.jp	VHlQG3t6Pgw8	2
146ab91c-8336-4391-baa8-237e381b6604	haxfordj@360.cn	NhtBeREykRTv	2
f00672d7-119d-45ee-80f4-0443ecaa8b1a	jtravissk@independent.co.uk	xfoQZ0YlUpnz	1
271532d2-0b85-475e-be03-fe60c72493cd	cbrosolil@weebly.com	AXDXRfjRgBF	2
a3642647-7cef-403e-a1b3-090a77164212	tduckettm@squarespace.com	FmEhKI	2
c3dda451-9c29-4382-a4c8-543eb0446639	tbatsonn@myspace.com	AdOR86mCeQ8	1
94e82c86-a496-4356-974d-941a0e3cb0c2	npollendineo@eepurl.com	maWkxuBeDDb	2
c54e56b0-bad0-409d-9eb9-60aadbe89632	jyessonp@liveinternet.ru	WuMreUsm	2
d5b51316-3b8f-4437-b10b-d66f47cf128c	alethbrigq@oaic.gov.au	rDPZFR	3
99c7ed53-1dd0-466f-ad48-c897c3904316	bskaer@acquirethisname.com	HILwH3k	2
8c035ec7-1d77-40a1-a16b-446dde2f4bad	dscoless@senate.gov	mRCdEFA3tl	2
58edfd15-59fe-4c8b-9f3c-05b5e60f4de1	acritchert@pcworld.com	5kR9guGvO	2
e7f3e0a4-5ffd-4b66-ba97-5a6d959d8783	scolkettu@economist.com	WVaIdrwCJ6uj	1
2e0247c2-28cf-481a-a82a-238018e49888	pwaggev@gizmodo.com	ANGfnRRfonwp	1
ddec5b0a-050a-41a4-a1d0-4fc2f53ec512	rgoldupw@sina.com.cn	yfWFIvLO2X	3
de739dfc-5fd1-4b3e-9dbe-bce67cbbf412	kpolinox@forbes.com	ulK2I3	3
85f52cfe-b461-4aab-b850-684291065534	hrosencwaigy@squidoo.com	W4orgkxMZG	2
68d388f6-81f1-4a9d-8f9f-cfe16129f0e5	pminnettez@vkontakte.ru	cwHkYAUF	1
21e882cb-1a57-46c2-9a0a-af2bb022ee39	kpeile10@people.com.cn	CxiUAe	2
6b12cce5-8ef6-4d37-9e53-8008d37370cb	bmcgrouther11@gov.uk	Ye1XJleBo8e	1
ef8f41c3-8e95-47a6-9203-378cfad64f18	hlibrey12@nyu.edu	hCiTa0P0cKc2	3
29c13d7a-265e-468d-8d51-55e631f34d1e	ahug13@princeton.edu	TmkOavz	1
e5761763-4416-4a7f-9633-a562d49082d0	mcaroli14@csmonitor.com	cWJY5WT0e	2
38cc3229-e364-4514-ae68-7cdf826af87f	pridhole15@goo.ne.jp	YUzCGbwoOQ	1
c62f9b49-5298-488f-9cdc-cc70b276e3f0	ggentner16@printfriendly.com	aY1smb	2
2d1a7898-a967-4aa3-b73d-d2751b845bf1	nmidgely17@usa.gov	bM6LaSz	1
4ee46ecf-42ca-4f8e-8bc4-2d3f6f4353ba	aallcock18@vistaprint.com	u42px7	2
739daf68-869d-45d9-9759-17afcf20c332	kslimm19@fastcompany.com	JhIMyp	3
e3742656-713c-4cdf-bbb9-0b71c34ecac1	amingaye1a@addtoany.com	3P7HgtE5X	1
94ce739d-2a00-4eb6-be58-30ab97bf7761	bmarc1b@wordpress.com	XQlEOy9nQGUR	3
b4c10837-4e22-458c-95fb-897d0beffa85	flansley1c@stumbleupon.com	U28j9Nvr	3
4a59486a-b372-43ab-85dd-b598d53c1fb3	kverrill1d@cnet.com	UD5S86nvQYH	2
773c07cf-d6c5-4f2f-8e2b-5d923fd9134f	lbrear1e@blogs.com	0HuoHjebS	3
33e79427-d104-4a08-986f-75ea2860998b	bbasketter1f@edublogs.org	jCBrZ6Vg1l	1
7001610a-0c15-4da6-af6d-2a220dc4cc3e	gshimuk1g@state.gov	HowYaFWCko	1
8a84c97e-09a8-4095-a473-47535b4dc535	sformoy1h@t.co	kMxlw1	1
7f468829-251b-4360-ba27-8541f4193af1	jesler1i@squarespace.com	wzBXYxZ0V	2
c40555e0-8ab2-4464-94cc-bd02539ce80c	tkirwin1j@google.de	ISHcbiMI	1
8d5f0854-39e2-474a-86db-921e2779a46b	tminguet1k@meetup.com	pxstCXucWx2	1
a75ae789-b577-4871-914d-88499fd504c7	dcron1l@squarespace.com	TT8lAA	3
bd2d64ef-db2c-4368-ba40-21f282e2395e	rseals1m@github.com	4sAs7w	3
e9969863-06a3-4243-844d-2ff0a9eb72bd	spotteridge1n@marketwatch.com	Cj9omKeDHq	1
e0603477-0452-494e-9c73-27f1f29fd46d	gurpeth1p@irs.gov	Aam2SzrBNX	3
c42c92ff-e0ae-4db9-8f14-1945609798c0	vchandler1q@bravesites.com	1uApE7c	1
cc16d00e-4466-4c92-bc75-147cd290384b	dvanderkruys1r@biblegateway.com	gHBkRKpCEltj	2
75569e17-4ac7-47ec-b135-04aafa5ef586	ccaulfield1s@miibeian.gov.cn	DoqtlCcwP	3
30ff91c7-084b-4cd7-9f24-c53911355ca2	remanuelli1t@redcross.org	ychCOtYKF7	3
28229c54-8b35-48a3-be6b-a18ee378fa9c	pyandle1u@mapquest.com	w7xM5E	2
acbe26c4-7469-4745-9304-d6458821f7ff	ghrynczyk1v@smugmug.com	Y7vD3OiEl	3
e1e69c3e-2eea-4274-8b8a-018291ac8b65	seminson1w@ucoz.ru	KDddcE7Gj4r8	2
1c26f80b-5e8d-4814-b44f-657e3465cf38	orainford1x@ftc.gov	lvxJOalWVf	1
cad273fc-3211-4d1a-93f8-a59b2f53077f	RATATATA@email.com	9yhZWzDkUg3h	3
\.


--
-- TOC entry 3410 (class 0 OID 50453)
-- Dependencies: 218
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conference (name, conference_id, article_name, co_authors, language, type_id, student_id) FROM stdin;
Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.	dffec8b1-d22f-4b2e-88a8-1f91075c0f28	Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.	Shaine Coolson	Swahili	1	b3fc9d3d-b884-426e-96fa-3507ce2eea3d
Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.	0538b0bf-f1b4-4dec-9409-62c06e3798b6	Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.	Ines Bruhn	Khmer	1	c803654b-c4a3-4ac8-8195-a4bf5fc2de25
In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.	b681a075-befc-498d-ac53-0840a7d6a3b0	Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.	Darb MacKall	Filipino	2	5d2962d8-d92e-4352-a1d8-83679d4c9835
Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.	0695d69d-3eec-4a27-b07d-625bee57c974	Nulla facilisi.	Ardella Beig	Pashto	1	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d
Mauris lacinia sapien quis libero.	2c53f9b8-6bc2-4471-9a67-287004f423e7	Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.	Sydelle Easson	Guaraní	2	e0ccdb39-5d7a-4e4a-a650-8baf6572e8a0
In quis justo. Maecenas rhoncus aliquam lacus.	a5eda4d3-62f9-4abc-9f16-a51d5d02080d	Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.	Claudell Shepard	Yiddish	1	1a4be83e-934c-494a-a6bd-7bf7f4a74663
Pellentesque ultrices mattis odio. Donec vitae nisi.	3282559d-b40c-43fd-a95b-2d8c860fb2b3	Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.	Lari Duckhouse	Kyrgyz	1	a93a41a1-3f9f-49ba-8f71-66fce252bbfd
Sed accumsan felis.	cb054614-c5a7-4f92-a9d5-8a897fda19d2	Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.	Kamilah Buney	Arabic	2	9f259d4c-86b4-43b1-b7ee-7250e0f0253b
Suspendisse potenti. Nullam porttitor lacus at turpis.	41f34cb2-0042-4305-b32b-49db2d8a678a	Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.	Lynett Banes	Telugu	2	d6f97568-ca1c-40f9-8d52-97f5d6366aa1
Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.	3bef5691-21dc-4014-9e3b-cbfcbe9498f7	Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.	Nobie Barg	Guaraní	1	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
Duis bibendum. Morbi non quam nec dui luctus rutrum.	12a43de3-5a12-4814-804d-6ed1cb795adf	Donec vitae nisi.	Rodge Hadny	Northern Sotho	1	d3eb7e78-1384-4d96-aba4-5904eeb58011
Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.	d1b979e4-9058-4eb0-8514-0810cb4874d3	Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.	Nedda Burrells	Tok Pisin	1	7212ca19-c25c-4fcd-ae3b-7cf3b4c60af0
In eleifend quam a odio.	dc880a0e-72f2-4a1c-b900-5bd014cbec4a	Quisque porta volutpat erat.	Morissa Gronaller	Pashto	3	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.	f123564e-1224-40f5-abda-f2cbe3bb2e79	Etiam pretium iaculis justo.	Vivyanne Quimby	Swahili	1	1860261c-5deb-44d6-80c8-bee65dbb20be
Curabitur at ipsum ac tellus semper interdum.	f210402e-a32d-4620-9286-3cbae8e85741	Integer ac leo.	Steffi Kyndred	Kazakh	3	5e62704a-c4c9-415c-8d17-a0bfd62c3446
Etiam vel augue. Vestibulum rutrum rutrum neque.	66e48eb7-37bb-486e-a103-5f3e542ff1c1	Suspendisse accumsan tortor quis turpis. Sed ante.	Dawn Banham	Catalan	1	bcc5954c-3ac3-4cea-aac3-4ae87bc19d3e
Suspendisse potenti.	67feea79-7683-47ce-be60-08223be829e0	Ut at dolor quis odio consequat varius. Integer ac leo.	Garald Barnwall	Aymara	3	b3eab2a0-a0ac-4c88-a5e4-2f97e1080a20
Vestibulum sed magna at nunc commodo placerat. Praesent blandit.	b1d764ac-5a39-4274-81a5-b77633ddd1a4	Aliquam erat volutpat. In congue. Etiam justo.	Peyton Nutley	Arabic	3	4b0d6b2d-a227-422b-8dd6-f8115499fff2
In quis justo. Maecenas rhoncus aliquam lacus.	85546c59-ba44-40aa-9170-8ebb708e17f7	In congue. Etiam justo. Etiam pretium iaculis justo.	Denny Showl	Latvian	1	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.	9ac48327-a4ad-465f-8ba3-274d1c967692	Lorem ipsum dolor sit amet, consectetuer adipiscing elit.	Dehlia Wrench	Estonian	3	39bd9a65-f79c-4fea-8c3e-9803d32073f5
Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.	9d18fb74-42f3-4f0e-a907-02f74342bf84	Duis aliquam convallis nunc.	Jackie O'Lagen	Latvian	2	39862ca6-a8b2-466d-9152-226b3fb08c24
Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.	fb49daf6-d057-4c4c-8fea-ec4703688f4f	Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.	Alexis Dangerfield	Indonesian	1	a4a067fa-719d-466e-a72a-9cc3eb315d2c
Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.	8985fca6-8877-4222-b5ff-004017930c99	Nulla nisl. Nunc nisl.	Yancey Dawnay	Thai	3	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
Praesent blandit lacinia erat.	7693e671-6ac5-4718-b78c-bc7c1db35687	Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.	Tarrah Noblet	Latvian	2	e0e760f4-7806-41fd-8c70-27a5e91570a8
In congue. Etiam justo.	b031dad2-966b-4e5c-81ce-42d86f392c28	Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.	Griffith Carlon	Tsonga	2	0bef6da0-cabd-4a35-834b-f160e071019d
Praesent lectus.	65546e8a-6f98-4278-91b7-abb7179096b8	Nulla mollis molestie lorem.	Dacey Vearncombe	Marathi	3	92f8f0c2-84e2-4d22-8728-ab07d45da2be
Aenean lectus.	3c344539-7c17-4e02-b181-553e4a814c50	Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.	Trent Sawford	Yiddish	1	feb3388c-2221-40b3-bebe-6345798f6ded
Suspendisse accumsan tortor quis turpis. Sed ante.	e68ce568-fdd9-4d87-b33a-9891cb1771bb	Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.	Renell Placide	Hebrew	3	c7df6ff1-404f-4a22-ae16-5fa717164a37
Nulla tellus. In sagittis dui vel nisl.	f390aeb5-888e-407f-8d98-a96410d0ea26	Nullam molestie nibh in lectus.	Adel Eastmond	Zulu	2	5a3c7dec-70e8-4f67-b576-eccaf7178242
Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.	c487c706-0865-4907-8d36-ccee26a9ef7a	Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.	Melony Ansell	Spanish	2	23db7498-f586-4ed3-aacb-7140fcb69f79
Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.	607b0744-a522-426f-aa65-3fb50afcfa9a	Maecenas pulvinar lobortis est. Phasellus sit amet erat.	Shelia Allsup	Luxembourgish	2	28008587-1613-4325-8861-c6a4d45da728
Proin at turpis a pede posuere nonummy. Integer non velit.	7b5e0979-7c9e-4a31-b70d-cf2693ec38bd	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.	Angeli Ogden	Spanish	3	2432dda3-3320-41dd-8b86-2ba0a08a141b
Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.	7a505d12-1361-4dcb-a32d-c4b7c31f57ca	Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.	Leesa Swaile	Swedish	2	63343380-6d84-4771-95ed-b7a8c8a1ce1c
Pellentesque ultrices mattis odio. Donec vitae nisi.	17d7d65d-eaa8-4ba1-be5a-07f42829ff05	Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.	Hobie Drakes	Persian	3	a192ee0a-d495-41a0-af07-1efe0ef05d40
Aenean lectus. Pellentesque eget nunc.	37af8435-c73a-4466-ab80-695880b83326	Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.	Birdie Lowle	Kannada	1	c29cdf74-448d-497d-9fb5-822962f9cbf5
Nulla facilisi.	ff484ef1-ac53-4bc5-993b-c41e8ba99fe0	Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.	Alyssa Sutor	Romanian	2	d1eec8f5-8acf-4936-949a-91f09b789be8
Vestibulum rutrum rutrum neque.	009c5091-6e24-4518-893d-475223face38	Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.	Zachariah Camosso	Tetum	1	514df0e1-9dcf-451c-8711-a4c7191df315
Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.	ff55830d-463c-49f0-8dce-550497401725	Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.	Jillane Riepel	Bengali	1	73c7e32e-57ef-4ac5-bd62-080deeb43e60
Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.	c8d60252-6187-4d4d-a7ce-4a0dbfc57e8f	Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.	Abbott Fromont	Albanian	2	56eb1823-4eef-4c15-8991-e4e74e38f97f
Nulla suscipit ligula in lacus.	4f9ed86f-ed5d-4de3-8389-6d6da7309969	Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.	Sonni Milington	Spanish	3	de4e1130-2e9f-483e-8762-8b92ac89f518
Nulla ut erat id mauris vulputate elementum. Nullam varius.	288431e6-db0b-4c5c-9b9b-6fdfe8990724	Integer ac neque.	Elmira Sibary	Azeri	3	c3cf615c-90b0-4485-8879-70d0ce10ad1a
Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.	0027e061-ea7e-4313-9055-d982c6952c9b	Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.	Natassia Henstone	Moldovan	3	18631759-89e7-47dc-9a08-86339ee84c5d
Donec quis orci eget orci vehicula condimentum.	646b1b21-fc80-49c6-bc72-41972666bfe1	In blandit ultrices enim.	Norrie Nelius	Amharic	3	36aa8185-41da-4333-b9e3-3d5c7b34fe79
Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.	77881a49-355e-4e83-95c8-465e0da0c14d	Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.	Loella McDade	Dutch	1	ddd5c80d-f089-4164-8f0c-0b91026a8437
Aliquam erat volutpat.	7b60f1d4-a831-4a03-9890-f502923014dc	Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.	Rhodie Freezor	Guaraní	2	a1e79d21-ff70-4447-8538-1c9cfd579eef
Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	355ae7de-e0ae-4ccf-a9df-88fc22883e89	Praesent blandit lacinia erat.	Birk Gouldbourn	Chinese	1	7076c8ca-7d43-4c83-a091-c0ca15070343
Integer non velit.	7635ba89-cbaa-463a-8d1a-50416763bfb8	Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.	Janet Grzelewski	Haitian Creole	2	128c9832-7a82-44ef-b87d-17d6c0287f37
Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.	2d4438f6-79df-4ac7-8a67-4d3510184e6e	Maecenas rhoncus aliquam lacus.	Gustavo Sellar	Telugu	2	4af3abf7-0a5d-4bd5-89b9-e15bdb209221
Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.	3f0a365c-a7de-4e72-860d-042d73fa18f4	Quisque ut erat.	Goldina Jimmes	Lao	2	bbd339dc-63f2-4fa5-8dfc-7428717bffb6
Fusce consequat.	ec722716-d765-4336-a8a4-c01b8b82e12c	Phasellus in felis. Donec semper sapien a libero. Nam dui.	Llywellyn Bellows	Estonian	2	3031166e-3811-4c16-9b2d-da46719476f0
\.


--
-- TOC entry 3416 (class 0 OID 50504)
-- Dependencies: 224
-- Data for Name: dissertation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dissertation (title_path, pz_path, dissertation_id, status_id, student_id, publish_date) FROM stdin;
PraesentBlanditNam.pdf	AcTellusSemper.mov	b3b03162-87a5-4166-bdc7-c87c6a5a0109	1	feb3388c-2221-40b3-bebe-6345798f6ded	1981-01-23
NullaSed.mov	TurpisDonec.gif	50e08859-a42f-4256-8171-d5c4d568abc0	3	de4e1130-2e9f-483e-8762-8b92ac89f518	2008-10-18
UltricesEnimLorem.png	In.xls	a8e4c9b8-f05b-48d5-8350-70ca7b137786	3	e1507ff5-6503-4e0c-8af4-e392c67bb5ff	2014-03-25
Nulla.xls	ConvallisDuis.mp3	f717514f-2210-4876-8951-70ee804efe9f	1	18631759-89e7-47dc-9a08-86339ee84c5d	1991-01-04
DolorSit.avi	Fusce.xls	9993f195-7d34-4264-8966-2ac588cdd9f1	2	514df0e1-9dcf-451c-8711-a4c7191df315	2010-01-06
AmetConsectetuer.mp3	SitAmet.mp3	31931f62-c4b0-4259-babf-04c86c62d2eb	1	5e62704a-c4c9-415c-8d17-a0bfd62c3446	1993-08-20
PlaceratAnte.ppt	AcNibh.xls	185647de-cbbc-4a52-b54c-9eea2d2488d5	2	7212ca19-c25c-4fcd-ae3b-7cf3b4c60af0	2010-12-04
Pede.avi	Mattis.mov	bad0bedb-9253-4c09-bf97-40305978a6e6	1	73c7e32e-57ef-4ac5-bd62-080deeb43e60	2009-04-24
Venenatis.pdf	SedMagnaAt.xls	ca1f94fa-b440-4608-9115-338fbc7ff3c4	2	d1eec8f5-8acf-4936-949a-91f09b789be8	2009-09-05
CongueEtiam.tiff	Vulputate.pdf	1f49e15f-d54a-428d-9b8d-7d2dbbb6f841	3	1a4be83e-934c-494a-a6bd-7bf7f4a74663	2013-10-10
UrnaPretium.avi	LobortisSapienSapien.ppt	29a51e5b-abac-4415-8dbd-a2e5cbdb7a3b	3	c803654b-c4a3-4ac8-8195-a4bf5fc2de25	1981-12-15
OrciPedeVenenatis.tiff	ALibero.mov	f668ff21-c344-487c-b624-6df906c0523f	1	128c9832-7a82-44ef-b87d-17d6c0287f37	1973-12-10
RisusAuctor.pdf	TempusSitAmet.ppt	c0f341d5-c0b5-4f82-990c-37028518099d	2	c29cdf74-448d-497d-9fb5-822962f9cbf5	1975-12-07
TurpisA.mov	Amet.ppt	737d79db-3c01-48d5-afe2-b085bf478179	2	d6f97568-ca1c-40f9-8d52-97f5d6366aa1	1988-09-26
TurpisEget.mp3	Purus.gif	0e125b5a-82fa-4b73-abb3-f0aecab0bf33	2	d3eb7e78-1384-4d96-aba4-5904eeb58011	1999-01-31
PotentiCras.ppt	Interdum.xls	db8a3928-1feb-4dae-aab3-e1168b40207e	1	9f259d4c-86b4-43b1-b7ee-7250e0f0253b	1982-07-22
Nunc.avi	VulputateUtUltrices.mp3	d60063b8-bb53-4940-94b8-94eba9f78a36	3	23db7498-f586-4ed3-aacb-7140fcb69f79	1983-12-07
InTemporTurpis.xls	Justo.pdf	377fd18a-b3aa-4c51-aa51-86cb2c64c7d6	2	63343380-6d84-4771-95ed-b7a8c8a1ce1c	1976-05-11
Sit.ppt	PedeMorbiPorttitor.avi	73be933e-4d64-4739-997c-acfba3b50937	2	1860261c-5deb-44d6-80c8-bee65dbb20be	1984-07-24
ConvallisTortor.tiff	DiamVitaeQuam.mov	1bfccadb-5a5f-4807-a649-7b7d75f6f09b	1	a4a067fa-719d-466e-a72a-9cc3eb315d2c	1978-07-17
Rutrum.xls	RisusDapibusAugue.mp3	9f7444c8-5244-4fa6-ac56-1a45244e2291	3	0bef6da0-cabd-4a35-834b-f160e071019d	1990-02-17
SedAugueAliquam.pdf	PlateaDictumst.xls	8ca9d6be-e712-41c2-8b76-9207043ca91c	1	28008587-1613-4325-8861-c6a4d45da728	2001-06-25
EgetTinciduntEget.doc	Pede.mp3	070f0519-1aad-44a7-bbf0-03a668163d7d	2	e0ccdb39-5d7a-4e4a-a650-8baf6572e8a0	1983-01-24
DuiLuctus.xls	Erat.ppt	ee1ed6ab-9f4f-4561-b599-32374d667f53	2	a93a41a1-3f9f-49ba-8f71-66fce252bbfd	1975-05-18
InterdumVenenatisTurpis.avi	VolutpatQuamPede.png	89521ed8-a07e-4649-9c1c-23572dc5dd10	1	92f8f0c2-84e2-4d22-8728-ab07d45da2be	2023-04-28
SitAmetTurpis.avi	RisusSemper.mp3	22f4f49d-0d86-4570-8e41-a6d9a8759efd	1	c3cf615c-90b0-4485-8879-70d0ce10ad1a	2012-10-08
VariusUt.png	Penatibus.ppt	fad2ec28-de77-4df3-9fc4-54bbac87c091	2	4af3abf7-0a5d-4bd5-89b9-e15bdb209221	1996-01-27
UtOdio.ppt	Justo.mp3	83af3051-3f1e-4c38-bf19-b86d5967ccc1	2	b3fc9d3d-b884-426e-96fa-3507ce2eea3d	2022-11-30
CommodoVulputateJusto.ppt	MaurisNonLigula.tiff	224b914a-f273-43a1-9100-879b2149294b	3	a1e79d21-ff70-4447-8538-1c9cfd579eef	2008-11-17
Tempor.xls	NequeLiberoConvallis.ppt	3b98e2cd-9ada-4567-96a4-9e127a5457be	3	7076c8ca-7d43-4c83-a091-c0ca15070343	1973-11-02
Viverra.ppt	InEleifend.mp3	3ed22a4c-2d97-40a0-8bbe-da692f60ec4d	3	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d	2015-03-19
IpsumAcTellus.pdf	QuisTurpis.mp3	2ab1ff73-1bb3-40ce-a9c3-3a75eae0d48e	2	2432dda3-3320-41dd-8b86-2ba0a08a141b	1999-12-15
PedeMorbiPorttitor.tiff	Odio.xls	41e2f9fe-269b-4d5d-80e5-8e1ce49b2b5d	3	3b205ebd-d06e-4c46-aa49-3111e4ecee3d	2010-11-10
Nunc.png	VivamusVestibulum.txt	6af188fa-e759-42e6-815a-ab64705484bb	1	36aa8185-41da-4333-b9e3-3d5c7b34fe79	1991-12-26
Lorem.xls	Nulla.avi	57cb2650-a30c-4ec8-ab48-cf6fd0e9f15f	1	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5	2011-11-02
FusceCongueDiam.png	Ligula.avi	76457cf6-857e-4dac-9dc0-94ae580b5b74	3	4b0d6b2d-a227-422b-8dd6-f8115499fff2	1985-12-31
Semper.jpeg	TurpisInteger.avi	fcfcecaf-f997-4574-941b-a5ada71adaa9	1	e0e760f4-7806-41fd-8c70-27a5e91570a8	1980-08-30
Primis.ppt	MetusVitaeIpsum.png	bda5fb1f-99bc-4672-80fe-92227b9987bd	3	5d2962d8-d92e-4352-a1d8-83679d4c9835	1981-12-12
Vel.xls	PretiumIaculis.ppt	69b597c2-dc5a-4e1c-8a8a-923cb5599436	1	b3eab2a0-a0ac-4c88-a5e4-2f97e1080a20	1977-04-10
ConsequatMetusSapien.ppt	Integer.tiff	e6d43c8e-f6b6-4888-8063-9eca8590f385	1	39bd9a65-f79c-4fea-8c3e-9803d32073f5	2019-06-13
NullamOrci.tiff	OrciLuctus.ppt	22dec036-ffe3-48db-8aa6-d6a85ca4c432	1	bcc5954c-3ac3-4cea-aac3-4ae87bc19d3e	1983-05-13
Eros.ppt	PellentesqueViverraPede.ppt	1b02e598-f783-4a7b-ae94-2307fe4c536c	2	4e5d0c71-5156-40ef-ab44-f2b5b57cee01	1975-07-22
SapienQuisLibero.mp3	SollicitudinMi.xls	3b8f6713-d07f-402d-b701-642b60a77ad1	3	bbd339dc-63f2-4fa5-8dfc-7428717bffb6	2011-10-24
Condimentum.avi	PhasellusIdSapien.tiff	8fc3f6a0-07e6-4ed0-97cc-2c07bcf81626	3	5a3c7dec-70e8-4f67-b576-eccaf7178242	1976-11-24
SitAmetSapien.jpeg	OdioPorttitor.xls	280fcfd6-96a7-4e02-afca-a925e47d868d	1	a192ee0a-d495-41a0-af07-1efe0ef05d40	1970-12-26
PedeJusto.mov	LaciniaAenean.mp3	5ef99e28-5299-46ae-8901-f36704d5d9f1	3	c7df6ff1-404f-4a22-ae16-5fa717164a37	1991-03-29
InterdumMaurisUllamcorper.tiff	PosuereCubilia.png	ced67a0d-2e91-4abb-b436-4cea289575db	1	ddd5c80d-f089-4164-8f0c-0b91026a8437	2012-08-21
MattisEgestasMetus.mp3	LuctusEt.xls	25cdc21a-d3c1-4d74-b9d8-990da96b559c	3	56eb1823-4eef-4c15-8991-e4e74e38f97f	1988-10-19
ConvallisTortor.ppt	Duis.pdf	62b301fe-b5ea-434b-906d-aa4727365054	1	3031166e-3811-4c16-9b2d-da46719476f0	1980-10-26
AOdio.xls	PhasellusId.ppt	f3efbbd5-32a9-4daf-9000-488ad655334a	1	39862ca6-a8b2-466d-9152-226b3fb08c24	2008-07-20
\.


--
-- TOC entry 3408 (class 0 OID 50443)
-- Dependencies: 216
-- Data for Name: exam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exam (exam_name, exam_id) FROM stdin;
Философия	1
История	2
Иностранный язык	3
Право	4
\.


--
-- TOC entry 3415 (class 0 OID 50492)
-- Dependencies: 223
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publication (publication_id, name, output_data, num_of_pages, co_authors, type_id) FROM stdin;
4b7e28d2-8f71-4e22-8b38-de3400859c14	Proin risus. Praesent lectus.	Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.	61	Amberly Herley	3
67dec382-b546-4f3b-a680-9fe2a66bfbff	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.	95	Emelen Babington	3
0fe2b1ec-9ba1-4f9c-a5f7-8cd4b3f34dfd	Phasellus id sapien in sapien iaculis congue.	Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.	26	Weston McGarry	2
cf7b64c5-f23b-4b76-82c2-4ecd273e9e35	Suspendisse potenti.	Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.	22	Wyn Newark	3
a08d8b3d-14d9-4168-bd70-70f565a12ec2	Mauris lacinia sapien quis libero.	Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.	89	Lindsay Lyness	2
c18766db-c744-4ff7-b17b-38867066591f	Integer a nibh. In quis justo.	Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.	48	Duffie Camous	3
5f11d826-b79b-4931-b74a-6c541db21c17	Aenean lectus.	Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.	76	Norri Stockley	2
22909548-b4e2-481a-a28c-20211a7178b8	Cras pellentesque volutpat dui.	Morbi a ipsum. Integer a nibh. In quis justo.	40	Eveleen Keech	3
e2e2e7ac-8ed8-4571-9d07-547037b6c143	Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.	Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.	94	Lucienne Adshad	1
d547c87a-690f-4fb7-8be6-9cbe0404f925	Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.	Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.	22	Barbette Chadwell	3
fd42963d-cf17-447e-8786-f21069c6a6fa	Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.	21	David Holley	3
02ee1af7-7c10-42c6-94ca-42ca5c483b46	Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.	Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.	45	Marley Jachimczak	2
364e96cc-be45-49e9-9dc8-7ac883859a55	Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.	Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.	90	Nancey Verdon	1
dc71b7d6-dfff-4232-9e88-4b409240f599	In hac habitasse platea dictumst. Etiam faucibus cursus urna.	Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.	84	Kittie Debrett	1
837b4fce-7e59-408b-ba08-3a2c76f6fd17	Sed sagittis.	Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.	25	Guy Huntingford	3
62f39f1d-9c31-429e-840d-85c26e1d8910	Integer tincidunt ante vel ipsum.	Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.	43	Danella Totterdell	2
0706f2b2-b46e-4323-94b6-1eebdbab43a7	Suspendisse potenti.	Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.	100	Malorie Tampin	3
842ebb6f-5726-425d-9724-712e05826210	Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.	Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.	66	Selinda Blastock	1
0d808156-020d-4294-84a0-08215310b54d	Nullam molestie nibh in lectus.	In hac habitasse platea dictumst. Etiam faucibus cursus urna.	75	Orsola Stockall	3
39d432da-58f5-47b3-9fd5-8d0625f0f1fb	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.	Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.	46	Beverlee Lepere	3
cb5c2984-63ac-44f7-b22d-9cb31801a146	Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.	54	Hiram Woffinden	2
350e74ea-4d7c-47b0-8d39-68ad25d9a0ca	Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.	Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.	98	Milt Eager	1
08acb6b3-be07-47ab-864c-a84f85057e66	Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.	Praesent blandit lacinia erat.	60	Leroi Pigden	3
fc53f072-ec55-48f4-a57c-18448f6f4e8c	Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.	Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.	46	Angele Shingler	2
83e781d8-dac4-4e29-9a1f-b6e725f2e4a1	Ut tellus. Nulla ut erat id mauris vulputate elementum.	Pellentesque ultrices mattis odio.	75	Trix Roizin	2
71160c3c-43c1-4268-9c2c-da92087ccebd	Suspendisse potenti. Nullam porttitor lacus at turpis.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit.	94	Ric Samart	3
364a932c-9fb5-4100-a6b6-ef17a83f156e	Integer a nibh. In quis justo.	Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.	22	Clerkclaude O'Fallon	2
6f8d2b3f-ec7f-4335-8ebe-6ad6ab7cdf5d	Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.	Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.	27	Della Mattingly	3
31bb455e-2d21-43e2-8f28-38632a5d613f	Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.	Etiam vel augue. Vestibulum rutrum rutrum neque.	75	Carlynne Rupel	1
cc44510a-b546-4c43-886c-1d9833de8935	Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.	In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.	92	Skippie Buckthorpe	2
bbfcabe7-a250-4f16-8534-c5db9b834551	Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.	Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.	86	Cyrill Peiro	2
ecf6f7b6-10f6-4e3a-baf1-9968d3770a93	Pellentesque ultrices mattis odio. Donec vitae nisi.	Ut tellus.	53	Moise Purbrick	3
02edaf76-3a94-40cd-aa4a-1fb87a4f908e	Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.	Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.	64	Andrei Darth	3
fc2cfdc9-398b-4121-8a4e-befa83454d78	Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.	In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.	55	Hendrik Shama	1
c7c8f1f1-3159-47d8-a71e-9ca46e348803	Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.	Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.	92	Kalli Clemencon	1
f0cfe3ad-9cd9-4271-a891-7250d95ffa9d	Morbi quis tortor id nulla ultrices aliquet.	In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.	77	Corrie Cromblehome	1
c359de72-e913-4a1b-a453-c8d320a3e769	Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.	Proin at turpis a pede posuere nonummy. Integer non velit.	71	Sharity Jagger	1
46d37641-5027-4894-b2d0-8fb385977c31	Suspendisse potenti.	Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.	98	Kliment Drewet	2
c43fa5b4-07ed-4535-8a75-28f3dc7d34a8	Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.	Vestibulum rutrum rutrum neque.	32	Erhart Carlens	3
857f6db9-c539-403c-8ae5-8edcced03d8f	Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.	Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.	58	Rolf Josefson	1
78c1751f-ba52-416d-9d19-19ccb1aec815	Nulla mollis molestie lorem. Quisque ut erat.	Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.	47	Luce Royall	3
d2e37328-25f3-436b-beb4-4aa6438b929f	Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.	Praesent lectus.	42	Milli McIlrath	2
857bb1aa-2d4f-4501-bcfa-60d5024555a4	Fusce consequat.	In sagittis dui vel nisl.	95	Coralie Roebuck	1
9ba0983f-5694-4d3f-b78a-dc3567b63b0b	Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.	Phasellus in felis.	37	Anton Mico	2
6cf37832-4c9a-4adc-bea9-77bc1349ee85	In congue.	Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.	99	Jordanna Foord	3
c931fea6-e8ac-463c-a17e-f0fe97ed182c	Phasellus sit amet erat. Nulla tempus.	Cras pellentesque volutpat dui.	78	Baron Tapply	2
b0a4cdc5-2aa8-49ad-acb1-fb898ffad010	Donec vitae nisi.	Maecenas pulvinar lobortis est. Phasellus sit amet erat.	79	Annelise Crier	1
7f860a7a-f756-4eaa-81ee-20bda51335c7	Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.	Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.	59	Kathryne Arsnell	2
7ee61267-b5e6-4172-a133-c0f28ec888b5	Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.	Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.	67	Thekla Willis	2
4ac34660-377d-4b74-bd48-771903c097f5	Phasellus in felis.	In quis justo.	46	Theresina Banyard	1
\.


--
-- TOC entry 3407 (class 0 OID 50438)
-- Dependencies: 215
-- Data for Name: specialization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.specialization (name, specialization_id) FROM stdin;
Машинное обучение	1
Анализ больших данных	2
Информационная безопасность	3
Программная инженерия	4
\.


--
-- TOC entry 3413 (class 0 OID 50477)
-- Dependencies: 221
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.status (status_name, status_id) FROM stdin;
Доработка	1
Аттестован	2
Принято	3
\.


--
-- TOC entry 3418 (class 0 OID 50526)
-- Dependencies: 226
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (user_id, student_id, start_date, department, enrollment_order, academic_leave, plan_path, studying_duration, full_name, specialization_id, publication_id, supervisor_id, faculty, group_name) FROM stdin;
53b26510-922e-40ea-8406-fae3f5c1c22e	1860261c-5deb-44d6-80c8-bee65dbb20be	2011-11-02	velit doloremque aliquam ducimus veniam libero molestiae dolorum porro nemo atque consequatur veritatis non necessitatibus optio repudiandae atque et commodi.	18281	f	h:\\sapiente\\dolores\\illo\\molestiae.jpg	2	Ms. Isabel Murphy II	4	0fe2b1ec-9ba1-4f9c-a5f7-8cd4b3f34dfd	d949b8b0-e368-441b-88f9-51f7d824be18	velit doloremque aliquam ducimus veniam libero molestiae dolorum porro nemo atque consequatur veritatis non necessitatibus optio repudiandae atque et commodi.	b20-504
de739dfc-5fd1-4b3e-9dbe-bce67cbbf412	e1507ff5-6503-4e0c-8af4-e392c67bb5ff	1991-01-04	aut asperiores sit accusamus earum doloremque commodi aut saepe laborum occaecati recusandae est temporibus eum eos illo inventore et consequatur.	16731-8950	f	v:\\suscipit\\omnis\\voluptas\\praesentium.ebook	2	Mohammed Volkman	1	02ee1af7-7c10-42c6-94ca-42ca5c483b46	d7fee5d3-3b03-439d-9400-74654bcb4546	aut asperiores sit accusamus earum doloremque commodi aut saepe laborum occaecati recusandae est temporibus eum eos illo inventore et consequatur.	b20-504
bd2d64ef-db2c-4368-ba40-21f282e2395e	a1e79d21-ff70-4447-8538-1c9cfd579eef	1999-12-15	consequatur soluta illo et aspernatur eos rerum autem et tempora est perspiciatis itaque eveniet exercitationem dolorem tenetur assumenda consectetur possimus.	36932-8581	t	q:\\sit\\placeat\\suscipit\\ut.shar	2	Ms. Antonette Schowalter III	1	08acb6b3-be07-47ab-864c-a84f85057e66	3624d11b-f68e-484d-9d6f-0881ed6146eb	consequatur soluta illo et aspernatur eos rerum autem et tempora est perspiciatis itaque eveniet exercitationem dolorem tenetur assumenda consectetur possimus.	b20-504
ef8f41c3-8e95-47a6-9203-378cfad64f18	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5	1983-01-24	sit rerum vel consequuntur dolorem molestias autem et et ea voluptate ullam consequatur enim vero cum voluptates animi ut quis.	43118	f	y:\\sit\\vel\\et\\vitae.kml	2	Mr. Peyton Bashirian MD	4	f0cfe3ad-9cd9-4271-a891-7250d95ffa9d	6ae08a4b-44a9-44e7-b555-9688003f3495	sit rerum vel consequuntur dolorem molestias autem et et ea voluptate ullam consequatur enim vero cum voluptates animi ut quis.	b20-504
e1e69c3e-2eea-4274-8b8a-018291ac8b65	d1eec8f5-8acf-4936-949a-91f09b789be8	1988-09-26	ut minima est placeat esse voluptas et at in nesciunt recusandae eaque sunt doloribus ut autem accusantium placeat eaque ducimus.	14800	t	l:\\saepe\\ea\\vel\\est.mar	2	Ms. Heloise Dare DVM	4	5f11d826-b79b-4931-b74a-6c541db21c17	6ae08a4b-44a9-44e7-b555-9688003f3495	ut minima est placeat esse voluptas et at in nesciunt recusandae eaque sunt doloribus ut autem accusantium placeat eaque ducimus.	b20-504
8d5f0854-39e2-474a-86db-921e2779a46b	3b205ebd-d06e-4c46-aa49-3111e4ecee3d	1985-12-31	totam est aut minus nam praesentium in et architecto enim et qui quidem sint sunt ut officia quas tenetur ratione.	81777-5038	f	u:\\quo\\deleniti\\aut\\neque.aiff	2	Lacy Kerluke	3	0706f2b2-b46e-4323-94b6-1eebdbab43a7	396fdca8-7bac-4a69-899c-c286811da035	totam est aut minus nam praesentium in et architecto enim et qui quidem sint sunt ut officia quas tenetur ratione.	b20-504
d731f6b6-a287-4d6a-816c-060bdc60d304	c3cf615c-90b0-4485-8879-70d0ce10ad1a	1991-12-26	asperiores quidem enim sed porro qui ipsam aut amet cum voluptatem mollitia voluptatem maxime animi qui praesentium porro ipsa harum.	27311-9367	f	p:\\ipsam\\cupiditate\\enim\\perspiciatis.wpd	3	Audra Bednar	2	bbfcabe7-a250-4f16-8534-c5db9b834551	2fe065bb-b12d-4c35-bce8-774dbd6e7489	asperiores quidem enim sed porro qui ipsam aut amet cum voluptatem mollitia voluptatem maxime animi qui praesentium porro ipsa harum.	b20-504
c42c92ff-e0ae-4db9-8f14-1945609798c0	73c7e32e-57ef-4ac5-bd62-080deeb43e60	1984-07-24	quo beatae dolores cupiditate deleniti quae corrupti tempore modi ut officiis in sit et necessitatibus iste omnis quia debitis fuga.	82018-8864	t	d:\\nostrum\\ea\\corporis\\iusto.3dm	2	Jeromy Pouros MD	2	7ee61267-b5e6-4172-a133-c0f28ec888b5	ec81a0f9-4d27-412c-be01-20297e7ad270	quo beatae dolores cupiditate deleniti quae corrupti tempore modi ut officiis in sit et necessitatibus iste omnis quia debitis fuga.	b20-504
131f10c8-6429-4587-a9f9-b331c418c4ef	a93a41a1-3f9f-49ba-8f71-66fce252bbfd	2010-01-06	dicta voluptas qui eos quidem non accusantium et excepturi sit exercitationem quis aut sit iste sed pariatur laboriosam sed et.	40792	f	m:\\fugiat\\impedit\\blanditiis\\natus.yuv	2	Mr. Urban Toy	4	d2e37328-25f3-436b-beb4-4aa6438b929f	0ac4429a-96e2-4451-9616-7af2acc3af39	dicta voluptas qui eos quidem non accusantium et excepturi sit exercitationem quis aut sit iste sed pariatur laboriosam sed et.	b20-504
85f52cfe-b461-4aab-b850-684291065534	5a3c7dec-70e8-4f67-b576-eccaf7178242	2022-11-30	eveniet quia non aut voluptatem id vel itaque commodi sed magni dolorum voluptatum qui at et rem quae nostrum dolorem.	01903	f	z:\\et\\optio\\eveniet\\et.tif	3	Nicole Gislason	3	ecf6f7b6-10f6-4e3a-baf1-9968d3770a93	81f8228e-6809-428d-be86-9f4dc83309e6	eveniet quia non aut voluptatem id vel itaque commodi sed magni dolorum voluptatum qui at et rem quae nostrum dolorem.	b20-504
68d388f6-81f1-4a9d-8f9f-cfe16129f0e5	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d	2009-04-24	est id quos sequi necessitatibus et optio est deserunt eum minus eaque aut ipsum qui est placeat ut aut dignissimos.	85606	t	u:\\doloribus\\assumenda\\modi\\aut.qt	2	Theron Wolf MD	4	4b7e28d2-8f71-4e22-8b38-de3400859c14	d7fee5d3-3b03-439d-9400-74654bcb4546	est id quos sequi necessitatibus et optio est deserunt eum minus eaque aut ipsum qui est placeat ut aut dignissimos.	b20-504
9771bdb8-9aa7-43eb-b274-e3e7d67fa816	bbd339dc-63f2-4fa5-8dfc-7428717bffb6	1977-04-10	quia perspiciatis in voluptatem alias quae et provident accusantium quasi quod incidunt ex ut optio officia consequatur quis et omnis.	60856-8335	f	z:\\ab\\odio\\ullam\\quaerat.txt	2	Ms. Lilian Schmitt Sr.	1	62f39f1d-9c31-429e-840d-85c26e1d8910	b8638327-8958-47a7-86ba-e9e174758efb	quia perspiciatis in voluptatem alias quae et provident accusantium quasi quod incidunt ex ut optio officia consequatur quis et omnis.	b20-504
be555608-70c3-4f5d-9252-c4f61b9363bd	128c9832-7a82-44ef-b87d-17d6c0287f37	2001-06-25	est eveniet consectetur laborum rerum nobis eos inventore amet sed asperiores deserunt quo quo labore odit aut id eligendi tempora.	35395-7537	t	d:\\animi\\unde\\minus\\sit.rpm	2	Aliyah Ferry	4	dc71b7d6-dfff-4232-9e88-4b409240f599	d7fee5d3-3b03-439d-9400-74654bcb4546	est eveniet consectetur laborum rerum nobis eos inventore amet sed asperiores deserunt quo quo labore odit aut id eligendi tempora.	b20-504
c3dda451-9c29-4382-a4c8-543eb0446639	39bd9a65-f79c-4fea-8c3e-9803d32073f5	1973-12-10	quae nisi dolore quam quibusdam ipsa ex rerum aliquid voluptatem laborum id maxime cumque dolorum magni commodi sed animi minus.	92393-3072	t	d:\\quo\\nulla\\soluta\\numquam.tar	2	Leonard Greenfelder	3	39d432da-58f5-47b3-9fd5-8d0625f0f1fb	e5118d0b-e27f-49d7-b3f3-d120c570bb7a	quae nisi dolore quam quibusdam ipsa ex rerum aliquid voluptatem laborum id maxime cumque dolorum magni commodi sed animi minus.	b20-504
c40555e0-8ab2-4464-94cc-bd02539ce80c	0bef6da0-cabd-4a35-834b-f160e071019d	1981-12-15	ad dolorum omnis adipisci dolorum voluptas perspiciatis earum quibusdam et autem est ad quia consequatur quaerat corrupti dignissimos tempora numquam.	96099-8613	t	f:\\voluptates\\aut\\pariatur\\sed.ogv	2	Ms. Angelica Little II	4	e2e2e7ac-8ed8-4571-9d07-547037b6c143	ad0c937d-a05d-4bfd-bc1c-16383f48886c	ad dolorum omnis adipisci dolorum voluptas perspiciatis earum quibusdam et autem est ad quia consequatur quaerat corrupti dignissimos tempora numquam.	b20-504
cad273fc-3211-4d1a-93f8-a59b2f53077f	4e5d0c71-5156-40ef-ab44-f2b5b57cee01	2011-11-02	IIX	8888-8888	f	u:\\asperiores\\expedita\\velit\\nulla.ods	3	Chen Paul	1	350e74ea-4d7c-47b0-8d39-68ad25d9a0ca	3b102ba7-e33b-4733-955c-2f3ae8a2713d	PI	b20-524
b4c10837-4e22-458c-95fb-897d0beffa85	4b0d6b2d-a227-422b-8dd6-f8115499fff2	2011-10-24	dolorem voluptate dolore est et totam ea voluptatem soluta est aut laborum nobis sed quia voluptates ducimus et sunt reprehenderit.	10105	t	v:\\consequatur\\consequatur\\corrupti\\nam.kmz	2	Ms. Luz Marks I	3	857bb1aa-2d4f-4501-bcfa-60d5024555a4	ad0c937d-a05d-4bfd-bc1c-16383f48886c	dolorem voluptate dolore est et totam ea voluptatem soluta est aut laborum nobis sed quia voluptates ducimus et sunt reprehenderit.	b20-504
58edfd15-59fe-4c8b-9f3c-05b5e60f4de1	a192ee0a-d495-41a0-af07-1efe0ef05d40	1990-02-17	assumenda sit maiores debitis ad velit id magni ipsa odio consequatur corporis magnam et quis omnis est id aperiam in.	74727-2986	f	w:\\minima\\sint\\eos\\labore.nsv	3	Ralph Morar V	1	02edaf76-3a94-40cd-aa4a-1fb87a4f908e	ec81a0f9-4d27-412c-be01-20297e7ad270	assumenda sit maiores debitis ad velit id magni ipsa odio consequatur corporis magnam et quis omnis est id aperiam in.	b20-504
e9969863-06a3-4243-844d-2ff0a9eb72bd	c7df6ff1-404f-4a22-ae16-5fa717164a37	1999-01-31	accusamus voluptatem architecto quia et modi dolorum nisi maiores illum beatae veritatis qui aliquam soluta voluptatem vitae a necessitatibus nisi.	62660	t	a:\\molestiae\\consectetur\\sequi\\et.m4a	3	Anabelle Lindgren PhD	4	fd42963d-cf17-447e-8786-f21069c6a6fa	e5118d0b-e27f-49d7-b3f3-d120c570bb7a	accusamus voluptatem architecto quia et modi dolorum nisi maiores illum beatae veritatis qui aliquam soluta voluptatem vitae a necessitatibus nisi.	b20-504
150f6c4c-6719-49b0-b4a6-cce0adb40107	92f8f0c2-84e2-4d22-8728-ab07d45da2be	1975-07-22	voluptates cum accusamus nobis similique assumenda est repellat atque iure facere sint et dolor accusantium dicta tempore dolor perferendis est.	96598-0330	t	u:\\neque\\iusto\\omnis\\et.tex	2	Scottie Ernser I	2	4ac34660-377d-4b74-bd48-771903c097f5	c9a1c179-05d2-43da-9a22-2519ad6c3dea	voluptates cum accusamus nobis similique assumenda est repellat atque iure facere sint et dolor accusantium dicta tempore dolor perferendis est.	b20-504
5f6c58e4-dded-4a77-a073-4384ae18c976	ddd5c80d-f089-4164-8f0c-0b91026a8437	1975-05-18	ratione voluptatum temporibus nihil ratione dolorum voluptatibus consequatur quo ipsum est quod maxime totam omnis veniam maxime aut culpa quo.	86409	t	c:\\sapiente\\non\\est\\voluptatum.ods	2	Violet Haag	3	c931fea6-e8ac-463c-a17e-f0fe97ed182c	2342603a-7f1c-4abc-a5ba-7e265205d098	ratione voluptatum temporibus nihil ratione dolorum voluptatibus consequatur quo ipsum est quod maxime totam omnis veniam maxime aut culpa quo.	b20-504
a3642647-7cef-403e-a1b3-090a77164212	feb3388c-2221-40b3-bebe-6345798f6ded	1976-05-11	consequuntur vero quo quasi nihil assumenda qui qui aut vel cupiditate iste fugit earum commodi dolorem aperiam est et accusantium.	08334-3814	t	b:\\dolor\\velit\\doloremque\\enim.webp	3	Marcellus Schroeder	1	6cf37832-4c9a-4adc-bea9-77bc1349ee85	b8638327-8958-47a7-86ba-e9e174758efb	consequuntur vero quo quasi nihil assumenda qui qui aut vel cupiditate iste fugit earum commodi dolorem aperiam est et accusantium.	b20-504
38cc3229-e364-4514-ae68-7cdf826af87f	5d2962d8-d92e-4352-a1d8-83679d4c9835	1982-07-22	similique ex quo nihil est accusantium dolor corrupti adipisci alias nisi asperiores occaecati veritatis ut qui excepturi dolorum fugit voluptates.	67088	t	j:\\tempora\\totam\\et\\nobis.rar	2	Ms. Dixie Lind	4	6f8d2b3f-ec7f-4335-8ebe-6ad6ab7cdf5d	a02eb898-f291-4b78-89ed-aa6b15a4b9da	similique ex quo nihil est accusantium dolor corrupti adipisci alias nisi asperiores occaecati veritatis ut qui excepturi dolorum fugit voluptates.	b20-504
33e79427-d104-4a08-986f-75ea2860998b	de4e1130-2e9f-483e-8762-8b92ac89f518	2013-10-10	labore totam soluta sed laboriosam quo perferendis modi at a voluptate eligendi dolores vero debitis velit soluta ut dolore deleniti.	60317-3985	t	j:\\accusantium\\quas\\dolorem\\veniam.asf	3	Shannon Wintheiser	2	9ba0983f-5694-4d3f-b78a-dc3567b63b0b	c4fb64f1-616d-4cb8-bfe7-c2b2e8b81808	labore totam soluta sed laboriosam quo perferendis modi at a voluptate eligendi dolores vero debitis velit soluta ut dolore deleniti.	b20-504
2e0247c2-28cf-481a-a82a-238018e49888	5e62704a-c4c9-415c-8d17-a0bfd62c3446	2012-10-08	non optio nesciunt quam recusandae sequi adipisci earum vitae at omnis deserunt cupiditate magnam repellat nihil hic beatae aut ratione.	39514-8947	f	w:\\vel\\voluptate\\minima\\et.dwg	2	Noe Hettinger	4	364a932c-9fb5-4100-a6b6-ef17a83f156e	2342603a-7f1c-4abc-a5ba-7e265205d098	non optio nesciunt quam recusandae sequi adipisci earum vitae at omnis deserunt cupiditate magnam repellat nihil hic beatae aut ratione.	b20-504
146ab91c-8336-4391-baa8-237e381b6604	b3fc9d3d-b884-426e-96fa-3507ce2eea3d	1975-12-07	vel ut quo temporibus sint et similique consequuntur consequatur provident non nihil sunt inventore inventore dolores enim veniam repudiandae voluptatem.	03834	f	h:\\sed\\similique\\placeat\\ea.pea	3	Chester Ratke	4	857f6db9-c539-403c-8ae5-8edcced03d8f	b8638327-8958-47a7-86ba-e9e174758efb	vel ut quo temporibus sint et similique consequuntur consequatur provident non nihil sunt inventore inventore dolores enim veniam repudiandae voluptatem.	b20-504
02be313f-cadd-4478-906d-a69322edb948	9f259d4c-86b4-43b1-b7ee-7250e0f0253b	2019-06-13	inventore eum odio quod veniam maxime porro minima totam non labore temporibus sit est delectus ut molestiae aperiam non aut.	55094-4280	f	m:\\provident\\impedit\\et\\eum.mp2	3	Emerald Stehr II	2	837b4fce-7e59-408b-ba08-3a2c76f6fd17	82cf55b1-d975-49ac-a170-94a9e4da9e07	inventore eum odio quod veniam maxime porro minima totam non labore temporibus sit est delectus ut molestiae aperiam non aut.	b20-504
e0603477-0452-494e-9c73-27f1f29fd46d	d6f97568-ca1c-40f9-8d52-97f5d6366aa1	2008-11-17	ut nulla explicabo nihil mollitia excepturi optio accusamus sit numquam sunt nobis nesciunt voluptatibus et voluptatem consequatur assumenda recusandae ut.	89442	f	r:\\perspiciatis\\perferendis\\voluptate\\quos.ogm	3	Arianna Kuphal	1	b0a4cdc5-2aa8-49ad-acb1-fb898ffad010	c9a1c179-05d2-43da-9a22-2519ad6c3dea	ut nulla explicabo nihil mollitia excepturi optio accusamus sit numquam sunt nobis nesciunt voluptatibus et voluptatem consequatur assumenda recusandae ut.	b20-504
773c07cf-d6c5-4f2f-8e2b-5d923fd9134f	23db7498-f586-4ed3-aacb-7140fcb69f79	1980-10-26	minus sunt nobis magnam ea aut sed pariatur enim nesciunt placeat dicta nostrum nam tempora ut qui unde consequatur ut.	93923	t	b:\\nihil\\aut\\similique\\sunt.eot	2	Alexis Kessler	1	364e96cc-be45-49e9-9dc8-7ac883859a55	993a494c-08cf-4d2f-80c7-d1d9059b720f	minus sunt nobis magnam ea aut sed pariatur enim nesciunt placeat dicta nostrum nam tempora ut qui unde consequatur ut.	b20-504
535c1854-69da-4ce8-911f-cde050e720c6	b3eab2a0-a0ac-4c88-a5e4-2f97e1080a20	1988-10-19	beatae quae cum sint odit error earum modi aut saepe est iste blanditiis occaecati qui voluptatum incidunt esse rerum asperiores.	92968-4863	t	j:\\dolorem\\inventore\\est\\totam.svg	3	Dayton Stamm	3	c7c8f1f1-3159-47d8-a71e-9ca46e348803	81f8228e-6809-428d-be86-9f4dc83309e6	beatae quae cum sint odit error earum modi aut saepe est iste blanditiis occaecati qui voluptatum incidunt esse rerum asperiores.	b20-504
94ce739d-2a00-4eb6-be58-30ab97bf7761	56eb1823-4eef-4c15-8991-e4e74e38f97f	2008-07-20	ullam consequuntur consequatur quaerat officiis ut est accusantium culpa hic perferendis velit et repellendus est velit ut optio impedit aliquam.	70035-5818	t	e:\\itaque\\laboriosam\\autem\\quibusdam.bat	2	Jessika Von	1	22909548-b4e2-481a-a28c-20211a7178b8	82cf55b1-d975-49ac-a170-94a9e4da9e07	ullam consequuntur consequatur quaerat officiis ut est accusantium culpa hic perferendis velit et repellendus est velit ut optio impedit aliquam.	b20-504
c62f9b49-5298-488f-9cdc-cc70b276e3f0	7076c8ca-7d43-4c83-a091-c0ca15070343	1981-01-23	voluptatem dolore rerum omnis placeat voluptatem architecto assumenda iure et nesciunt natus harum illum est rerum consequatur mollitia debitis officiis.	65815	t	w:\\perspiciatis\\quia\\expedita\\reprehenderit.azw6	2	Mr. Alek Larkin	3	c43fa5b4-07ed-4535-8a75-28f3dc7d34a8	cc42f01f-7a11-47f8-9105-75970d25321e	voluptatem dolore rerum omnis placeat voluptatem architecto assumenda iure et nesciunt natus harum illum est rerum consequatur mollitia debitis officiis.	b20-504
395ab8f1-050a-4246-b8cd-a13c02e6fcd5	e0e760f4-7806-41fd-8c70-27a5e91570a8	1996-01-27	nihil iste ut vero id at est deleniti soluta voluptas sed est itaque id et quam doloremque illo laborum optio.	89166	t	r:\\itaque\\minus\\et\\veritatis.flac	2	Sam Aufderhar	4	a08d8b3d-14d9-4168-bd70-70f565a12ec2	c4fb64f1-616d-4cb8-bfe7-c2b2e8b81808	nihil iste ut vero id at est deleniti soluta voluptas sed est itaque id et quam doloremque illo laborum optio.	b20-504
24fa037d-0e6a-48fc-829f-4afd057ee792	514df0e1-9dcf-451c-8711-a4c7191df315	2010-11-10	eius qui nulla animi iusto commodi ratione illo reprehenderit occaecati qui rerum ipsum id voluptas perferendis hic inventore aut quis.	35294-3920	t	p:\\eveniet\\animi\\nihil\\molestiae.clj	2	Florence Pollich	1	842ebb6f-5726-425d-9724-712e05826210	3b102ba7-e33b-4733-955c-2f3ae8a2713d	eius qui nulla animi iusto commodi ratione illo reprehenderit occaecati qui rerum ipsum id voluptas perferendis hic inventore aut quis.	b20-504
61656004-e755-4e45-aa58-415e99f83dee	c803654b-c4a3-4ac8-8195-a4bf5fc2de25	1981-12-12	recusandae fugiat fugit culpa reprehenderit molestias rem consequatur modi non blanditiis rem dicta tempora similique temporibus dolores ducimus quae quae.	14475-9156	t	b:\\sunt\\eum\\quibusdam\\sed.org	2	Delphia Cole IV	1	c359de72-e913-4a1b-a453-c8d320a3e769	3624d11b-f68e-484d-9d6f-0881ed6146eb	recusandae fugiat fugit culpa reprehenderit molestias rem consequatur modi non blanditiis rem dicta tempora similique temporibus dolores ducimus quae quae.	b20-504
ddec5b0a-050a-41a4-a1d0-4fc2f53ec512	1a4be83e-934c-494a-a6bd-7bf7f4a74663	2009-09-05	odit sit rem iure ea eos molestias dolor autem perferendis explicabo doloribus aperiam recusandae eos doloribus velit porro at ea.	68985-5958	t	u:\\voluptatem\\voluptas\\cupiditate\\ipsam.3gp	2	Ms. Zoe Goodwin	3	0d808156-020d-4294-84a0-08215310b54d	81f8228e-6809-428d-be86-9f4dc83309e6	odit sit rem iure ea eos molestias dolor autem perferendis explicabo doloribus aperiam recusandae eos doloribus velit porro at ea.	b20-504
9e039973-43eb-45b0-89e0-e53a3f859cdb	d3eb7e78-1384-4d96-aba4-5904eeb58011	1983-12-07	sapiente natus dolorem possimus magnam omnis est est illo repellat consequuntur iste quia sed nobis repellendus omnis quas ut beatae.	05367-2580	t	x:\\id\\accusamus\\occaecati\\et.webp	2	Ocie Shanahan	4	31bb455e-2d21-43e2-8f28-38632a5d613f	993a494c-08cf-4d2f-80c7-d1d9059b720f	sapiente natus dolorem possimus magnam omnis est est illo repellat consequuntur iste quia sed nobis repellendus omnis quas ut beatae.	b20-504
e7f3e0a4-5ffd-4b66-ba97-5a6d959d8783	3031166e-3811-4c16-9b2d-da46719476f0	2010-12-04	quis aspernatur doloribus facere cum minima rerum magni sit quia nesciunt dolore reprehenderit commodi dolores aut eum eaque qui rerum.	94260-8905	t	o:\\placeat\\voluptatem\\aliquid\\eum.mov	3	Vella Brekke	3	71160c3c-43c1-4268-9c2c-da92087ccebd	a02eb898-f291-4b78-89ed-aa6b15a4b9da	quis aspernatur doloribus facere cum minima rerum magni sit quia nesciunt dolore reprehenderit commodi dolores aut eum eaque qui rerum.	b20-504
21e882cb-1a57-46c2-9a0a-af2bb022ee39	bcc5954c-3ac3-4cea-aac3-4ae87bc19d3e	2012-08-21	repellendus modi labore nihil eveniet qui totam harum tenetur aut iste nemo veniam porro qui recusandae iusto ut iste repudiandae.	49316-3691	f	r:\\labore\\omnis\\culpa\\aliquam.rtf	3	Taya Dibbert	4	83e781d8-dac4-4e29-9a1f-b6e725f2e4a1	3624d11b-f68e-484d-9d6f-0881ed6146eb	repellendus modi labore nihil eveniet qui totam harum tenetur aut iste nemo veniam porro qui recusandae iusto ut iste repudiandae.	b20-504
2a3cf441-1529-4f54-be19-cf4453ab4949	39862ca6-a8b2-466d-9152-226b3fb08c24	2008-10-18	dolor dolorem rerum alias consequatur ut qui blanditiis ea eaque sint excepturi earum ut ducimus nam fuga quis accusantium laudantium.	86726-6548	f	b:\\doloribus\\illo\\cum\\vel.txt	3	Ms. Ivah Lynch	3	cc44510a-b546-4c43-886c-1d9833de8935	e5118d0b-e27f-49d7-b3f3-d120c570bb7a	dolor dolorem rerum alias consequatur ut qui blanditiis ea eaque sint excepturi earum ut ducimus nam fuga quis accusantium laudantium.	b20-504
e5761763-4416-4a7f-9633-a562d49082d0	2432dda3-3320-41dd-8b86-2ba0a08a141b	1970-12-26	aut alias sit veniam voluptates odit modi ut et vel nihil vel harum quaerat accusamus illum eius qui asperiores omnis.	72371-5907	t	f:\\ab\\laborum\\dolor\\qui.war	2	Terrill Kirlin	2	7f860a7a-f756-4eaa-81ee-20bda51335c7	0ac4429a-96e2-4451-9616-7af2acc3af39	aut alias sit veniam voluptates odit modi ut et vel nihil vel harum quaerat accusamus illum eius qui asperiores omnis.	b20-504
4a59486a-b372-43ab-85dd-b598d53c1fb3	4af3abf7-0a5d-4bd5-89b9-e15bdb209221	1978-07-17	sed placeat iure sit dolore aut et ipsum nesciunt corrupti aut quisquam voluptatem praesentium dolores sed fugiat error repudiandae enim.	58511	f	g:\\laborum\\ipsam\\doloremque\\dolore.md	2	Jerome Kemmer	3	d547c87a-690f-4fb7-8be6-9cbe0404f925	d949b8b0-e368-441b-88f9-51f7d824be18	sed placeat iure sit dolore aut et ipsum nesciunt corrupti aut quisquam voluptatem praesentium dolores sed fugiat error repudiandae enim.	b20-504
ce037c9a-b450-4f75-bf11-19104586f3fa	36aa8185-41da-4333-b9e3-3d5c7b34fe79	2023-04-28	nihil consequatur numquam doloribus quibusdam ab laborum quo odio atque molestiae odit explicabo aperiam facilis maxime est eum itaque exercitationem.	61235	t	a:\\veritatis\\illum\\quasi\\laborum.pl	3	Mr. Carson Konopelski MD	4	78c1751f-ba52-416d-9d19-19ccb1aec815	2fe065bb-b12d-4c35-bce8-774dbd6e7489	nihil consequatur numquam doloribus quibusdam ab laborum quo odio atque molestiae odit explicabo aperiam facilis maxime est eum itaque exercitationem.	b20-504
8a84c97e-09a8-4095-a473-47535b4dc535	7212ca19-c25c-4fcd-ae3b-7cf3b4c60af0	1983-05-13	sit odio ut culpa nobis cum tenetur hic id maiores doloremque at delectus velit ipsum nulla ea nesciunt voluptates necessitatibus.	74874-5004	f	m:\\delectus\\earum\\est\\quis.flac	2	Flo Hyatt	3	fc2cfdc9-398b-4121-8a4e-befa83454d78	a02eb898-f291-4b78-89ed-aa6b15a4b9da	sit odio ut culpa nobis cum tenetur hic id maiores doloremque at delectus velit ipsum nulla ea nesciunt voluptates necessitatibus.	b20-504
7001610a-0c15-4da6-af6d-2a220dc4cc3e	63343380-6d84-4771-95ed-b7a8c8a1ce1c	1980-08-30	dicta pariatur enim aperiam iure iusto magnam vel aspernatur aut esse aspernatur enim a omnis voluptate beatae tempore sit libero.	86174	f	v:\\exercitationem\\quisquam\\similique\\eum.m4	3	Mr. Osborne Feeney II	2	c18766db-c744-4ff7-b17b-38867066591f	cc42f01f-7a11-47f8-9105-75970d25321e	dicta pariatur enim aperiam iure iusto magnam vel aspernatur aut esse aspernatur enim a omnis voluptate beatae tempore sit libero.	b20-504
9ee66b6f-e67c-4a27-b269-d7d332a5a9ec	e0ccdb39-5d7a-4e4a-a650-8baf6572e8a0	1976-11-24	officiis impedit qui iure quasi omnis illo quis suscipit incidunt hic beatae est ullam repellat sit quae voluptatum expedita recusandae.	22463-5970	f	o:\\enim\\harum\\qui\\corrupti.mpe	3	Eddie Renner IV	3	46d37641-5027-4894-b2d0-8fb385977c31	2342603a-7f1c-4abc-a5ba-7e265205d098	officiis impedit qui iure quasi omnis illo quis suscipit incidunt hic beatae est ullam repellat sit quae voluptatum expedita recusandae.	b20-504
cc16d00e-4466-4c92-bc75-147cd290384b	c29cdf74-448d-497d-9fb5-822962f9cbf5	1973-11-02	assumenda enim ratione quam quaerat nulla totam omnis fugiat delectus quod sint eaque iure quis qui eligendi dolorem dolorem nobis.	55277-1683	f	y:\\ducimus\\laborum\\at\\veritatis.mpeg	3	Lukas Abernathy	4	67dec382-b546-4f3b-a680-9fe2a66bfbff	d949b8b0-e368-441b-88f9-51f7d824be18	assumenda enim ratione quam quaerat nulla totam omnis fugiat delectus quod sint eaque iure quis qui eligendi dolorem dolorem nobis.	b20-504
8c035ec7-1d77-40a1-a16b-446dde2f4bad	28008587-1613-4325-8861-c6a4d45da728	1991-03-29	et tempore eveniet mollitia culpa consequatur molestiae inventore deserunt suscipit optio aut ut quia et ipsum voluptatem delectus ipsum quam.	20360-9546	t	o:\\fugit\\suscipit\\ipsa\\voluptates.pl	2	Ms. Carolina Kozey	2	cf7b64c5-f23b-4b76-82c2-4ecd273e9e35	0ac4429a-96e2-4451-9616-7af2acc3af39	et tempore eveniet mollitia culpa consequatur molestiae inventore deserunt suscipit optio aut ut quia et ipsum voluptatem delectus ipsum quam.	b20-504
30ff91c7-084b-4cd7-9f24-c53911355ca2	a4a067fa-719d-466e-a72a-9cc3eb315d2c	2014-03-25	voluptatibus natus architecto adipisci totam odit eaque atque autem reiciendis dolorem est impedit adipisci dolorem quia recusandae nulla quia est.	56121	t	r:\\dignissimos\\ut\\voluptatibus\\ut.wmv	2	Laila Langworth MD	4	fc53f072-ec55-48f4-a57c-18448f6f4e8c	6ae08a4b-44a9-44e7-b555-9688003f3495	voluptatibus natus architecto adipisci totam odit eaque atque autem reiciendis dolorem est impedit adipisci dolorem quia recusandae nulla quia est.	b20-504
75569e17-4ac7-47ec-b135-04aafa5ef586	18631759-89e7-47dc-9a08-86339ee84c5d	1993-08-20	sequi reprehenderit ut assumenda voluptas deleniti nam est quod exercitationem sint officiis similique pariatur velit hic illo et ut dolores.	02040	t	n:\\nam\\et\\qui\\eos.s3m	3	Corene Weissnat	4	cb5c2984-63ac-44f7-b22d-9cb31801a146	993a494c-08cf-4d2f-80c7-d1d9059b720f	sequi reprehenderit ut assumenda voluptas deleniti nam est quod exercitationem sint officiis similique pariatur velit hic illo et ut dolores.	b20-504
\.


--
-- TOC entry 3414 (class 0 OID 50482)
-- Dependencies: 222
-- Data for Name: student_exam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_exam (mark, date, exam_id, student_id) FROM stdin;
8	2022-06-30	1	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
27	2022-11-06	4	c3cf615c-90b0-4485-8879-70d0ce10ad1a
30	2022-11-16	3	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
3	2022-10-20	4	1860261c-5deb-44d6-80c8-bee65dbb20be
1	2022-07-02	4	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
3	2022-10-09	3	5a3c7dec-70e8-4f67-b576-eccaf7178242
33	2023-04-03	2	73c7e32e-57ef-4ac5-bd62-080deeb43e60
0	2023-03-13	2	5a3c7dec-70e8-4f67-b576-eccaf7178242
25	2023-06-06	4	1860261c-5deb-44d6-80c8-bee65dbb20be
53	2022-07-14	2	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
22	2023-01-19	2	a93a41a1-3f9f-49ba-8f71-66fce252bbfd
74	2023-04-08	1	5a3c7dec-70e8-4f67-b576-eccaf7178242
80	2022-11-12	4	1860261c-5deb-44d6-80c8-bee65dbb20be
52	2022-10-31	4	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d
61	2023-04-02	1	73c7e32e-57ef-4ac5-bd62-080deeb43e60
2	2022-10-31	4	c3cf615c-90b0-4485-8879-70d0ce10ad1a
75	2022-06-28	2	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
70	2022-10-24	4	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d
71	2022-12-18	2	73c7e32e-57ef-4ac5-bd62-080deeb43e60
90	2023-03-03	4	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
14	2022-10-24	2	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
44	2022-10-18	2	d1eec8f5-8acf-4936-949a-91f09b789be8
97	2022-09-02	1	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d
72	2023-03-10	1	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
58	2022-08-16	3	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
0	2023-01-21	2	73c7e32e-57ef-4ac5-bd62-080deeb43e60
25	2023-02-14	4	d1eec8f5-8acf-4936-949a-91f09b789be8
75	2022-10-17	3	5a3c7dec-70e8-4f67-b576-eccaf7178242
40	2022-07-12	2	a93a41a1-3f9f-49ba-8f71-66fce252bbfd
32	2023-04-06	2	a1e79d21-ff70-4447-8538-1c9cfd579eef
27	2023-04-30	1	d1eec8f5-8acf-4936-949a-91f09b789be8
78	2022-11-24	3	a1e79d21-ff70-4447-8538-1c9cfd579eef
49	2022-10-27	4	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
34	2022-11-05	1	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
87	2022-08-11	1	d1eec8f5-8acf-4936-949a-91f09b789be8
98	2022-08-15	2	a93a41a1-3f9f-49ba-8f71-66fce252bbfd
47	2023-01-19	3	a1e79d21-ff70-4447-8538-1c9cfd579eef
67	2023-02-09	2	5a3c7dec-70e8-4f67-b576-eccaf7178242
18	2023-01-09	4	c3cf615c-90b0-4485-8879-70d0ce10ad1a
43	2022-06-23	1	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
89	2023-03-22	1	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d
9	2022-07-15	2	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
50	2023-04-02	4	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
37	2022-06-10	2	c3cf615c-90b0-4485-8879-70d0ce10ad1a
86	2022-08-28	1	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
91	2022-07-17	1	a93a41a1-3f9f-49ba-8f71-66fce252bbfd
53	2022-07-12	4	1860261c-5deb-44d6-80c8-bee65dbb20be
36	2022-07-21	4	a1e79d21-ff70-4447-8538-1c9cfd579eef
60	2022-10-05	2	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
57	2023-02-16	3	e8fbd6c7-0279-4f77-9b74-ec9ae845ef2d
\.


--
-- TOC entry 3411 (class 0 OID 50465)
-- Dependencies: 219
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (subject_id, name, main_teacher, hours, student_id) FROM stdin;
66ee01a2-cb48-42b6-be70-475704bc99f9	Famotidine	Tamqrah Skottle	29	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
8e5778a6-fba9-4940-9812-c32c04ee1d7b	camphor, eucalyptus oil, menthol	Aldis Warkup	23	a1e79d21-ff70-4447-8538-1c9cfd579eef
1a657aee-c5b9-4410-8a81-05a9d89383bc	LEVOTHYROXINE SODIUM	Sophronia Jermy	13	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
e12d7726-61c5-4c61-a55e-86004862e65c	Cetirizine HCl, Pseudoephedrine HCl	Roma Kenneway	16	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
ed3d1620-4ab8-4708-b519-839c74b70d74	Ibuprofen	Burt Duff	15	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
efa8dbae-57b8-4497-8128-bc981a69aa90	Ibuprofen	Carly Lanmeid	15	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
603d9848-e50f-409b-87f5-b457c7267170	Metoprolol Tartrate	Lionel Mordey	21	a1e79d21-ff70-4447-8538-1c9cfd579eef
8a133ef9-ab2d-48dc-b944-ae7fe716d7a7	Enalapril Maleate	Vyky Passy	16	d1eec8f5-8acf-4936-949a-91f09b789be8
50533e58-eac3-49a5-95fe-1f15a53cf0ff	Treatment Set TS332229	Godart Trengove	13	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
d5aea236-348e-460e-9676-3d87612920d7	Arsen iod , Euphrasia , Allium cepa , Wyethia , Kali bich , Sambucus	Sebastiano Paddington	2	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
c9e691ad-f47e-4d60-ba93-326d40f55147	Venlafaxine Hydrochloride	Lavinie Douch	17	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
37e63c7c-8b63-444d-8ea1-5763c8735756	Sodium Fluoride	Ted Efford	5	d1eec8f5-8acf-4936-949a-91f09b789be8
ac1573ba-9771-42c1-a279-019de995a4ab	Imiquimod	Janice Craigs	1	d1eec8f5-8acf-4936-949a-91f09b789be8
5c0d9806-ed44-4e6b-af8a-0f2a1ef9f56b	tobramycin	Olia Dewick	17	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
f761a2e1-5322-469a-94c4-8f88cd263298	Acetaminophen, Doxylamine succinate , Phenylephrine HCl	Carmine Adriano	30	1860261c-5deb-44d6-80c8-bee65dbb20be
a07a3f9c-516d-4220-9c34-cf8a088d1ce2	Hydrogen Peroxide	Sim Parnall	3	d1eec8f5-8acf-4936-949a-91f09b789be8
5677774d-feac-46f1-83bf-0745051ba6a5	Robinul	Antonetta Jaimez	8	a1e79d21-ff70-4447-8538-1c9cfd579eef
2059135e-89ee-412d-8eeb-e033238934f6	Aluminum Zirconium Tetrachlorohydrex Gly	Sofie Borgnol	15	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
7993dce3-4f24-437c-b0de-c5613f98367a	DROSERA, ARNICA MONTANA, BRYONIA, IPECACUANHA, CETRARIA ISLANDICA, BELLADONNA, COCCUS CACTI, CORRALLIUM RUBRUM, STANNUM METALLICUM	Christina Wingeat	17	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
d6d34bd8-aa9d-4a35-8ea9-f94a8692d7b7	METOPROLOL TARTRATE	Hendrick Petheridge	13	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
741b3945-4fd7-4cb3-bbe8-cb5b3ee306ba	clobetasol propionate	Emmye Flea	6	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
9c16d3eb-9b13-4792-bbce-622d93359f2f	CAPSICUM ANNUUM	Katherine Ricardon	28	1860261c-5deb-44d6-80c8-bee65dbb20be
fa030878-f41d-4c70-ad73-7c3c4d2af5dd	CHLOROXYLENOL	Tadd Bonefant	28	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
12fb4b83-9520-4fea-a092-1d0e271f2ae4	Albuterol Sulfate	Doy Fassum	20	d1eec8f5-8acf-4936-949a-91f09b789be8
45f57b8a-e77e-4257-8b0c-0ca2dbc88989	zinc acetate and zinc gluconate	Sumner Pasek	22	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
31003a89-c71a-4bf4-bbd4-49c72ea5f421	Isosorbide Dinitrate	Aldous Dobrovolny	29	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
01df57a6-8d0b-4c46-83a0-62fad93d804d	Sennosides	Gaylord Allkins	15	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
6fcf0567-e073-4cb8-89f0-4122d2172a0b	trifluoperazine hydrochloride	Marlena Ondricek	7	d1eec8f5-8acf-4936-949a-91f09b789be8
8a03b434-d09e-46d7-9043-ca8a25f47ee4	Fluconazole	Delora Frankcom	24	1860261c-5deb-44d6-80c8-bee65dbb20be
e3aecb5c-93e9-440b-967f-b07fdea2ee38	Chloraseptic	Jose Gery	15	a1e79d21-ff70-4447-8538-1c9cfd579eef
acb8ec32-87e9-4e00-8c68-ab04570d8a58	Amlodipine Besylate	Amye Prout	5	a1e79d21-ff70-4447-8538-1c9cfd579eef
9876e7e8-a052-41b5-b818-a136635a7616	DIMETHICONE	Emelina Woolmer	2	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
30e24348-a41c-4018-86ad-397838068278	Meperidine Hydrochloride and Promethazine Hydrochloride	Sean Mee	13	d1eec8f5-8acf-4936-949a-91f09b789be8
f0be0824-ba56-485a-a4c3-dd6cbd10d056	Phenylephrine Hydrochloride	Fredia Demogeot	10	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
a7e9a511-f790-4fe6-a73d-9a34a20ef94c	ALLOPURINOL	Orrin Couttes	24	a1e79d21-ff70-4447-8538-1c9cfd579eef
52d0369e-8112-40d9-8ed1-2e6336812456	Avobenzone, Homosalate, Octisalate, Octocrylene, and Oxybenzone	Felicity Brantzen	30	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
426b01c2-d016-4320-bc75-e8a2506e7139	Aconitum nap., Arg.nit., Arsenicum alb., Belladonna, Bryonia, Cinchona, Gelsemium, Hypericum, Ignatia, Kalmia, Lachesis, Lycopodium, Mag. phos., Mezereum, Phosphorus, Pulsatilla, Rhus toxicodendron, Stramonium, Strychninum, Verbascum, Chamomilla	Venus Banford	28	1860261c-5deb-44d6-80c8-bee65dbb20be
70f8e53d-9689-4fe9-a0d6-050e0b390646	PRIMIDONE	Marthena Elkington	29	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
4b51329e-0ca1-443c-8d74-5dcf85e8de63	APIS MELLIFERA - CALENDULA OFFICINALIS FLOWER - CENTELLA ASIATICA - DODECAHYDROXYCYCLOHEXANE DIHYDRATE - EQUISETUM HYEMALE - FUMARIC ACID - GOLDENSEAL - GRAPHITE - JUGLANS REGIA LEAF - LEVOTHYROXINE -	Nariko Darben	29	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
5fd40735-0673-4bc3-951a-0fcfba6b04e1	capsaicin	Mignon Cocksedge	8	1860261c-5deb-44d6-80c8-bee65dbb20be
3f53614b-4297-4555-9026-9fc8aefdf6e0	Diphenhydramine Hydrochloride	Sybilla Blanket	3	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
29c3182d-d104-434a-9dfa-5a0e43106cea	Bacitracin zinc, Neomycin sulfate, Polymyxin B sulfate, and Pramoxine hydrochloride	Gabriel Boshell	19	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
2ba55af9-c53e-47d7-8e76-7284266ed7d5	Hydrocortisone Butyrate	Pavla Hollingdale	25	1860261c-5deb-44d6-80c8-bee65dbb20be
6018533c-024c-448e-9c93-544e736529e7	RISPERIDONE	Cyndi Looney	18	1860261c-5deb-44d6-80c8-bee65dbb20be
fc4bd36e-d2d3-4472-b645-c6110ed8ca97	Alder, Red Alnus rubra	Ricca Beddow	18	3b205ebd-d06e-4c46-aa49-3111e4ecee3d
cacb3b97-5aba-4209-802b-d9fbae052e24	Desloratadine	Gertrude Clementel	9	4e5d0c71-5156-40ef-ab44-f2b5b57cee01
c04c5e6a-f0a3-4ad5-9062-26bc182df609	Lithium Carbonate	Kellyann Lovemore	5	a1e79d21-ff70-4447-8538-1c9cfd579eef
a3aa1267-57bd-44bd-8148-104812f69904	Corn Grain	Dre Mewes	24	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
2fd61170-d49c-4052-b330-c203270787d2	acetaminophen	Stanfield Hafner	10	6808827a-823e-40ff-b6f9-fe2ce2e0a1a5
885298f5-f5e0-4556-b0ff-475ab64e7fe8	Amoxicillin	Beauregard Hastin	10	e1507ff5-6503-4e0c-8af4-e392c67bb5ff
\.


--
-- TOC entry 3406 (class 0 OID 50431)
-- Dependencies: 214
-- Data for Name: supervisor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supervisor (user_id, full_name, supervisor_id) FROM stdin;
acbe26c4-7469-4745-9304-d6458821f7ff	Lennie Kertzmann	d949b8b0-e368-441b-88f9-51f7d824be18
6b12cce5-8ef6-4d37-9e53-8008d37370cb	Mohamed Torp	a02eb898-f291-4b78-89ed-aa6b15a4b9da
f00672d7-119d-45ee-80f4-0443ecaa8b1a	Mr. Dillon Greenfelder	e5118d0b-e27f-49d7-b3f3-d120c570bb7a
7f468829-251b-4360-ba27-8541f4193af1	Maia Kemmer	993a494c-08cf-4d2f-80c7-d1d9059b720f
a75ae789-b577-4871-914d-88499fd504c7	Buddy Torphy	81f8228e-6809-428d-be86-9f4dc83309e6
29c13d7a-265e-468d-8d51-55e631f34d1e	John Dooley	6ae08a4b-44a9-44e7-b555-9688003f3495
28229c54-8b35-48a3-be6b-a18ee378fa9c	Mr. Wilber Beahan I	3624d11b-f68e-484d-9d6f-0881ed6146eb
5c491353-2e0a-48fd-888b-131722b81f06	Jerome Kemmer	d7fee5d3-3b03-439d-9400-74654bcb4546
1e5702ee-1c0a-4cdf-a411-670cdef06a08	Novella Schuster	b8638327-8958-47a7-86ba-e9e174758efb
b9e3f8c4-108c-44e0-b592-6acd39cd234a	Ms. Estell Wiegand	0ac4429a-96e2-4451-9616-7af2acc3af39
739daf68-869d-45d9-9759-17afcf20c332	Unique Huel	3b102ba7-e33b-4733-955c-2f3ae8a2713d
94e82c86-a496-4356-974d-941a0e3cb0c2	Kaitlyn Abshire	ad0c937d-a05d-4bfd-bc1c-16383f48886c
4ee46ecf-42ca-4f8e-8bc4-2d3f6f4353ba	Alanis Nicolas	cc42f01f-7a11-47f8-9105-75970d25321e
e3742656-713c-4cdf-bbb9-0b71c34ecac1	Mr. Chaz Roberts	82cf55b1-d975-49ac-a170-94a9e4da9e07
c54e56b0-bad0-409d-9eb9-60aadbe89632	Gerhard Casper	396fdca8-7bac-4a69-899c-c286811da035
271532d2-0b85-475e-be03-fe60c72493cd	Ms. Dulce Waelchi V	2342603a-7f1c-4abc-a5ba-7e265205d098
d5b51316-3b8f-4437-b10b-d66f47cf128c	Daisy Mraz	c9a1c179-05d2-43da-9a22-2519ad6c3dea
2d1a7898-a967-4aa3-b73d-d2751b845bf1	Aleen Stamm	2fe065bb-b12d-4c35-bce8-774dbd6e7489
1c26f80b-5e8d-4814-b44f-657e3465cf38	Eulah Ondricka	c4fb64f1-616d-4cb8-bfe7-c2b2e8b81808
99c7ed53-1dd0-466f-ad48-c897c3904316	Ms. Katharina Reichert	ec81a0f9-4d27-412c-be01-20297e7ad270
\.


--
-- TOC entry 3409 (class 0 OID 50448)
-- Dependencies: 217
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.type (type_id, type_name) FROM stdin;
1	РИНЦ
2	ScoPus
3	ResearchGate
\.


--
-- TOC entry 3412 (class 0 OID 50472)
-- Dependencies: 220
-- Data for Name: user_class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_class (id, name) FROM stdin;
1	admin
2	student
3	supervisor
\.


--
-- TOC entry 3243 (class 2606 OID 50520)
-- Name: client_user client_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_user
    ADD CONSTRAINT client_user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3231 (class 2606 OID 50459)
-- Name: conference conference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conference
    ADD CONSTRAINT conference_pkey PRIMARY KEY (conference_id);


--
-- TOC entry 3241 (class 2606 OID 50510)
-- Name: dissertation dissertation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dissertation
    ADD CONSTRAINT dissertation_pkey PRIMARY KEY (dissertation_id);


--
-- TOC entry 3227 (class 2606 OID 50447)
-- Name: exam exam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pkey PRIMARY KEY (exam_id);


--
-- TOC entry 3245 (class 2606 OID 50538)
-- Name: student publication_id_must_be_distinct; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT publication_id_must_be_distinct UNIQUE (publication_id);


--
-- TOC entry 3239 (class 2606 OID 50498)
-- Name: publication publication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_pkey PRIMARY KEY (publication_id);


--
-- TOC entry 3225 (class 2606 OID 50442)
-- Name: specialization specialization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.specialization
    ADD CONSTRAINT specialization_pkey PRIMARY KEY (specialization_id);


--
-- TOC entry 3237 (class 2606 OID 50481)
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (status_id);


--
-- TOC entry 3247 (class 2606 OID 50532)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- TOC entry 3249 (class 2606 OID 50536)
-- Name: student student_plan_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_plan_path_key UNIQUE (plan_path);


--
-- TOC entry 3251 (class 2606 OID 50534)
-- Name: student student_user_id_must_be_distinct; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_user_id_must_be_distinct UNIQUE (user_id);


--
-- TOC entry 3233 (class 2606 OID 50471)
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (subject_id);


--
-- TOC entry 3221 (class 2606 OID 50435)
-- Name: supervisor supervisor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisor
    ADD CONSTRAINT supervisor_pkey PRIMARY KEY (supervisor_id);


--
-- TOC entry 3229 (class 2606 OID 50452)
-- Name: type type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (type_id);


--
-- TOC entry 3235 (class 2606 OID 50476)
-- Name: user_class user_class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_class
    ADD CONSTRAINT user_class_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 50437)
-- Name: supervisor user_id_must_be_distinct; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisor
    ADD CONSTRAINT user_id_must_be_distinct UNIQUE (user_id);


--
-- TOC entry 3260 (class 2606 OID 50521)
-- Name: client_user client_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_user
    ADD CONSTRAINT client_user_id_fkey FOREIGN KEY (id) REFERENCES public.user_class(id);


--
-- TOC entry 3252 (class 2606 OID 50934)
-- Name: conference conference_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conference
    ADD CONSTRAINT conference_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);


--
-- TOC entry 3253 (class 2606 OID 50460)
-- Name: conference conference_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conference
    ADD CONSTRAINT conference_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.type(type_id);


--
-- TOC entry 3258 (class 2606 OID 50511)
-- Name: dissertation dissertation_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dissertation
    ADD CONSTRAINT dissertation_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(status_id);


--
-- TOC entry 3259 (class 2606 OID 50939)
-- Name: dissertation dissertation_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dissertation
    ADD CONSTRAINT dissertation_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);


--
-- TOC entry 3257 (class 2606 OID 50499)
-- Name: publication publication_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.type(type_id);


--
-- TOC entry 3255 (class 2606 OID 50487)
-- Name: student_exam student_exam_exam_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_exam
    ADD CONSTRAINT student_exam_exam_id_fkey FOREIGN KEY (exam_id) REFERENCES public.exam(exam_id);


--
-- TOC entry 3256 (class 2606 OID 50958)
-- Name: student_exam student_exam_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_exam
    ADD CONSTRAINT student_exam_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);


--
-- TOC entry 3261 (class 2606 OID 50550)
-- Name: student student_publication_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_publication_id_fkey FOREIGN KEY (publication_id) REFERENCES public.publication(publication_id);


--
-- TOC entry 3262 (class 2606 OID 50545)
-- Name: student student_specialization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_specialization_id_fkey FOREIGN KEY (specialization_id) REFERENCES public.specialization(specialization_id);


--
-- TOC entry 3263 (class 2606 OID 50929)
-- Name: student student_supervisor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_supervisor_id_fkey FOREIGN KEY (supervisor_id) REFERENCES public.supervisor(supervisor_id);


--
-- TOC entry 3254 (class 2606 OID 50953)
-- Name: subject subject_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);


-- Completed on 2023-08-27 22:05:54

--
-- PostgreSQL database dump complete
--

