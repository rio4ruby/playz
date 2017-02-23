--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: file_dirs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: play
--

SELECT pg_catalog.setval('file_dirs_id_seq', 2077, true);


--
-- Data for Name: file_dirs; Type: TABLE DATA; Schema: public; Owner: play
--

COPY file_dirs (id, name, ancestry, created_at, updated_at) FROM stdin;
1	/	\N	2012-06-06 09:24:07.250075	2012-06-06 09:24:07.250075
2	/srv	1	2012-06-06 09:24:07.281202	2012-06-06 09:24:07.281202
3	/srv/mp3	1/2	2012-06-06 09:24:07.28398	2012-06-06 09:24:07.28398
4	/srv/mp3/Bruce Springsteen	1/2/3	2012-06-06 09:24:07.285228	2012-06-06 09:24:07.285228
5	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography	1/2/3/4	2012-06-06 09:24:07.641213	2012-06-06 09:24:07.641213
6	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2006 Hammersmith Odeon, London '75 (2CD)	1/2/3/4/5	2012-06-06 09:24:07.719378	2012-06-06 09:24:07.719378
7	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2006 Hammersmith Odeon, London '75 (2CD)/CD1	1/2/3/4/5/6	2012-06-06 09:24:08.84987	2012-06-06 09:24:08.84987
8	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2006 Hammersmith Odeon, London '75 (2CD)/CD2	1/2/3/4/5/6	2012-06-06 09:24:12.572314	2012-06-06 09:24:12.572314
9	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1975 Born To Run	1/2/3/4/5	2012-06-06 09:31:53.891357	2012-06-06 09:31:53.891357
10	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2007 Live In Dublin (2CD)	1/2/3/4/5	2012-06-06 09:31:56.956373	2012-06-06 09:31:56.956373
11	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2007 Live In Dublin (2CD)/CD1	1/2/3/4/5/10	2012-06-06 09:31:59.171028	2012-06-06 09:31:59.171028
12	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2007 Live In Dublin (2CD)/CD2	1/2/3/4/5/10	2012-06-06 09:32:04.324656	2012-06-06 09:32:04.324656
13	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1980 The River (2CD)	1/2/3/4/5	2012-06-06 09:32:09.413368	2012-06-06 09:32:09.413368
14	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1980 The River (2CD)/The River (Disc 2)	1/2/3/4/5/13	2012-06-06 09:32:10.612342	2012-06-06 09:32:10.612342
15	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1980 The River (2CD)/The River (Disc 1)	1/2/3/4/5/13	2012-06-06 09:32:13.66816	2012-06-06 09:32:13.66816
16	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1998 Tracks (4CD)	1/2/3/4/5	2012-06-06 09:32:18.497563	2012-06-06 09:32:18.497563
17	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1998 Tracks (4CD)/CD3	1/2/3/4/5/16	2012-06-06 09:32:20.042031	2012-06-06 09:32:20.042031
18	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1998 Tracks (4CD)/CD4	1/2/3/4/5/16	2012-06-06 09:32:25.885991	2012-06-06 09:32:25.885991
19	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1998 Tracks (4CD)/CD1	1/2/3/4/5/16	2012-06-06 09:32:32.141152	2012-06-06 09:32:32.141152
20	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1998 Tracks (4CD)/CD2	1/2/3/4/5/16	2012-06-06 09:32:37.508328	2012-06-06 09:32:37.508328
21	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1984 Born In The U.S.A	1/2/3/4/5	2012-06-06 09:32:46.72004	2012-06-06 09:32:46.72004
22	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2006 We Shall Overcome - The Seeger Sessions	1/2/3/4/5	2012-06-06 09:32:50.822099	2012-06-06 09:32:50.822099
23	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1995 Greatest Hits	1/2/3/4/5	2012-06-06 09:32:55.412381	2012-06-06 09:32:55.412381
24	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1973 The Wild,The Innocent & The E Street Shuffle	1/2/3/4/5	2012-06-06 09:33:01.56295	2012-06-06 09:33:01.56295
25	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1973 Greetings From Asbury Park	1/2/3/4/5	2012-06-06 09:33:04.239192	2012-06-06 09:33:04.239192
26	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1982 Nebraska	1/2/3/4/5	2012-06-06 09:33:07.570823	2012-06-06 09:33:07.570823
27	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1986 Live 1975-85 (3CD)	1/2/3/4/5	2012-06-06 09:33:11.651399	2012-06-06 09:33:11.651399
28	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1986 Live 1975-85 (3CD)/(Disc 2)	1/2/3/4/5/27	2012-06-06 09:33:13.222002	2012-06-06 09:33:13.222002
29	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1986 Live 1975-85 (3CD)/(Disc 3)	1/2/3/4/5/27	2012-06-06 09:33:18.116924	2012-06-06 09:33:18.116924
30	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1986 Live 1975-85 (3CD)/(Disc 1)	1/2/3/4/5/27	2012-06-06 09:33:22.245829	2012-06-06 09:33:22.245829
31	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1995 The Ghost Of Tom Joad	1/2/3/4/5	2012-06-06 09:33:28.225174	2012-06-06 09:33:28.225174
32	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1978 Darkness On The Edge Of Town	1/2/3/4/5	2012-06-06 09:33:33.007433	2012-06-06 09:33:33.007433
33	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1992 Human Touch	1/2/3/4/5	2012-06-06 09:33:37.219441	2012-06-06 09:33:37.219441
34	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1987 Tunnel Of Love	1/2/3/4/5	2012-06-06 09:33:42.170016	2012-06-06 09:33:42.170016
35	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2002 The Rising	1/2/3/4/5	2012-06-06 09:33:46.766747	2012-06-06 09:33:46.766747
36	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1992 Lucky Town	1/2/3/4/5	2012-06-06 09:33:53.086748	2012-06-06 09:33:53.086748
37	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1999 18 Tracks	1/2/3/4/5	2012-06-06 09:33:58.799944	2012-06-06 09:33:58.799944
38	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2003 The Essential (3CD)	1/2/3/4/5	2012-06-06 09:34:05.662381	2012-06-06 09:34:05.662381
39	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2003 The Essential (3CD)/(Disc 2)	1/2/3/4/5/38	2012-06-06 09:34:06.517255	2012-06-06 09:34:06.517255
40	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2003 The Essential (3CD)/(Disc 1)	1/2/3/4/5/38	2012-06-06 09:34:11.934952	2012-06-06 09:34:11.934952
41	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2003 The Essential (3CD)/(Disc 3 Bonus)	1/2/3/4/5/38	2012-06-06 09:34:16.489569	2012-06-06 09:34:16.489569
42	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1988 Chimes Of Freedom (Maxisingle)	1/2/3/4/5	2012-06-06 09:34:22.941272	2012-06-06 09:34:22.941272
43	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1993 In Concert MTV (Un)Plugged	1/2/3/4/5	2012-06-06 09:34:25.384336	2012-06-06 09:34:25.384336
44	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2007 Magic	1/2/3/4/5	2012-06-06 09:34:30.373962	2012-06-06 09:34:30.373962
45	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2001 Live In  New York City (2CD)	1/2/3/4/5	2012-06-06 09:34:37.542754	2012-06-06 09:34:37.542754
46	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2001 Live In  New York City (2CD)/(Disc 2)	1/2/3/4/5/45	2012-06-06 09:34:39.028729	2012-06-06 09:34:39.028729
47	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2001 Live In  New York City (2CD)/(Disc 1)	1/2/3/4/5/45	2012-06-06 09:34:42.100989	2012-06-06 09:34:42.100989
48	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/2005 Devils & Dust	1/2/3/4/5	2012-06-06 09:34:46.287777	2012-06-06 09:34:46.287777
49	/srv/mp3/Bruce Springsteen/Bruce Springsteen Discography/1996 Blood Brothers (Maxisingle)	1/2/3/4/5	2012-06-06 09:34:55.616962	2012-06-06 09:34:55.616962
50	/srv/mp3/Bruce Springsteen/The Wild, The Innocent & The E Street Shuffle	1/2/3/4	2012-06-06 09:34:58.534112	2012-06-06 09:34:58.534112
51	/srv/mp3/Bruce Springsteen/Born To Run	1/2/3/4	2012-06-06 09:35:02.090933	2012-06-06 09:35:02.090933
52	/srv/mp3/Graham Parker	1/2/3	2012-06-06 09:52:35.58699	2012-06-06 09:52:35.58699
53	/srv/mp3/Styx	1/2/3	2012-06-06 09:52:35.606059	2012-06-06 09:52:35.606059
54	/srv/mp3/Reba McEntire	1/2/3	2012-06-06 09:52:35.580911	2012-06-06 09:52:35.580911
55	/srv/mp3/Lady Gaga	1/2/3	2012-06-06 09:52:36.22016	2012-06-06 09:52:36.22016
56	/srv/mp3/Eric Clapton & Carlos Santana	1/2/3	2012-06-06 09:52:35.353494	2012-06-06 09:52:35.353494
58	/srv/mp3/Flatt & Scruggs	1/2/3	2012-06-06 09:52:35.614626	2012-06-06 09:52:35.614626
59	/srv/mp3/Various	1/2/3	2012-06-06 09:52:39.003349	2012-06-06 09:52:39.003349
60	/srv/mp3/Yes	1/2/3	2012-06-06 09:52:39.007422	2012-06-06 09:52:39.007422
61	/srv/mp3/Hüsker Dü	1/2/3	2012-06-06 09:52:38.986255	2012-06-06 09:52:38.986255
62	/srv/mp3/Kenny Rogers	1/2/3	2012-06-06 09:52:38.865894	2012-06-06 09:52:38.865894
63	/srv/mp3/U2	1/2/3	2012-06-06 09:52:38.841419	2012-06-06 09:52:38.841419
64	/srv/mp3/Bach, CPE	1/2/3	2012-06-06 09:52:38.84907	2012-06-06 09:52:38.84907
65	/srv/mp3/Todd Rundgren	1/2/3	2012-06-06 09:52:38.850931	2012-06-06 09:52:38.850931
66	/srv/mp3/Carol King	1/2/3	2012-06-06 09:52:38.845622	2012-06-06 09:52:38.845622
67	/srv/mp3/Neil Young	1/2/3	2012-06-06 09:52:39.038918	2012-06-06 09:52:39.038918
68	/srv/mp3/It's A Beautiful Day	1/2/3	2012-06-06 09:52:39.001791	2012-06-06 09:52:39.001791
69	/srv/mp3/Jimmy Buffet	1/2/3	2012-06-06 09:52:38.999319	2012-06-06 09:52:38.999319
70	/srv/mp3/Ozark Mountain Daredevils	1/2/3	2012-06-06 09:52:38.993343	2012-06-06 09:52:38.993343
71	/srv/mp3/ABC	1/2/3	2012-06-06 09:52:39.038403	2012-06-06 09:52:39.038403
73	/srv/mp3/Adam Green	1/2/3	2012-06-06 09:52:51.531728	2012-06-06 09:52:51.531728
74	/srv/mp3/It's A Beautiful Day/It's A Beautiful Day - It's A Beautiful Day	1/2/3/68	2012-06-06 09:52:51.731449	2012-06-06 09:52:51.731449
83	/srv/mp3/Ozark Mountain Daredevils/Ozark Mountain Daredevils	1/2/3/70	2012-06-06 09:52:51.749976	2012-06-06 09:52:51.749976
85	/srv/mp3/Neil Young/Live In Chicago	1/2/3/67	2012-06-06 09:52:51.759547	2012-06-06 09:52:51.759547
86	/srv/mp3/Carol King/Carole King - Tapestry (1971) [Rock Pop][mp3 320][h33t][schon55]	1/2/3/66	2012-06-06 09:52:51.762851	2012-06-06 09:52:51.762851
87	/srv/mp3/Neil Young/Live In Chicago/CD #1	1/2/3/67/85	2012-06-06 09:52:51.765292	2012-06-06 09:52:51.765292
88	/srv/mp3/Jimmy Buffet/Boats, Beaches, Bars & Ballads [BOX SET]	1/2/3/69	2012-06-06 09:52:51.839168	2012-06-06 09:52:51.839168
89	/srv/mp3/Jimmy Buffet/Boats, Beaches, Bars & Ballads [BOX SET]/Boats	1/2/3/69/88	2012-06-06 09:52:51.841373	2012-06-06 09:52:51.841373
95	/srv/mp3/Todd Rundgren/something  anything	1/2/3/65	2012-06-06 09:52:51.884228	2012-06-06 09:52:51.884228
96	/srv/mp3/Todd Rundgren/something  anything/cd2	1/2/3/65/95	2012-06-06 09:52:51.886356	2012-06-06 09:52:51.886356
98	/srv/mp3/Adam Green/Adam Green - Friends of Mine [2003]	1/2/3/73	2012-06-06 09:52:54.284806	2012-06-06 09:52:54.284806
109	/srv/mp3/Neil Young/Live In Chicago/CD #2	1/2/3/67/85	2012-06-06 09:53:21.293771	2012-06-06 09:53:21.293771
110	/srv/mp3/Todd Rundgren/something  anything/cd1	1/2/3/65/95	2012-06-06 09:53:21.98253	2012-06-06 09:53:21.98253
114	/srv/mp3/Paul McCartney	1/2/3	2012-06-06 09:53:26.704294	2012-06-06 09:53:26.704294
115	/srv/mp3/Adam Green/Adam Green - Garfield [2002]	1/2/3/73	2012-06-06 09:53:27.077711	2012-06-06 09:53:27.077711
116	/srv/mp3/Paul McCartney/1971-12-07 - Wild Life	1/2/3/114	2012-06-06 09:53:27.114898	2012-06-06 09:53:27.114898
117	/srv/mp3/Jimmy Buffet/Boats, Beaches, Bars & Ballads [BOX SET]/Ballads	1/2/3/69/88	2012-06-06 09:53:28.82903	2012-06-06 09:53:28.82903
118	/srv/mp3/Carol King/Carole King - Tapestry (1971) [Rock Pop][mp3 320][h33t][schon55]/Scans	1/2/3/66/86	2012-06-06 09:53:29.727639	2012-06-06 09:53:29.727639
119	/srv/mp3/Neil Young/American Stars 'N Bars (1977)	1/2/3/67	2012-06-06 09:53:31.010692	2012-06-06 09:53:31.010692
121	/srv/mp3/Carol King/Carole King - Fantasy (1973) [Rock Pop][mp3 256][h33t][schon55]	1/2/3/66	2012-06-06 09:53:33.46999	2012-06-06 09:53:33.46999
132	/srv/mp3/The Rembrandts	1/2/3	2012-06-06 09:53:40.708741	2012-06-06 09:53:40.708741
133	/srv/mp3/The Rembrandts/L.P	1/2/3/132	2012-06-06 09:53:41.156244	2012-06-06 09:53:41.156244
144	/srv/mp3/Arctic Monkeys	1/2/3	2012-06-06 09:53:49.568945	2012-06-06 09:53:49.568945
145	/srv/mp3/Arctic Monkeys/Whatever People Say I Am, That's What I'm Not	1/2/3/144	2012-06-06 09:53:49.962787	2012-06-06 09:53:49.962787
148	/srv/mp3/Paul McCartney/2005-09-12 - Chaos And Creation In The Backyard	1/2/3/114	2012-06-06 09:53:51.017367	2012-06-06 09:53:51.017367
149	/srv/mp3/Neil Young/After The Gold Rush (1970)	1/2/3/67	2012-06-06 09:53:51.097932	2012-06-06 09:53:51.097932
72	/srv/mp3/B.B. King	1/2/3	2012-06-06 09:52:40.469413	2012-06-06 09:52:40.469413
92	/srv/mp3/B.B. King/Anthology	1/2/3/72	2012-06-06 09:52:51.87733	2012-06-06 09:52:51.87733
94	/srv/mp3/B.B. King/Anthology/Disc 2	1/2/3/72/92	2012-06-06 09:52:51.879221	2012-06-06 09:52:51.879221
111	/srv/mp3/B.B. King/Anthology/Disc 1	1/2/3/72/92	2012-06-06 09:53:24.241358	2012-06-06 09:53:24.241358
150	/srv/mp3/B.B. King/The Blues - Remastered	1/2/3/72	2012-06-06 09:53:52.074004	2012-06-06 09:53:52.074004
75	/srv/mp3/U2/U2 - How To Dismantle An Atomic Bomb - 2004	1/2/3/63	2012-06-06 09:52:51.732976	2012-06-06 09:52:51.732976
105	/srv/mp3/U2/U2 - Zooropa - 1993	1/2/3/63	2012-06-06 09:53:17.351133	2012-06-06 09:53:17.351133
120	/srv/mp3/U2/U2 - The Joshua Tree - 1987	1/2/3/63	2012-06-06 09:53:33.053204	2012-06-06 09:53:33.053204
146	/srv/mp3/U2/U2 - The Best of 1990-2000	1/2/3/63	2012-06-06 09:53:50.720348	2012-06-06 09:53:50.720348
76	/srv/mp3/Hüsker Dü/Candy Apple Grey	1/2/3/61	2012-06-06 09:52:51.737567	2012-06-06 09:52:51.737567
106	/srv/mp3/Huey Lewis and the News	1/2/3	2012-06-06 09:53:18.115578	2012-06-06 09:53:18.115578
107	/srv/mp3/Huey Lewis and the News/Greatest Hits	1/2/3/106	2012-06-06 09:53:18.564865	2012-06-06 09:53:18.564865
142	/srv/mp3/Hi-Lo's	1/2/3	2012-06-06 09:53:46.744671	2012-06-06 09:53:46.744671
143	/srv/mp3/Hi-Lo's/Suddenly It's The Hi-Lo's	1/2/3/142	2012-06-06 09:53:48.612833	2012-06-06 09:53:48.612833
77	/srv/mp3/Lady Gaga/The Fame Monster (Deluxe Edition)	1/2/3/55	2012-06-06 09:52:51.739858	2012-06-06 09:52:51.739858
78	/srv/mp3/Yes/classic yes	1/2/3/60	2012-06-06 09:52:51.741304	2012-06-06 09:52:51.741304
103	/srv/mp3/Wreckless Eric	1/2/3	2012-06-06 09:53:14.085599	2012-06-06 09:53:14.085599
104	/srv/mp3/Wreckless Eric/Wreckless Eric (1978)	1/2/3/103	2012-06-06 09:53:14.606086	2012-06-06 09:53:14.606086
127	/srv/mp3/World Party	1/2/3	2012-06-06 09:53:37.976221	2012-06-06 09:53:37.976221
128	/srv/mp3/Warren Zevon	1/2/3	2012-06-06 09:53:38.160785	2012-06-06 09:53:38.160785
129	/srv/mp3/Warren Zevon/excitable boy	1/2/3/128	2012-06-06 09:53:38.727568	2012-06-06 09:53:38.727568
151	/srv/mp3/Warren Zevon/genius the best of warren zevon	1/2/3/128	2012-06-06 09:53:53.2678	2012-06-06 09:53:53.2678
79	/srv/mp3/Flatt & Scruggs/The Essential Flatt & Scruggs-'Tis Sweet To Be Remembered	1/2/3/58	2012-06-06 09:52:51.739543	2012-06-06 09:52:51.739543
80	/srv/mp3/Kenny Rogers/42 Ultimate Hits	1/2/3/62	2012-06-06 09:52:51.744689	2012-06-06 09:52:51.744689
81	/srv/mp3/Styx/Greatest Hits	1/2/3/53	2012-06-06 09:52:51.734043	2012-06-06 09:52:51.734043
112	/srv/mp3/Sinead O'Connor	1/2/3	2012-06-06 09:53:25.438866	2012-06-06 09:53:25.438866
113	/srv/mp3/Sinead O'Connor/1988 - The Lion and the Cobra	1/2/3/112	2012-06-06 09:53:26.096149	2012-06-06 09:53:26.096149
130	/srv/mp3/Sinead O'Connor/1994 - Universal Mother	1/2/3/112	2012-06-06 09:53:38.899731	2012-06-06 09:53:38.899731
82	/srv/mp3/Graham Parker/Graham Parker-Stick To Me-1977	1/2/3/52	2012-06-06 09:52:51.747716	2012-06-06 09:52:51.747716
108	/srv/mp3/Graham Parker/Graham Parker-The Real Macaw-1983	1/2/3/52	2012-06-06 09:53:18.958501	2012-06-06 09:53:18.958501
125	/srv/mp3/Graham Parker/Graham Parker-Okänt album	1/2/3/52	2012-06-06 09:53:35.808668	2012-06-06 09:53:35.808668
126	/srv/mp3/Graham Parker/Graham Parker-Okänt album/Graham Parker-Okänt album-CD 1	1/2/3/52/125	2012-06-06 09:53:35.814278	2012-06-06 09:53:35.814278
84	/srv/mp3/Eric Clapton & Carlos Santana/Very Rare 24 min Live Jam	1/2/3/56	2012-06-06 09:52:51.754	2012-06-06 09:52:51.754
100	/srv/mp3/Eric Clapton & Jeff Beck	1/2/3	2012-06-06 09:53:00.369535	2012-06-06 09:53:00.369535
101	/srv/mp3/Eric Clapton & Jeff Beck/Two Blue Birds Fly	1/2/3/100	2012-06-06 09:53:00.978596	2012-06-06 09:53:00.978596
134	/srv/mp3/Eric Clapton & Jeff Beck/Two Blue Birds Fly/pics	1/2/3/100/101	2012-06-06 09:53:42.441457	2012-06-06 09:53:42.441457
137	/srv/mp3/Eric Clapton & Jeff Beck/Two Blue Birds Fly/covers	1/2/3/100/101	2012-06-06 09:53:43.554018	2012-06-06 09:53:43.554018
138	/srv/mp3/Ella Fitzgerald	1/2/3	2012-06-06 09:53:44.940092	2012-06-06 09:53:44.940092
139	/srv/mp3/Ella Fitzgerald/The Essential Ella Fitzgerald	1/2/3/138	2012-06-06 09:53:45.647787	2012-06-06 09:53:45.647787
140	/srv/mp3/Ella Fitzgerald/The Essential Ella Fitzgerald/CD3	1/2/3/138/139	2012-06-06 09:53:45.663265	2012-06-06 09:53:45.663265
90	/srv/mp3/Various/All That Jazz 3CD Box Set	1/2/3/59	2012-06-06 09:52:51.870749	2012-06-06 09:52:51.870749
91	/srv/mp3/Various/All That Jazz 3CD Box Set/CD2-Jazz Mania	1/2/3/59/90	2012-06-06 09:52:51.874537	2012-06-06 09:52:51.874537
93	/srv/mp3/Dr John	1/2/3	2012-06-06 09:52:51.872563	2012-06-06 09:52:51.872563
99	/srv/mp3/Dr John/Gris-Gris	1/2/3/93	2012-06-06 09:52:54.341412	2012-06-06 09:52:54.341412
102	/srv/mp3/Dr John/Mercernary	1/2/3/93	2012-06-06 09:53:13.506586	2012-06-06 09:53:13.506586
122	/srv/mp3/Duran Duran	1/2/3	2012-06-06 09:53:34.502864	2012-06-06 09:53:34.502864
123	/srv/mp3/Duran Duran/Singles	1/2/3/122	2012-06-06 09:53:34.88064	2012-06-06 09:53:34.88064
124	/srv/mp3/Duran Duran/Singles/(1983) Is There Something I Should Know-	1/2/3/122/123	2012-06-06 09:53:34.882376	2012-06-06 09:53:34.882376
131	/srv/mp3/Duran Duran/Singles/(1981_B) Careless Memories	1/2/3/122/123	2012-06-06 09:53:39.400358	2012-06-06 09:53:39.400358
135	/srv/mp3/Duran Duran/Singles/(1985) A View to a Kill	1/2/3/122/123	2012-06-06 09:53:43.208778	2012-06-06 09:53:43.208778
136	/srv/mp3/Various/All That Jazz 3CD Box Set/CD3-The Essence of Jazz	1/2/3/59/90	2012-06-06 09:53:43.265792	2012-06-06 09:53:43.265792
141	/srv/mp3/Duran Duran/Singles/(1982) Hungry Like The Wolf	1/2/3/122/123	2012-06-06 09:53:45.81328	2012-06-06 09:53:45.81328
147	/srv/mp3/Duran Duran/Singles/(1984) New Moon On Monday	1/2/3/122/123	2012-06-06 09:53:50.956205	2012-06-06 09:53:50.956205
97	/srv/mp3/Reba McEntire/50 Greatest Hits	1/2/3/54	2012-06-06 09:52:52.211031	2012-06-06 09:52:52.211031
152	/srv/mp3/Faron Young	1/2/3	2012-06-06 09:53:53.481587	2012-06-06 09:53:53.481587
153	/srv/mp3/Faron Young/The Complete Capitol Hits of Faron Young	1/2/3/152	2012-06-06 09:53:53.852473	2012-06-06 09:53:53.852473
154	/srv/mp3/Duran Duran/Singles/(1981_D) My Own Way	1/2/3/122/123	2012-06-06 09:53:54.966575	2012-06-06 09:53:54.966575
155	/srv/mp3/Lay Low	1/2/3	2012-06-06 09:53:56.930849	2012-06-06 09:53:56.930849
156	/srv/mp3/Carol King/Carole King - Fantasy (1973) [Rock Pop][mp3 256][h33t][schon55]/Scans	1/2/3/66/121	2012-06-06 09:53:57.337701	2012-06-06 09:53:57.337701
157	/srv/mp3/Lay Low/Farewell Good Night's Sleep	1/2/3/155	2012-06-06 09:53:57.449405	2012-06-06 09:53:57.449405
158	/srv/mp3/Duran Duran/Singles/(1981_C) Girls On Film	1/2/3/122/123	2012-06-06 09:53:58.679421	2012-06-06 09:53:58.679421
159	/srv/mp3/Jimmy Buffet/Boats, Beaches, Bars & Ballads [BOX SET]/Bars	1/2/3/69/88	2012-06-06 09:53:59.85442	2012-06-06 09:53:59.85442
160	/srv/mp3/Sinead O'Connor/1997 - So Far	1/2/3/112	2012-06-06 09:54:00.822059	2012-06-06 09:54:00.822059
161	/srv/mp3/Coldplay	1/2/3	2012-06-06 09:54:00.841997	2012-06-06 09:54:00.841997
162	/srv/mp3/Coldplay/Viva La Vida	1/2/3/161	2012-06-06 09:54:01.239651	2012-06-06 09:54:01.239651
163	/srv/mp3/Duran Duran/Singles/(1981_A) Planet Earth	1/2/3/122/123	2012-06-06 09:54:02.992981	2012-06-06 09:54:02.992981
164	/srv/mp3/Graham Parker/Graham Parker-Okänt album/Graham Parker-Okänt album-CD 2	1/2/3/52/125	2012-06-06 09:54:05.561238	2012-06-06 09:54:05.561238
165	/srv/mp3/Duran Duran/Albums	1/2/3/122	2012-06-06 09:54:05.810848	2012-06-06 09:54:05.810848
166	/srv/mp3/Duran Duran/Albums/(1990) Liberty	1/2/3/122/165	2012-06-06 09:54:05.813623	2012-06-06 09:54:05.813623
167	/srv/mp3/Duran Duran/Albums/(1990) Liberty/Tracks	1/2/3/122/165/166	2012-06-06 09:54:05.817564	2012-06-06 09:54:05.817564
168	/srv/mp3/The Moldy Peaches	1/2/3	2012-06-06 09:54:06.402936	2012-06-06 09:54:06.402936
169	/srv/mp3/The Moldy Peaches/The Moldy Peaches - The Moldy Peaches [2001]	1/2/3/168	2012-06-06 09:54:06.824037	2012-06-06 09:54:06.824037
170	/srv/mp3/Paul McCartney/1999-10-04 - Run Devil Run	1/2/3/114	2012-06-06 09:54:09.740536	2012-06-06 09:54:09.740536
171	/srv/mp3/Hothouse Flowers	1/2/3	2012-06-06 09:54:10.15252	2012-06-06 09:54:10.15252
172	/srv/mp3/Hothouse Flowers/Into Your Heart	1/2/3/171	2012-06-06 09:54:10.548407	2012-06-06 09:54:10.548407
173	/srv/mp3/Antsy Pants	1/2/3	2012-06-06 09:54:11.407748	2012-06-06 09:54:11.407748
174	/srv/mp3/Afroman	1/2/3	2012-06-06 09:54:11.706727	2012-06-06 09:54:11.706727
175	/srv/mp3/Afroman/The Good Times	1/2/3/174	2012-06-06 09:54:12.196327	2012-06-06 09:54:12.196327
176	/srv/mp3/U2/U2 - Wide Awake in America - 1985	1/2/3/63	2012-06-06 09:54:14.786008	2012-06-06 09:54:14.786008
177	/srv/mp3/Ella Fitzgerald/The Essential Ella Fitzgerald/CD1	1/2/3/138/139	2012-06-06 09:54:15.190792	2012-06-06 09:54:15.190792
178	/srv/mp3/Neil Young/Ragged Glory (1990)	1/2/3/67	2012-06-06 09:54:15.446914	2012-06-06 09:54:15.446914
179	/srv/mp3/Duran Duran/Albums/(1986) Notorious	1/2/3/122/165	2012-06-06 09:54:18.927503	2012-06-06 09:54:18.927503
180	/srv/mp3/Duran Duran/Albums/(1986) Notorious/Tracks	1/2/3/122/165/179	2012-06-06 09:54:18.929214	2012-06-06 09:54:18.929214
181	/srv/mp3/Black Eyed Peas	1/2/3	2012-06-06 09:54:19.17081	2012-06-06 09:54:19.17081
182	/srv/mp3/Black Eyed Peas/E.N.D	1/2/3/181	2012-06-06 09:54:19.48543	2012-06-06 09:54:19.48543
183	/srv/mp3/Led Zeppelin	1/2/3	2012-06-06 09:54:21.646437	2012-06-06 09:54:21.646437
184	/srv/mp3/U2/U2 - Under a Blood Red Sky (live) - 1983	1/2/3/63	2012-06-06 09:54:21.942072	2012-06-06 09:54:21.942072
185	/srv/mp3/Louis Armstrong	1/2/3	2012-06-06 09:54:22.039724	2012-06-06 09:54:22.039724
186	/srv/mp3/Louis Armstrong/The Definitive Collection	1/2/3/185	2012-06-06 09:54:22.557213	2012-06-06 09:54:22.557213
187	/srv/mp3/Crosby, Stills & Nash	1/2/3	2012-06-06 09:54:22.681789	2012-06-06 09:54:22.681789
188	/srv/mp3/Crosby, Stills & Nash/Crosby, Stills & Nash	1/2/3/187	2012-06-06 09:54:22.929623	2012-06-06 09:54:22.929623
189	/srv/mp3/Sinead O'Connor/2002 - Sean-Nós Nua	1/2/3/112	2012-06-06 09:54:23.30899	2012-06-06 09:54:23.30899
190	/srv/mp3/Various/All That Jazz 3CD Box Set/CD1-Rhythm is Our Business	1/2/3/59/90	2012-06-06 09:54:24.163811	2012-06-06 09:54:24.163811
191	/srv/mp3/Jimmy Buffet/Boats, Beaches, Bars & Ballads [BOX SET]/Beaches	1/2/3/69/88	2012-06-06 09:54:26.30408	2012-06-06 09:54:26.30408
192	/srv/mp3/Hothouse Flowers/Songs From The Rain	1/2/3/171	2012-06-06 09:54:26.798094	2012-06-06 09:54:26.798094
193	/srv/mp3/Fugees	1/2/3	2012-06-06 09:54:28.116588	2012-06-06 09:54:28.116588
194	/srv/mp3/Fugees/Fugees-Greatest_Hits-2CD-2003-192kbps-SHAREGO	1/2/3/193	2012-06-06 09:54:28.505415	2012-06-06 09:54:28.505415
195	/srv/mp3/Duran Duran/Albums/(1981) Duran Duran	1/2/3/122/165	2012-06-06 09:54:30.054136	2012-06-06 09:54:30.054136
196	/srv/mp3/Duran Duran/Albums/(1981) Duran Duran/Tracks	1/2/3/122/165/195	2012-06-06 09:54:30.057965	2012-06-06 09:54:30.057965
197	/srv/mp3/Graham Parker/Graham Parker-Another Grey Area-1982	1/2/3/52	2012-06-06 09:54:30.070184	2012-06-06 09:54:30.070184
198	/srv/mp3/Paul McCartney/1977-04-29 - Thrillington	1/2/3/114	2012-06-06 09:54:30.557972	2012-06-06 09:54:30.557972
199	/srv/mp3/Al Di Meola and Friends	1/2/3	2012-06-06 09:54:30.65084	2012-06-06 09:54:30.65084
200	/srv/mp3/Al Di Meola and Friends/Vocal Rendezvous	1/2/3/199	2012-06-06 09:54:31.163678	2012-06-06 09:54:31.163678
201	/srv/mp3/Neil Young/Live '70'	1/2/3/67	2012-06-06 09:54:31.696574	2012-06-06 09:54:31.696574
202	/srv/mp3/Neil Young/Live '70'/CD 1	1/2/3/67/201	2012-06-06 09:54:31.704694	2012-06-06 09:54:31.704694
203	/srv/mp3/U2/U2 - Pop - 1997	1/2/3/63	2012-06-06 09:54:33.640505	2012-06-06 09:54:33.640505
204	/srv/mp3/The Strokes	1/2/3	2012-06-06 09:54:39.524689	2012-06-06 09:54:39.524689
205	/srv/mp3/The Strokes/Is This It-	1/2/3/204	2012-06-06 09:54:39.810143	2012-06-06 09:54:39.810143
206	/srv/mp3/ZZ Top	1/2/3	2012-06-06 09:54:39.980131	2012-06-06 09:54:39.980131
207	/srv/mp3/ZZ Top/Fandango	1/2/3/206	2012-06-06 09:54:40.184892	2012-06-06 09:54:40.184892
208	/srv/mp3/Hothouse Flowers/People	1/2/3/171	2012-06-06 09:54:41.620096	2012-06-06 09:54:41.620096
209	/srv/mp3/Duran Duran/Albums/(2004) Astronaut	1/2/3/122/165	2012-06-06 09:54:42.787631	2012-06-06 09:54:42.787631
210	/srv/mp3/Duran Duran/Albums/(2004) Astronaut/Tracks	1/2/3/122/165/209	2012-06-06 09:54:42.803266	2012-06-06 09:54:42.803266
211	/srv/mp3/Sinead O'Connor/2000 - Faith and Courage	1/2/3/112	2012-06-06 09:54:43.414282	2012-06-06 09:54:43.414282
212	/srv/mp3/Ella Fitzgerald/The Essential Ella Fitzgerald/CD2	1/2/3/138/139	2012-06-06 09:54:46.610047	2012-06-06 09:54:46.610047
213	/srv/mp3/Randy Newman	1/2/3	2012-06-06 09:54:47.751263	2012-06-06 09:54:47.751263
214	/srv/mp3/Crosby, Stills & Nash/Crosby Stills Nash & Young - Deja Vu (1970) Mp3 320 vtwin88cube	1/2/3/187	2012-06-06 09:54:47.905145	2012-06-06 09:54:47.905145
215	/srv/mp3/Graham Parker/Graham Parker-Squeezing Out Sparks-1979	1/2/3/52	2012-06-06 09:54:48.221927	2012-06-06 09:54:48.221927
216	/srv/mp3/Randy Newman/Randy Newman - Randy Newman Live	1/2/3/213	2012-06-06 09:54:48.323727	2012-06-06 09:54:48.323727
217	/srv/mp3/Neil Young/Live '70'/CD 2	1/2/3/67/201	2012-06-06 09:54:48.946727	2012-06-06 09:54:48.946727
218	/srv/mp3/Paul McCartney/1993-02-01 - Off The Ground	1/2/3/114	2012-06-06 09:54:49.709333	2012-06-06 09:54:49.709333
219	/srv/mp3/Al Hirt	1/2/3	2012-06-06 09:54:50.287737	2012-06-06 09:54:50.287737
220	/srv/mp3/Al Hirt/Honey in the Horn-That Honey Horn Sound	1/2/3/219	2012-06-06 09:54:50.862239	2012-06-06 09:54:50.862239
221	/srv/mp3/U2/U2 - The eye of the fly (Live) - 1992	1/2/3/63	2012-06-06 09:54:54.343442	2012-06-06 09:54:54.343442
222	/srv/mp3/James Taylor	1/2/3	2012-06-06 09:54:55.550483	2012-06-06 09:54:55.550483
223	/srv/mp3/James Taylor/James Taylor Discography	1/2/3/222	2012-06-06 09:54:56.344959	2012-06-06 09:54:56.344959
224	/srv/mp3/James Taylor/James Taylor Discography/James Taylor (1968)	1/2/3/222/223	2012-06-06 09:54:56.346483	2012-06-06 09:54:56.346483
225	/srv/mp3/The Monkees	1/2/3	2012-06-06 09:54:56.655575	2012-06-06 09:54:56.655575
226	/srv/mp3/The Monkees/Greatest Hits	1/2/3/225	2012-06-06 09:54:56.95337	2012-06-06 09:54:56.95337
227	/srv/mp3/Duran Duran/Albums/(1993) Duran Duran	1/2/3/122/165	2012-06-06 09:54:57.912723	2012-06-06 09:54:57.912723
266	/srv/mp3/The Blues Brothers	1/2/3	2012-06-06 09:55:28.295291	2012-06-06 09:55:28.295291
228	/srv/mp3/Duran Duran/Albums/(1993) Duran Duran/Tracks	1/2/3/122/165/227	2012-06-06 09:54:57.914874	2012-06-06 09:54:57.914874
229	/srv/mp3/Neil Young/Broken Arrow (1996)	1/2/3/67	2012-06-06 09:54:58.22802	2012-06-06 09:54:58.22802
230	/srv/mp3/Fugees/Fugees.The.Score.1996-Kyd	1/2/3/193	2012-06-06 09:54:58.333603	2012-06-06 09:54:58.333603
231	/srv/mp3/ZZ Top/The Beginning of ZZ Top	1/2/3/206	2012-06-06 09:54:58.348823	2012-06-06 09:54:58.348823
232	/srv/mp3/ZZ Top/The Beginning of ZZ Top/CD1	1/2/3/206/231	2012-06-06 09:54:58.365479	2012-06-06 09:54:58.365479
233	/srv/mp3/Hothouse Flowers/Born	1/2/3/171	2012-06-06 09:54:59.199519	2012-06-06 09:54:59.199519
234	/srv/mp3/Sinead O'Connor/1992 - Am I Not Your Girl	1/2/3/112	2012-06-06 09:55:03.596589	2012-06-06 09:55:03.596589
235	/srv/mp3/Randy Newman/Randy Newman - Creates Something New Under The Sun	1/2/3/213	2012-06-06 09:55:03.695483	2012-06-06 09:55:03.695483
236	/srv/mp3/Paul McCartney/1988-10-31 - Choba B CCCP	1/2/3/114	2012-06-06 09:55:06.674712	2012-06-06 09:55:06.674712
237	/srv/mp3/Various/Top 1000 Pop Hits of the 80s	1/2/3/59	2012-06-06 09:55:09.091306	2012-06-06 09:55:09.091306
238	/srv/mp3/Beck	1/2/3	2012-06-06 09:55:09.153862	2012-06-06 09:55:09.153862
239	/srv/mp3/Beck/Loser (EP) (1994)	1/2/3/238	2012-06-06 09:55:09.698521	2012-06-06 09:55:09.698521
240	/srv/mp3/Curtis Mayfield	1/2/3	2012-06-06 09:55:11.267043	2012-06-06 09:55:11.267043
241	/srv/mp3/Curtis Mayfield/The Very Best Of Curtis Mayfield	1/2/3/240	2012-06-06 09:55:11.672157	2012-06-06 09:55:11.672157
242	/srv/mp3/Louis Armstrong/Greatest Hits	1/2/3/185	2012-06-06 09:55:14.716162	2012-06-06 09:55:14.716162
243	/srv/mp3/Herbie Hancock	1/2/3	2012-06-06 09:55:15.294226	2012-06-06 09:55:15.294226
244	/srv/mp3/Emocapella	1/2/3	2012-06-06 09:55:15.576118	2012-06-06 09:55:15.576118
245	/srv/mp3/Herbie Hancock/1964 - Herbie Hancock - Empyrean Isles	1/2/3/243	2012-06-06 09:55:15.650827	2012-06-06 09:55:15.650827
246	/srv/mp3/Emocapella/I'm Sorry	1/2/3/244	2012-06-06 09:55:15.994809	2012-06-06 09:55:15.994809
247	/srv/mp3/Duran Duran/Albums/(1982) Rio	1/2/3/122/165	2012-06-06 09:55:16.412102	2012-06-06 09:55:16.412102
248	/srv/mp3/Duran Duran/Albums/(1982) Rio/Tracks	1/2/3/122/165/247	2012-06-06 09:55:16.424425	2012-06-06 09:55:16.424425
249	/srv/mp3/Big Star	1/2/3	2012-06-06 09:55:17.253287	2012-06-06 09:55:17.253287
250	/srv/mp3/Big Star/Big Star's Biggest	1/2/3/249	2012-06-06 09:55:17.502024	2012-06-06 09:55:17.502024
251	/srv/mp3/U2/U2 - War - 1983	1/2/3/63	2012-06-06 09:55:18.417129	2012-06-06 09:55:18.417129
252	/srv/mp3/Randy Newman/Randy Newman - Born Again	1/2/3/213	2012-06-06 09:55:18.869627	2012-06-06 09:55:18.869627
253	/srv/mp3/Neil Young/Harvest (1972)	1/2/3/67	2012-06-06 09:55:19.461165	2012-06-06 09:55:19.461165
254	/srv/mp3/ZZ Top/The Beginning of ZZ Top/CD2	1/2/3/206/231	2012-06-06 09:55:23.019413	2012-06-06 09:55:23.019413
255	/srv/mp3/Sinead O'Connor/2003 - She Who Dwells in the Secret Place of the Most High Shall Abide under the Shadow of the Almighty	1/2/3/112	2012-06-06 09:55:23.89787	2012-06-06 09:55:23.89787
256	/srv/mp3/Sinead O'Connor/2003 - She Who Dwells in the Secret Place of the Most High Shall Abide under the Shadow of the Almighty/CD1	1/2/3/112/255	2012-06-06 09:55:23.899583	2012-06-06 09:55:23.899583
257	/srv/mp3/Frank Zappa	1/2/3	2012-06-06 09:55:24.075196	2012-06-06 09:55:24.075196
258	/srv/mp3/Frank Zappa/1969 - Burnt Weeny Sandwich	1/2/3/257	2012-06-06 09:55:24.531678	2012-06-06 09:55:24.531678
259	/srv/mp3/Herbie Hancock/1980 - Herbie Hancock - Mr. Hands	1/2/3/243	2012-06-06 09:55:26.296195	2012-06-06 09:55:26.296195
260	/srv/mp3/Paul McCartney/2007-06-04 - Memory Almost Full	1/2/3/114	2012-06-06 09:55:26.609676	2012-06-06 09:55:26.609676
263	/srv/mp3/Duran Duran/Albums/(1983) Seven and The Ragged Tiger	1/2/3/122/165	2012-06-06 09:55:28.196144	2012-06-06 09:55:28.196144
264	/srv/mp3/Duran Duran/Albums/(1983) Seven and The Ragged Tiger/Tracks	1/2/3/122/165/263	2012-06-06 09:55:28.198115	2012-06-06 09:55:28.198115
269	/srv/mp3/Randy Newman/Randy Newman - Bad Love	1/2/3/213	2012-06-06 09:55:30.711792	2012-06-06 09:55:30.711792
270	/srv/mp3/U2/U2 - October - 1981	1/2/3/63	2012-06-06 09:55:33.010693	2012-06-06 09:55:33.010693
271	/srv/mp3/Electric Light Orchestra	1/2/3	2012-06-06 09:55:33.668468	2012-06-06 09:55:33.668468
272	/srv/mp3/Electric Light Orchestra/Face the Music (1975)	1/2/3/271	2012-06-06 09:55:34.196176	2012-06-06 09:55:34.196176
273	/srv/mp3/Herbie Hancock/1968 - Herbie Hancock - Speak Like A Child	1/2/3/243	2012-06-06 09:55:34.516327	2012-06-06 09:55:34.516327
274	/srv/mp3/Cat Stevens	1/2/3	2012-06-06 09:55:35.575723	2012-06-06 09:55:35.575723
275	/srv/mp3/Cat Stevens/Izitso	1/2/3/274	2012-06-06 09:55:36.4616	2012-06-06 09:55:36.4616
276	/srv/mp3/Duran Duran/Albums/(2000) Pop Trash	1/2/3/122/165	2012-06-06 09:55:38.309631	2012-06-06 09:55:38.309631
277	/srv/mp3/Duran Duran/Albums/(2000) Pop Trash/Tracks	1/2/3/122/165/276	2012-06-06 09:55:38.311336	2012-06-06 09:55:38.311336
278	/srv/mp3/Love Sculpture	1/2/3	2012-06-06 09:55:38.787508	2012-06-06 09:55:38.787508
279	/srv/mp3/Love Sculpture/Blues Helping 1968	1/2/3/278	2012-06-06 09:55:39.12884	2012-06-06 09:55:39.12884
280	/srv/mp3/ZZ Top/Tejas	1/2/3/206	2012-06-06 09:55:39.605444	2012-06-06 09:55:39.605444
281	/srv/mp3/Frank Zappa/1970 - Chunga's Revenge	1/2/3/257	2012-06-06 09:55:39.733715	2012-06-06 09:55:39.733715
282	/srv/mp3/Neil Young/Live In Amsterdam	1/2/3/67	2012-06-06 09:55:40.550583	2012-06-06 09:55:40.550583
284	/srv/mp3/Herbie Hancock/1974 - Herbie Hancock - Death Wish	1/2/3/243	2012-06-06 09:55:43.812539	2012-06-06 09:55:43.812539
285	/srv/mp3/Randy Newman/Randy Newman - Faust,	1/2/3/213	2012-06-06 09:55:43.818765	2012-06-06 09:55:43.818765
286	/srv/mp3/Bob Marley	1/2/3	2012-06-06 09:55:47.19708	2012-06-06 09:55:47.19708
287	/srv/mp3/U2/U2 - Boy - 1980	1/2/3/63	2012-06-06 09:55:47.320481	2012-06-06 09:55:47.320481
288	/srv/mp3/Bob Marley/Legend	1/2/3/286	2012-06-06 09:55:47.597809	2012-06-06 09:55:47.597809
289	/srv/mp3/Paul McCartney/1976-12-10 - Wings Over America	1/2/3/114	2012-06-06 09:55:47.778635	2012-06-06 09:55:47.778635
290	/srv/mp3/Sinead O'Connor/2003 - She Who Dwells in the Secret Place of the Most High Shall Abide under the Shadow of the Almighty/CD2	1/2/3/112/255	2012-06-06 09:55:48.337926	2012-06-06 09:55:48.337926
292	/srv/mp3/Cat Stevens/Cat Stevens - Roadsinger  (2009) KompletlyWyred DHZ Inc Release	1/2/3/274	2012-06-06 09:55:49.140829	2012-06-06 09:55:49.140829
293	/srv/mp3/Electric Light Orchestra/All Over The World The Very Best Of ELO	1/2/3/271	2012-06-06 09:55:51.159081	2012-06-06 09:55:51.159081
294	/srv/mp3/Duran Duran/Albums/(1995) Thank You	1/2/3/122/165	2012-06-06 09:55:51.249039	2012-06-06 09:55:51.249039
295	/srv/mp3/Duran Duran/Albums/(1995) Thank You/Tracks	1/2/3/122/165/294	2012-06-06 09:55:51.250706	2012-06-06 09:55:51.250706
296	/srv/mp3/Love Sculpture/Forms And Feelings 1969	1/2/3/278	2012-06-06 09:55:53.948207	2012-06-06 09:55:53.948207
261	/srv/mp3/James Taylor/James Taylor Discography/Classic Songs (1990)	1/2/3/222/223	2012-06-06 09:55:26.75857	2012-06-06 09:55:26.75857
262	/srv/mp3/Graham Parker/Graham Parker-The Up Escalator-1980	1/2/3/52	2012-06-06 09:55:27.684396	2012-06-06 09:55:27.684396
265	/srv/mp3/Aretha Franklin	1/2/3	2012-06-06 09:55:28.21493	2012-06-06 09:55:28.21493
267	/srv/mp3/Aretha Franklin/20 Greatest Hits	1/2/3/265	2012-06-06 09:55:28.665662	2012-06-06 09:55:28.665662
283	/srv/mp3/Graham Parker/Graham Parker-Your Country-2004	1/2/3/52	2012-06-06 09:55:41.649682	2012-06-06 09:55:41.649682
268	/srv/mp3/The Blues Brothers/Briefcase Full of Blues	1/2/3/266	2012-06-06 09:55:28.754533	2012-06-06 09:55:28.754533
291	/srv/mp3/The Blues Brothers/Best Of The Blues Brothers	1/2/3/266	2012-06-06 09:55:49.038172	2012-06-06 09:55:49.038172
297	/srv/mp3/Frank Zappa/1993 - Ahead Of Their Time	1/2/3/257	2012-06-06 09:55:56.341767	2012-06-06 09:55:56.341767
298	/srv/mp3/ZZ Top/XXX	1/2/3/206	2012-06-06 09:55:56.915437	2012-06-06 09:55:56.915437
299	/srv/mp3/Herbie Hancock/1970 - Herbie Hancock - Mwandishi	1/2/3/243	2012-06-06 09:55:57.579499	2012-06-06 09:55:57.579499
300	/srv/mp3/Graham Parker/Graham Parker-Howlin' Wind-1976	1/2/3/52	2012-06-06 09:55:59.633519	2012-06-06 09:55:59.633519
301	/srv/mp3/James Taylor/James Taylor Discography/James Taylor-Greatest Hits (1976)	1/2/3/222/223	2012-06-06 09:56:00.013908	2012-06-06 09:56:00.013908
302	/srv/mp3/U2/U2 - All That You Can't Leave Behind - 2000	1/2/3/63	2012-06-06 09:56:02.098317	2012-06-06 09:56:02.098317
303	/srv/mp3/Neil Young/Freedom (1989)	1/2/3/67	2012-06-06 09:56:04.333354	2012-06-06 09:56:04.333354
304	/srv/mp3/Lional Richie & The Commodores	1/2/3	2012-06-06 09:56:04.71999	2012-06-06 09:56:04.71999
305	/srv/mp3/Herbie Hancock/2002 - Herby Hancock, Michael Breaker & Roy Hargrove - Directions in Music	1/2/3/243	2012-06-06 09:56:04.730935	2012-06-06 09:56:04.730935
306	/srv/mp3/Lional Richie & The Commodores/Lional Richie & The Commodores - The Definative Collection	1/2/3/304	2012-06-06 09:56:05.697362	2012-06-06 09:56:05.697362
307	/srv/mp3/Lional Richie & The Commodores/Lional Richie & The Commodores - The Definative Collection/CD1	1/2/3/304/306	2012-06-06 09:56:05.700317	2012-06-06 09:56:05.700317
308	/srv/mp3/Sinead O'Connor/1990 - I Do Not Want What I Haven't Got	1/2/3/112	2012-06-06 09:56:07.014545	2012-06-06 09:56:07.014545
309	/srv/mp3/Duran Duran/Albums/(1997) Meddazzaland	1/2/3/122/165	2012-06-06 09:56:07.028157	2012-06-06 09:56:07.028157
310	/srv/mp3/Duran Duran/Albums/(1997) Meddazzaland/Tracks	1/2/3/122/165/309	2012-06-06 09:56:07.029973	2012-06-06 09:56:07.029973
311	/srv/mp3/Randy Newman/Randy Newman - Trouble In Paradise	1/2/3/213	2012-06-06 09:56:09.068071	2012-06-06 09:56:09.068071
312	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)	1/2/3/286	2012-06-06 09:56:12.183965	2012-06-06 09:56:12.183965
313	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1978 - Babylon By Bus	1/2/3/286/312	2012-06-06 09:56:12.192313	2012-06-06 09:56:12.192313
314	/srv/mp3/Cat Stevens/Catch Bull At Four	1/2/3/274	2012-06-06 09:56:12.208075	2012-06-06 09:56:12.208075
315	/srv/mp3/The Carpenters	1/2/3	2012-06-06 09:56:25.683079	2012-06-06 09:56:25.683079
316	/srv/mp3/The Carpenters/Gold-Greatest Hits	1/2/3/315	2012-06-06 09:56:26.23216	2012-06-06 09:56:26.23216
317	/srv/mp3/ZZ Top/Rio Grande Mud	1/2/3/206	2012-06-06 09:56:31.780933	2012-06-06 09:56:31.780933
318	/srv/mp3/U2/U2 - The Unforgettable Fire - 1984	1/2/3/63	2012-06-06 09:56:33.620917	2012-06-06 09:56:33.620917
319	/srv/mp3/Graham Parker/Graham Parker-Struck By Lightning-2003	1/2/3/52	2012-06-06 09:56:36.407211	2012-06-06 09:56:36.407211
320	/srv/mp3/Herbie Hancock/2001 - Herbie Hancock - Future 2 Future	1/2/3/243	2012-06-06 09:56:37.964022	2012-06-06 09:56:37.964022
321	/srv/mp3/America	1/2/3	2012-06-06 09:56:39.237977	2012-06-06 09:56:39.237977
322	/srv/mp3/Randy Newman/Randy Newman - Good Old Boys	1/2/3/213	2012-06-06 09:56:39.896905	2012-06-06 09:56:39.896905
323	/srv/mp3/America/America's Greatest Hits (History)	1/2/3/321	2012-06-06 09:56:40.238485	2012-06-06 09:56:40.238485
324	/srv/mp3/America/America's Greatest Hits (History)/DISC	1/2/3/321/323	2012-06-06 09:56:40.244794	2012-06-06 09:56:40.244794
325	/srv/mp3/Soundtrack	1/2/3	2012-06-06 09:56:40.525328	2012-06-06 09:56:40.525328
326	/srv/mp3/Soundtrack/Kill Bill Vol.1 SoundTrack	1/2/3/325	2012-06-06 09:56:40.983298	2012-06-06 09:56:40.983298
327	/srv/mp3/Duran Duran/Live	1/2/3/122	2012-06-06 09:56:42.213257	2012-06-06 09:56:42.213257
328	/srv/mp3/Duran Duran/Live/(1984) Arena	1/2/3/122/327	2012-06-06 09:56:42.214748	2012-06-06 09:56:42.214748
329	/srv/mp3/Duran Duran/Live/(1984) Arena/Tracks	1/2/3/122/327/328	2012-06-06 09:56:42.215981	2012-06-06 09:56:42.215981
330	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1978 - One Love Peace Concert	1/2/3/286/312	2012-06-06 09:56:45.497439	2012-06-06 09:56:45.497439
331	/srv/mp3/James Taylor/James Taylor Discography/Live (1993)	1/2/3/222/223	2012-06-06 09:56:46.352826	2012-06-06 09:56:46.352826
332	/srv/mp3/Elton John	1/2/3	2012-06-06 09:56:49.714855	2012-06-06 09:56:49.714855
333	/srv/mp3/Lional Richie & The Commodores/Lional Richie & The Commodores - The Definative Collection/CD2	1/2/3/304/306	2012-06-06 09:56:50.252269	2012-06-06 09:56:50.252269
334	/srv/mp3/Elton John/11-17-70	1/2/3/332	2012-06-06 09:56:50.335841	2012-06-06 09:56:50.335841
335	/srv/mp3/Cat Stevens/Foreigner	1/2/3/274	2012-06-06 09:56:50.346639	2012-06-06 09:56:50.346639
336	/srv/mp3/Neil Young/Neil Young (1969)	1/2/3/67	2012-06-06 09:56:50.506348	2012-06-06 09:56:50.506348
337	/srv/mp3/Paul McCartney/1986-09-01 - Press To Play	1/2/3/114	2012-06-06 09:56:51.167936	2012-06-06 09:56:51.167936
338	/srv/mp3/U2/U2 - Best of 1980-1990	1/2/3/63	2012-06-06 09:56:54.764003	2012-06-06 09:56:54.764003
339	/srv/mp3/U2/U2 - Best of 1980-1990/Best of 1980-1990B-Sides	1/2/3/63/338	2012-06-06 09:56:54.765659	2012-06-06 09:56:54.765659
340	/srv/mp3/Frank Zappa/1971 - 200 Motels	1/2/3/257	2012-06-06 09:57:03.092457	2012-06-06 09:57:03.092457
341	/srv/mp3/Frank Zappa/1971 - 200 Motels/Disc 2	1/2/3/257/340	2012-06-06 09:57:03.096824	2012-06-06 09:57:03.096824
342	/srv/mp3/ZZ Top/the best of zz top	1/2/3/206	2012-06-06 09:57:03.645372	2012-06-06 09:57:03.645372
343	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1975 - Live At The Lyceum	1/2/3/286/312	2012-06-06 09:57:07.348205	2012-06-06 09:57:07.348205
344	/srv/mp3/Diana Krall	1/2/3	2012-06-06 09:57:08.697953	2012-06-06 09:57:08.697953
345	/srv/mp3/Diana Krall/All for you - A Dedication to The Nat King Cole Trio	1/2/3/344	2012-06-06 09:57:09.149786	2012-06-06 09:57:09.149786
346	/srv/mp3/Cat Stevens/Saturnight	1/2/3/274	2012-06-06 09:57:09.279435	2012-06-06 09:57:09.279435
347	/srv/mp3/Randy Newman/Randy Newman - Little Criminals	1/2/3/213	2012-06-06 09:57:10.553978	2012-06-06 09:57:10.553978
348	/srv/mp3/Herbie Hancock/1974 - Herbie Hancock - Dedication	1/2/3/243	2012-06-06 09:57:10.873244	2012-06-06 09:57:10.873244
349	/srv/mp3/Graham Parker/Graham Parker-The Mona Lisa's Sister-1988	1/2/3/52	2012-06-06 09:57:13.364375	2012-06-06 09:57:13.364375
350	/srv/mp3/Elton John/Don't Shoot Me I'm Only the Piano Player	1/2/3/332	2012-06-06 09:57:15.577267	2012-06-06 09:57:15.577267
351	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1995 - Natural Mystic	1/2/3/286/312	2012-06-06 09:57:18.176414	2012-06-06 09:57:18.176414
352	/srv/mp3/Herbie Hancock/1995 - Herbie Hancock - Jammin' With Herbie	1/2/3/243	2012-06-06 09:57:21.330316	2012-06-06 09:57:21.330316
353	/srv/mp3/Neil Young/Comes A Time (1978)	1/2/3/67	2012-06-06 09:57:21.419223	2012-06-06 09:57:21.419223
354	/srv/mp3/U2/U2 - Best of 1980-1990/Best of 1980-1990	1/2/3/63/338	2012-06-06 09:57:23.867258	2012-06-06 09:57:23.867258
355	/srv/mp3/Paul McCartney/1990-11-05 - Tripping The Live Fantastic	1/2/3/114	2012-06-06 09:57:24.500253	2012-06-06 09:57:24.500253
356	/srv/mp3/Cat Stevens/Tea for the Tillerman	1/2/3/274	2012-06-06 09:57:25.93753	2012-06-06 09:57:25.93753
357	/srv/mp3/Randy Newman/Randy Newman - 12 Songs	1/2/3/213	2012-06-06 09:57:26.267451	2012-06-06 09:57:26.267451
358	/srv/mp3/Laroo	1/2/3	2012-06-06 09:57:32.341591	2012-06-06 09:57:32.341591
359	/srv/mp3/ZZ Top/Best of	1/2/3/206	2012-06-06 09:57:32.642253	2012-06-06 09:57:32.642253
360	/srv/mp3/Laroo/Laroo-The_Corporation-2008	1/2/3/358	2012-06-06 09:57:32.739953	2012-06-06 09:57:32.739953
361	/srv/mp3/Graham Parker/Graham Parker-Live-Rainbow Music Hall-1979	1/2/3/52	2012-06-06 09:57:33.522042	2012-06-06 09:57:33.522042
362	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1978 - Kaya	1/2/3/286/312	2012-06-06 09:57:35.798419	2012-06-06 09:57:35.798419
363	/srv/mp3/Herbie Hancock/1978 - Herbie Hancock - The Piano	1/2/3/243	2012-06-06 09:57:37.106533	2012-06-06 09:57:37.106533
364	/srv/mp3/Diana Krall/The Look Of Love	1/2/3/344	2012-06-06 09:57:37.781395	2012-06-06 09:57:37.781395
377	/srv/mp3/Diana Krall/Stepping Out - The Early Recordings	1/2/3/344	2012-06-06 09:57:54.305064	2012-06-06 09:57:54.305064
365	/srv/mp3/Elton John/[1974] Caribu	1/2/3/332	2012-06-06 09:57:38.274855	2012-06-06 09:57:38.274855
366	/srv/mp3/Randy Newman/Randy Newman - Land Of Dreams	1/2/3/213	2012-06-06 09:57:38.482152	2012-06-06 09:57:38.482152
376	/srv/mp3/Randy Newman/Randy Newman - Sail Away	1/2/3/213	2012-06-06 09:57:53.141875	2012-06-06 09:57:53.141875
367	/srv/mp3/Frank Zappa/1971 - 200 Motels/Disc 1	1/2/3/257/340	2012-06-06 09:57:39.054916	2012-06-06 09:57:39.054916
368	/srv/mp3/U2/U2 - Achtung Baby - 1991	1/2/3/63	2012-06-06 09:57:39.542961	2012-06-06 09:57:39.542961
369	/srv/mp3/Neil Young/Year Of The Horse (With Crazy Horse) (1997)	1/2/3/67	2012-06-06 09:57:45.29	2012-06-06 09:57:45.29
370	/srv/mp3/Cat Stevens/Back To Earth	1/2/3/274	2012-06-06 09:57:46.251388	2012-06-06 09:57:46.251388
371	/srv/mp3/Soundtrack/Kill Bill Vol.2 Soundtrack	1/2/3/325	2012-06-06 09:57:49.008047	2012-06-06 09:57:49.008047
372	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1979 - Survival	1/2/3/286/312	2012-06-06 09:57:49.167746	2012-06-06 09:57:49.167746
373	/srv/mp3/Tom Waits	1/2/3	2012-06-06 09:57:51.058023	2012-06-06 09:57:51.058023
375	/srv/mp3/Tom Waits/1983 - Swordfishtrombones	1/2/3/373	2012-06-06 09:57:51.775644	2012-06-06 09:57:51.775644
374	/srv/mp3/ZZ Top/Deguello	1/2/3/206	2012-06-06 09:57:51.697912	2012-06-06 09:57:51.697912
378	/srv/mp3/Graham Parker/Graham Parker-Heat Treatment	1/2/3/52	2012-06-06 09:57:58.686706	2012-06-06 09:57:58.686706
379	/srv/mp3/U2/U2 - Rattle and Hum - 1988	1/2/3/63	2012-06-06 09:57:59.143733	2012-06-06 09:57:59.143733
380	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1999 - A Rebel's Dream	1/2/3/286/312	2012-06-06 09:58:00.779043	2012-06-06 09:58:00.779043
381	/srv/mp3/Cat Stevens/Numbers	1/2/3/274	2012-06-06 09:58:04.58375	2012-06-06 09:58:04.58375
382	/srv/mp3/Neil Young/Sleeps With Angels (1994)	1/2/3/67	2012-06-06 09:58:04.646628	2012-06-06 09:58:04.646628
383	/srv/mp3/Herbie Hancock/1976 - Herbie Hancock - Secrets	1/2/3/243	2012-06-06 09:58:05.092702	2012-06-06 09:58:05.092702
384	/srv/mp3/Elton John/Greatest Hits 1976 - 1986	1/2/3/332	2012-06-06 09:58:06.819409	2012-06-06 09:58:06.819409
385	/srv/mp3/James Taylor/James Taylor Discography/Dad Loves His Work (1981)	1/2/3/222/223	2012-06-06 09:58:07.573089	2012-06-06 09:58:07.573089
386	/srv/mp3/Les Paul	1/2/3	2012-06-06 09:58:08.054178	2012-06-06 09:58:08.054178
387	/srv/mp3/Les Paul/The Best of Les Paul (20th Century Masters)	1/2/3/386	2012-06-06 09:58:08.793421	2012-06-06 09:58:08.793421
388	/srv/mp3/Robbie Robertson	1/2/3	2012-06-06 09:58:10.191475	2012-06-06 09:58:10.191475
389	/srv/mp3/Robbie Robertson/robbie robertson-robibe robertson(darkside_rg)	1/2/3/388	2012-06-06 09:58:10.409897	2012-06-06 09:58:10.409897
390	/srv/mp3/Paul McCartney/1989-06-05 - Flowers In The Dirt	1/2/3/114	2012-06-06 09:58:10.706982	2012-06-06 09:58:10.706982
391	/srv/mp3/Frank Zappa/1998 - Cheap Thrills	1/2/3/257	2012-06-06 09:58:11.169976	2012-06-06 09:58:11.169976
392	/srv/mp3/ZZ Top/Rhythmeen	1/2/3/206	2012-06-06 09:58:11.800873	2012-06-06 09:58:11.800873
393	/srv/mp3/Soul Coughing	1/2/3	2012-06-06 09:58:12.920859	2012-06-06 09:58:12.920859
394	/srv/mp3/Soul Coughing/Oslo	1/2/3/393	2012-06-06 09:58:13.127363	2012-06-06 09:58:13.127363
395	/srv/mp3/Diana Krall/Live In Paris	1/2/3/344	2012-06-06 09:58:13.310823	2012-06-06 09:58:13.310823
396	/srv/mp3/Herbie Hancock/1983 - Herbie Hancock - Future Shock	1/2/3/243	2012-06-06 09:58:15.752305	2012-06-06 09:58:15.752305
397	/srv/mp3/Tom Waits/1988 - Big Time	1/2/3/373	2012-06-06 09:58:15.813285	2012-06-06 09:58:15.813285
398	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1972 - Best Of The Wailers	1/2/3/286/312	2012-06-06 09:58:16.601404	2012-06-06 09:58:16.601404
399	/srv/mp3/Suzanne Vega	1/2/3	2012-06-06 09:58:18.752626	2012-06-06 09:58:18.752626
400	/srv/mp3/Cat Stevens/Mona Bone Jakon	1/2/3/274	2012-06-06 09:58:18.938924	2012-06-06 09:58:18.938924
401	/srv/mp3/Suzanne Vega/Retrospective The Best Of	1/2/3/399	2012-06-06 09:58:19.172362	2012-06-06 09:58:19.172362
402	/srv/mp3/Graham Parker/Graham Parker-Vandelay Tapes-2003	1/2/3/52	2012-06-06 09:58:24.439925	2012-06-06 09:58:24.439925
403	/srv/mp3/Royksopp	1/2/3	2012-06-06 09:58:24.462619	2012-06-06 09:58:24.462619
404	/srv/mp3/Royksopp/Melody A.M	1/2/3/403	2012-06-06 09:58:24.901415	2012-06-06 09:58:24.901415
405	/srv/mp3/Elton John/[1997] The Big Picture	1/2/3/332	2012-06-06 09:58:27.232157	2012-06-06 09:58:27.232157
406	/srv/mp3/Herbie Hancock/1972 - Herbie Hancock - Sextant	1/2/3/243	2012-06-06 09:58:27.646812	2012-06-06 09:58:27.646812
407	/srv/mp3/Les Paul/The Jazz Collector Edition Les Paul Trio	1/2/3/386	2012-06-06 09:58:28.2837	2012-06-06 09:58:28.2837
408	/srv/mp3/Neil Young/Harvest Moon (1992)	1/2/3/67	2012-06-06 09:58:29.451578	2012-06-06 09:58:29.451578
409	/srv/mp3/James Taylor/James Taylor Discography/October Road (Bonus Disk)	1/2/3/222/223	2012-06-06 09:58:29.807329	2012-06-06 09:58:29.807329
410	/srv/mp3/James Taylor/James Taylor Discography/Flag (1979)	1/2/3/222/223	2012-06-06 09:58:31.789285	2012-06-06 09:58:31.789285
411	/srv/mp3/Frank Zappa/1983 - Baby Snakes	1/2/3/257	2012-06-06 09:58:32.205338	2012-06-06 09:58:32.205338
412	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1983 - Confrontation	1/2/3/286/312	2012-06-06 09:58:32.225517	2012-06-06 09:58:32.225517
413	/srv/mp3/Herbie Hancock/1982 - Herbie Hancock - Lite me up	1/2/3/243	2012-06-06 09:58:33.629931	2012-06-06 09:58:33.629931
414	/srv/mp3/ZZ Top/Recycler	1/2/3/206	2012-06-06 09:58:34.220807	2012-06-06 09:58:34.220807
415	/srv/mp3/Paul McCartney/1971-05-28 - Ram	1/2/3/114	2012-06-06 09:58:34.382614	2012-06-06 09:58:34.382614
416	/srv/mp3/Cat Stevens/Matthew and Son	1/2/3/274	2012-06-06 09:58:35.384562	2012-06-06 09:58:35.384562
417	/srv/mp3/Diana Krall/The Girl In The Other Room	1/2/3/344	2012-06-06 09:58:36.880374	2012-06-06 09:58:36.880374
418	/srv/mp3/Tom Waits/2004 - Real Gone	1/2/3/373	2012-06-06 09:58:38.451107	2012-06-06 09:58:38.451107
419	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1972 - Satisfy My Soul	1/2/3/286/312	2012-06-06 09:58:42.366775	2012-06-06 09:58:42.366775
420	/srv/mp3/Frank Zappa/1967 - Absolutely Free	1/2/3/257	2012-06-06 09:58:43.187187	2012-06-06 09:58:43.187187
421	/srv/mp3/Elton John/Empty Sky	1/2/3/332	2012-06-06 09:58:43.51998	2012-06-06 09:58:43.51998
422	/srv/mp3/Herbie Hancock/2005 - Herbie Hancock - Possibilities	1/2/3/243	2012-06-06 09:58:43.714848	2012-06-06 09:58:43.714848
423	/srv/mp3/Royksopp/Royksopp-The Understanding(Darkside_RG)	1/2/3/403	2012-06-06 09:58:45.186305	2012-06-06 09:58:45.186305
424	/srv/mp3/Glen Campbell	1/2/3	2012-06-06 09:58:47.494594	2012-06-06 09:58:47.494594
425	/srv/mp3/Neil Young/Tonight's The Night (1975)	1/2/3/67	2012-06-06 09:58:47.837021	2012-06-06 09:58:47.837021
426	/srv/mp3/Glen Campbell/The Very Best Of Glen Campbell	1/2/3/424	2012-06-06 09:58:47.93127	2012-06-06 09:58:47.93127
427	/srv/mp3/ZZ Top/Greatest Hits	1/2/3/206	2012-06-06 09:58:50.892689	2012-06-06 09:58:50.892689
428	/srv/mp3/Diana Krall/Only Trust Your Heart	1/2/3/344	2012-06-06 09:58:54.887406	2012-06-06 09:58:54.887406
429	/srv/mp3/James Taylor/James Taylor Discography/The Best of James Taylor (2003)	1/2/3/222/223	2012-06-06 09:58:56.394206	2012-06-06 09:58:56.394206
430	/srv/mp3/Paul McCartney/1991-10-11 - Liverpool Oratorio	1/2/3/114	2012-06-06 09:58:57.316213	2012-06-06 09:58:57.316213
431	/srv/mp3/Tom Waits/1980 - Heartattack And Vine	1/2/3/373	2012-06-06 09:59:00.371334	2012-06-06 09:59:00.371334
432	/srv/mp3/Herbie Hancock/1963 - Herbie Hancock - Inventions And Dimensions	1/2/3/243	2012-06-06 09:59:01.832318	2012-06-06 09:59:01.832318
433	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1985 - The Final Concert 09-23-80	1/2/3/286/312	2012-06-06 09:59:03.021987	2012-06-06 09:59:03.021987
434	/srv/mp3/Cat Stevens/Teaser and the Firecat	1/2/3/274	2012-06-06 09:59:03.223609	2012-06-06 09:59:03.223609
435	/srv/mp3/Ramones	1/2/3	2012-06-06 09:59:03.36566	2012-06-06 09:59:03.36566
436	/srv/mp3/Ramones/Greatest Hits Live	1/2/3/435	2012-06-06 09:59:03.585638	2012-06-06 09:59:03.585638
437	/srv/mp3/Looking Glass	1/2/3	2012-06-06 09:59:04.873864	2012-06-06 09:59:04.873864
438	/srv/mp3/Looking Glass/Looking Glass	1/2/3/437	2012-06-06 09:59:05.290488	2012-06-06 09:59:05.290488
439	/srv/mp3/Frank Zappa/1988 - Broadway The Hard Way	1/2/3/257	2012-06-06 09:59:05.529311	2012-06-06 09:59:05.529311
440	/srv/mp3/Suzanne Vega/Retrospective The Best Of/Disc 2	1/2/3/399/401	2012-06-06 09:59:06.380528	2012-06-06 09:59:06.380528
441	/srv/mp3/Elton John/Goodbye Yellow Brick Road	1/2/3/332	2012-06-06 09:59:06.38409	2012-06-06 09:59:06.38409
442	/srv/mp3/Elton John/Goodbye Yellow Brick Road/Cd1	1/2/3/332/441	2012-06-06 09:59:06.385923	2012-06-06 09:59:06.385923
443	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1999 - Chant Down Babylon	1/2/3/286/312	2012-06-06 09:59:07.409577	2012-06-06 09:59:07.409577
444	/srv/mp3/Suzanne Vega/Retrospective The Best Of/Disc 1	1/2/3/399/401	2012-06-06 09:59:08.184517	2012-06-06 09:59:08.184517
445	/srv/mp3/Green Day	1/2/3	2012-06-06 09:59:08.330454	2012-06-06 09:59:08.330454
446	/srv/mp3/Herbie Hancock/1969 - Herbie Hancock - Fat Albert Rotunda	1/2/3/243	2012-06-06 09:59:08.641679	2012-06-06 09:59:08.641679
447	/srv/mp3/Green Day/Kerplunk! (1991)	1/2/3/445	2012-06-06 09:59:08.699184	2012-06-06 09:59:08.699184
448	/srv/mp3/Diana Krall/Love Scenes	1/2/3/344	2012-06-06 09:59:09.444295	2012-06-06 09:59:09.444295
467	/srv/mp3/Diana Krall/When I Look In Your Eyes	1/2/3/344	2012-06-06 09:59:31.22497	2012-06-06 09:59:31.22497
482	/srv/mp3/Diana Krall/Diana Krall - Collaborations  (2002)	1/2/3/344	2012-06-06 09:59:48.56245	2012-06-06 09:59:48.56245
449	/srv/mp3/Santana	1/2/3	2012-06-06 09:59:09.594552	2012-06-06 09:59:09.594552
450	/srv/mp3/Santana/very best of	1/2/3/449	2012-06-06 09:59:09.968059	2012-06-06 09:59:09.968059
469	/srv/mp3/Sarah Vaughan	1/2/3	2012-06-06 09:59:34.079823	2012-06-06 09:59:34.079823
470	/srv/mp3/Sarah Vaughan/The Essential Sarah Vaughan	1/2/3/469	2012-06-06 09:59:34.31984	2012-06-06 09:59:34.31984
451	/srv/mp3/Neil Young/Trans (1983)	1/2/3/67	2012-06-06 09:59:10.600205	2012-06-06 09:59:10.600205
460	/srv/mp3/Neil Young/Everybody Knows This Is Nowhere (With Crazy Horse) (1969)	1/2/3/67	2012-06-06 09:59:27.58501	2012-06-06 09:59:27.58501
472	/srv/mp3/Neil Young/Decade (1977)	1/2/3/67	2012-06-06 09:59:36.853088	2012-06-06 09:59:36.853088
473	/srv/mp3/Neil Young/Decade (1977)/Disc #2	1/2/3/67/472	2012-06-06 09:59:36.855387	2012-06-06 09:59:36.855387
452	/srv/mp3/ZZ Top/Eliminator	1/2/3/206	2012-06-06 09:59:11.163824	2012-06-06 09:59:11.163824
464	/srv/mp3/ZZ Top/Afterburner	1/2/3/206	2012-06-06 09:59:29.922444	2012-06-06 09:59:29.922444
477	/srv/mp3/ZZ Top/El loco	1/2/3/206	2012-06-06 09:59:45.0121	2012-06-06 09:59:45.0121
453	/srv/mp3/Tom Waits/1987 - Franks Wild Years	1/2/3/373	2012-06-06 09:59:11.824255	2012-06-06 09:59:11.824255
475	/srv/mp3/Tom Waits/1977 - Foreign Affairs	1/2/3/373	2012-06-06 09:59:41.042912	2012-06-06 09:59:41.042912
454	/srv/mp3/Elton John/Goodbye Yellow Brick Road/Cd2	1/2/3/332/441	2012-06-06 09:59:16.019709	2012-06-06 09:59:16.019709
458	/srv/mp3/Elton John/[1976] Blue Moves	1/2/3/332	2012-06-06 09:59:26.307029	2012-06-06 09:59:26.307029
479	/srv/mp3/Elton John/Elton John	1/2/3/332	2012-06-06 09:59:46.392406	2012-06-06 09:59:46.392406
455	/srv/mp3/Cat Stevens/Live	1/2/3/274	2012-06-06 09:59:18.323518	2012-06-06 09:59:18.323518
465	/srv/mp3/Cat Stevens/New Masters	1/2/3/274	2012-06-06 09:59:30.072386	2012-06-06 09:59:30.072386
478	/srv/mp3/Cat Stevens/Buddha And The Chocolate Box	1/2/3/274	2012-06-06 09:59:45.7703	2012-06-06 09:59:45.7703
456	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1977 - Exodus	1/2/3/286/312	2012-06-06 09:59:20.932759	2012-06-06 09:59:20.932759
468	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1973 - Rock To The Rock	1/2/3/286/312	2012-06-06 09:59:31.395662	2012-06-06 09:59:31.395662
481	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1974 - Natty Dread	1/2/3/286/312	2012-06-06 09:59:47.37759	2012-06-06 09:59:47.37759
457	/srv/mp3/Herbie Hancock/1976 - Herbie Hancock - Man Child	1/2/3/243	2012-06-06 09:59:21.514419	2012-06-06 09:59:21.514419
463	/srv/mp3/Herbie Hancock/1977 - Herbie Hancock - VSOP The Quintet	1/2/3/243	2012-06-06 09:59:29.003827	2012-06-06 09:59:29.003827
474	/srv/mp3/Herbie Hancock/1962 - Herbie Hancock - Takin' Off	1/2/3/243	2012-06-06 09:59:40.40393	2012-06-06 09:59:40.40393
484	/srv/mp3/Herbie Hancock/1977 - Herbie Hancock - The Herbie Hancock Trio	1/2/3/243	2012-06-06 09:59:51.814951	2012-06-06 09:59:51.814951
459	/srv/mp3/Roger Miller	1/2/3	2012-06-06 09:59:26.779574	2012-06-06 09:59:26.779574
461	/srv/mp3/Roger Miller/Roger Miller - King of the Road [BFR](1990)	1/2/3/459	2012-06-06 09:59:27.732883	2012-06-06 09:59:27.732883
462	/srv/mp3/Frank Zappa/1974 - Apostrophe	1/2/3/257	2012-06-06 09:59:28.590107	2012-06-06 09:59:28.590107
476	/srv/mp3/Frank Zappa/1975 - Bongo Fury	1/2/3/257	2012-06-06 09:59:41.557833	2012-06-06 09:59:41.557833
466	/srv/mp3/Green Day/Insomniac (1994)	1/2/3/445	2012-06-06 09:59:30.892767	2012-06-06 09:59:30.892767
483	/srv/mp3/Green Day/International Superhits! (2001)	1/2/3/445	2012-06-06 09:59:50.020748	2012-06-06 09:59:50.020748
471	/srv/mp3/James Taylor/James Taylor Discography/Mud Slide Slim and the Blue Horizon (1971)	1/2/3/222/223	2012-06-06 09:59:35.543505	2012-06-06 09:59:35.543505
480	/srv/mp3/Paul McCartney/2002-11-26 - Back In The U.S	1/2/3/114	2012-06-06 09:59:46.498203	2012-06-06 09:59:46.498203
485	/srv/mp3/Tom Waits/1992 - Bone Machine	1/2/3/373	2012-06-06 09:59:55.344306	2012-06-06 09:59:55.344306
486	/srv/mp3/Floyd Cramer	1/2/3	2012-06-06 09:59:56.328845	2012-06-06 09:59:56.328845
487	/srv/mp3/Floyd Cramer/Hello Blues	1/2/3/486	2012-06-06 09:59:56.585033	2012-06-06 09:59:56.585033
488	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1975 - Live!	1/2/3/286/312	2012-06-06 09:59:57.188506	2012-06-06 09:59:57.188506
489	/srv/mp3/Chet Atkins	1/2/3	2012-06-06 09:59:57.71801	2012-06-06 09:59:57.71801
490	/srv/mp3/Chet Atkins/Guitar Legend - The RCA Years	1/2/3/489	2012-06-06 09:59:58.155487	2012-06-06 09:59:58.155487
491	/srv/mp3/Herbie Hancock/1981 - Herbie Hancock - Quartet	1/2/3/243	2012-06-06 10:00:00.337554	2012-06-06 10:00:00.337554
492	/srv/mp3/James Taylor/James Taylor Discography/Walking Man (1974)	1/2/3/222/223	2012-06-06 10:00:01.565198	2012-06-06 10:00:01.565198
493	/srv/mp3/Neil Young/Decade (1977)/Disc #1	1/2/3/67/472	2012-06-06 10:00:02.983459	2012-06-06 10:00:02.983459
494	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1976 - Live Jam 12-02-73	1/2/3/286/312	2012-06-06 10:00:03.056147	2012-06-06 10:00:03.056147
495	/srv/mp3/ZZ Top/Tres Hombres	1/2/3/206	2012-06-06 10:00:03.279801	2012-06-06 10:00:03.279801
496	/srv/mp3/Elton John/Elton John love songs	1/2/3/332	2012-06-06 10:00:05.00862	2012-06-06 10:00:05.00862
497	/srv/mp3/Squeeze	1/2/3	2012-06-06 10:00:06.884129	2012-06-06 10:00:06.884129
498	/srv/mp3/Squeeze/East Side Story	1/2/3/497	2012-06-06 10:00:07.141132	2012-06-06 10:00:07.141132
499	/srv/mp3/Roger Miller/King Of The Road	1/2/3/459	2012-06-06 10:00:12.151611	2012-06-06 10:00:12.151611
500	/srv/mp3/Diana Krall/Have Yourself A Merry Little Christmas	1/2/3/344	2012-06-06 10:00:12.563292	2012-06-06 10:00:12.563292
501	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1994 - Talking Blues	1/2/3/286/312	2012-06-06 10:00:12.750185	2012-06-06 10:00:12.750185
502	/srv/mp3/Herbie Hancock/1997 - Herbie Hancock & Wayne Shorter - 1+1	1/2/3/243	2012-06-06 10:00:12.881111	2012-06-06 10:00:12.881111
503	/srv/mp3/Tom Waits/1973 - Closing Time	1/2/3/373	2012-06-06 10:00:14.574805	2012-06-06 10:00:14.574805
504	/srv/mp3/Frank Sinatra	1/2/3	2012-06-06 10:00:15.679328	2012-06-06 10:00:15.679328
505	/srv/mp3/Green Day/Nimrod (1997)	1/2/3/445	2012-06-06 10:00:16.348842	2012-06-06 10:00:16.348842
506	/srv/mp3/Frank Sinatra/Frank Sinatra - Discography	1/2/3/504	2012-06-06 10:00:16.541526	2012-06-06 10:00:16.541526
507	/srv/mp3/ZZ Top/Live Rockpalast	1/2/3/206	2012-06-06 10:00:19.268314	2012-06-06 10:00:19.268314
508	/srv/mp3/ZZ Top/Live Rockpalast/CD1	1/2/3/206/507	2012-06-06 10:00:19.270872	2012-06-06 10:00:19.270872
509	/srv/mp3/James Taylor/James Taylor Discography/That's Why I'm Here (1985)	1/2/3/222/223	2012-06-06 10:00:20.98895	2012-06-06 10:00:20.98895
510	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1980 - Uprising	1/2/3/286/312	2012-06-06 10:00:21.284923	2012-06-06 10:00:21.284923
511	/srv/mp3/Diana Krall/Christmas Songs	1/2/3/344	2012-06-06 10:00:22.729291	2012-06-06 10:00:22.729291
512	/srv/mp3/Neil Young/Old Ways (1985)	1/2/3/67	2012-06-06 10:00:24.640367	2012-06-06 10:00:24.640367
513	/srv/mp3/Elton John/[1985] Ice On Fire	1/2/3/332	2012-06-06 10:00:25.587688	2012-06-06 10:00:25.587688
514	/srv/mp3/Herbie Hancock/1994 - Herbie Hancock - Dis is da drum	1/2/3/243	2012-06-06 10:00:26.585549	2012-06-06 10:00:26.585549
515	/srv/mp3/Paul McCartney/1982-04-26 - Tug Of War	1/2/3/114	2012-06-06 10:00:30.575676	2012-06-06 10:00:30.575676
516	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1978 - Bob Marley & Peter Tosh	1/2/3/286/312	2012-06-06 10:00:31.046046	2012-06-06 10:00:31.046046
517	/srv/mp3/Tom Waits/1985 - Rain Dogs	1/2/3/373	2012-06-06 10:00:31.603271	2012-06-06 10:00:31.603271
518	/srv/mp3/Squeeze/Squeeze - Greatest Hits	1/2/3/497	2012-06-06 10:00:32.874437	2012-06-06 10:00:32.874437
519	/srv/mp3/ZZ Top/Live Rockpalast/CD2	1/2/3/206/507	2012-06-06 10:00:35.143753	2012-06-06 10:00:35.143753
520	/srv/mp3/Elton John/[1975] Captain Fantastic	1/2/3/332	2012-06-06 10:00:38.421176	2012-06-06 10:00:38.421176
521	/srv/mp3/Green Day/Warning (2000)	1/2/3/445	2012-06-06 10:00:38.846339	2012-06-06 10:00:38.846339
522	/srv/mp3/Dave Brubeck	1/2/3	2012-06-06 10:00:39.982756	2012-06-06 10:00:39.982756
523	/srv/mp3/Dave Brubeck/Time Out	1/2/3/522	2012-06-06 10:00:40.439942	2012-06-06 10:00:40.439942
524	/srv/mp3/Neil Young/Silver (2000)	1/2/3/67	2012-06-06 10:00:44.212445	2012-06-06 10:00:44.212445
525	/srv/mp3/James Taylor/James Taylor Discography/James Taylor-Greatest Hits Volume 2 (1996)	1/2/3/222/223	2012-06-06 10:00:44.3623	2012-06-06 10:00:44.3623
526	/srv/mp3/ZZ Top/First Album	1/2/3/206	2012-06-06 10:00:46.60031	2012-06-06 10:00:46.60031
527	/srv/mp3/Herbie Hancock/2001 - Herbie Hancock - Mr Funk	1/2/3/243	2012-06-06 10:00:47.930889	2012-06-06 10:00:47.930889
528	/srv/mp3/Paul McCartney/1980-05-16 - McCartney II	1/2/3/114	2012-06-06 10:00:49.188337	2012-06-06 10:00:49.188337
529	/srv/mp3/Stevie Ray Vaughan	1/2/3	2012-06-06 10:00:50.002968	2012-06-06 10:00:50.002968
530	/srv/mp3/Roky Erickson & the Aliens	1/2/3	2012-06-06 10:00:50.109596	2012-06-06 10:00:50.109596
531	/srv/mp3/Stevie Ray Vaughan/The Slow Blues	1/2/3/529	2012-06-06 10:00:50.209324	2012-06-06 10:00:50.209324
532	/srv/mp3/Rachmaninoff	1/2/3	2012-06-06 10:00:50.494146	2012-06-06 10:00:50.494146
533	/srv/mp3/David Bowie	1/2/3	2012-06-06 10:00:50.573027	2012-06-06 10:00:50.573027
534	/srv/mp3/David Bowie/Young Americans	1/2/3/533	2012-06-06 10:00:50.964412	2012-06-06 10:00:50.964412
535	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)	1/2/3/532	2012-06-06 10:00:50.970344	2012-06-06 10:00:50.970344
536	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff	1/2/3/532/535	2012-06-06 10:00:50.972605	2012-06-06 10:00:50.972605
537	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff	1/2/3/532/535/536	2012-06-06 10:00:50.974029	2012-06-06 10:00:50.974029
538	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff/Disc 6 - Chopin and Schumann(Carnaval op.9)	1/2/3/532/535/536/537	2012-06-06 10:00:50.975667	2012-06-06 10:00:50.975667
539	/srv/mp3/Elton John/[1983] Too Low For Zero	1/2/3/332	2012-06-06 10:00:54.338325	2012-06-06 10:00:54.338325
540	/srv/mp3/Green Day/Shenanigans (2002)	1/2/3/445	2012-06-06 10:00:54.481487	2012-06-06 10:00:54.481487
541	/srv/mp3/Chopin	1/2/3	2012-06-06 10:00:55.226806	2012-06-06 10:00:55.226806
542	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur	1/2/3/541	2012-06-06 10:00:55.827271	2012-06-06 10:00:55.827271
543	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 07 Polonaises Op. 71 et al	1/2/3/541/542	2012-06-06 10:00:55.840449	2012-06-06 10:00:55.840449
544	/srv/mp3/Tom Waits/1999 - Mule Variations	1/2/3/373	2012-06-06 10:00:58.902779	2012-06-06 10:00:58.902779
545	/srv/mp3/Neil Young/Are You Passionate (2002)	1/2/3/67	2012-06-06 10:00:58.929151	2012-06-06 10:00:58.929151
546	/srv/mp3/Herbie Hancock/1963 - Herbie Hancock - My Point Of View	1/2/3/243	2012-06-06 10:01:00.551715	2012-06-06 10:01:00.551715
547	/srv/mp3/ZZ Top/Antenna	1/2/3/206	2012-06-06 10:01:01.48906	2012-06-06 10:01:01.48906
548	/srv/mp3/Simon and Garfunkel	1/2/3	2012-06-06 10:01:01.799906	2012-06-06 10:01:01.799906
549	/srv/mp3/Simon and Garfunkel/Bridge Over Troubled Water	1/2/3/548	2012-06-06 10:01:02.484843	2012-06-06 10:01:02.484843
550	/srv/mp3/David Bowie/1991 - Tin Machine II	1/2/3/533	2012-06-06 10:01:02.81934	2012-06-06 10:01:02.81934
551	/srv/mp3/Paul McCartney/1973-12-07 - Band On The Run	1/2/3/114	2012-06-06 10:01:07.175026	2012-06-06 10:01:07.175026
552	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 08 Waltzes	1/2/3/541/542	2012-06-06 10:01:07.751311	2012-06-06 10:01:07.751311
553	/srv/mp3/Elton John/[1986] Leather Jackets	1/2/3/332	2012-06-06 10:01:07.780981	2012-06-06 10:01:07.780981
554	/srv/mp3/James Taylor/James Taylor Discography/New Moon Shine (1991)	1/2/3/222/223	2012-06-06 10:01:10.543774	2012-06-06 10:01:10.543774
568	/srv/mp3/James Taylor/James Taylor Discography/James Taylor at Christmas (2006)	1/2/3/222/223	2012-06-06 10:01:32.233693	2012-06-06 10:01:32.233693
555	/srv/mp3/Gordon Lightfoot	1/2/3	2012-06-06 10:01:12.087698	2012-06-06 10:01:12.087698
556	/srv/mp3/Gordon Lightfoot/Gordon Lightfoot - The Complete Greatest Hits V2	1/2/3/555	2012-06-06 10:01:12.917269	2012-06-06 10:01:12.917269
557	/srv/mp3/Gordon Lightfoot/Gordon Lightfoot - The Complete Greatest Hits V2/The Complete Greatest Hits	1/2/3/555/556	2012-06-06 10:01:12.919017	2012-06-06 10:01:12.919017
581	/srv/mp3/Go-Go's	1/2/3	2012-06-06 10:01:46.270395	2012-06-06 10:01:46.270395
583	/srv/mp3/Go-Go's/Greatest Hits	1/2/3/581	2012-06-06 10:01:46.556269	2012-06-06 10:01:46.556269
558	/srv/mp3/Herbie Hancock/1977 - Herbie Hancock - Sunlight	1/2/3/243	2012-06-06 10:01:17.231837	2012-06-06 10:01:17.231837
566	/srv/mp3/Herbie Hancock/1988 - Herbie Hancock - Perfect Machine	1/2/3/243	2012-06-06 10:01:23.710788	2012-06-06 10:01:23.710788
573	/srv/mp3/Herbie Hancock/1985 - Herbie Hancock & Foday Musa Suso - Village Life	1/2/3/243	2012-06-06 10:01:34.87893	2012-06-06 10:01:34.87893
578	/srv/mp3/Herbie Hancock/1985 - Herbie Hancock & Foday Musa Suso - Village Life/Folder Settings	1/2/3/243/573	2012-06-06 10:01:40.53457	2012-06-06 10:01:40.53457
579	/srv/mp3/Herbie Hancock/1973 - Herbie Hancock - Head Hunters	1/2/3/243	2012-06-06 10:01:41.008209	2012-06-06 10:01:41.008209
585	/srv/mp3/Herbie Hancock/1998 - Herbie Hancock - Gershwin's World	1/2/3/243	2012-06-06 10:01:47.144094	2012-06-06 10:01:47.144094
559	/srv/mp3/Simon and Garfunkel/The Essential Simon and Garfunkel	1/2/3/548	2012-06-06 10:01:17.486009	2012-06-06 10:01:17.486009
587	/srv/mp3/Stanley Clarke	1/2/3	2012-06-06 10:01:51.895507	2012-06-06 10:01:51.895507
589	/srv/mp3/Stanley Clarke/Live At The Greek	1/2/3/587	2012-06-06 10:01:52.217986	2012-06-06 10:01:52.217986
560	/srv/mp3/Paul McCartney/1976-03-26 - Wings At The Speed Of Sound	1/2/3/114	2012-06-06 10:01:17.783131	2012-06-06 10:01:17.783131
569	/srv/mp3/Paul McCartney/1991-05-20 - Unplugged	1/2/3/114	2012-06-06 10:01:32.40163	2012-06-06 10:01:32.40163
588	/srv/mp3/Paul McCartney/1997-09-29 - Standing Stone	1/2/3/114	2012-06-06 10:01:51.910393	2012-06-06 10:01:51.910393
561	/srv/mp3/Neil Young/Live Rust (1979)	1/2/3/67	2012-06-06 10:01:18.124111	2012-06-06 10:01:18.124111
580	/srv/mp3/Neil Young/Greendale (2003)	1/2/3/67	2012-06-06 10:01:42.267692	2012-06-06 10:01:42.267692
562	/srv/mp3/ZZ Top/one foot in the blues	1/2/3/206	2012-06-06 10:01:18.707507	2012-06-06 10:01:18.707507
584	/srv/mp3/ZZ Top/Live in Stockholm '81	1/2/3/206	2012-06-06 10:01:47.096544	2012-06-06 10:01:47.096544
563	/srv/mp3/Elton John/[1978] A Single Man	1/2/3/332	2012-06-06 10:01:21.427722	2012-06-06 10:01:21.427722
570	/srv/mp3/Elton John/Candle In The Wind 1997 In Memory Of Diana	1/2/3/332	2012-06-06 10:01:33.515439	2012-06-06 10:01:33.515439
575	/srv/mp3/Elton John/Greatest Hits	1/2/3/332	2012-06-06 10:01:37.801025	2012-06-06 10:01:37.801025
590	/srv/mp3/Elton John/[1982] Jump Up!	1/2/3/332	2012-06-06 10:01:52.647128	2012-06-06 10:01:52.647128
564	/srv/mp3/David Bowie/Diamond Dogs	1/2/3/533	2012-06-06 10:01:21.504007	2012-06-06 10:01:21.504007
576	/srv/mp3/David Bowie/Hunky Dory	1/2/3/533	2012-06-06 10:01:37.982613	2012-06-06 10:01:37.982613
565	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1980 - Live At Rockpalast	1/2/3/286/312	2012-06-06 10:01:22.707237	2012-06-06 10:01:22.707237
574	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1973 - Burnin'	1/2/3/286/312	2012-06-06 10:01:36.945683	2012-06-06 10:01:36.945683
582	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1979 - Live From Kingston	1/2/3/286/312	2012-06-06 10:01:46.468197	2012-06-06 10:01:46.468197
586	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1994 - Legend	1/2/3/286/312	2012-06-06 10:01:51.220597	2012-06-06 10:01:51.220597
567	/srv/mp3/Tom Waits/1976 - Small Change	1/2/3/373	2012-06-06 10:01:25.698676	2012-06-06 10:01:25.698676
577	/srv/mp3/Tom Waits/1982 - One from the Heart (with Crystal Gayle)	1/2/3/373	2012-06-06 10:01:39.194527	2012-06-06 10:01:39.194527
571	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff/Disc 7 - Transcriptions, Rachmaninov	1/2/3/532/535/536/537	2012-06-06 10:01:34.487179	2012-06-06 10:01:34.487179
572	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 10 Mazurkas Op. 50, 56, 59, 63, 67, 68,	1/2/3/541/542	2012-06-06 10:01:34.503374	2012-06-06 10:01:34.503374
591	/srv/mp3/James Taylor/James Taylor Discography/Never Die Young (1988)	1/2/3/222/223	2012-06-06 10:01:55.239852	2012-06-06 10:01:55.239852
592	/srv/mp3/Tom Waits/1978 - Blue Valantine	1/2/3/373	2012-06-06 10:01:56.295238	2012-06-06 10:01:56.295238
593	/srv/mp3/David Bowie/Space Oddity	1/2/3/533	2012-06-06 10:01:57.23269	2012-06-06 10:01:57.23269
594	/srv/mp3/Neil Young/Zuma (1975)	1/2/3/67	2012-06-06 10:01:59.180308	2012-06-06 10:01:59.180308
595	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff/Disc 4 - Beethoven, Schubert, Grieig, Violin Sonatas	1/2/3/532/535/536/537	2012-06-06 10:02:00.040269	2012-06-06 10:02:00.040269
596	/srv/mp3/Elton John/[1981] The Fox	1/2/3/332	2012-06-06 10:02:03.001901	2012-06-06 10:02:03.001901
597	/srv/mp3/Glenn Miller	1/2/3	2012-06-06 10:02:03.443948	2012-06-06 10:02:03.443948
598	/srv/mp3/Glenn Miller/The Best of Glenn Miller	1/2/3/597	2012-06-06 10:02:03.737238	2012-06-06 10:02:03.737238
599	/srv/mp3/Glenn Miller/The Best of Glenn Miller/CD 1	1/2/3/597/598	2012-06-06 10:02:03.739372	2012-06-06 10:02:03.739372
600	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1977 - Live From London	1/2/3/286/312	2012-06-06 10:02:03.852025	2012-06-06 10:02:03.852025
601	/srv/mp3/Stanley Clarke/1, 2, to the Bass	1/2/3/587	2012-06-06 10:02:04.094999	2012-06-06 10:02:04.094999
602	/srv/mp3/Willie Nelson	1/2/3	2012-06-06 10:02:06.738979	2012-06-06 10:02:06.738979
603	/srv/mp3/Willie Nelson/The Very Best of Willie Nelson	1/2/3/602	2012-06-06 10:02:07.051143	2012-06-06 10:02:07.051143
604	/srv/mp3/Herbie Hancock/1975 - Herbie Hancock - Flood	1/2/3/243	2012-06-06 10:02:07.110535	2012-06-06 10:02:07.110535
605	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 2001 - Rebel Music	1/2/3/286/312	2012-06-06 10:02:10.45277	2012-06-06 10:02:10.45277
606	/srv/mp3/David Bowie/David Bowie - Complete Discography	1/2/3/533	2012-06-06 10:02:14.629573	2012-06-06 10:02:14.629573
607	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---	1/2/3/533/606	2012-06-06 10:02:14.632902	2012-06-06 10:02:14.632902
608	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie & Ryuichi Sakamoto - Merry Christmas Mr.Lawrence Movie Soundtrack	1/2/3/533/606/607	2012-06-06 10:02:14.63663	2012-06-06 10:02:14.63663
609	/srv/mp3/Paul McCartney/1978-03-31 - London Town	1/2/3/114	2012-06-06 10:02:15.36531	2012-06-06 10:02:15.36531
610	/srv/mp3/James Taylor/James Taylor Discography/Sweet Baby James (1970)	1/2/3/222/223	2012-06-06 10:02:16.615976	2012-06-06 10:02:16.615976
611	/srv/mp3/Neil Young/On The Beach (1974)	1/2/3/67	2012-06-06 10:02:17.171722	2012-06-06 10:02:17.171722
612	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff/Disc 3 - Rachmaninoff Conducts Rachmaninoff	1/2/3/532/535/536/537	2012-06-06 10:02:17.953292	2012-06-06 10:02:17.953292
613	/srv/mp3/Elton John/[1980] 21 @ 33	1/2/3/332	2012-06-06 10:02:19.56089	2012-06-06 10:02:19.56089
614	/srv/mp3/Tom Waits/2002 - Blood Money	1/2/3/373	2012-06-06 10:02:20.126137	2012-06-06 10:02:20.126137
615	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 09 Mazurkas	1/2/3/541/542	2012-06-06 10:02:22.53301	2012-06-06 10:02:22.53301
616	/srv/mp3/Herbie Hancock/1969 - Herbie Hancock - The Prisoner	1/2/3/243	2012-06-06 10:02:24.15898	2012-06-06 10:02:24.15898
617	/srv/mp3/Glenn Miller/The Best of Glenn Miller/CD 1/Cover	1/2/3/597/598/599	2012-06-06 10:02:26.130503	2012-06-06 10:02:26.130503
618	/srv/mp3/Stanley Clarke/Stanley Clarke	1/2/3/587	2012-06-06 10:02:26.389982	2012-06-06 10:02:26.389982
619	/srv/mp3/Glenn Miller/The Best of Glenn Miller/CD 2	1/2/3/597/598	2012-06-06 10:02:27.623367	2012-06-06 10:02:27.623367
620	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 2002 - One Love, The Very Best Of	1/2/3/286/312	2012-06-06 10:02:28.298808	2012-06-06 10:02:28.298808
621	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff/Disc 2 - Rachmaninov Piano Concerto 1 and 4, Rhapsody on a theme of Paganini	1/2/3/532/535/536/537	2012-06-06 10:02:30.086399	2012-06-06 10:02:30.086399
622	/srv/mp3/Elton John/[1984] Breaking Hearts	1/2/3/332	2012-06-06 10:02:30.332059	2012-06-06 10:02:30.332059
623	/srv/mp3/Neil Young/Unplugged (1993)	1/2/3/67	2012-06-06 10:02:33.092523	2012-06-06 10:02:33.092523
624	/srv/mp3/Tom Waits/1974 - The Heart Of Saturday Night	1/2/3/373	2012-06-06 10:02:34.637933	2012-06-06 10:02:34.637933
625	/srv/mp3/Herbie Hancock/1965 - Herbie Hancock - Maiden Voyage	1/2/3/243	2012-06-06 10:02:35.305179	2012-06-06 10:02:35.305179
626	/srv/mp3/Paul McCartney/2006-09-25 - Ecce Cor Meum (Behold My Heart)	1/2/3/114	2012-06-06 10:02:36.964436	2012-06-06 10:02:36.964436
627	/srv/mp3/James Taylor/James Taylor Discography/One Man Dog (1972)	1/2/3/222/223	2012-06-06 10:02:39.709956	2012-06-06 10:02:39.709956
628	/srv/mp3/Elton John/[2000] El Dorado - Sdtrk	1/2/3/332	2012-06-06 10:02:41.664531	2012-06-06 10:02:41.664531
629	/srv/mp3/Paul McCartney/1997-05-05 - Flaming Pie	1/2/3/114	2012-06-06 10:02:42.342143	2012-06-06 10:02:42.342143
630	/srv/mp3/Glenn Miller/The Best of Glenn Miller/CD 2/Cover	1/2/3/597/598/619	2012-06-06 10:02:42.562414	2012-06-06 10:02:42.562414
631	/srv/mp3/Herbie Hancock/1971 - Herbie Hancock - Crossings	1/2/3/243	2012-06-06 10:02:42.678158	2012-06-06 10:02:42.678158
632	/srv/mp3/George Jones	1/2/3	2012-06-06 10:02:43.897229	2012-06-06 10:02:43.897229
633	/srv/mp3/Stanley Clarke/School Days	1/2/3/587	2012-06-06 10:02:44.608342	2012-06-06 10:02:44.608342
634	/srv/mp3/George Jones/The Very Best of Love	1/2/3/632	2012-06-06 10:02:44.68771	2012-06-06 10:02:44.68771
635	/srv/mp3/Herbie Hancock/2002 - Herbie Hancock - Day Dreams	1/2/3/243	2012-06-06 10:02:48.13589	2012-06-06 10:02:48.13589
759	/srv/mp3/The Beatles	1/2/3	2012-06-06 10:05:20.387759	2012-06-06 10:05:20.387759
636	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1999 - Selassie Is The Chapel	1/2/3/286/312	2012-06-06 10:02:48.690233	2012-06-06 10:02:48.690233
637	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie - Duos	1/2/3/533/606/607	2012-06-06 10:02:50.235796	2012-06-06 10:02:50.235796
638	/srv/mp3/Tom Waits/2002 - Alice	1/2/3/373	2012-06-06 10:02:51.948219	2012-06-06 10:02:51.948219
639	/srv/mp3/Stanley Clarke/I Wanna Play for You	1/2/3/587	2012-06-06 10:02:56.116818	2012-06-06 10:02:56.116818
640	/srv/mp3/Neil Young/Mirror Ball (1995)	1/2/3/67	2012-06-06 10:02:59.173384	2012-06-06 10:02:59.173384
641	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie - Resurrection On 84th Street	1/2/3/533/606/607	2012-06-06 10:03:00.534631	2012-06-06 10:03:00.534631
642	/srv/mp3/Paul McCartney/1973-03-04 - Red Rose Speedway	1/2/3/114	2012-06-06 10:03:01.205125	2012-06-06 10:03:01.205125
643	/srv/mp3/Herbie Hancock/1984 - Herbie Hancock - Sound System	1/2/3/243	2012-06-06 10:03:03.529964	2012-06-06 10:03:03.529964
644	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 13 Various	1/2/3/541/542	2012-06-06 10:03:05.654686	2012-06-06 10:03:05.654686
645	/srv/mp3/Elton John/[2000] One Night Only	1/2/3/332	2012-06-06 10:03:05.893421	2012-06-06 10:03:05.893421
646	/srv/mp3/Willie Nelson/Willie Nelson - Red headed stranger	1/2/3/602	2012-06-06 10:03:06.059968	2012-06-06 10:03:06.059968
647	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 2001 - Shakedown Marley Remixed	1/2/3/286/312	2012-06-06 10:03:06.858808	2012-06-06 10:03:06.858808
648	/srv/mp3/Herbie Hancock/1995 - Herbie Hancock - New Standard	1/2/3/243	2012-06-06 10:03:12.658343	2012-06-06 10:03:12.658343
649	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie - Somebody Up There Likes Me	1/2/3/533/606/607	2012-06-06 10:03:12.666759	2012-06-06 10:03:12.666759
650	/srv/mp3/Supertramp	1/2/3	2012-06-06 10:03:15.452129	2012-06-06 10:03:15.452129
651	/srv/mp3/George Jones/The Songs I Wanta Sing	1/2/3/632	2012-06-06 10:03:15.719254	2012-06-06 10:03:15.719254
652	/srv/mp3/Supertramp/Breakfast In America	1/2/3/650	2012-06-06 10:03:15.865668	2012-06-06 10:03:15.865668
665	/srv/mp3/Stiff Little Fingers	1/2/3	2012-06-06 10:03:35.520134	2012-06-06 10:03:35.520134
666	/srv/mp3/Stiff Little Fingers/Go for It	1/2/3/665	2012-06-06 10:03:35.667132	2012-06-06 10:03:35.667132
679	/srv/mp3/Sade	1/2/3	2012-06-06 10:03:52.114706	2012-06-06 10:03:52.114706
680	/srv/mp3/Sade/The Best of Sade	1/2/3/679	2012-06-06 10:03:52.389142	2012-06-06 10:03:52.389142
698	/srv/mp3/Stevie Wonder	1/2/3	2012-06-06 10:04:11.330942	2012-06-06 10:04:11.330942
699	/srv/mp3/Stevie Wonder/Songs In The Key Of Life	1/2/3/698	2012-06-06 10:04:11.692077	2012-06-06 10:04:11.692077
700	/srv/mp3/Stevie Wonder/Songs In The Key Of Life/CD1	1/2/3/698/699	2012-06-06 10:04:11.694231	2012-06-06 10:04:11.694231
709	/srv/mp3/Stevie Wonder/Songs In The Key Of Life/CD2	1/2/3/698/699	2012-06-06 10:04:22.500383	2012-06-06 10:04:22.500383
717	/srv/mp3/Stevie Wonder/StevieWonderDiscography1	1/2/3/698	2012-06-06 10:04:34.281147	2012-06-06 10:04:34.281147
718	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1971 - Where I'm coming from	1/2/3/698/717	2012-06-06 10:04:34.286671	2012-06-06 10:04:34.286671
731	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1963 - With a Song in My Heart	1/2/3/698/717	2012-06-06 10:04:44.024108	2012-06-06 10:04:44.024108
653	/srv/mp3/James Taylor/James Taylor Discography/JT (1977)	1/2/3/222/223	2012-06-06 10:03:16.704747	2012-06-06 10:03:16.704747
675	/srv/mp3/James Taylor/James Taylor Discography/Hourglass (1997)	1/2/3/222/223	2012-06-06 10:03:43.728638	2012-06-06 10:03:43.728638
695	/srv/mp3/James Taylor/James Taylor Discography/Live in Rio (1991)	1/2/3/222/223	2012-06-06 10:04:07.949019	2012-06-06 10:04:07.949019
713	/srv/mp3/James Taylor/James Taylor Discography/October Road (2002)	1/2/3/222/223	2012-06-06 10:04:26.110342	2012-06-06 10:04:26.110342
735	/srv/mp3/James Taylor/James Taylor Discography/October Road (2002)/October Road (Bonus Disk)	1/2/3/222/223/713	2012-06-06 10:04:47.733951	2012-06-06 10:04:47.733951
736	/srv/mp3/James Taylor/James Taylor Discography/In the Pocket (1976)	1/2/3/222/223	2012-06-06 10:04:50.625233	2012-06-06 10:04:50.625233
654	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff/Disc 1 - Rachmaninov Piano Concerto no.2 and 3	1/2/3/532/535/536/537	2012-06-06 10:03:17.085303	2012-06-06 10:03:17.085303
662	/srv/mp3/Rachmaninoff/Rachmaninoff (Obras Completas)/Sergei Rachmaninoff/Rachmaninoff Plays Rachmaninoff/Disc 5 - Bach, Liszt, Beethoven(32 variations), Mendelssohn	1/2/3/532/535/536/537	2012-06-06 10:03:28.7833	2012-06-06 10:03:28.7833
693	/srv/mp3/Robert Cray	1/2/3	2012-06-06 10:04:07.434302	2012-06-06 10:04:07.434302
694	/srv/mp3/Robert Cray/I Was Warned	1/2/3/693	2012-06-06 10:04:07.720131	2012-06-06 10:04:07.720131
708	/srv/mp3/Robert Cray/Bad Influence	1/2/3/693	2012-06-06 10:04:21.405261	2012-06-06 10:04:21.405261
727	/srv/mp3/Romeo Void	1/2/3	2012-06-06 10:04:42.539186	2012-06-06 10:04:42.539186
728	/srv/mp3/Romeo Void/Romeo Void - Warm In Your Coat	1/2/3/727	2012-06-06 10:04:42.797019	2012-06-06 10:04:42.797019
738	/srv/mp3/Romeo Void/Romeo Void - Instincts	1/2/3/727	2012-06-06 10:04:52.413014	2012-06-06 10:04:52.413014
655	/srv/mp3/Mother Mother	1/2/3	2012-06-06 10:03:17.391774	2012-06-06 10:03:17.391774
656	/srv/mp3/Mother Mother/O My Heart	1/2/3/655	2012-06-06 10:03:17.779593	2012-06-06 10:03:17.779593
673	/srv/mp3/Mother Mother/Mother Mother - Eureka (2011)	1/2/3/655	2012-06-06 10:03:42.770516	2012-06-06 10:03:42.770516
688	/srv/mp3/Neil Young & Crazy Horse	1/2/3	2012-06-06 10:04:01.377971	2012-06-06 10:04:01.377971
689	/srv/mp3/Neil Young & Crazy Horse/Neil Young & Crazy Horse-Everybody Knows This Is Nowhere	1/2/3/688	2012-06-06 10:04:01.79411	2012-06-06 10:04:01.79411
704	/srv/mp3/Nelly Furtado	1/2/3	2012-06-06 10:04:14.793983	2012-06-06 10:04:14.793983
705	/srv/mp3/Nelly Furtado/Loose	1/2/3/704	2012-06-06 10:04:14.988755	2012-06-06 10:04:14.988755
720	/srv/mp3/Nelly Furtado/Loose/Covers	1/2/3/704/705	2012-06-06 10:04:38.43739	2012-06-06 10:04:38.43739
724	/srv/mp3/Manhattan Transfer	1/2/3	2012-06-06 10:04:42.153875	2012-06-06 10:04:42.153875
726	/srv/mp3/Manhattan Transfer/Manhattan Transfer-Spirit of St. Louis-2000	1/2/3/724	2012-06-06 10:04:42.371523	2012-06-06 10:04:42.371523
657	/srv/mp3/Paul McCartney/1984-10-22 - Give My Regards To Broad Street	1/2/3/114	2012-06-06 10:03:19.692046	2012-06-06 10:03:19.692046
671	/srv/mp3/Paul McCartney/1970-04-17 - McCartney	1/2/3/114	2012-06-06 10:03:40.704944	2012-06-06 10:03:40.704944
686	/srv/mp3/Paul McCartney/1983-10-31 - Pipes Of Peace	1/2/3/114	2012-06-06 10:03:58.052287	2012-06-06 10:03:58.052287
702	/srv/mp3/Paul McCartney/2001-11-12 - Driving Rain	1/2/3/114	2012-06-06 10:04:13.864157	2012-06-06 10:04:13.864157
714	/srv/mp3/Paul McCartney/1975-05-27 - Venus And Mars	1/2/3/114	2012-06-06 10:04:26.496365	2012-06-06 10:04:26.496365
723	/srv/mp3/Paul McCartney/1993-11-15 - Paul Is Live	1/2/3/114	2012-06-06 10:04:39.664735	2012-06-06 10:04:39.664735
658	/srv/mp3/Tom Waits/1993 - The Black Rider	1/2/3/373	2012-06-06 10:03:19.704059	2012-06-06 10:03:19.704059
676	/srv/mp3/Tom Waits/1975 - Nighthawks at the dinner	1/2/3/373	2012-06-06 10:03:46.500071	2012-06-06 10:03:46.500071
696	/srv/mp3/Texas	1/2/3	2012-06-06 10:04:08.473656	2012-06-06 10:04:08.473656
697	/srv/mp3/Texas/Mothers Heaven	1/2/3/696	2012-06-06 10:04:08.783342	2012-06-06 10:04:08.783342
706	/srv/mp3/The Prodigy	1/2/3	2012-06-06 10:04:20.592022	2012-06-06 10:04:20.592022
707	/srv/mp3/The Prodigy/Their Law - The Singles 1990-2005	1/2/3/706	2012-06-06 10:04:21.163821	2012-06-06 10:04:21.163821
730	/srv/mp3/The Weepies	1/2/3	2012-06-06 10:04:43.705934	2012-06-06 10:04:43.705934
733	/srv/mp3/The Weepies/Say I Am You	1/2/3/730	2012-06-06 10:04:44.075959	2012-06-06 10:04:44.075959
659	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1973 - Catch A Fire	1/2/3/286/312	2012-06-06 10:03:21.250038	2012-06-06 10:03:21.250038
760	/srv/mp3/The Beatles/08 Sgt Peppers Lonety Hearts	1/2/3/759	2012-06-06 10:05:20.693006	2012-06-06 10:05:20.693006
663	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1976 - Rastaman Vibration	1/2/3/286/312	2012-06-06 10:03:32.151066	2012-06-06 10:03:32.151066
672	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1967 - Keep On Skanking	1/2/3/286/312	2012-06-06 10:03:41.809125	2012-06-06 10:03:41.809125
678	/srv/mp3/Bob Marley/Bob Marley - Complete Discography From 1967 To 2002 [33 Full Albums] (Mp3 256Kbps)/Bob Marley - 1970 - African Herbsman	1/2/3/286/312	2012-06-06 10:03:50.911004	2012-06-06 10:03:50.911004
690	/srv/mp3/Blondie	1/2/3	2012-06-06 10:04:02.134789	2012-06-06 10:04:02.134789
691	/srv/mp3/Blondie/Greatest Hits-Sight & Sound	1/2/3/690	2012-06-06 10:04:02.459746	2012-06-06 10:04:02.459746
710	/srv/mp3/Bette Midler	1/2/3	2012-06-06 10:04:23.406282	2012-06-06 10:04:23.406282
711	/srv/mp3/Bette Midler/The Best Bette	1/2/3/710	2012-06-06 10:04:23.693907	2012-06-06 10:04:23.693907
729	/srv/mp3/Bob Dylan	1/2/3	2012-06-06 10:04:43.693939	2012-06-06 10:04:43.693939
732	/srv/mp3/Bob Dylan/The Essential Bob Dylan	1/2/3/729	2012-06-06 10:04:44.042993	2012-06-06 10:04:44.042993
660	/srv/mp3/Elton John/[1975] Rock Of The Westies	1/2/3/332	2012-06-06 10:03:26.105789	2012-06-06 10:03:26.105789
668	/srv/mp3/Elvis Costello	1/2/3	2012-06-06 10:03:39.452176	2012-06-06 10:03:39.452176
669	/srv/mp3/Elvis Costello/Elvis Costello & The Imposters	1/2/3/668	2012-06-06 10:03:39.802255	2012-06-06 10:03:39.802255
670	/srv/mp3/Elvis Costello/Elvis Costello & The Imposters/The Delivery Man	1/2/3/668/669	2012-06-06 10:03:39.803774	2012-06-06 10:03:39.803774
682	/srv/mp3/Elvis Costello/Elvis Costello And Allen Toussaint-The River In Reverse-2006	1/2/3/668	2012-06-06 10:03:54.170201	2012-06-06 10:03:54.170201
683	/srv/mp3/Elvis Costello/Elvis Costello And Allen Toussaint-The River In Reverse-2006/Various	1/2/3/668/682	2012-06-06 10:03:54.182072	2012-06-06 10:03:54.182072
684	/srv/mp3/Elvis Costello/Elvis Costello And Allen Toussaint-The River In Reverse-2006/Various/The River In Reverse	1/2/3/668/682/683	2012-06-06 10:03:54.183868	2012-06-06 10:03:54.183868
701	/srv/mp3/Elvis Costello/Elvis Costello-Aging Gracefully-1996	1/2/3/668	2012-06-06 10:04:12.956277	2012-06-06 10:04:12.956277
715	/srv/mp3/Elvis Costello/Elvis Costello & The Confederates	1/2/3/668	2012-06-06 10:04:31.340811	2012-06-06 10:04:31.340811
716	/srv/mp3/Elvis Costello/Elvis Costello & The Confederates/Live On Broadway, 1986-10-22	1/2/3/668/715	2012-06-06 10:04:31.342443	2012-06-06 10:04:31.342443
721	/srv/mp3/Elvis Costello/Elvis Costello & Burt Bacharach	1/2/3/668	2012-06-06 10:04:38.969676	2012-06-06 10:04:38.969676
722	/srv/mp3/Elvis Costello/Elvis Costello & Burt Bacharach/Elvis Costello, Burt Bacharach-The Sweetest Punch	1/2/3/668/721	2012-06-06 10:04:38.971302	2012-06-06 10:04:38.971302
661	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie - Early On (1964-1966)	1/2/3/533/606/607	2012-06-06 10:03:26.959435	2012-06-06 10:03:26.959435
685	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie - On Air radio 2 LIVE	1/2/3/533/606/607	2012-06-06 10:03:56.810308	2012-06-06 10:03:56.810308
703	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie - Vampires Of Human Flesh	1/2/3/533/606/607	2012-06-06 10:04:13.99864	2012-06-06 10:04:13.99864
712	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/Narrates Prokofiev's 'Peter And The Wolf'	1/2/3/533/606/607	2012-06-06 10:04:24.851974	2012-06-06 10:04:24.851974
725	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/1997 - Earthling In The City	1/2/3/533/606/607	2012-06-06 10:04:42.20501	2012-06-06 10:04:42.20501
737	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Other ---/David Bowie - Sept 11 concert	1/2/3/533/606/607	2012-06-06 10:04:51.847759	2012-06-06 10:04:51.847759
664	/srv/mp3/Herbie Hancock/1981 - Herbie Hancock - Magic Windows	1/2/3/243	2012-06-06 10:03:32.193586	2012-06-06 10:03:32.193586
674	/srv/mp3/Herbie Hancock/1992 - Herbie Hancock & Chick Corea - An Evening With Herbie Hancock and Chick Corea In Concert	1/2/3/243	2012-06-06 10:03:43.418534	2012-06-06 10:03:43.418534
681	/srv/mp3/Herbie Hancock/1974 - Herbie Hancock - Thrust	1/2/3/243	2012-06-06 10:03:53.640529	2012-06-06 10:03:53.640529
687	/srv/mp3/Hi-Fidelity Lounge	1/2/3	2012-06-06 10:03:58.811582	2012-06-06 10:03:58.811582
667	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 04 Nocturnes Op. 48, Op. 55, Op. 62, Op	1/2/3/541/542	2012-06-06 10:03:37.779322	2012-06-06 10:03:37.779322
677	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 03 Nocturnes Op. 9, 15, 27, 32, 37	1/2/3/541/542	2012-06-06 10:03:50.027217	2012-06-06 10:03:50.027217
692	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 05 Etudes	1/2/3/541/542	2012-06-06 10:04:06.280378	2012-06-06 10:04:06.280378
719	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 11 Piano Sonatas Nos 2 & 3	1/2/3/541/542	2012-06-06 10:04:36.697295	2012-06-06 10:04:36.697295
734	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 02 Ballades, Scherzos	1/2/3/541/542	2012-06-06 10:04:45.312717	2012-06-06 10:04:45.312717
739	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1962 - The Jazz Soul of Little Stevie Wonder	1/2/3/698/717	2012-06-06 10:04:53.711846	2012-06-06 10:04:53.711846
740	/srv/mp3/Manhattan Transfer/The Best Of The Manhattan Transfer	1/2/3/724	2012-06-06 10:04:54.80449	2012-06-06 10:04:54.80449
741	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---	1/2/3/533/606	2012-06-06 10:04:55.330221	2012-06-06 10:04:55.330221
742	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1995 - Outside	1/2/3/533/606/741	2012-06-06 10:04:55.332808	2012-06-06 10:04:55.332808
743	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 06 Polonaises Op. 26, 40, 44, 53 and 61	1/2/3/541/542	2012-06-06 10:04:55.968388	2012-06-06 10:04:55.968388
744	/srv/mp3/Red Hot Chili Peppers	1/2/3	2012-06-06 10:05:00.193472	2012-06-06 10:05:00.193472
745	/srv/mp3/Red Hot Chili Peppers/Red Hot Chili Peppers - Greatest Hits (2003)	1/2/3/744	2012-06-06 10:05:00.393902	2012-06-06 10:05:00.393902
746	/srv/mp3/Elvis Costello/Elvis Costello & Burt Bacharach/Painted from Memory	1/2/3/668/721	2012-06-06 10:05:00.964311	2012-06-06 10:05:00.964311
747	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1976 - Songs In The Key of Life	1/2/3/698/717	2012-06-06 10:05:01.989316	2012-06-06 10:05:01.989316
748	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1976 - Songs In The Key of Life/CD1	1/2/3/698/717/747	2012-06-06 10:05:01.996522	2012-06-06 10:05:01.996522
749	/srv/mp3/The Weepies/Hideaway	1/2/3/730	2012-06-06 10:05:02.976446	2012-06-06 10:05:02.976446
750	/srv/mp3/Chopin/Chopin.The.Piano Works. Ashkenazy.June1997.Fleur/Chopin, Frederic - The Piano Works Disc 01 Preludes, Impromptus	1/2/3/541/542	2012-06-06 10:05:04.256386	2012-06-06 10:05:04.256386
751	/srv/mp3/Paul McCartney/1979-06-08 - Back To The Egg	1/2/3/114	2012-06-06 10:05:04.525673	2012-06-06 10:05:04.525673
752	/srv/mp3/James Taylor/James Taylor Discography/Gorilla (1975)	1/2/3/222/223	2012-06-06 10:05:08.45448	2012-06-06 10:05:08.45448
753	/srv/mp3/Manhattan Transfer/Manhattan Transfer-Vocalese	1/2/3/724	2012-06-06 10:05:09.529312	2012-06-06 10:05:09.529312
754	/srv/mp3/Elvis Costello/Cleveland Agora12.5.77	1/2/3/668	2012-06-06 10:05:10.775731	2012-06-06 10:05:10.775731
755	/srv/mp3/Bluegrass Student Union	1/2/3	2012-06-06 10:05:13.584756	2012-06-06 10:05:13.584756
756	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1976 - Songs In The Key of Life/CD2	1/2/3/698/717/747	2012-06-06 10:05:13.828898	2012-06-06 10:05:13.828898
757	/srv/mp3/Bluegrass Student Union/Bluegrass Student Union - Legacy (Disc C)	1/2/3/755	2012-06-06 10:05:14.296962	2012-06-06 10:05:14.296962
758	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1977 - Heroes	1/2/3/533/606/741	2012-06-06 10:05:20.05624	2012-06-06 10:05:20.05624
761	/srv/mp3/Oscar Peterson	1/2/3	2012-06-06 10:05:22.427909	2012-06-06 10:05:22.427909
762	/srv/mp3/Oscar Peterson/Oscar Peterson Plays The Gershwin Songbooks	1/2/3/761	2012-06-06 10:05:22.975579	2012-06-06 10:05:22.975579
763	/srv/mp3/Manhattan Transfer/Manhattan Transfer Anthology-CD 1	1/2/3/724	2012-06-06 10:05:23.109319	2012-06-06 10:05:23.109319
764	/srv/mp3/Ravel	1/2/3	2012-06-06 10:05:24.985722	2012-06-06 10:05:24.985722
765	/srv/mp3/Rickie Lee Jones	1/2/3	2012-06-06 10:05:25.313747	2012-06-06 10:05:25.313747
766	/srv/mp3/Rickie Lee Jones/Rickie Lee Jones	1/2/3/765	2012-06-06 10:05:25.612503	2012-06-06 10:05:25.612503
767	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1967 - Someday at Christmas	1/2/3/698/717	2012-06-06 10:05:25.804878	2012-06-06 10:05:25.804878
768	/srv/mp3/James Taylor/James Taylor - The Best Of James Taylor (2003) 320 vtwin88cube	1/2/3/222	2012-06-06 10:05:27.915714	2012-06-06 10:05:27.915714
769	/srv/mp3/Elvis Costello/Elvis Costello-The Very Best Of	1/2/3/668	2012-06-06 10:05:34.58984	2012-06-06 10:05:34.58984
770	/srv/mp3/Pretenders	1/2/3	2012-06-06 10:05:35.450536	2012-06-06 10:05:35.450536
771	/srv/mp3/Pretenders/Pretenders - Pirate Radio -4CD -2006 - 320k	1/2/3/770	2012-06-06 10:05:35.667838	2012-06-06 10:05:35.667838
772	/srv/mp3/Pretenders/Pretenders - Pirate Radio -4CD -2006 - 320k/CD 1	1/2/3/770/771	2012-06-06 10:05:35.670528	2012-06-06 10:05:35.670528
773	/srv/mp3/Bluegrass Student Union/Bluegrass Student Union - Legacy (Disc A)	1/2/3/755	2012-06-06 10:05:36.419878	2012-06-06 10:05:36.419878
774	/srv/mp3/The Beatles/01 Please Please Me	1/2/3/759	2012-06-06 10:05:37.19877	2012-06-06 10:05:37.19877
775	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1984 - Tonight	1/2/3/533/606/741	2012-06-06 10:05:39.94354	2012-06-06 10:05:39.94354
776	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1968 - Eivets Rednow...Alfie	1/2/3/698/717	2012-06-06 10:05:43.325144	2012-06-06 10:05:43.325144
777	/srv/mp3/Chopin/maurizio pollini (piano) - chopin 24 preludes	1/2/3/541	2012-06-06 10:05:45.41853	2012-06-06 10:05:45.41853
778	/srv/mp3/Manhattan Transfer/Manhattan Transfer Anthology-CD 2	1/2/3/724	2012-06-06 10:05:48.626704	2012-06-06 10:05:48.626704
779	/srv/mp3/The Beatles/03 A Hard Days Night	1/2/3/759	2012-06-06 10:05:53.689819	2012-06-06 10:05:53.689819
780	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1968 - For once in my life	1/2/3/698/717	2012-06-06 10:05:53.696355	2012-06-06 10:05:53.696355
781	/srv/mp3/Johnny Cash	1/2/3	2012-06-06 10:05:54.134838	2012-06-06 10:05:54.134838
782	/srv/mp3/Johnny Cash/Best of Johnny Cash	1/2/3/781	2012-06-06 10:05:55.02769	2012-06-06 10:05:55.02769
783	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1974 - Diamond Dogs [Anniversary Edition]	1/2/3/533/606/741	2012-06-06 10:05:55.97014	2012-06-06 10:05:55.97014
784	/srv/mp3/Elvis Costello/Elvis Costello-My Flame Burns Blue-2006	1/2/3/668	2012-06-06 10:05:59.132147	2012-06-06 10:05:59.132147
785	/srv/mp3/Pretenders/Pretenders - Pirate Radio -4CD -2006 - 320k/CD 2	1/2/3/770/771	2012-06-06 10:06:05.861762	2012-06-06 10:06:05.861762
786	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1991 - Jungle fever Soundtrack	1/2/3/698/717	2012-06-06 10:06:07.983308	2012-06-06 10:06:07.983308
787	/srv/mp3/The Beatles/09 The Beatles White Album 1	1/2/3/759	2012-06-06 10:06:10.073543	2012-06-06 10:06:10.073543
788	/srv/mp3/Joe Jackson	1/2/3	2012-06-06 10:06:11.225147	2012-06-06 10:06:11.225147
789	/srv/mp3/Joe Jackson/Night and Day	1/2/3/788	2012-06-06 10:06:11.465833	2012-06-06 10:06:11.465833
790	/srv/mp3/Manhattan Transfer/Best of Manhattan Transfer	1/2/3/724	2012-06-06 10:06:12.228682	2012-06-06 10:06:12.228682
791	/srv/mp3/Bluegrass Student Union/Bluegrass Student Union - Legacy (Disc B)	1/2/3/755	2012-06-06 10:06:14.526156	2012-06-06 10:06:14.526156
792	/srv/mp3/Chopin/etudes - wilhelm backhaus	1/2/3/541	2012-06-06 10:06:15.611362	2012-06-06 10:06:15.611362
793	/srv/mp3/Elvis Costello/Elvis Costello	1/2/3/668	2012-06-06 10:06:17.541591	2012-06-06 10:06:17.541591
794	/srv/mp3/Elvis Costello/Elvis Costello/All This Useless Beauty	1/2/3/668/793	2012-06-06 10:06:17.54413	2012-06-06 10:06:17.54413
795	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1972 - Music of my Mind	1/2/3/698/717	2012-06-06 10:06:18.103606	2012-06-06 10:06:18.103606
796	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1991 - Tin Machine II	1/2/3/533/606/741	2012-06-06 10:06:23.226037	2012-06-06 10:06:23.226037
804	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1971 - Hunky Dory	1/2/3/533/606/741	2012-06-06 10:06:38.516084	2012-06-06 10:06:38.516084
821	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1986 - Labyrinth	1/2/3/533/606/741	2012-06-06 10:06:57.239929	2012-06-06 10:06:57.239929
830	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1967 - David Bowie	1/2/3/533/606/741	2012-06-06 10:07:10.801638	2012-06-06 10:07:10.801638
845	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/2003 - Reality	1/2/3/533/606/741	2012-06-06 10:07:30.65937	2012-06-06 10:07:30.65937
855	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1981 - Christiane F	1/2/3/533/606/741	2012-06-06 10:07:50.00948	2012-06-06 10:07:50.00948
869	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1973 - Aladdin Sane [30th Anniversary Edition]	1/2/3/533/606/741	2012-06-06 10:08:06.145095	2012-06-06 10:08:06.145095
888	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1973 - Pin Ups	1/2/3/533/606/741	2012-06-06 10:08:34.169668	2012-06-06 10:08:34.169668
903	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1977 - Low	1/2/3/533/606/741	2012-06-06 10:08:48.605499	2012-06-06 10:08:48.605499
797	/srv/mp3/Joe Jackson/I'm the Man	1/2/3/788	2012-06-06 10:06:24.184947	2012-06-06 10:06:24.184947
803	/srv/mp3/Joe Jackson/look sharp!	1/2/3/788	2012-06-06 10:06:36.553163	2012-06-06 10:06:36.553163
811	/srv/mp3/Jackson Browne	1/2/3	2012-06-06 10:06:48.400853	2012-06-06 10:06:48.400853
814	/srv/mp3/Jackson Browne/1996 - Looking East	1/2/3/811	2012-06-06 10:06:48.861973	2012-06-06 10:06:48.861973
824	/srv/mp3/Jackson Browne/1976 - The Pretender	1/2/3/811	2012-06-06 10:06:57.992598	2012-06-06 10:06:57.992598
828	/srv/mp3/Jackson Browne/1978 - Running On Empty	1/2/3/811	2012-06-06 10:07:06.778411	2012-06-06 10:07:06.778411
839	/srv/mp3/Jackson Browne/1986 - Lives in the Balance	1/2/3/811	2012-06-06 10:07:19.750672	2012-06-06 10:07:19.750672
843	/srv/mp3/Jackson Browne/1993 - I'm Alive	1/2/3/811	2012-06-06 10:07:26.361542	2012-06-06 10:07:26.361542
851	/srv/mp3/Jackson Browne/2005 - Solo Acoustic Vol. 1	1/2/3/811	2012-06-06 10:07:36.626801	2012-06-06 10:07:36.626801
863	/srv/mp3/Jackson Browne/1980 - Hold Out	1/2/3/811	2012-06-06 10:07:56.109049	2012-06-06 10:07:56.109049
870	/srv/mp3/Jackson Browne/1973 - For Everyman	1/2/3/811	2012-06-06 10:08:06.714309	2012-06-06 10:08:06.714309
879	/srv/mp3/Jackson Browne/Running On Empty	1/2/3/811	2012-06-06 10:08:18.862466	2012-06-06 10:08:18.862466
883	/srv/mp3/Jackson Browne/1989 - World in Motion	1/2/3/811	2012-06-06 10:08:28.893974	2012-06-06 10:08:28.893974
892	/srv/mp3/Jackson Browne/1997 -  The Next Voice You Hear - The Best of	1/2/3/811	2012-06-06 10:08:38.232347	2012-06-06 10:08:38.232347
904	/srv/mp3/Jackson Browne/2004 - The Very Best Of	1/2/3/811	2012-06-06 10:08:51.010676	2012-06-06 10:08:51.010676
905	/srv/mp3/Jackson Browne/2004 - The Very Best Of/Jackson Browne - The Very Best Of 2	1/2/3/811/904	2012-06-06 10:08:51.012745	2012-06-06 10:08:51.012745
798	/srv/mp3/Manhattan Transfer/Manhattan Transfer-Bodies and Souls	1/2/3/724	2012-06-06 10:06:24.533627	2012-06-06 10:06:24.533627
805	/srv/mp3/Manhattan Transfer/Manhattan Transfer-Coming Out	1/2/3/724	2012-06-06 10:06:39.153663	2012-06-06 10:06:39.153663
813	/srv/mp3/Manhattan Transfer/Manhattan Transfer-Mecca For Moderns	1/2/3/724	2012-06-06 10:06:48.548853	2012-06-06 10:06:48.548853
819	/srv/mp3/Nickelback	1/2/3	2012-06-06 10:06:56.240933	2012-06-06 10:06:56.240933
820	/srv/mp3/Nickelback/All The Right Reasons	1/2/3/819	2012-06-06 10:06:56.504432	2012-06-06 10:06:56.504432
831	/srv/mp3/Neil Diamond	1/2/3	2012-06-06 10:07:13.521457	2012-06-06 10:07:13.521457
832	/srv/mp3/Neil Diamond/The Ultimate Collection	1/2/3/831	2012-06-06 10:07:14.088254	2012-06-06 10:07:14.088254
867	/srv/mp3/Macy Gray	1/2/3	2012-06-06 10:08:05.424406	2012-06-06 10:08:05.424406
868	/srv/mp3/Macy Gray/Macy Gray - The Very Best Of Macy Gray	1/2/3/867	2012-06-06 10:08:05.654326	2012-06-06 10:08:05.654326
882	/srv/mp3/Macy Gray/Macy Gray - On How Life Is	1/2/3/867	2012-06-06 10:08:26.532591	2012-06-06 10:08:26.532591
893	/srv/mp3/Muddy Waters	1/2/3	2012-06-06 10:08:38.639781	2012-06-06 10:08:38.639781
894	/srv/mp3/Muddy Waters/The Essential Collection	1/2/3/893	2012-06-06 10:08:38.87321	2012-06-06 10:08:38.87321
799	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1966 - Uptight (Everything's Alright)	1/2/3/698/717	2012-06-06 10:06:27.541855	2012-06-06 10:06:27.541855
806	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1980 - Hotter than July	1/2/3/698/717	2012-06-06 10:06:39.773257	2012-06-06 10:06:39.773257
812	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1973 - Live In Brighton	1/2/3/698/717	2012-06-06 10:06:48.490625	2012-06-06 10:06:48.490625
822	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1995 - Natural Wonder (Live)	1/2/3/698/717	2012-06-06 10:06:57.436895	2012-06-06 10:06:57.436895
823	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1995 - Natural Wonder (Live)/CD 1	1/2/3/698/717/822	2012-06-06 10:06:57.438544	2012-06-06 10:06:57.438544
829	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1995 - Natural Wonder (Live)/CD 2	1/2/3/698/717/822	2012-06-06 10:07:10.120506	2012-06-06 10:07:10.120506
841	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1966 - Down to Earth	1/2/3/698/717	2012-06-06 10:07:22.419605	2012-06-06 10:07:22.419605
849	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1984 - The Woman in Red Soundtrack	1/2/3/698/717	2012-06-06 10:07:35.03255	2012-06-06 10:07:35.03255
854	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1974 - Fulfillingness' first finale	1/2/3/698/717	2012-06-06 10:07:45.333597	2012-06-06 10:07:45.333597
861	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1985 - Love Songs - 20 Classic Hits	1/2/3/698/717	2012-06-06 10:07:55.17177	2012-06-06 10:07:55.17177
876	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1962 - Tribute to Uncle Ray	1/2/3/698/717	2012-06-06 10:08:15.189024	2012-06-06 10:08:15.189024
880	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1973 - Live at the rainbow	1/2/3/698/717	2012-06-06 10:08:23.216237	2012-06-06 10:08:23.216237
885	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1982 - Original musiquarium	1/2/3/698/717	2012-06-06 10:08:31.35041	2012-06-06 10:08:31.35041
886	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1982 - Original musiquarium/CD 1	1/2/3/698/717/885	2012-06-06 10:08:31.355016	2012-06-06 10:08:31.355016
895	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1982 - Original musiquarium/CD 2	1/2/3/698/717/885	2012-06-06 10:08:39.251339	2012-06-06 10:08:39.251339
902	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1975 - Live In NYC	1/2/3/698/717	2012-06-06 10:08:47.083148	2012-06-06 10:08:47.083148
800	/srv/mp3/The Beatles/04 Beatles For Sale	1/2/3/759	2012-06-06 10:06:29.499036	2012-06-06 10:06:29.499036
807	/srv/mp3/The Beatles/13 Abbey Road	1/2/3/759	2012-06-06 10:06:44.239813	2012-06-06 10:06:44.239813
825	/srv/mp3/The Beatles/11 Yellow Submarine	1/2/3/759	2012-06-06 10:07:00.753954	2012-06-06 10:07:00.753954
835	/srv/mp3/The Beatles/05 Help	1/2/3/759	2012-06-06 10:07:14.730594	2012-06-06 10:07:14.730594
844	/srv/mp3/The Beatles/02 With The Beatles	1/2/3/759	2012-06-06 10:07:29.515194	2012-06-06 10:07:29.515194
853	/srv/mp3/The Beatles/06 Rubber Soul	1/2/3/759	2012-06-06 10:07:43.727836	2012-06-06 10:07:43.727836
864	/srv/mp3/The Beatles/10 The Beatles White Album 2	1/2/3/759	2012-06-06 10:07:58.206978	2012-06-06 10:07:58.206978
875	/srv/mp3/The Beatles/07 Revolver	1/2/3/759	2012-06-06 10:08:13.721344	2012-06-06 10:08:13.721344
881	/srv/mp3/The Beatles/12 Magical Mystery Tour	1/2/3/759	2012-06-06 10:08:25.451659	2012-06-06 10:08:25.451659
890	/srv/mp3/Tom Petty and the Heartbreakers	1/2/3	2012-06-06 10:08:35.581245	2012-06-06 10:08:35.581245
891	/srv/mp3/Tom Petty and the Heartbreakers/Tom Petty - The Very Best Of CDRip [Cov+CD][Bubanee]	1/2/3/890	2012-06-06 10:08:35.897562	2012-06-06 10:08:35.897562
801	/srv/mp3/Elvis Costello/Elvis Costello/Kojak Variety	1/2/3/668/793	2012-06-06 10:06:30.084139	2012-06-06 10:06:30.084139
810	/srv/mp3/Elvis Costello/Elvis Costello/Spike [Expanded] (2 of 2)	1/2/3/668/793	2012-06-06 10:06:45.623184	2012-06-06 10:06:45.623184
827	/srv/mp3/Elvis Costello/Elvis Costello/Mighty Like A Rose	1/2/3/668/793	2012-06-06 10:07:04.801714	2012-06-06 10:07:04.801714
838	/srv/mp3/Elvis Costello/Elvis Costello/Brutal Youth	1/2/3/668/793	2012-06-06 10:07:19.726982	2012-06-06 10:07:19.726982
850	/srv/mp3/Elvis Costello/Elvis Costello/Spike [Expanded] (1 of 2)	1/2/3/668/793	2012-06-06 10:07:35.298139	2012-06-06 10:07:35.298139
858	/srv/mp3/Elvis Costello/Elvis Costello/When I Was Cruel	1/2/3/668/793	2012-06-06 10:07:53.351106	2012-06-06 10:07:53.351106
872	/srv/mp3/Elvis Costello/Elvis Costello/North	1/2/3/668/793	2012-06-06 10:08:09.147075	2012-06-06 10:08:09.147075
878	/srv/mp3/Elvis Costello/Elvis Costello/King Of America	1/2/3/668/793	2012-06-06 10:08:18.407646	2012-06-06 10:08:18.407646
896	/srv/mp3/Elvis Costello/Elvis Costello/Elvis Costello-My Aim is True-1977	1/2/3/668/793	2012-06-06 10:08:39.449482	2012-06-06 10:08:39.449482
802	/srv/mp3/Pretenders/Pretenders - Pirate Radio -4CD -2006 - 320k/CD 3	1/2/3/770/771	2012-06-06 10:06:30.807769	2012-06-06 10:06:30.807769
818	/srv/mp3/Pretenders/Pretenders - Pirate Radio -4CD -2006 - 320k/CD 4	1/2/3/770/771	2012-06-06 10:06:55.282193	2012-06-06 10:06:55.282193
840	/srv/mp3/Pretenders/1980 - Pretenders	1/2/3/770	2012-06-06 10:07:21.030058	2012-06-06 10:07:21.030058
848	/srv/mp3/Pretenders/Greatest Hits	1/2/3/770	2012-06-06 10:07:31.445762	2012-06-06 10:07:31.445762
856	/srv/mp3/Paul Simon	1/2/3	2012-06-06 10:07:52.397381	2012-06-06 10:07:52.397381
857	/srv/mp3/Paul Simon/Paul Simon - (2000) - You're the One	1/2/3/856	2012-06-06 10:07:52.848014	2012-06-06 10:07:52.848014
874	/srv/mp3/Paul Simon/Paul Simon - (1986) - Graceland [Bonus Tracks]	1/2/3/856	2012-06-06 10:08:12.770101	2012-06-06 10:08:12.770101
887	/srv/mp3/Paul Simon/Paul Simon - (1965) - Songbook [Bonus Tracks]	1/2/3/856	2012-06-06 10:08:31.943443	2012-06-06 10:08:31.943443
808	/srv/mp3/Beethoven	1/2/3	2012-06-06 10:06:45.042337	2012-06-06 10:06:45.042337
809	/srv/mp3/Beethoven/Violin Sonata Nos 5 & 9, Yehudi Menuhin	1/2/3/808	2012-06-06 10:06:45.330917	2012-06-06 10:06:45.330917
817	/srv/mp3/Beethoven/Beethoven Fidelio - Vienna State Opera Chorus, Vienna Philharmonic, Leonard Bernstein	1/2/3/808	2012-06-06 10:06:54.208566	2012-06-06 10:06:54.208566
833	/srv/mp3/Beethoven/Beethovan	1/2/3/808	2012-06-06 10:07:14.176802	2012-06-06 10:07:14.176802
834	/srv/mp3/Beethoven/Beethovan/Piano Sonatas - Classics Collection - Forever Gold	1/2/3/808/833	2012-06-06 10:07:14.181387	2012-06-06 10:07:14.181387
837	/srv/mp3/Beethoven/Sonatas for Piano and Cello - Misha Mainsky, Martha Argerich	1/2/3/808	2012-06-06 10:07:16.207677	2012-06-06 10:07:16.207677
846	/srv/mp3/Beethoven/BBC Philharmonic conducted by Gianandrea Noseda	1/2/3/808	2012-06-06 10:07:31.022038	2012-06-06 10:07:31.022038
847	/srv/mp3/Beethoven/BBC Philharmonic conducted by Gianandrea Noseda/The Beethoven Experience - Symphonies	1/2/3/808/846	2012-06-06 10:07:31.024158	2012-06-06 10:07:31.024158
852	/srv/mp3/Beethoven/Plays Beethoven - James Galway	1/2/3/808	2012-06-06 10:07:42.590788	2012-06-06 10:07:42.590788
865	/srv/mp3/Beethoven/Beethoven Cello Sonata No.2 - Karel Bredenhorst,Jelger Blanken	1/2/3/808	2012-06-06 10:07:58.249454	2012-06-06 10:07:58.249454
866	/srv/mp3/Beethoven/Beethoven Symphony No. 9 - Berlin Philharmonic Orchestra	1/2/3/808	2012-06-06 10:08:02.872278	2012-06-06 10:08:02.872278
873	/srv/mp3/Beethoven/Beethoven & Mendelssohn Violin Concertos - Boston Symphony Orchestra, Charles Munch & Jascha Heifetz	1/2/3/808	2012-06-06 10:08:11.187155	2012-06-06 10:08:11.187155
877	/srv/mp3/Beethoven/Beethoven Piano Sonatas Nos. 11, 12 & 21 (Waldstein) - Maurizio Pollini	1/2/3/808	2012-06-06 10:08:17.94429	2012-06-06 10:08:17.94429
884	/srv/mp3/Beethoven/Beethoven Piano Concertos 4&5 'Emperor' - Emil Gilels, Leopold Ludwig, Philharmonia Orchestra	1/2/3/808	2012-06-06 10:08:31.344236	2012-06-06 10:08:31.344236
897	/srv/mp3/Beethoven/Handel Judas Maccabaeus (1 of 2) - McGegan, Nicholas	1/2/3/808	2012-06-06 10:08:39.993381	2012-06-06 10:08:39.993381
900	/srv/mp3/Beethoven/Alfred Brendel	1/2/3/808	2012-06-06 10:08:45.355651	2012-06-06 10:08:45.355651
901	/srv/mp3/Beethoven/Alfred Brendel/Beethoven Piano Sonatas Nos. 5, 6 & 7	1/2/3/808/900	2012-06-06 10:08:45.357237	2012-06-06 10:08:45.357237
815	/srv/mp3/Chopin/Chopin Collection	1/2/3/541	2012-06-06 10:06:52.574185	2012-06-06 10:06:52.574185
816	/srv/mp3/Chopin/Chopin Collection/cd01	1/2/3/541/815	2012-06-06 10:06:52.578112	2012-06-06 10:06:52.578112
826	/srv/mp3/Chopin/Chopin Collection/cd02	1/2/3/541/815	2012-06-06 10:07:04.514605	2012-06-06 10:07:04.514605
836	/srv/mp3/Chopin/Chopin Collection/cd06	1/2/3/541/815	2012-06-06 10:07:15.914359	2012-06-06 10:07:15.914359
842	/srv/mp3/Chopin/Chopin Collection/cd04	1/2/3/541/815	2012-06-06 10:07:25.638151	2012-06-06 10:07:25.638151
859	/srv/mp3/Flamenco Chillout	1/2/3	2012-06-06 10:07:53.594151	2012-06-06 10:07:53.594151
860	/srv/mp3/Flamenco Chillout/A Chillout Journey Through Andalusia	1/2/3/859	2012-06-06 10:07:53.808761	2012-06-06 10:07:53.808761
862	/srv/mp3/Chopin/Chopin Collection/cd05	1/2/3/541/815	2012-06-06 10:07:55.949027	2012-06-06 10:07:55.949027
871	/srv/mp3/Chopin/Chopin Collection/cd03	1/2/3/541/815	2012-06-06 10:08:08.097172	2012-06-06 10:08:08.097172
889	/srv/mp3/Chopin/Chopin Collection/cd07	1/2/3/541/815	2012-06-06 10:08:35.516771	2012-06-06 10:08:35.516771
898	/srv/mp3/Claude Debussy	1/2/3	2012-06-06 10:08:44.92302	2012-06-06 10:08:44.92302
899	/srv/mp3/Claude Debussy/Brent Hugh-Fantastic Rhapsodies	1/2/3/898	2012-06-06 10:08:45.272554	2012-06-06 10:08:45.272554
906	/srv/mp3/Elvis Costello/Elvis Costello-Rock And Roll Music-2007	1/2/3/668	2012-06-06 10:08:56.266517	2012-06-06 10:08:56.266517
907	/srv/mp3/Mozart	1/2/3	2012-06-06 10:08:56.773772	2012-06-06 10:08:56.773772
908	/srv/mp3/Mozart/The 99 Most Essential Mozart Masterpieces	1/2/3/907	2012-06-06 10:08:57.569284	2012-06-06 10:08:57.569284
909	/srv/mp3/Paul Simon/Paul Simon - (1990) - The Rhythm of the Saints [Bonus Tracks]	1/2/3/856	2012-06-06 10:08:57.57211	2012-06-06 10:08:57.57211
910	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1973 - Innervisions	1/2/3/698/717	2012-06-06 10:08:58.389956	2012-06-06 10:08:58.389956
911	/srv/mp3/Beethoven/Alfred Brendel/Beethoven Für Elise; Eroica Variations, Op.35; 6 Bagatelles Op.126; 6 Ecossaises WoO83	1/2/3/808/900	2012-06-06 10:08:59.734838	2012-06-06 10:08:59.734838
912	/srv/mp3/The Guess Who	1/2/3	2012-06-06 10:09:03.061671	2012-06-06 10:09:03.061671
913	/srv/mp3/The Guess Who/1974 - Road Food	1/2/3/912	2012-06-06 10:09:03.594889	2012-06-06 10:09:03.594889
914	/srv/mp3/Jackson Browne/2004 - The Very Best Of/Jackson Browne - The Very Best Of Disc 1	1/2/3/811/904	2012-06-06 10:09:05.437526	2012-06-06 10:09:05.437526
915	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1975 - Young Americans	1/2/3/533/606/741	2012-06-06 10:09:10.134869	2012-06-06 10:09:10.134869
916	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1987 - Characters	1/2/3/698/717	2012-06-06 10:09:12.737534	2012-06-06 10:09:12.737534
917	/srv/mp3/Cody Chesnutt	1/2/3	2012-06-06 10:09:12.816586	2012-06-06 10:09:12.816586
918	/srv/mp3/The Guess Who/1973a - 10	1/2/3/912	2012-06-06 10:09:13.044306	2012-06-06 10:09:13.044306
919	/srv/mp3/Cody Chesnutt/The Headphone Masterpiece	1/2/3/917	2012-06-06 10:09:13.355782	2012-06-06 10:09:13.355782
920	/srv/mp3/Cody Chesnutt/The Headphone Masterpiece/CD1	1/2/3/917/919	2012-06-06 10:09:13.374252	2012-06-06 10:09:13.374252
921	/srv/mp3/Jackson Browne/1972 - Saturate Before Using	1/2/3/811	2012-06-06 10:09:17.814044	2012-06-06 10:09:17.814044
922	/srv/mp3/Paul Simon/Paul Simon - (1983) - Hearts and Bones	1/2/3/856	2012-06-06 10:09:19.810974	2012-06-06 10:09:19.810974
923	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1979 - Lodger	1/2/3/533/606/741	2012-06-06 10:09:20.574318	2012-06-06 10:09:20.574318
924	/srv/mp3/The Guess Who/1970b - Share the Land	1/2/3/912	2012-06-06 10:09:20.767746	2012-06-06 10:09:20.767746
925	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions	1/2/3/668	2012-06-06 10:09:21.956018	2012-06-06 10:09:21.956018
926	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Trust	1/2/3/668/925	2012-06-06 10:09:21.957608	2012-06-06 10:09:21.957608
927	/srv/mp3/Beethoven/Beethoven Symphony No. 9 - Dresden Symphony	1/2/3/808	2012-06-06 10:09:24.882588	2012-06-06 10:09:24.882588
928	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1970 - Signed, Sealed & Delivered	1/2/3/698/717	2012-06-06 10:09:28.611784	2012-06-06 10:09:28.611784
929	/srv/mp3/Jackson Browne/Jackson Browne & Warren Zevon - 1976-12-08 - Hilversum, Holland	1/2/3/811	2012-06-06 10:09:28.991629	2012-06-06 10:09:28.991629
930	/srv/mp3/The Guess Who/1971 - So Long, Bannatyne	1/2/3/912	2012-06-06 10:09:29.720557	2012-06-06 10:09:29.720557
931	/srv/mp3/Beethoven/Symphony No. 9 - New York Philharmonic	1/2/3/808	2012-06-06 10:09:32.07626	2012-06-06 10:09:32.07626
932	/srv/mp3/Cody Chesnutt/The Headphone Masterpiece/CD2	1/2/3/917/919	2012-06-06 10:09:34.000391	2012-06-06 10:09:34.000391
933	/srv/mp3/Paul Simon/Paul Simon-The Paul Simon Anthology(Darkside_RG)	1/2/3/856	2012-06-06 10:09:34.547762	2012-06-06 10:09:34.547762
934	/srv/mp3/Paul Simon/Paul Simon-The Paul Simon Anthology(Darkside_RG)/CD1	1/2/3/856/933	2012-06-06 10:09:34.550001	2012-06-06 10:09:34.550001
935	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1999 - Hours	1/2/3/533/606/741	2012-06-06 10:09:35.444141	2012-06-06 10:09:35.444141
936	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Punch The Clock	1/2/3/668/925	2012-06-06 10:09:35.942951	2012-06-06 10:09:35.942951
937	/srv/mp3/Beethoven/Symphony No.9 in D Minor Op.125 - Great Festival Orchestra and Choir (Alberto Lizzio - conductor)	1/2/3/808	2012-06-06 10:09:36.57133	2012-06-06 10:09:36.57133
938	/srv/mp3/The Guess Who/1968 - Wheatfield Soul	1/2/3/912	2012-06-06 10:09:39.473568	2012-06-06 10:09:39.473568
939	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1972 - Talking Book	1/2/3/698/717	2012-06-06 10:09:39.589718	2012-06-06 10:09:39.589718
940	/srv/mp3/Jackson Browne/Jackson Browne - 11-9-2003 Davenport, Iowa	1/2/3/811	2012-06-06 10:09:40.553537	2012-06-06 10:09:40.553537
941	/srv/mp3/Jackson Browne/Jackson Browne - 11-9-2003 Davenport, Iowa/Disc 2	1/2/3/811/940	2012-06-06 10:09:40.555269	2012-06-06 10:09:40.555269
942	/srv/mp3/Beethoven/Beethoven Symphonies Nos. 5, 6 & 9 - Berliner Philharmoniker & Herbert von Karajan	1/2/3/808	2012-06-06 10:09:42.441419	2012-06-06 10:09:42.441419
943	/srv/mp3/Chick Corea	1/2/3	2012-06-06 10:09:44.83152	2012-06-06 10:09:44.83152
944	/srv/mp3/Chick Corea/Return to Forever	1/2/3/943	2012-06-06 10:09:45.062289	2012-06-06 10:09:45.062289
945	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1993 - The Buddha Of Suburbia	1/2/3/533/606/741	2012-06-06 10:09:47.668872	2012-06-06 10:09:47.668872
946	/srv/mp3/The Guess Who/1973b - Artificial Paradise	1/2/3/912	2012-06-06 10:09:48.366783	2012-06-06 10:09:48.366783
947	/srv/mp3/Cher	1/2/3	2012-06-06 10:09:51.347786	2012-06-06 10:09:51.347786
948	/srv/mp3/Cher/The Greatest Hits	1/2/3/947	2012-06-06 10:09:51.663097	2012-06-06 10:09:51.663097
949	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1979 - Journey Through the Secret Life of Plants Soundtrack	1/2/3/698/717	2012-06-06 10:09:51.972806	2012-06-06 10:09:51.972806
950	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1979 - Journey Through the Secret Life of Plants Soundtrack/CD 1	1/2/3/698/717/949	2012-06-06 10:09:51.974468	2012-06-06 10:09:51.974468
951	/srv/mp3/Jackson Browne/Jackson Browne - 11-9-2003 Davenport, Iowa/Disc 1	1/2/3/811/940	2012-06-06 10:09:52.047922	2012-06-06 10:09:52.047922
952	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Goodbye Cruel World	1/2/3/668/925	2012-06-06 10:09:57.105624	2012-06-06 10:09:57.105624
953	/srv/mp3/The Guess Who/1972b - Rockin'	1/2/3/912	2012-06-06 10:09:59.327601	2012-06-06 10:09:59.327601
954	/srv/mp3/Jackson Browne/2002 - The Naked Ride Home	1/2/3/811	2012-06-06 10:10:00.486429	2012-06-06 10:10:00.486429
955	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1972 - The Rise And Fall Of Ziggy Stardust	1/2/3/533/606/741	2012-06-06 10:10:01.804504	2012-06-06 10:10:01.804504
956	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1979 - Journey Through the Secret Life of Plants Soundtrack/CD 2	1/2/3/698/717/949	2012-06-06 10:10:02.14251	2012-06-06 10:10:02.14251
957	/srv/mp3/Paul Simon/Paul Simon-The Paul Simon Anthology(Darkside_RG)/CD2	1/2/3/856/933	2012-06-06 10:10:02.510795	2012-06-06 10:10:02.510795
960	/srv/mp3/The Guess Who/1969 - Canned Wheat	1/2/3/912	2012-06-06 10:10:08.37497	2012-06-06 10:10:08.37497
958	/srv/mp3/Beethoven/Beethoven Die 5 Klavierkonzerte (1 of 3) - Wilhelm Kempff, Piano - Berin Philharmonic Ferdinand Leitner, conductor	1/2/3/808	2012-06-06 10:10:04.483143	2012-06-06 10:10:04.483143
965	/srv/mp3/Beethoven/Beethoven Violin Concerto & Mozart Violin Concerto No.5 - Berliner Philharmoniker, Eugen Jochum & Wolfgang Schneiderhan	1/2/3/808	2012-06-06 10:10:11.856775	2012-06-06 10:10:11.856775
966	/srv/mp3/Beethoven/Beethoven	1/2/3/808	2012-06-06 10:10:15.906106	2012-06-06 10:10:15.906106
967	/srv/mp3/Beethoven/Beethoven/Cello Sonatas 1,4,5	1/2/3/808/966	2012-06-06 10:10:15.910589	2012-06-06 10:10:15.910589
974	/srv/mp3/Beethoven/Beethoven/Die Weihedes Hauses	1/2/3/808/966	2012-06-06 10:10:23.407919	2012-06-06 10:10:23.407919
980	/srv/mp3/Beethoven/Beethoven/Beethoven Violin Concerto, Romances	1/2/3/808/966	2012-06-06 10:10:28.614258	2012-06-06 10:10:28.614258
981	/srv/mp3/Beethoven/Beethoven/Piano Sonatas	1/2/3/808/966	2012-06-06 10:10:30.977188	2012-06-06 10:10:30.977188
982	/srv/mp3/Beethoven/Beethoven/Unknown	1/2/3/808/966	2012-06-06 10:10:32.058793	2012-06-06 10:10:32.058793
988	/srv/mp3/Beethoven/Beethoven/no title	1/2/3/808/966	2012-06-06 10:10:37.200737	2012-06-06 10:10:37.200737
990	/srv/mp3/Beethoven/Beethoven/Sonaten Op. 31	1/2/3/808/966	2012-06-06 10:10:40.380453	2012-06-06 10:10:40.380453
997	/srv/mp3/Beethoven/Beethoven/Piano Sonata	1/2/3/808/966	2012-06-06 10:10:50.367857	2012-06-06 10:10:50.367857
1000	/srv/mp3/Beethoven/Beethoven Piano Sonatas (complete) - Paul Copeland	1/2/3/808	2012-06-06 10:10:54.416171	2012-06-06 10:10:54.416171
1021	/srv/mp3/Beethoven/Beethoven Piano Sonatas, Op. 2 - Stephen Kovacevich	1/2/3/808	2012-06-06 10:11:31.935881	2012-06-06 10:11:31.935881
1034	/srv/mp3/Beethoven/Beethoven Piano Sonatas Opp. 10 & 13 - Maurizio Pollini	1/2/3/808	2012-06-06 10:11:47.569891	2012-06-06 10:11:47.569891
1046	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)	1/2/3/808	2012-06-06 10:12:04.322877	2012-06-06 10:12:04.322877
959	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Elvis Costello-This Year's Model-cd 2	1/2/3/668/925	2012-06-06 10:10:08.349658	2012-06-06 10:10:08.349658
973	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Imperial Bedroom (remastered with bonus	1/2/3/668/925	2012-06-06 10:10:22.949572	2012-06-06 10:10:22.949572
1001	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Get Happy	1/2/3/668/925	2012-06-06 10:10:55.203518	2012-06-06 10:10:55.203518
1012	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Almost Blue	1/2/3/668/925	2012-06-06 10:11:15.537598	2012-06-06 10:11:15.537598
1017	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Elvis Costello-Blood And Chocolate-1986	1/2/3/668/925	2012-06-06 10:11:26.330228	2012-06-06 10:11:26.330228
1030	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Elvis Costello-This Year's Model-cd 1-1978	1/2/3/668/925	2012-06-06 10:11:41.980169	2012-06-06 10:11:41.980169
1037	/srv/mp3/Elvis Costello/Elvis Costello & the Attractions/Elvis Costello-Armed Forces-2002	1/2/3/668/925	2012-06-06 10:11:53.631046	2012-06-06 10:11:53.631046
1056	/srv/mp3/Elvis Costello/Elvis Costello & Bill Frisell	1/2/3/668	2012-06-06 10:12:18.808168	2012-06-06 10:12:18.808168
1057	/srv/mp3/Elvis Costello/Elvis Costello & Bill Frisell/Sweetest Punch_ The Songs of Costello and Bacharach	1/2/3/668/1056	2012-06-06 10:12:18.809724	2012-06-06 10:12:18.809724
1064	/srv/mp3/Elvis Costello/Elvis Costello-The Best Of The First 10 Years-Remastered-2007	1/2/3/668	2012-06-06 10:12:41.562038	2012-06-06 10:12:41.562038
961	/srv/mp3/Jackson Browne/1983 - Lawyers In Love	1/2/3/811	2012-06-06 10:10:09.732115	2012-06-06 10:10:09.732115
969	/srv/mp3/Jackson Browne/1974 - Late for the Sky	1/2/3/811	2012-06-06 10:10:18.438267	2012-06-06 10:10:18.438267
976	/srv/mp3/JJ Cale	1/2/3	2012-06-06 10:10:24.402854	2012-06-06 10:10:24.402854
977	/srv/mp3/JJ Cale/Guitar Man	1/2/3/976	2012-06-06 10:10:24.66261	2012-06-06 10:10:24.66261
984	/srv/mp3/JJ Cale/#10	1/2/3/976	2012-06-06 10:10:34.004037	2012-06-06 10:10:34.004037
993	/srv/mp3/JJ Cale/Okie	1/2/3/976	2012-06-06 10:10:45.9132	2012-06-06 10:10:45.9132
999	/srv/mp3/JJ Cale/#5	1/2/3/976	2012-06-06 10:10:54.370087	2012-06-06 10:10:54.370087
1006	/srv/mp3/JJ Cale/#8	1/2/3/976	2012-06-06 10:11:03.69978	2012-06-06 10:11:03.69978
1011	/srv/mp3/JJ Cale/Live 2002 KFOG Studios	1/2/3/976	2012-06-06 10:11:14.747014	2012-06-06 10:11:14.747014
1015	/srv/mp3/JJ Cale/Live	1/2/3/976	2012-06-06 10:11:24.466035	2012-06-06 10:11:24.466035
1023	/srv/mp3/JJ Cale/Closer To You	1/2/3/976	2012-06-06 10:11:33.623862	2012-06-06 10:11:33.623862
1032	/srv/mp3/JJ Cale/Anyway The Wind Blows - The Anthology	1/2/3/976	2012-06-06 10:11:46.532345	2012-06-06 10:11:46.532345
1033	/srv/mp3/JJ Cale/Anyway The Wind Blows - The Anthology/CD 1	1/2/3/976/1032	2012-06-06 10:11:46.538188	2012-06-06 10:11:46.538188
1047	/srv/mp3/JJ Cale/Anyway The Wind Blows - The Anthology/CD 2	1/2/3/976/1032	2012-06-06 10:12:04.484496	2012-06-06 10:12:04.484496
1060	/srv/mp3/JJ Cale/Grasshopper	1/2/3/976	2012-06-06 10:12:25.42892	2012-06-06 10:12:25.42892
1066	/srv/mp3/Jimi Hendrix	1/2/3	2012-06-06 10:12:50.698014	2012-06-06 10:12:50.698014
1067	/srv/mp3/Jimi Hendrix/Jimi Hendrix Experience	1/2/3/1066	2012-06-06 10:12:51.133533	2012-06-06 10:12:51.133533
962	/srv/mp3/Carly Simon	1/2/3	2012-06-06 10:10:09.978565	2012-06-06 10:10:09.978565
963	/srv/mp3/Carly Simon/Reflections - Carly Simon's Greatest Hits	1/2/3/962	2012-06-06 10:10:10.368967	2012-06-06 10:10:10.368967
978	/srv/mp3/Chuck Berry	1/2/3	2012-06-06 10:10:26.181438	2012-06-06 10:10:26.181438
979	/srv/mp3/Chuck Berry/20 Super Hits	1/2/3/978	2012-06-06 10:10:26.414074	2012-06-06 10:10:26.414074
991	/srv/mp3/Chicago	1/2/3	2012-06-06 10:10:45.131909	2012-06-06 10:10:45.131909
992	/srv/mp3/Chicago/(1973) Chicago VI	1/2/3/991	2012-06-06 10:10:45.290674	2012-06-06 10:10:45.290674
1005	/srv/mp3/Chicago/(1977) Chicago XI	1/2/3/991	2012-06-06 10:11:02.22252	2012-06-06 10:11:02.22252
1013	/srv/mp3/Chicago/(1972) Chicago V	1/2/3/991	2012-06-06 10:11:21.992177	2012-06-06 10:11:21.992177
1029	/srv/mp3/Chicago/(1975 1) Chicago VIII	1/2/3/991	2012-06-06 10:11:41.545169	2012-06-06 10:11:41.545169
1039	/srv/mp3/Chicago/(1974) Chicago VII	1/2/3/991	2012-06-06 10:11:56.899523	2012-06-06 10:11:56.899523
1058	/srv/mp3/Chicago/(1969) Chicago I Transit Authority	1/2/3/991	2012-06-06 10:12:21.843274	2012-06-06 10:12:21.843274
964	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1969 - My Cherie Amour	1/2/3/698/717	2012-06-06 10:10:11.465622	2012-06-06 10:10:11.465622
971	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1967 - I was made to love her	1/2/3/698/717	2012-06-06 10:10:21.597688	2012-06-06 10:10:21.597688
983	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1963 - The 12 Year Old Genius	1/2/3/698/717	2012-06-06 10:10:32.218392	2012-06-06 10:10:32.218392
989	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1995 - Conversation Peace	1/2/3/698/717	2012-06-06 10:10:38.341749	2012-06-06 10:10:38.341749
998	/srv/mp3/Stevie Wonder/StevieWonderDiscography1/1985 - In Square Circle	1/2/3/698/717	2012-06-06 10:10:52.495841	2012-06-06 10:10:52.495841
1004	/srv/mp3/Stevie Wonder/The Very Best Of Stevie Wonder	1/2/3/698	2012-06-06 10:11:01.014599	2012-06-06 10:11:01.014599
1026	/srv/mp3/Standells	1/2/3	2012-06-06 10:11:37.581094	2012-06-06 10:11:37.581094
1027	/srv/mp3/Standells/Dirty Water	1/2/3/1026	2012-06-06 10:11:37.916393	2012-06-06 10:11:37.916393
1038	/srv/mp3/Standells/The Hot Ones	1/2/3/1026	2012-06-06 10:11:54.21857	2012-06-06 10:11:54.21857
1049	/srv/mp3/Steely Dan	1/2/3	2012-06-06 10:12:09.582866	2012-06-06 10:12:09.582866
1051	/srv/mp3/Steely Dan/1994 - 11 Tracks of Whack	1/2/3/1049	2012-06-06 10:12:10.144566	2012-06-06 10:12:10.144566
1059	/srv/mp3/Steely Dan/1974 - Pretzel Logic	1/2/3/1049	2012-06-06 10:12:23.223432	2012-06-06 10:12:23.223432
1065	/srv/mp3/Steely Dan/1972 - Cant Buy A Thrill	1/2/3/1049	2012-06-06 10:12:47.753222	2012-06-06 10:12:47.753222
968	/srv/mp3/The Guess Who/1970a - American Woman	1/2/3/912	2012-06-06 10:10:16.694582	2012-06-06 10:10:16.694582
975	/srv/mp3/The Guess Who/The Greatest Of The Guess Who	1/2/3/912	2012-06-06 10:10:24.293142	2012-06-06 10:10:24.293142
987	/srv/mp3/The Guess Who/1972a - Live at the Paramount	1/2/3/912	2012-06-06 10:10:36.562736	2012-06-06 10:10:36.562736
994	/srv/mp3/The Eagles	1/2/3	2012-06-06 10:10:47.326638	2012-06-06 10:10:47.326638
995	/srv/mp3/The Eagles/The Very Best Of	1/2/3/994	2012-06-06 10:10:47.680528	2012-06-06 10:10:47.680528
1007	/srv/mp3/Talking Heads	1/2/3	2012-06-06 10:11:07.050953	2012-06-06 10:11:07.050953
1008	/srv/mp3/Talking Heads/Little Creatures	1/2/3/1007	2012-06-06 10:11:07.817035	2012-06-06 10:11:07.817035
1009	/srv/mp3/Toots and the Maytals	1/2/3	2012-06-06 10:11:13.856149	2012-06-06 10:11:13.856149
1010	/srv/mp3/Toots and the Maytals/Pressure Drop, The Best Of	1/2/3/1009	2012-06-06 10:11:14.185778	2012-06-06 10:11:14.185778
1024	/srv/mp3/Thievery Corporation	1/2/3	2012-06-06 10:11:36.29458	2012-06-06 10:11:36.29458
1025	/srv/mp3/Thievery Corporation/Richest Man in Babylon (2002)	1/2/3/1024	2012-06-06 10:11:36.46538	2012-06-06 10:11:36.46538
1036	/srv/mp3/Thievery Corporation/The Mirror Conspiracy (2000)	1/2/3/1024	2012-06-06 10:11:48.997019	2012-06-06 10:11:48.997019
1041	/srv/mp3/Three Dog Night	1/2/3	2012-06-06 10:11:59.204531	2012-06-06 10:11:59.204531
1042	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)	1/2/3/1041	2012-06-06 10:11:59.512577	2012-06-06 10:11:59.512577
1043	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/09-Three Dog Night - Coming Down Your Way (1975)	1/2/3/1041/1042	2012-06-06 10:11:59.51984	2012-06-06 10:11:59.51984
1048	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/02-Three Dog Night - Suitable for Framing (1969)	1/2/3/1041/1042	2012-06-06 10:12:08.457419	2012-06-06 10:12:08.457419
1055	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/04-Three Dog Night - It Ain't Easy (1970)	1/2/3/1041/1042	2012-06-06 10:12:17.625629	2012-06-06 10:12:17.625629
1062	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/06-Three Dog Night - Seven Separate Fools (1972)	1/2/3/1041/1042	2012-06-06 10:12:33.241924	2012-06-06 10:12:33.241924
1068	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/07-Three Dog Night - Cyan (1973)	1/2/3/1041/1042	2012-06-06 10:12:52.273763	2012-06-06 10:12:52.273763
970	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1969 - Space Oddity	1/2/3/533/606/741	2012-06-06 10:10:20.039292	2012-06-06 10:10:20.039292
985	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1997 - Earthling	1/2/3/533/606/741	2012-06-06 10:10:34.573049	2012-06-06 10:10:34.573049
996	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1970 - The Man Who Sold the World	1/2/3/533/606/741	2012-06-06 10:10:48.195005	2012-06-06 10:10:48.195005
1003	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1993 - Black Tie White Noise	1/2/3/533/606/741	2012-06-06 10:11:00.066377	2012-06-06 10:11:00.066377
1014	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1983 - Let's Dance	1/2/3/533/606/741	2012-06-06 10:11:23.100667	2012-06-06 10:11:23.100667
1022	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1987 - Never Let Me Down	1/2/3/533/606/741	2012-06-06 10:11:32.66884	2012-06-06 10:11:32.66884
1035	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1976 - Station To Station	1/2/3/533/606/741	2012-06-06 10:11:47.847475	2012-06-06 10:11:47.847475
1040	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/2002 - Heathen	1/2/3/533/606/741	2012-06-06 10:11:57.081473	2012-06-06 10:11:57.081473
1050	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1989 - Tin Machine	1/2/3/533/606/741	2012-06-06 10:12:10.06045	2012-06-06 10:12:10.06045
1061	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Studio albums ---/1980 - Scary Monsters	1/2/3/533/606/741	2012-06-06 10:12:29.166408	2012-06-06 10:12:29.166408
1069	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---	1/2/3/533/606	2012-06-06 10:12:57.170279	2012-06-06 10:12:57.170279
1070	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/BBC London theatre 2000	1/2/3/533/606/1069	2012-06-06 10:12:57.171863	2012-06-06 10:12:57.171863
972	/srv/mp3/Paul Simon/Paul Simon - (1974) - Paul Simon in Concert_ Live Rhymin'	1/2/3/856	2012-06-06 10:10:21.723601	2012-06-06 10:10:21.723601
986	/srv/mp3/Paul Simon/Paul Simon - (1997) - Songs From the Capeman [Bonus Tracks]	1/2/3/856	2012-06-06 10:10:35.480607	2012-06-06 10:10:35.480607
1002	/srv/mp3/Paul Simon/Paul Simon - (1991) - Paul Simon's Concert in the Park, August 15, 1991	1/2/3/856	2012-06-06 10:10:58.119765	2012-06-06 10:10:58.119765
1016	/srv/mp3/Paul Simon/Paul Simon - (1975) - Still Crazy After All These Years [Bonus Tracks]	1/2/3/856	2012-06-06 10:11:25.717935	2012-06-06 10:11:25.717935
1028	/srv/mp3/Paul Simon/Paul Simon - (1972) - Paul Simon [Bonus Tracks]	1/2/3/856	2012-06-06 10:11:40.735973	2012-06-06 10:11:40.735973
1045	/srv/mp3/Paul Simon/Paul Simon - So Beautiful or So What [mp3-320-2011]	1/2/3/856	2012-06-06 10:12:02.131827	2012-06-06 10:12:02.131827
1054	/srv/mp3/Paul Simon/Paul Simon - (1980) - One Trick Pony	1/2/3/856	2012-06-06 10:12:16.784515	2012-06-06 10:12:16.784515
1063	/srv/mp3/Paul Simon/Paul Simon - (1973) - There Goes Rhymin' Simon [Bonus Tracks]	1/2/3/856	2012-06-06 10:12:39.726808	2012-06-06 10:12:39.726808
1018	/srv/mp3/Mike Oldfield	1/2/3	2012-06-06 10:11:30.468927	2012-06-06 10:11:30.468927
1019	/srv/mp3/Mike Oldfield/the platinum collection	1/2/3/1018	2012-06-06 10:11:30.732954	2012-06-06 10:11:30.732954
1020	/srv/mp3/Mike Oldfield/the platinum collection/cd3	1/2/3/1018/1019	2012-06-06 10:11:30.736731	2012-06-06 10:11:30.736731
1031	/srv/mp3/Mike Oldfield/the platinum collection/cd2	1/2/3/1018/1019	2012-06-06 10:11:45.500189	2012-06-06 10:11:45.500189
1044	/srv/mp3/Mike Oldfield/the platinum collection/cd1	1/2/3/1018/1019	2012-06-06 10:12:01.569202	2012-06-06 10:12:01.569202
1052	/srv/mp3/Nellie McKay	1/2/3	2012-06-06 10:12:14.436374	2012-06-06 10:12:14.436374
1053	/srv/mp3/Nellie McKay/Pretty Little Head	1/2/3/1052	2012-06-06 10:12:14.67143	2012-06-06 10:12:14.67143
1071	/srv/mp3/Chicago/(1980) Chicago XIV	1/2/3/991	2012-06-06 10:13:04.532056	2012-06-06 10:13:04.532056
1072	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven	1/2/3/808/1046	2012-06-06 10:13:04.872812	2012-06-06 10:13:04.872812
1073	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven/Agnes Baltsa, Anna Tomowa-Sintow, Berliner Philharmoniker, Helmuth Froschauer, Herbert von Karajan, José Van Dam, Peter Schreier & Wiener Singverein	1/2/3/808/1046/1072	2012-06-06 10:13:04.958882	2012-06-06 10:13:04.958882
1074	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven/Agnes Baltsa, Anna Tomowa-Sintow, Berliner Philharmoniker, Helmuth Froschauer, Herbert von Karajan, José Van Dam, Peter Schreier & Wiener Singverein/Beethoven Symphonies Nos. 5, 6 & 9	1/2/3/808/1046/1072/1073	2012-06-06 10:13:05.18444	2012-06-06 10:13:05.18444
1075	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven/Alfred Brendel	1/2/3/808/1046/1072	2012-06-06 10:13:05.335788	2012-06-06 10:13:05.335788
1076	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven/Alfred Brendel/Beethoven Für Elise; Eroica Variations, Op.35; 6 Bagatelles Op.126; 6 Ecossaises WoO83	1/2/3/808/1046/1072/1075	2012-06-06 10:13:05.414302	2012-06-06 10:13:05.414302
1077	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven/Beethoven	1/2/3/808/1046/1072	2012-06-06 10:13:05.543481	2012-06-06 10:13:05.543481
1078	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven/Beethoven/Piano Sonatas	1/2/3/808/1046/1072/1077	2012-06-06 10:13:05.78475	2012-06-06 10:13:05.78475
1079	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/10-Three Dog Night - American Pastime (1976)	1/2/3/1041/1042	2012-06-06 10:13:06.57642	2012-06-06 10:13:06.57642
1080	/srv/mp3/Beethoven/Beethoven, Ludwig Van (1770 - 1827)/Beethoven/Berlin Philharmonic Orchestra - Herbert Von Karajan,conductor - Gundula Janowitz,Soprano - Hilde Rossel-Majdan,Contralso - Waldemar Kmentt,Tenor - Walter Berry,Bariton	1/2/3/808/1046/1072	2012-06-06 10:13:06.93481	2012-06-06 10:13:06.93481
1081	/srv/mp3/Beethoven/Beethoven Cello Sonata - McGegan, Nicholas	1/2/3/808	2012-06-06 10:13:07.833669	2012-06-06 10:13:07.833669
1082	/srv/mp3/Steely Dan/2003 - Everything Must Go	1/2/3/1049	2012-06-06 10:13:07.941317	2012-06-06 10:13:07.941317
1083	/srv/mp3/Nellie McKay/Obligatory Villagers	1/2/3/1052	2012-06-06 10:13:08.020184	2012-06-06 10:13:08.020184
1084	/srv/mp3/Pete Townshend	1/2/3	2012-06-06 10:13:08.506633	2012-06-06 10:13:08.506633
1085	/srv/mp3/Pete Townshend/Empty Glass	1/2/3/1084	2012-06-06 10:13:08.918436	2012-06-06 10:13:08.918436
1086	/srv/mp3/Jimi Hendrix/Good Feeling	1/2/3/1066	2012-06-06 10:13:09.700592	2012-06-06 10:13:09.700592
1087	/srv/mp3/Various/Christmas	1/2/3/59	2012-06-06 10:13:11.551514	2012-06-06 10:13:11.551514
1088	/srv/mp3/Various/Christmas/The Time-Life Treasury of Christmas- 2 CD Collection [2001] Disc 2	1/2/3/59/1087	2012-06-06 10:13:11.553527	2012-06-06 10:13:11.553527
1089	/srv/mp3/Beethoven/All Is Dream - Mercury Rev	1/2/3/808	2012-06-06 10:13:12.161208	2012-06-06 10:13:12.161208
1090	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/Bowie at the Beeb - Best of BBC Sessions 1968-72 #2 (7of the unreleased versions)	1/2/3/533/606/1069	2012-06-06 10:13:13.293484	2012-06-06 10:13:13.293484
1091	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/08-Three Dog Night - Hard Labor (1974)	1/2/3/1041/1042	2012-06-06 10:13:15.148029	2012-06-06 10:13:15.148029
1092	/srv/mp3/Propaganda	1/2/3	2012-06-06 10:13:18.522704	2012-06-06 10:13:18.522704
1093	/srv/mp3/Beethoven/Beethoven The Piano Concertos (3 of 3) - Wilhelm Kempff, Piano - Berin Philharmonic Ferdinand Leitner, conductor	1/2/3/808	2012-06-06 10:13:18.619831	2012-06-06 10:13:18.619831
1094	/srv/mp3/Elvis Costello/Elvis Costello & Brodsky Quartet	1/2/3/668	2012-06-06 10:13:18.863705	2012-06-06 10:13:18.863705
1095	/srv/mp3/Propaganda/A Secret Wish (Japanese Version)	1/2/3/1092	2012-06-06 10:13:18.86749	2012-06-06 10:13:18.86749
1096	/srv/mp3/Elvis Costello/Elvis Costello & Brodsky Quartet/Elvis Costello And The Brodsky Quartet-The Juliet Le-Cd 2	1/2/3/668/1094	2012-06-06 10:13:18.869085	2012-06-06 10:13:18.869085
1097	/srv/mp3/Steely Dan/1975 - Katy Lied	1/2/3/1049	2012-06-06 10:13:19.121563	2012-06-06 10:13:19.121563
1098	/srv/mp3/Nena	1/2/3	2012-06-06 10:13:19.142786	2012-06-06 10:13:19.142786
1099	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/1984 - Serious Moonlight Live Concert	1/2/3/533/606/1069	2012-06-06 10:13:19.18946	2012-06-06 10:13:19.18946
1100	/srv/mp3/Nena/99 Luftballons	1/2/3/1098	2012-06-06 10:13:19.299863	2012-06-06 10:13:19.299863
1101	/srv/mp3/Jimi Hendrix/Acoustic Jams Disc 2	1/2/3/1066	2012-06-06 10:13:19.468114	2012-06-06 10:13:19.468114
1102	/srv/mp3/Chicago/(1970) Chicago II	1/2/3/991	2012-06-06 10:13:20.906819	2012-06-06 10:13:20.906819
1103	/srv/mp3/Beethoven/Beethoven Piano Sonatas Nos.8 Pathétique, 14 Moonlight, 15 Pastorale & 24 For Therese - Wilhelm Kempff	1/2/3/808	2012-06-06 10:13:22.414189	2012-06-06 10:13:22.414189
1104	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/01-Three Dog Night - Three Dog Night (1969)	1/2/3/1041/1042	2012-06-06 10:13:22.722182	2012-06-06 10:13:22.722182
1105	/srv/mp3/Various/Christmas/Treasury of Christmas- Holiday Magic	1/2/3/59/1087	2012-06-06 10:13:28.69355	2012-06-06 10:13:28.69355
1106	/srv/mp3/Propellerheads	1/2/3	2012-06-06 10:13:31.632854	2012-06-06 10:13:31.632854
1107	/srv/mp3/Propellerheads/History Repeating (Single)	1/2/3/1106	2012-06-06 10:13:32.340872	2012-06-06 10:13:32.340872
1108	/srv/mp3/Elvis Costello/Elvis Costello & Brodsky Quartet/Elvis Costello And The Brodsky Quartet-The Juliet Le-Cd 1	1/2/3/668/1094	2012-06-06 10:13:32.357369	2012-06-06 10:13:32.357369
1109	/srv/mp3/Steely Dan/2000 - Two Against Nature	1/2/3/1049	2012-06-06 10:13:33.359522	2012-06-06 10:13:33.359522
1110	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/03-Three Dog Night - Naturally (1970)	1/2/3/1041/1042	2012-06-06 10:13:33.361235	2012-06-06 10:13:33.361235
1111	/srv/mp3/Michael Jackson	1/2/3	2012-06-06 10:13:34.929154	2012-06-06 10:13:34.929154
1112	/srv/mp3/Jimi Hendrix/Apartment Tapes 1968	1/2/3/1066	2012-06-06 10:13:34.948849	2012-06-06 10:13:34.948849
1113	/srv/mp3/Muse	1/2/3	2012-06-06 10:13:35.105215	2012-06-06 10:13:35.105215
1114	/srv/mp3/Muse/Hullabaloo (Soundtrack) Disc 2	1/2/3/1113	2012-06-06 10:13:35.417351	2012-06-06 10:13:35.417351
1115	/srv/mp3/Propellerheads/Take California	1/2/3/1106	2012-06-06 10:13:35.424931	2012-06-06 10:13:35.424931
1116	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/1978 - Stage	1/2/3/533/606/1069	2012-06-06 10:13:35.946274	2012-06-06 10:13:35.946274
1117	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/1994 - Santa Monica '72 (Ziggy Stardust and the Spiders from Mars Live)	1/2/3/533/606/1069	2012-06-06 10:13:38.662021	2012-06-06 10:13:38.662021
1118	/srv/mp3/Beethoven/Beethoven Piano Sonatas No. 17 (The Tempest), No. 21 (Waldstein), No. 25 & No. 26 (Les Adieux) - Maurizio Pollini	1/2/3/808	2012-06-06 10:13:39.728226	2012-06-06 10:13:39.728226
1119	/srv/mp3/Propellerheads/On Her Majesty's Secret Service (Maxi CD)	1/2/3/1106	2012-06-06 10:13:39.934863	2012-06-06 10:13:39.934863
1120	/srv/mp3/Jimi Hendrix/In The West	1/2/3/1066	2012-06-06 10:13:41.417477	2012-06-06 10:13:41.417477
1121	/srv/mp3/Steely Dan/1976 - The Royal Scam	1/2/3/1049	2012-06-06 10:13:42.389304	2012-06-06 10:13:42.389304
1122	/srv/mp3/Propellerheads/Bang On!	1/2/3/1106	2012-06-06 10:13:42.774624	2012-06-06 10:13:42.774624
1123	/srv/mp3/Three Dog Night/Three Dog Night - (1969 - 1976) (MP3@320Kbps)/05-Three Dog Night - Harmony (1971)	1/2/3/1041/1042	2012-06-06 10:13:43.281193	2012-06-06 10:13:43.281193
1132	/srv/mp3/The Bangles	1/2/3	2012-06-06 10:13:53.064372	2012-06-06 10:13:53.064372
1134	/srv/mp3/The Bangles/Different Light	1/2/3/1132	2012-06-06 10:13:53.263344	2012-06-06 10:13:53.263344
1140	/srv/mp3/The Bangles/Best Of The Bangles	1/2/3/1132	2012-06-06 10:14:05.575353	2012-06-06 10:14:05.575353
1156	/srv/mp3/The Bangles/Everything	1/2/3/1132	2012-06-06 10:14:21.354978	2012-06-06 10:14:21.354978
1167	/srv/mp3/The Bangles/Doll Revolution	1/2/3/1132	2012-06-06 10:14:35.630301	2012-06-06 10:14:35.630301
1180	/srv/mp3/The Bangles/Getting Out Of Hand	1/2/3/1132	2012-06-06 10:14:50.254131	2012-06-06 10:14:50.254131
1181	/srv/mp3/The Bangles/Greatest Hits	1/2/3/1132	2012-06-06 10:14:52.143629	2012-06-06 10:14:52.143629
1190	/srv/mp3/The Bangles/Bangles	1/2/3/1132	2012-06-06 10:15:01.442228	2012-06-06 10:15:01.442228
1192	/srv/mp3/The Bangles/September Gurls	1/2/3/1132	2012-06-06 10:15:02.637823	2012-06-06 10:15:02.637823
1197	/srv/mp3/The Bangles/Glitter Years_ Rarties & Gems	1/2/3/1132	2012-06-06 10:15:10.456439	2012-06-06 10:15:10.456439
1208	/srv/mp3/The Bangles/All Over the Place	1/2/3/1132	2012-06-06 10:15:22.39051	2012-06-06 10:15:22.39051
1218	/srv/mp3/The Who	1/2/3	2012-06-06 10:15:34.083623	2012-06-06 10:15:34.083623
1219	/srv/mp3/The Who/It's Hard	1/2/3/1218	2012-06-06 10:15:34.465159	2012-06-06 10:15:34.465159
1233	/srv/mp3/The Who/The Who Sell Out	1/2/3/1218	2012-06-06 10:15:52.016434	2012-06-06 10:15:52.016434
1124	/srv/mp3/Jimi Hendrix/Electric Ladyland	1/2/3/1066	2012-06-06 10:13:46.761078	2012-06-06 10:13:46.761078
1137	/srv/mp3/Jimi Hendrix/Unsorted	1/2/3/1066	2012-06-06 10:14:03.147202	2012-06-06 10:14:03.147202
1157	/srv/mp3/Jimi Hendrix/Kiss The Sky	1/2/3/1066	2012-06-06 10:14:21.513721	2012-06-06 10:14:21.513721
1163	/srv/mp3/Jimi Hendrix/Crash Landing	1/2/3/1066	2012-06-06 10:14:31.002751	2012-06-06 10:14:31.002751
1169	/srv/mp3/Jimi Hendrix/Midnight Lightning	1/2/3/1066	2012-06-06 10:14:38.141972	2012-06-06 10:14:38.141972
1176	/srv/mp3/Jimi Hendrix/Sothebys Auction Tapes	1/2/3/1066	2012-06-06 10:14:48.052778	2012-06-06 10:14:48.052778
1196	/srv/mp3/Jimi Hendrix/Cherokee Mist	1/2/3/1066	2012-06-06 10:15:06.995037	2012-06-06 10:15:06.995037
1203	/srv/mp3/Jimi Hendrix/Taj Mahal Sessions	1/2/3/1066	2012-06-06 10:15:16.405654	2012-06-06 10:15:16.405654
1205	/srv/mp3/Jimi Hendrix/All The Hits	1/2/3/1066	2012-06-06 10:15:21.81639	2012-06-06 10:15:21.81639
1220	/srv/mp3/Jimi Hendrix/War Heroes	1/2/3/1066	2012-06-06 10:15:34.847928	2012-06-06 10:15:34.847928
1226	/srv/mp3/Jimi Hendrix/Live in Atlanta	1/2/3/1066	2012-06-06 10:15:42.222387	2012-06-06 10:15:42.222387
1234	/srv/mp3/Jimi Hendrix/Band Of Gypsies	1/2/3/1066	2012-06-06 10:15:53.836458	2012-06-06 10:15:53.836458
1125	/srv/mp3/Various/Christmas/Little Drummer Boy	1/2/3/59/1087	2012-06-06 10:13:47.234332	2012-06-06 10:13:47.234332
1144	/srv/mp3/Various/Christmas/Steel Drum Christmas	1/2/3/59/1087	2012-06-06 10:14:08.999747	2012-06-06 10:14:08.999747
1290	/srv/mp3/Jeff Beck	1/2/3	2012-06-06 10:17:16.847294	2012-06-06 10:17:16.847294
1148	/srv/mp3/Various/Christmas/The Time-Life Treasury of Christmas II	1/2/3/59/1087	2012-06-06 10:14:10.509346	2012-06-06 10:14:10.509346
1158	/srv/mp3/Various/World Cup Dance Anthems 2006	1/2/3/59	2012-06-06 10:14:23.419172	2012-06-06 10:14:23.419172
1189	/srv/mp3/Various/Totally Number 1 Hits of the 70s hifi-torrents	1/2/3/59	2012-06-06 10:14:59.884831	2012-06-06 10:14:59.884831
1204	/srv/mp3/Various/Billboard Top 100 of 1960 & all 53 Charts	1/2/3/59	2012-06-06 10:15:21.608475	2012-06-06 10:15:21.608475
1126	/srv/mp3/Muse/Origin Of Symmetry	1/2/3/1113	2012-06-06 10:13:49.838923	2012-06-06 10:13:49.838923
1138	/srv/mp3/Muse/Black Holes and Revelations	1/2/3/1113	2012-06-06 10:14:03.476518	2012-06-06 10:14:03.476518
1153	/srv/mp3/Muse/Showbiz	1/2/3/1113	2012-06-06 10:14:17.881367	2012-06-06 10:14:17.881367
1164	/srv/mp3/Muse/Hullabaloo (Soundtrack) Disc 1	1/2/3/1113	2012-06-06 10:14:32.688334	2012-06-06 10:14:32.688334
1175	/srv/mp3/Muse/Absolution	1/2/3/1113	2012-06-06 10:14:45.823579	2012-06-06 10:14:45.823579
1193	/srv/mp3/Miles Davis	1/2/3	2012-06-06 10:15:02.946	2012-06-06 10:15:02.946
1194	/srv/mp3/Miles Davis/Round About Midnight Legacy Edition 2CDS	1/2/3/1193	2012-06-06 10:15:03.125547	2012-06-06 10:15:03.125547
1195	/srv/mp3/Miles Davis/Round About Midnight Legacy Edition 2CDS/CD1	1/2/3/1193/1194	2012-06-06 10:15:03.129022	2012-06-06 10:15:03.129022
1200	/srv/mp3/Miles Davis/Round About Midnight Legacy Edition 2CDS/CD2	1/2/3/1193/1194	2012-06-06 10:15:12.799042	2012-06-06 10:15:12.799042
1206	/srv/mp3/Miles Davis/Bitches Brew [1969]	1/2/3/1193	2012-06-06 10:15:22.197679	2012-06-06 10:15:22.197679
1207	/srv/mp3/Miles Davis/Bitches Brew [1969]/Miles Davis - Bitches Brew (Disc 1)	1/2/3/1193/1206	2012-06-06 10:15:22.202009	2012-06-06 10:15:22.202009
1210	/srv/mp3/Miles Davis/Bitches Brew [1969]/Miles Davis - Bitches Brew (Disc 2)	1/2/3/1193/1206	2012-06-06 10:15:24.226071	2012-06-06 10:15:24.226071
1215	/srv/mp3/Me First And The Gimme Gimmes	1/2/3	2012-06-06 10:15:29.562517	2012-06-06 10:15:29.562517
1216	/srv/mp3/Me First And The Gimme Gimmes/Blow in the Wind	1/2/3/1215	2012-06-06 10:15:29.790015	2012-06-06 10:15:29.790015
1228	/srv/mp3/Me First And The Gimme Gimmes/Love Their Country	1/2/3/1215	2012-06-06 10:15:44.351444	2012-06-06 10:15:44.351444
1127	/srv/mp3/Propellerheads/Extended Play EP	1/2/3/1106	2012-06-06 10:13:50.827593	2012-06-06 10:13:50.827593
1136	/srv/mp3/Propellerheads/Decksandrumsandrockandroll	1/2/3/1106	2012-06-06 10:13:57.062275	2012-06-06 10:13:57.062275
1147	/srv/mp3/OMD	1/2/3	2012-06-06 10:14:10.235647	2012-06-06 10:14:10.235647
1149	/srv/mp3/OMD/1985 - Crush	1/2/3/1147	2012-06-06 10:14:10.558913	2012-06-06 10:14:10.558913
1155	/srv/mp3/OMD/1993 - Liberator	1/2/3/1147	2012-06-06 10:14:21.143582	2012-06-06 10:14:21.143582
1162	/srv/mp3/OMD/1980 - Organisation	1/2/3/1147	2012-06-06 10:14:30.670239	2012-06-06 10:14:30.670239
1170	/srv/mp3/OMD/1996 - Universal	1/2/3/1147	2012-06-06 10:14:38.979893	2012-06-06 10:14:38.979893
1179	/srv/mp3/OMD/1986 - The Pacific Age	1/2/3/1147	2012-06-06 10:14:49.609173	2012-06-06 10:14:49.609173
1188	/srv/mp3/OMD/1981 - Architecture And Morality	1/2/3/1147	2012-06-06 10:14:59.561157	2012-06-06 10:14:59.561157
1202	/srv/mp3/OMD/1984 - Junk Culture	1/2/3/1147	2012-06-06 10:15:15.500078	2012-06-06 10:15:15.500078
1214	/srv/mp3/OMD/1980 - Orchestral Manoeuvres In The Dark	1/2/3/1147	2012-06-06 10:15:27.640845	2012-06-06 10:15:27.640845
1224	/srv/mp3/OMD/1983 - Dazzle Ships	1/2/3/1147	2012-06-06 10:15:39.053943	2012-06-06 10:15:39.053943
1232	/srv/mp3/OMD/1991 - Sugar Tax	1/2/3/1147	2012-06-06 10:15:50.570848	2012-06-06 10:15:50.570848
1128	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/A Reality Tour	1/2/3/533/606/1069	2012-06-06 10:13:51.575637	2012-06-06 10:13:51.575637
1152	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/Arcade Fire & David Bowie - Live at Fashion Rocks 2005	1/2/3/533/606/1069	2012-06-06 10:14:16.211634	2012-06-06 10:14:16.211634
1154	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/1974 - Live At The Tower Philadelphia	1/2/3/533/606/1069	2012-06-06 10:14:18.318689	2012-06-06 10:14:18.318689
1168	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/Va Va Va Voom (Live Bootleg)	1/2/3/533/606/1069	2012-06-06 10:14:35.887377	2012-06-06 10:14:35.887377
1182	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/Bowie at the Beeb - Best of BBC Sessions 1968-72	1/2/3/533/606/1069	2012-06-06 10:14:53.142597	2012-06-06 10:14:53.142597
1213	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/1983 - Ziggy Stardust - The Motion Picture	1/2/3/533/606/1069	2012-06-06 10:15:27.120443	2012-06-06 10:15:27.120443
1225	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Live albums ---/1992 - Tin Machine Live Oy Vey, Baby	1/2/3/533/606/1069	2012-06-06 10:15:41.842511	2012-06-06 10:15:41.842511
1230	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Compilations ---	1/2/3/533/606	2012-06-06 10:15:49.258388	2012-06-06 10:15:49.258388
1231	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Compilations ---/1976 - ChangesOneBowie	1/2/3/533/606/1230	2012-06-06 10:15:49.260031	2012-06-06 10:15:49.260031
1129	/srv/mp3/Eartha Kitt	1/2/3	2012-06-06 10:13:51.971173	2012-06-06 10:13:51.971173
1131	/srv/mp3/Eartha Kitt/Eartha Kitt - With Sergio Mendez and Brazil '66	1/2/3/1129	2012-06-06 10:13:52.599954	2012-06-06 10:13:52.599954
1141	/srv/mp3/Etta James	1/2/3	2012-06-06 10:14:07.956346	2012-06-06 10:14:07.956346
1143	/srv/mp3/Etta James/The Essential Etta James	1/2/3/1141	2012-06-06 10:14:08.948211	2012-06-06 10:14:08.948211
1183	/srv/mp3/Ethiopiques	1/2/3	2012-06-06 10:14:55.770083	2012-06-06 10:14:55.770083
1184	/srv/mp3/Ethiopiques/Ethiopiques 4	1/2/3/1183	2012-06-06 10:14:56.167243	2012-06-06 10:14:56.167243
1199	/srv/mp3/Edie Brickell & New Bohemians	1/2/3	2012-06-06 10:15:12.709333	2012-06-06 10:15:12.709333
1201	/srv/mp3/Edie Brickell & New Bohemians/Shooting Rubberbands At The Stars	1/2/3/1199	2012-06-06 10:15:13.014679	2012-06-06 10:15:13.014679
1221	/srv/mp3/Edie Brickell & New Bohemians/Ghost Of A Dog	1/2/3/1199	2012-06-06 10:15:34.924512	2012-06-06 10:15:34.924512
1130	/srv/mp3/Steely Dan/1993 - Roaring of the Lamb	1/2/3/1049	2012-06-06 10:13:52.540299	2012-06-06 10:13:52.540299
1142	/srv/mp3/Steely Dan/1977 - Aja	1/2/3/1049	2012-06-06 10:14:08.200356	2012-06-06 10:14:08.200356
1151	/srv/mp3/Steely Dan/1982 - The Nightfly	1/2/3/1049	2012-06-06 10:14:15.979999	2012-06-06 10:14:15.979999
1161	/srv/mp3/Steely Dan/1980 - Gaucho	1/2/3/1049	2012-06-06 10:14:25.669884	2012-06-06 10:14:25.669884
1166	/srv/mp3/Steely Dan/1973 - Countdown To Ecstasy	1/2/3/1049	2012-06-06 10:14:34.125029	2012-06-06 10:14:34.125029
1172	/srv/mp3/Sir Mix-A-Lot	1/2/3	2012-06-06 10:14:42.976802	2012-06-06 10:14:42.976802
1173	/srv/mp3/Sir Mix-A-Lot/Swass	1/2/3/1172	2012-06-06 10:14:43.472567	2012-06-06 10:14:43.472567
1185	/srv/mp3/Soundtracks	1/2/3	2012-06-06 10:14:56.189106	2012-06-06 10:14:56.189106
1186	/srv/mp3/Soundtracks/jesus christ superstar (original 1970 co	1/2/3/1185	2012-06-06 10:14:56.338471	2012-06-06 10:14:56.338471
1187	/srv/mp3/Soundtracks/jesus christ superstar (original 1970 co/cd2	1/2/3/1185/1186	2012-06-06 10:14:56.339982	2012-06-06 10:14:56.339982
1198	/srv/mp3/Soundtracks/jesus christ superstar (original 1970 co/cd1	1/2/3/1185/1186	2012-06-06 10:15:10.537469	2012-06-06 10:15:10.537469
1211	/srv/mp3/Soundtracks/jesus christ superstar	1/2/3/1185	2012-06-06 10:15:24.621296	2012-06-06 10:15:24.621296
1212	/srv/mp3/Soundtracks/jesus christ superstar/cd 2	1/2/3/1185/1211	2012-06-06 10:15:24.623186	2012-06-06 10:15:24.623186
1217	/srv/mp3/Soundtracks/jesus christ superstar/cd 1	1/2/3/1185/1211	2012-06-06 10:15:33.767234	2012-06-06 10:15:33.767234
1227	/srv/mp3/Soundtracks/trios couleurs bleu	1/2/3/1185	2012-06-06 10:15:43.569681	2012-06-06 10:15:43.569681
1133	/srv/mp3/Chicago/(1979) Chicago XIII	1/2/3/991	2012-06-06 10:13:53.1157	2012-06-06 10:13:53.1157
1145	/srv/mp3/Chicago/(2003) The Box	1/2/3/991	2012-06-06 10:14:09.908286	2012-06-06 10:14:09.908286
1146	/srv/mp3/Chicago/(2003) The Box/Disc 1 - CTA to Chicago	1/2/3/991/1145	2012-06-06 10:14:09.912903	2012-06-06 10:14:09.912903
1160	/srv/mp3/Chicago/(2003) The Box/Disc 3 - Chicago VIII to Hot Streets	1/2/3/991/1145	2012-06-06 10:14:24.101682	2012-06-06 10:14:24.101682
1174	/srv/mp3/Chicago/(2003) The Box/Disc 5 - Chicago 19 to Heart of Volume II	1/2/3/991/1145	2012-06-06 10:14:44.254002	2012-06-06 10:14:44.254002
1191	/srv/mp3/Chicago/(2003) The Box/Disc 4 - Chicago 13 to Chicago 18	1/2/3/991/1145	2012-06-06 10:15:02.326445	2012-06-06 10:15:02.326445
1209	/srv/mp3/Chicago/(2003) The Box/Disc 2 - Chicago III to Chicago VII	1/2/3/991/1145	2012-06-06 10:15:22.449851	2012-06-06 10:15:22.449851
1223	/srv/mp3/Chicago/(1971) Chicago IV At Carnegie Hall (Live)	1/2/3/991	2012-06-06 10:15:38.833738	2012-06-06 10:15:38.833738
1135	/srv/mp3/Beethoven/Beethoven Klavierkonzerte Nos 4 & 5 - Wilhelm Kempff, Berliner Philarmoniker	1/2/3/808	2012-06-06 10:13:56.77995	2012-06-06 10:13:56.77995
1139	/srv/mp3/Beethoven/Beethoven Piano Concertos Nos. 1 & 2 - Berliner Philharmoniker, Claudio Abbado & Maurizio Pollini	1/2/3/808	2012-06-06 10:14:04.157104	2012-06-06 10:14:04.157104
1150	/srv/mp3/Beethoven/Beethoven Symphonies Nos. 1 & 2 - Berliner Philharmoniker & Herbert von Karajan	1/2/3/808	2012-06-06 10:14:12.318344	2012-06-06 10:14:12.318344
1159	/srv/mp3/Beethoven/Beethoven Violin Sonatas Nos.9 Kreutzer & 5 Spring	1/2/3/808	2012-06-06 10:14:23.48011	2012-06-06 10:14:23.48011
1165	/srv/mp3/Beethoven/Beethoven Piano Sonata - Nicholas Walker	1/2/3/808	2012-06-06 10:14:33.20456	2012-06-06 10:14:33.20456
1171	/srv/mp3/Beethoven/Beethoven Symphony No. 3 Eroica - Berliner Philharmoniker & Herbert von Karajan	1/2/3/808	2012-06-06 10:14:40.874355	2012-06-06 10:14:40.874355
1177	/srv/mp3/Beethoven/Philharmonia Orchestra	1/2/3/808	2012-06-06 10:14:48.152785	2012-06-06 10:14:48.152785
1178	/srv/mp3/Beethoven/Philharmonia Orchestra/Beethoven The Complete Symphonies and Piano Concertos	1/2/3/808/1177	2012-06-06 10:14:48.155177	2012-06-06 10:14:48.155177
1222	/srv/mp3/Beethoven/Beethoven Triple Concerto; Brahms Double Concerto	1/2/3/808	2012-06-06 10:15:38.463862	2012-06-06 10:15:38.463862
1229	/srv/mp3/Beethoven/Beethoven Moonlight, Pathétique, Les Adieux &  Appassionata Sonatas - Van Cliburn	1/2/3/808	2012-06-06 10:15:46.480001	2012-06-06 10:15:46.480001
1235	/srv/mp3/Edie Brickell & New Bohemians/Ultimate Collection	1/2/3/1199	2012-06-06 10:15:57.42795	2012-06-06 10:15:57.42795
1236	/srv/mp3/Me First And The Gimme Gimmes/Ruin Jonny's Bar Mitzvah	1/2/3/1215	2012-06-06 10:15:59.316018	2012-06-06 10:15:59.316018
1237	/srv/mp3/Jimi Hendrix/Axis Bold as love	1/2/3/1066	2012-06-06 10:16:00.058648	2012-06-06 10:16:00.058648
1238	/srv/mp3/Paolo Conte	1/2/3	2012-06-06 10:16:00.935326	2012-06-06 10:16:00.935326
1239	/srv/mp3/Beethoven/Ben Heppner	1/2/3/808	2012-06-06 10:16:01.00913	2012-06-06 10:16:01.00913
1240	/srv/mp3/Beethoven/Ben Heppner/Dedication	1/2/3/808/1239	2012-06-06 10:16:01.014814	2012-06-06 10:16:01.014814
1241	/srv/mp3/Oscar Peterson Trio	1/2/3	2012-06-06 10:16:01.096343	2012-06-06 10:16:01.096343
1242	/srv/mp3/Pink Floyd	1/2/3	2012-06-06 10:16:01.378731	2012-06-06 10:16:01.378731
1243	/srv/mp3/Pink Floyd/the dark side of the moon	1/2/3/1242	2012-06-06 10:16:01.980421	2012-06-06 10:16:01.980421
1244	/srv/mp3/Beethoven/Beethoven Piano Concertos Nos. 3 & 4 - Wilhelm Kempff, Piano - Berin Philharmonic Ferdinand Leitner, conductor	1/2/3/808	2012-06-06 10:16:02.468667	2012-06-06 10:16:02.468667
1245	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Compilations ---/1993 - The Singles Collection	1/2/3/533/606/1230	2012-06-06 10:16:09.303138	2012-06-06 10:16:09.303138
1246	/srv/mp3/Soundtracks/The Phantom of the Opera-MP3-[www.emwreloaded.com]	1/2/3/1185	2012-06-06 10:16:09.459944	2012-06-06 10:16:09.459944
1247	/srv/mp3/Soundtracks/The Phantom of the Opera-MP3-[www.emwreloaded.com]/Andrew Lloyd Webber	1/2/3/1185/1246	2012-06-06 10:16:09.462389	2012-06-06 10:16:09.462389
1248	/srv/mp3/Soundtracks/The Phantom of the Opera-MP3-[www.emwreloaded.com]/Andrew Lloyd Webber/The Phantom of the Opera	1/2/3/1185/1246/1247	2012-06-06 10:16:09.464382	2012-06-06 10:16:09.464382
1249	/srv/mp3/Beethoven/Beethoven Symphony # 9 - John Eliot Gardiner-Orchestre Revolutionnaire et Romantique	1/2/3/808	2012-06-06 10:16:09.834493	2012-06-06 10:16:09.834493
1250	/srv/mp3/Jimi Hendrix/First Rays Of The New Rising Sun	1/2/3/1066	2012-06-06 10:16:10.836252	2012-06-06 10:16:10.836252
1251	/srv/mp3/Chicago/(1976) Chicago X	1/2/3/991	2012-06-06 10:16:11.187457	2012-06-06 10:16:11.187457
1252	/srv/mp3/Playlists	1/2/3	2012-06-06 10:16:14.152642	2012-06-06 10:16:14.152642
1253	/srv/mp3/Me First And The Gimme Gimmes/Are a Drag	1/2/3/1215	2012-06-06 10:16:15.104897	2012-06-06 10:16:15.104897
1254	/srv/mp3/The Who/The Who By Numbers	1/2/3/1218	2012-06-06 10:16:15.291012	2012-06-06 10:16:15.291012
1255	/srv/mp3/Beethoven/Jeno Jando	1/2/3/808	2012-06-06 10:16:17.530777	2012-06-06 10:16:17.530777
1256	/srv/mp3/Beethoven/Jeno Jando/Beethoven Piano Sonatas, Vol. 3	1/2/3/808/1255	2012-06-06 10:16:17.533088	2012-06-06 10:16:17.533088
1257	/srv/mp3/John Denver	1/2/3	2012-06-06 10:16:25.72589	2012-06-06 10:16:25.72589
1258	/srv/mp3/John Denver/John Denver - Definitive All-Time Greatest Hits	1/2/3/1257	2012-06-06 10:16:25.998602	2012-06-06 10:16:25.998602
1259	/srv/mp3/Chicago/(1975 2) Chicago IX Greatest Hits	1/2/3/991	2012-06-06 10:16:27.711696	2012-06-06 10:16:27.711696
1260	/srv/mp3/Me First And The Gimme Gimmes/Take a Break	1/2/3/1215	2012-06-06 10:16:30.89696	2012-06-06 10:16:30.89696
1261	/srv/mp3/The Who/Quadrophenia (Disc 2)	1/2/3/1218	2012-06-06 10:16:31.297998	2012-06-06 10:16:31.297998
1262	/srv/mp3/Soundtracks/Brazil Soundtrack MP3	1/2/3/1185	2012-06-06 10:16:33.209562	2012-06-06 10:16:33.209562
1263	/srv/mp3/The Who/The Who Sings My Generation	1/2/3/1218	2012-06-06 10:16:38.750408	2012-06-06 10:16:38.750408
1264	/srv/mp3/Me First And The Gimme Gimmes/Have Another Ball!	1/2/3/1215	2012-06-06 10:16:43.020231	2012-06-06 10:16:43.020231
1265	/srv/mp3/Chicago/(2002) the chicago story complete greatest hits [192kbps]	1/2/3/991	2012-06-06 10:16:43.108547	2012-06-06 10:16:43.108547
1266	/srv/mp3/Chicago/(2002) the chicago story complete greatest hits [192kbps]/disc 1	1/2/3/991/1265	2012-06-06 10:16:43.120913	2012-06-06 10:16:43.120913
1267	/srv/mp3/Jungle Brothers	1/2/3	2012-06-06 10:16:43.262605	2012-06-06 10:16:43.262605
1268	/srv/mp3/Jungle Brothers/VIP	1/2/3/1267	2012-06-06 10:16:43.555313	2012-06-06 10:16:43.555313
1269	/srv/mp3/Various/Top500Rock	1/2/3/59	2012-06-06 10:16:46.895313	2012-06-06 10:16:46.895313
1270	/srv/mp3/Jungle Brothers/V.I.P	1/2/3/1267	2012-06-06 10:16:47.25876	2012-06-06 10:16:47.25876
1271	/srv/mp3/The Who/A Quick One	1/2/3/1218	2012-06-06 10:16:50.034155	2012-06-06 10:16:50.034155
1272	/srv/mp3/David Bowie/David Bowie - Complete Discography/--- Compilations ---/2004 - Deram Anthology 1966-1968	1/2/3/533/606/1230	2012-06-06 10:16:50.176654	2012-06-06 10:16:50.176654
1273	/srv/mp3/Soundtracks/Juno Soundtrack	1/2/3/1185	2012-06-06 10:16:56.315693	2012-06-06 10:16:56.315693
1274	/srv/mp3/Josef Hofmann	1/2/3	2012-06-06 10:16:58.437068	2012-06-06 10:16:58.437068
1275	/srv/mp3/Josef Hofmann/complete josef hofmann, vol. 6 (2 of 2)	1/2/3/1274	2012-06-06 10:16:58.737613	2012-06-06 10:16:58.737613
1276	/srv/mp3/Me First And The Gimme Gimmes/Have a Ball	1/2/3/1215	2012-06-06 10:16:59.176738	2012-06-06 10:16:59.176738
1277	/srv/mp3/Beethoven/Jeno Jando/9 Symphonien - Herbert von Karajan, Berliner Philharmoniker (1963) 55	1/2/3/808/1255	2012-06-06 10:17:03.689355	2012-06-06 10:17:03.689355
1278	/srv/mp3/Josef Hofmann/complete josef hofmann, vol. 6 (1 of 2)	1/2/3/1274	2012-06-06 10:17:05.311918	2012-06-06 10:17:05.311918
1279	/srv/mp3/BOOKS	1/2/3	2012-06-06 10:17:06.277537	2012-06-06 10:17:06.277537
1280	/srv/mp3/Billy Preston	1/2/3	2012-06-06 10:17:07.00985	2012-06-06 10:17:07.00985
1281	/srv/mp3/The Who/Tommy	1/2/3/1218	2012-06-06 10:17:07.086273	2012-06-06 10:17:07.086273
1282	/srv/mp3/Billy Preston/Music Is My Life	1/2/3/1280	2012-06-06 10:17:07.210896	2012-06-06 10:17:07.210896
1283	/srv/mp3/Chicago/(2002) the chicago story complete greatest hits [192kbps]/disc 2	1/2/3/991/1265	2012-06-06 10:17:07.496087	2012-06-06 10:17:07.496087
1284	/srv/mp3/Bach,  JS	1/2/3	2012-06-06 10:17:15.011234	2012-06-06 10:17:15.011234
1285	/srv/mp3/Michael Franks	1/2/3	2012-06-06 10:17:15.128296	2012-06-06 10:17:15.128296
1286	/srv/mp3/Michael Franks/The Camera Never Lies	1/2/3/1285	2012-06-06 10:17:15.51998	2012-06-06 10:17:15.51998
1287	/srv/mp3/Bach,  JS/j.s.bach - collection	1/2/3/1284	2012-06-06 10:17:15.844985	2012-06-06 10:17:15.844985
1288	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - christmas oratorio	1/2/3/1284/1287	2012-06-06 10:17:15.84903	2012-06-06 10:17:15.84903
1289	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - christmas oratorio/CD 1	1/2/3/1284/1287/1288	2012-06-06 10:17:15.856097	2012-06-06 10:17:15.856097
1291	/srv/mp3/Soundtracks/meet joe black	1/2/3/1185	2012-06-06 10:17:16.886533	2012-06-06 10:17:16.886533
1292	/srv/mp3/Jeff Beck/Beck-Ola	1/2/3/1290	2012-06-06 10:17:17.172752	2012-06-06 10:17:17.172752
1295	/srv/mp3/Jeff Beck/The Best Of	1/2/3/1290	2012-06-06 10:17:26.251379	2012-06-06 10:17:26.251379
1293	/srv/mp3/David Bowie/The Rise And Fall Of Ziggy Stardust And The Spiders From Mars	1/2/3/533	2012-06-06 10:17:19.593411	2012-06-06 10:17:19.593411
1303	/srv/mp3/David Bowie/Pin Ups	1/2/3/533	2012-06-06 10:17:31.529402	2012-06-06 10:17:31.529402
1309	/srv/mp3/David Bowie/1983 - Let's Dance	1/2/3/533	2012-06-06 10:17:46.846333	2012-06-06 10:17:46.846333
1315	/srv/mp3/David Bowie/Aladdin Sane	1/2/3/533	2012-06-06 10:17:56.413287	2012-06-06 10:17:56.413287
1323	/srv/mp3/David Bowie/The Man Who Sold the World (Original)	1/2/3/533	2012-06-06 10:18:05.763685	2012-06-06 10:18:05.763685
1329	/srv/mp3/David Bowie/Narrates Prokofiev's 'Peter And The Wolf'	1/2/3/533	2012-06-06 10:18:14.885493	2012-06-06 10:18:14.885493
1336	/srv/mp3/David Bowie/1989 - Tin Machine	1/2/3/533	2012-06-06 10:18:25.355146	2012-06-06 10:18:25.355146
1342	/srv/mp3/Dire Straits	1/2/3	2012-06-06 10:18:35.715736	2012-06-06 10:18:35.715736
1343	/srv/mp3/Dire Straits/Brothers in Arms	1/2/3/1342	2012-06-06 10:18:35.975758	2012-06-06 10:18:35.975758
1349	/srv/mp3/Dire Straits/The Ultimate Best Of Dire Straits [Remastered]	1/2/3/1342	2012-06-06 10:18:44.231231	2012-06-06 10:18:44.231231
1366	/srv/mp3/David Sedaris	1/2/3	2012-06-06 10:19:18.321717	2012-06-06 10:19:18.321717
1367	/srv/mp3/David Sedaris/Holidays on Ice	1/2/3/1366	2012-06-06 10:19:18.670335	2012-06-06 10:19:18.670335
1395	/srv/mp3/Dionne Warwick	1/2/3	2012-06-06 10:20:08.860649	2012-06-06 10:20:08.860649
1396	/srv/mp3/Dionne Warwick/Greatest Hits	1/2/3/1395	2012-06-06 10:20:09.040884	2012-06-06 10:20:09.040884
1400	/srv/mp3/Django Reinhardt	1/2/3	2012-06-06 10:20:20.342006	2012-06-06 10:20:20.342006
1401	/srv/mp3/Django Reinhardt/Verve Jazz Masters 38 - Django Reinhardt (1994) [Jazz][mp3 192][h33t][schon55]	1/2/3/1400	2012-06-06 10:20:20.528796	2012-06-06 10:20:20.528796
1408	/srv/mp3/Django Reinhardt/Verve Jazz Masters 38 - Django Reinhardt (1994) [Jazz][mp3 192][h33t][schon55]/Scans	1/2/3/1400/1401	2012-06-06 10:20:30.885674	2012-06-06 10:20:30.885674
1411	/srv/mp3/Deerhoof	1/2/3	2012-06-06 10:20:32.45546	2012-06-06 10:20:32.45546
1412	/srv/mp3/Deerhoof/Halfbird	1/2/3/1411	2012-06-06 10:20:32.638576	2012-06-06 10:20:32.638576
1413	/srv/mp3/Deerhoof/Bibidi Babidi Boo	1/2/3/1411	2012-06-06 10:20:41.289387	2012-06-06 10:20:41.289387
1414	/srv/mp3/Deerhoof/The Runners Four	1/2/3/1411	2012-06-06 10:20:48.741339	2012-06-06 10:20:48.741339
1294	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - christmas oratorio/CD 2	1/2/3/1284/1287/1288	2012-06-06 10:17:22.366723	2012-06-06 10:17:22.366723
1296	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - christmas oratorio/CD 3	1/2/3/1284/1287/1288	2012-06-06 10:17:26.550252	2012-06-06 10:17:26.550252
1300	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - overtures (suites) Nos.1-4	1/2/3/1284/1287	2012-06-06 10:17:31.114906	2012-06-06 10:17:31.114906
1305	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - st matthew passion	1/2/3/1284/1287	2012-06-06 10:17:42.337253	2012-06-06 10:17:42.337253
1306	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - st matthew passion/CD 1	1/2/3/1284/1287/1305	2012-06-06 10:17:42.345669	2012-06-06 10:17:42.345669
1316	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - st matthew passion/CD 2	1/2/3/1284/1287/1305	2012-06-06 10:17:56.942361	2012-06-06 10:17:56.942361
1322	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - st matthew passion/CD 3	1/2/3/1284/1287/1305	2012-06-06 10:18:04.919183	2012-06-06 10:18:04.919183
1326	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - branderburg concertos I	1/2/3/1284/1287	2012-06-06 10:18:11.610845	2012-06-06 10:18:11.610845
1328	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - sonatas and partitas for solo violin vol.1	1/2/3/1284/1287	2012-06-06 10:18:14.537485	2012-06-06 10:18:14.537485
1330	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - branderburg concertos II	1/2/3/1284/1287	2012-06-06 10:18:18.145372	2012-06-06 10:18:18.145372
1332	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - violin concertos	1/2/3/1284/1287	2012-06-06 10:18:21.843469	2012-06-06 10:18:21.843469
1335	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - sonatas for violin and harpsichord vol.1	1/2/3/1284/1287	2012-06-06 10:18:24.647947	2012-06-06 10:18:24.647947
1340	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - harpsichord concertos III	1/2/3/1284/1287	2012-06-06 10:18:30.849116	2012-06-06 10:18:30.849116
1341	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - sonatas and partitas for solo violin vol.2	1/2/3/1284/1287	2012-06-06 10:18:32.100994	2012-06-06 10:18:32.100994
1345	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - christmas cantatas	1/2/3/1284/1287	2012-06-06 10:18:37.512827	2012-06-06 10:18:37.512827
1348	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - harpsichord concertos II	1/2/3/1284/1287	2012-06-06 10:18:43.767436	2012-06-06 10:18:43.767436
1350	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - cello suites	1/2/3/1284/1287	2012-06-06 10:18:45.0291	2012-06-06 10:18:45.0291
1351	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - cello suites/CD 1	1/2/3/1284/1287/1350	2012-06-06 10:18:45.030697	2012-06-06 10:18:45.030697
1361	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - cello suites/CD 2	1/2/3/1284/1287/1350	2012-06-06 10:19:02.030469	2012-06-06 10:19:02.030469
1365	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - concertos for oboe & oboe d'amore	1/2/3/1284/1287	2012-06-06 10:19:16.896908	2012-06-06 10:19:16.896908
1369	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - goldberg variatons	1/2/3/1284/1287	2012-06-06 10:19:18.810867	2012-06-06 10:19:18.810867
1372	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - sonatas for violin and harpsichord vol.2	1/2/3/1284/1287	2012-06-06 10:19:29.878748	2012-06-06 10:19:29.878748
1373	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - mass in B minor	1/2/3/1284/1287	2012-06-06 10:19:32.559747	2012-06-06 10:19:32.559747
1374	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - mass in B minor/CD 2	1/2/3/1284/1287/1373	2012-06-06 10:19:32.574917	2012-06-06 10:19:32.574917
1375	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - st john passion	1/2/3/1284/1287	2012-06-06 10:19:33.827193	2012-06-06 10:19:33.827193
1376	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - st john passion/part two	1/2/3/1284/1287/1375	2012-06-06 10:19:33.828734	2012-06-06 10:19:33.828734
1381	/srv/mp3/Bach,  JS/j.s.bach - collection/j.s.bach - st john passion/part one	1/2/3/1284/1287/1375	2012-06-06 10:19:37.84733	2012-06-06 10:19:37.84733
1382	/srv/mp3/Bach,  JS/Orchestral Suites 1-4	1/2/3/1284	2012-06-06 10:19:39.661395	2012-06-06 10:19:39.661395
1393	/srv/mp3/Bach,  JS/Brandenburg Concerti	1/2/3/1284	2012-06-06 10:20:05.964205	2012-06-06 10:20:05.964205
1404	/srv/mp3/Bach,  JS/Bach - Silbermann Organs 2 - Grosshartmannsdorf	1/2/3/1284	2012-06-06 10:20:21.317111	2012-06-06 10:20:21.317111
1409	/srv/mp3/Barry White	1/2/3	2012-06-06 10:20:30.953757	2012-06-06 10:20:30.953757
1410	/srv/mp3/Barry White/Gold - the Very Best of	1/2/3/1409	2012-06-06 10:20:31.72285	2012-06-06 10:20:31.72285
1415	/srv/mp3/Billy Joel	1/2/3	2012-06-06 10:20:48.951861	2012-06-06 10:20:48.951861
1416	/srv/mp3/Billy Joel/Bridge	1/2/3/1415	2012-06-06 10:20:49.403763	2012-06-06 10:20:49.403763
1297	/srv/mp3/Michael Franks/Abandoned Garden	1/2/3/1285	2012-06-06 10:17:27.425558	2012-06-06 10:17:27.425558
1307	/srv/mp3/Michael Franks/Barefoot on the Beach	1/2/3/1285	2012-06-06 10:17:42.679974	2012-06-06 10:17:42.679974
1314	/srv/mp3/Michael Franks/Skin Dive	1/2/3/1285	2012-06-06 10:17:56.343782	2012-06-06 10:17:56.343782
1324	/srv/mp3/Michael Franks/One Bad Habit	1/2/3/1285	2012-06-06 10:18:08.536001	2012-06-06 10:18:08.536001
1331	/srv/mp3/Michael Franks/Passion Fruit	1/2/3/1285	2012-06-06 10:18:21.730886	2012-06-06 10:18:21.730886
1344	/srv/mp3/Michael Franks/Burchfield Nines	1/2/3/1285	2012-06-06 10:18:37.110776	2012-06-06 10:18:37.110776
1353	/srv/mp3/Michael Franks/Blue Pacific	1/2/3/1285	2012-06-06 10:18:48.676723	2012-06-06 10:18:48.676723
1358	/srv/mp3/Michael Franks/Dragonfly Summer	1/2/3/1285	2012-06-06 10:19:00.011398	2012-06-06 10:19:00.011398
1363	/srv/mp3/Michael Franks/Watching the Snow	1/2/3/1285	2012-06-06 10:19:10.72608	2012-06-06 10:19:10.72608
1368	/srv/mp3/Michael Franks/Sleeping Gypsy	1/2/3/1285	2012-06-06 10:19:18.71229	2012-06-06 10:19:18.71229
1370	/srv/mp3/Michael Franks/The Art Of Tea	1/2/3/1285	2012-06-06 10:19:27.435364	2012-06-06 10:19:27.435364
1377	/srv/mp3/Nat King Cole	1/2/3	2012-06-06 10:19:36.801604	2012-06-06 10:19:36.801604
1378	/srv/mp3/Nick Lowe	1/2/3	2012-06-06 10:19:37.032936	2012-06-06 10:19:37.032936
1379	/srv/mp3/Nick Lowe/At My Age	1/2/3/1378	2012-06-06 10:19:37.204849	2012-06-06 10:19:37.204849
1385	/srv/mp3/Nina Simone	1/2/3	2012-06-06 10:19:46.817166	2012-06-06 10:19:46.817166
1386	/srv/mp3/Nina Simone/High Priestess of Soul	1/2/3/1385	2012-06-06 10:19:47.141094	2012-06-06 10:19:47.141094
1391	/srv/mp3/Mary Hopkin	1/2/3	2012-06-06 10:20:02.782619	2012-06-06 10:20:02.782619
1392	/srv/mp3/Mary Hopkin/Post Card	1/2/3/1391	2012-06-06 10:20:03.094625	2012-06-06 10:20:03.094625
1399	/srv/mp3/Mary Hopkin/Earth Song Ocean Song	1/2/3/1391	2012-06-06 10:20:15.539996	2012-06-06 10:20:15.539996
1403	/srv/mp3/My Yahoo! Music	1/2/3	2012-06-06 10:20:21.179702	2012-06-06 10:20:21.179702
1406	/srv/mp3/Moving Sidewalks	1/2/3	2012-06-06 10:20:21.454774	2012-06-06 10:20:21.454774
1407	/srv/mp3/Moving Sidewalks/Flash	1/2/3/1406	2012-06-06 10:20:21.586933	2012-06-06 10:20:21.586933
1298	/srv/mp3/Chicago/(1978) Chicago XII Hot Streets	1/2/3/991	2012-06-06 10:17:28.347173	2012-06-06 10:17:28.347173
1308	/srv/mp3/Chicago/(1971) Chicago III	1/2/3/991	2012-06-06 10:17:44.69474	2012-06-06 10:17:44.69474
1325	/srv/mp3/Chicago/(1981) Chicago XV Greatest Hits Vol.2	1/2/3/991	2012-06-06 10:18:10.681721	2012-06-06 10:18:10.681721
1333	/srv/mp3/Captian & Tennille	1/2/3	2012-06-06 10:18:22.61438	2012-06-06 10:18:22.61438
1334	/srv/mp3/Captian & Tennille/Captian & Tennille-Ultimate Collection The Complete Hits	1/2/3/1333	2012-06-06 10:18:22.746067	2012-06-06 10:18:22.746067
1346	/srv/mp3/Concrete Blonde	1/2/3	2012-06-06 10:18:42.780077	2012-06-06 10:18:42.780077
1347	/srv/mp3/Concrete Blonde/Concrete Blonde	1/2/3/1346	2012-06-06 10:18:42.878628	2012-06-06 10:18:42.878628
1354	/srv/mp3/Crimson Jazz Trio	1/2/3	2012-06-06 10:18:54.211504	2012-06-06 10:18:54.211504
1355	/srv/mp3/Crimson Jazz Trio/King Crimson Songbook Vol 1	1/2/3/1354	2012-06-06 10:18:54.407353	2012-06-06 10:18:54.407353
1359	/srv/mp3/Cake	1/2/3	2012-06-06 10:19:00.179501	2012-06-06 10:19:00.179501
1360	/srv/mp3/Cake/(1995) Motorcade of Generosity	1/2/3/1359	2012-06-06 10:19:00.56693	2012-06-06 10:19:00.56693
1362	/srv/mp3/Cake/(2004) Pressure Chief	1/2/3/1359	2012-06-06 10:19:08.122701	2012-06-06 10:19:08.122701
1364	/srv/mp3/Cake/(1996) Fashion Nugget	1/2/3/1359	2012-06-06 10:19:15.016364	2012-06-06 10:19:15.016364
1371	/srv/mp3/Cake/(2001) Comfort Eagle	1/2/3/1359	2012-06-06 10:19:28.97639	2012-06-06 10:19:28.97639
1380	/srv/mp3/Cake/(1998) Prolonging the magic	1/2/3/1359	2012-06-06 10:19:37.424681	2012-06-06 10:19:37.424681
1387	/srv/mp3/Cheap Trick	1/2/3	2012-06-06 10:19:56.944642	2012-06-06 10:19:56.944642
1388	/srv/mp3/Cheap Trick/At Budokan	1/2/3/1387	2012-06-06 10:19:57.141457	2012-06-06 10:19:57.141457
1394	/srv/mp3/Cheap Trick/Cheap Trick-The Latest-2009	1/2/3/1387	2012-06-06 10:20:06.878029	2012-06-06 10:20:06.878029
1299	/srv/mp3/The Who/Who's Next	1/2/3/1218	2012-06-06 10:17:30.470635	2012-06-06 10:17:30.470635
1312	/srv/mp3/The Who/Quadrophenia (Disc 1)	1/2/3/1218	2012-06-06 10:17:49.056214	2012-06-06 10:17:49.056214
1319	/srv/mp3/The Who/Who Are You	1/2/3/1218	2012-06-06 10:17:59.114586	2012-06-06 10:17:59.114586
1327	/srv/mp3/The Who/My Generation The Very Best O	1/2/3/1218	2012-06-06 10:18:13.512784	2012-06-06 10:18:13.512784
1339	/srv/mp3/The Who/Then and Now! - 1964-2004	1/2/3/1218	2012-06-06 10:18:30.723199	2012-06-06 10:18:30.723199
1352	/srv/mp3/The Who/Face Dances	1/2/3/1218	2012-06-06 10:18:48.325163	2012-06-06 10:18:48.325163
1356	/srv/mp3/The Ramones	1/2/3	2012-06-06 10:18:59.73581	2012-06-06 10:18:59.73581
1357	/srv/mp3/The Ramones/Hey! Ho! Let's Go The Anthology	1/2/3/1356	2012-06-06 10:18:59.983502	2012-06-06 10:18:59.983502
1383	/srv/mp3/The Queers	1/2/3	2012-06-06 10:19:44.345447	2012-06-06 10:19:44.345447
1384	/srv/mp3/The Queers/Don't Back Down	1/2/3/1383	2012-06-06 10:19:44.765512	2012-06-06 10:19:44.765512
1389	/srv/mp3/The Stone Roses	1/2/3	2012-06-06 10:20:02.448122	2012-06-06 10:20:02.448122
1390	/srv/mp3/The Stone Roses/The Stone Roses [US]	1/2/3/1389	2012-06-06 10:20:02.67611	2012-06-06 10:20:02.67611
1397	/srv/mp3/The Church	1/2/3	2012-06-06 10:20:11.175315	2012-06-06 10:20:11.175315
1398	/srv/mp3/The Church/THE CHURCH--STARFISH[1988]~smalzz~	1/2/3/1397	2012-06-06 10:20:11.489768	2012-06-06 10:20:11.489768
1402	/srv/mp3/The Beach Boys	1/2/3	2012-06-06 10:20:21.144677	2012-06-06 10:20:21.144677
1405	/srv/mp3/The Beach Boys/The Platinum Collection	1/2/3/1402	2012-06-06 10:20:21.406543	2012-06-06 10:20:21.406543
1301	/srv/mp3/Steve Miller Band	1/2/3	2012-06-06 10:17:31.353279	2012-06-06 10:17:31.353279
1302	/srv/mp3/Steve Miller Band/greatest hits	1/2/3/1301	2012-06-06 10:17:31.52819	2012-06-06 10:17:31.52819
1310	/srv/mp3/Specials	1/2/3	2012-06-06 10:17:47.374831	2012-06-06 10:17:47.374831
1311	/srv/mp3/Specials/The Specials	1/2/3/1310	2012-06-06 10:17:47.930483	2012-06-06 10:17:47.930483
1304	/srv/mp3/Jeff Beck/Truth	1/2/3/1290	2012-06-06 10:17:35.775781	2012-06-06 10:17:35.775781
1313	/srv/mp3/Jeff Beck/Blow By Blow	1/2/3/1290	2012-06-06 10:17:49.838829	2012-06-06 10:17:49.838829
1317	/srv/mp3/Jim Croce	1/2/3	2012-06-06 10:17:57.592367	2012-06-06 10:17:57.592367
1318	/srv/mp3/Jim Croce/Jim_Croce-Photographs_And_Memories-(Retail)-1972-HHI	1/2/3/1317	2012-06-06 10:17:58.105248	2012-06-06 10:17:58.105248
1320	/srv/mp3/Jonathan Richman And The Modern Lovers	1/2/3	2012-06-06 10:18:03.36467	2012-06-06 10:18:03.36467
1321	/srv/mp3/Jonathan Richman And The Modern Lovers/23 Great Recordings	1/2/3/1320	2012-06-06 10:18:03.573193	2012-06-06 10:18:03.573193
1337	/srv/mp3/John Lennon	1/2/3	2012-06-06 10:18:26.025713	2012-06-06 10:18:26.025713
1338	/srv/mp3/John Lennon/Lennon Legend The Very Best of John Lennon	1/2/3/1337	2012-06-06 10:18:26.172296	2012-06-06 10:18:26.172296
1417	/srv/mp3/Billy Joel/piano man-the very best of	1/2/3/1415	2012-06-06 10:20:57.759635	2012-06-06 10:20:57.759635
1418	/srv/mp3/The Replacements	1/2/3	2012-06-06 10:20:58.903413	2012-06-06 10:20:58.903413
1419	/srv/mp3/The Replacements/Don't Tell A Soul	1/2/3/1418	2012-06-06 10:20:59.264136	2012-06-06 10:20:59.264136
1420	/srv/mp3/Deerhoof/Milk Man	1/2/3/1411	2012-06-06 10:21:00.645404	2012-06-06 10:21:00.645404
1421	/srv/mp3/Deerhoof/Green Cosmos (EP)	1/2/3/1411	2012-06-06 10:21:09.147081	2012-06-06 10:21:09.147081
1422	/srv/mp3/The Platters	1/2/3	2012-06-06 10:21:09.248169	2012-06-06 10:21:09.248169
1423	/srv/mp3/The Platters/The Very Best Of	1/2/3/1422	2012-06-06 10:21:09.372904	2012-06-06 10:21:09.372904
1424	/srv/mp3/Billy Joel/Piano Man	1/2/3/1415	2012-06-06 10:21:09.990391	2012-06-06 10:21:09.990391
1425	/srv/mp3/Deerhoof/Reveille	1/2/3/1411	2012-06-06 10:21:13.810058	2012-06-06 10:21:13.810058
1426	/srv/mp3/Billy Joel/The Ultimate Collection Disc2	1/2/3/1415	2012-06-06 10:21:16.034974	2012-06-06 10:21:16.034974
1427	/srv/mp3/Throbbing Gristle	1/2/3	2012-06-06 10:21:20.67174	2012-06-06 10:21:20.67174
1428	/srv/mp3/Throbbing Gristle/20 Jazz Funk Greats	1/2/3/1427	2012-06-06 10:21:20.984375	2012-06-06 10:21:20.984375
1429	/srv/mp3/Deerhoof/Apple O'	1/2/3/1411	2012-06-06 10:21:23.932762	2012-06-06 10:21:23.932762
1430	/srv/mp3/The Moody Blues	1/2/3	2012-06-06 10:21:28.92757	2012-06-06 10:21:28.92757
1431	/srv/mp3/T.Rex	1/2/3	2012-06-06 10:21:29.060225	2012-06-06 10:21:29.060225
1432	/srv/mp3/T.Rex/The Slider	1/2/3/1431	2012-06-06 10:21:29.30213	2012-06-06 10:21:29.30213
1433	/srv/mp3/Billy Joel/Essential Billy Joel Disk one	1/2/3/1415	2012-06-06 10:21:29.671814	2012-06-06 10:21:29.671814
1434	/srv/mp3/Deerhoof/Rock Mix	1/2/3/1411	2012-06-06 10:21:30.173171	2012-06-06 10:21:30.173171
1435	/srv/mp3/Dane Cook	1/2/3	2012-06-06 10:21:31.44322	2012-06-06 10:21:31.44322
1436	/srv/mp3/Dane Cook/Retaliation Disc 2	1/2/3/1435	2012-06-06 10:21:31.598564	2012-06-06 10:21:31.598564
1437	/srv/mp3/The Cure	1/2/3	2012-06-06 10:21:36.449919	2012-06-06 10:21:36.449919
1438	/srv/mp3/The Cure/The Cure - 08 - Concert (Live 1984)	1/2/3/1437	2012-06-06 10:21:36.602125	2012-06-06 10:21:36.602125
1439	/srv/mp3/Billy Joel/52nd street	1/2/3/1415	2012-06-06 10:21:38.395574	2012-06-06 10:21:38.395574
1440	/srv/mp3/Dane Cook/Retaliation Disc 1	1/2/3/1435	2012-06-06 10:21:44.184339	2012-06-06 10:21:44.184339
1441	/srv/mp3/Billy Joel/An Innocent Man	1/2/3/1415	2012-06-06 10:21:44.474024	2012-06-06 10:21:44.474024
1499	/srv/mp3/Various/Reefer Songs (1927-1947)	1/2/3/59	2012-06-06 10:24:13.456461	2012-06-06 10:24:13.456461
1442	/srv/mp3/The Cure/The Cure - 20 - Bloodflowers (2000)	1/2/3/1437	2012-06-06 10:21:45.636994	2012-06-06 10:21:45.636994
1443	/srv/mp3/Billy Joel/Stranger	1/2/3/1415	2012-06-06 10:21:52.384752	2012-06-06 10:21:52.384752
1444	/srv/mp3/Various/VA-1000 Original Hits 1970-1979	1/2/3/59	2012-06-06 10:21:53.098545	2012-06-06 10:21:53.098545
1445	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1972 (2001)	1/2/3/59/1444	2012-06-06 10:21:53.100472	2012-06-06 10:21:53.100472
1446	/srv/mp3/The Cure/The Cure - 11 - Kiss Me Kiss Me (1987)	1/2/3/1437	2012-06-06 10:21:54.114884	2012-06-06 10:21:54.114884
1447	/srv/mp3/Dave Edmunds	1/2/3	2012-06-06 10:21:55.453544	2012-06-06 10:21:55.453544
1448	/srv/mp3/Dave Edmunds/repeat when necessary	1/2/3/1447	2012-06-06 10:21:55.785382	2012-06-06 10:21:55.785382
1449	/srv/mp3/Billy Joel/Streetlife Serenade	1/2/3/1415	2012-06-06 10:21:59.421689	2012-06-06 10:21:59.421689
1450	/srv/mp3/The Cure/The Cure - 06 - Japanese Whisper (1983)	1/2/3/1437	2012-06-06 10:22:07.096287	2012-06-06 10:22:07.096287
1451	/srv/mp3/Billy Joel/Greatest Hits -- Volume II (1980-1985)	1/2/3/1415	2012-06-06 10:22:07.460984	2012-06-06 10:22:07.460984
1452	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1975 (2001)	1/2/3/59/1444	2012-06-06 10:22:08.410651	2012-06-06 10:22:08.410651
1453	/srv/mp3/The Cure/The Cure - 03 - Seventeen Seconds (1980)(Deluxe Edition 2005)	1/2/3/1437	2012-06-06 10:22:12.074998	2012-06-06 10:22:12.074998
1454	/srv/mp3/The Cure/The Cure - 03 - Seventeen Seconds (1980)(Deluxe Edition 2005)/CD1	1/2/3/1437/1453	2012-06-06 10:22:12.079935	2012-06-06 10:22:12.079935
1455	/srv/mp3/Billy Joel/Songs in the Attic	1/2/3/1415	2012-06-06 10:22:13.700561	2012-06-06 10:22:13.700561
1456	/srv/mp3/The Cure/The Cure - 03 - Seventeen Seconds (1980)(Deluxe Edition 2005)/CD2	1/2/3/1437/1453	2012-06-06 10:22:18.784775	2012-06-06 10:22:18.784775
1457	/srv/mp3/Billy Joel/The Stranger	1/2/3/1415	2012-06-06 10:22:20.619621	2012-06-06 10:22:20.619621
1458	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1978 (2001)	1/2/3/59/1444	2012-06-06 10:22:22.447544	2012-06-06 10:22:22.447544
1459	/srv/mp3/Billy Joel/Fantasies & Delusions	1/2/3/1415	2012-06-06 10:22:25.29061	2012-06-06 10:22:25.29061
1460	/srv/mp3/The Cure/The Cure - 16 - Show (Live 1993)	1/2/3/1437	2012-06-06 10:22:25.72152	2012-06-06 10:22:25.72152
1461	/srv/mp3/The Cure/The Cure - 16 - Show (Live 1993)/CD1	1/2/3/1437/1460	2012-06-06 10:22:25.723237	2012-06-06 10:22:25.723237
1462	/srv/mp3/The Cure/The Cure - 16 - Show (Live 1993)/CD2	1/2/3/1437/1460	2012-06-06 10:22:30.258846	2012-06-06 10:22:30.258846
1463	/srv/mp3/Billy Joel/Innocent Man	1/2/3/1415	2012-06-06 10:22:32.397899	2012-06-06 10:22:32.397899
1464	/srv/mp3/The Cure/The Cure - 04 - Faith (1981)(Deluxe Edition 2005)	1/2/3/1437	2012-06-06 10:22:34.548516	2012-06-06 10:22:34.548516
1465	/srv/mp3/The Cure/The Cure - 04 - Faith (1981)(Deluxe Edition 2005)/CD1	1/2/3/1437/1464	2012-06-06 10:22:34.551284	2012-06-06 10:22:34.551284
1466	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1979 (2001)	1/2/3/59/1444	2012-06-06 10:22:36.45721	2012-06-06 10:22:36.45721
1467	/srv/mp3/Billy Joel/Glass Houses	1/2/3/1415	2012-06-06 10:22:37.979645	2012-06-06 10:22:37.979645
1468	/srv/mp3/The Cure/The Cure - 04 - Faith (1981)(Deluxe Edition 2005)/CD2	1/2/3/1437/1464	2012-06-06 10:22:42.144486	2012-06-06 10:22:42.144486
1469	/srv/mp3/Billy Joel/Billy Joel VOL.3 Greatest Hits	1/2/3/1415	2012-06-06 10:22:47.092337	2012-06-06 10:22:47.092337
1470	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1970 (2001)	1/2/3/59/1444	2012-06-06 10:22:50.808646	2012-06-06 10:22:50.808646
1471	/srv/mp3/The Cure/The Cure - 22 - Join the Dots (2004)	1/2/3/1437	2012-06-06 10:22:56.420266	2012-06-06 10:22:56.420266
1472	/srv/mp3/The Cure/The Cure - 22 - Join the Dots (2004)/CD2 (1987-1992)	1/2/3/1437/1471	2012-06-06 10:22:56.423742	2012-06-06 10:22:56.423742
1473	/srv/mp3/Billy Joel/Storm Front	1/2/3/1415	2012-06-06 10:22:58.94334	2012-06-06 10:22:58.94334
1474	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1976 (2001)	1/2/3/59/1444	2012-06-06 10:23:03.856096	2012-06-06 10:23:03.856096
1475	/srv/mp3/The Cure/The Cure - 22 - Join the Dots (2004)/CD3 (1992-1996)	1/2/3/1437/1471	2012-06-06 10:23:04.444188	2012-06-06 10:23:04.444188
1476	/srv/mp3/Billy Joel/The Ultimate Collection Disc1	1/2/3/1415	2012-06-06 10:23:05.091755	2012-06-06 10:23:05.091755
1477	/srv/mp3/The Cure/The Cure - 22 - Join the Dots (2004)/CD4 (1996-2001)	1/2/3/1437/1471	2012-06-06 10:23:11.619419	2012-06-06 10:23:11.619419
1478	/srv/mp3/Billy Joel/The Nylon Curtain	1/2/3/1415	2012-06-06 10:23:15.302815	2012-06-06 10:23:15.302815
1479	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1973 (2001)	1/2/3/59/1444	2012-06-06 10:23:17.803746	2012-06-06 10:23:17.803746
1480	/srv/mp3/The Cure/The Cure - 22 - Join the Dots (2004)/CD1 (1978-1987)	1/2/3/1437/1471	2012-06-06 10:23:18.427387	2012-06-06 10:23:18.427387
1481	/srv/mp3/Billy Joel/Turnstiles	1/2/3/1415	2012-06-06 10:23:22.545419	2012-06-06 10:23:22.545419
1482	/srv/mp3/Billy Joel/Greatest Hits - Volume 1 (1973 - 1980)	1/2/3/1415	2012-06-06 10:23:28.672738	2012-06-06 10:23:28.672738
1485	/srv/mp3/Billy Joel/River Of Dreams	1/2/3/1415	2012-06-06 10:23:35.697328	2012-06-06 10:23:35.697328
1487	/srv/mp3/Billy Joel/Essential Billy Joel Disk two	1/2/3/1415	2012-06-06 10:23:42.772782	2012-06-06 10:23:42.772782
1491	/srv/mp3/Billy Joel/Cold Spring Harbor	1/2/3/1415	2012-06-06 10:23:53.184955	2012-06-06 10:23:53.184955
1494	/srv/mp3/Black Sabbath	1/2/3	2012-06-06 10:24:04.181011	2012-06-06 10:24:04.181011
1495	/srv/mp3/Black Sabbath/Mob Rules	1/2/3/1494	2012-06-06 10:24:04.34136	2012-06-06 10:24:04.34136
1497	/srv/mp3/B.B. King & Eric Clapton	1/2/3	2012-06-06 10:24:09.763405	2012-06-06 10:24:09.763405
1498	/srv/mp3/B.B. King & Eric Clapton/Riding With The King	1/2/3/1497	2012-06-06 10:24:09.882758	2012-06-06 10:24:09.882758
1503	/srv/mp3/BeeGees	1/2/3	2012-06-06 10:24:24.926927	2012-06-06 10:24:24.926927
1504	/srv/mp3/BeeGees/The Ultimate	1/2/3/1503	2012-06-06 10:24:25.278769	2012-06-06 10:24:25.278769
1505	/srv/mp3/BeeGees/The Ultimate/Bee Gees - The Ultimate (CD 2)	1/2/3/1503/1504	2012-06-06 10:24:25.281154	2012-06-06 10:24:25.281154
1509	/srv/mp3/BeeGees/The Ultimate/Bee Gees - The Ultimate (CD 1)	1/2/3/1503/1504	2012-06-06 10:24:35.41191	2012-06-06 10:24:35.41191
1513	/srv/mp3/Bill Withers	1/2/3	2012-06-06 10:24:44.665326	2012-06-06 10:24:44.665326
1514	/srv/mp3/Bill Withers/Bill Withers - Lean On Me  [The Best of]	1/2/3/1513	2012-06-06 10:24:44.902271	2012-06-06 10:24:44.902271
1518	/srv/mp3/Buddha Bar	1/2/3	2012-06-06 10:24:57.998158	2012-06-06 10:24:57.998158
1519	/srv/mp3/Buddha Bar/Buddha Bar III (disc 1_ Dream)	1/2/3/1518	2012-06-06 10:24:58.131865	2012-06-06 10:24:58.131865
1522	/srv/mp3/Buddha Bar/Buddha-Bar VI (disc 2_ Rejoice)	1/2/3/1518	2012-06-06 10:25:09.513893	2012-06-06 10:25:09.513893
1524	/srv/mp3/Buddha Bar/Buddha-Bar IV (disc 2_ Drink)	1/2/3/1518	2012-06-06 10:25:18.271184	2012-06-06 10:25:18.271184
1527	/srv/mp3/Buddha Bar/Buddha-Bar V (disc 1_ Dinner)	1/2/3/1518	2012-06-06 10:25:28.659972	2012-06-06 10:25:28.659972
1530	/srv/mp3/Buddha Bar/Buddha Bar III (disc 2_ Joy)	1/2/3/1518	2012-06-06 10:25:39.427491	2012-06-06 10:25:39.427491
1532	/srv/mp3/Buddha Bar/Buddha-Bar II (disc 2_ Party)	1/2/3/1518	2012-06-06 10:25:48.920511	2012-06-06 10:25:48.920511
1535	/srv/mp3/Buddha Bar/Buddha-Bar VI (disc 1_ Rebirth)	1/2/3/1518	2012-06-06 10:25:58.684895	2012-06-06 10:25:58.684895
1538	/srv/mp3/Buddha Bar/Buddha Bar X (disc 1_ Xiangqi)	1/2/3/1518	2012-06-06 10:26:09.81717	2012-06-06 10:26:09.81717
1545	/srv/mp3/Buddha Bar/Buddha Bar X (disc 2_ Weiqi)	1/2/3/1518	2012-06-06 10:26:21.87298	2012-06-06 10:26:21.87298
1546	/srv/mp3/Buddha Bar/Buddha-Bar IX (disc 1_ Royal Victoria)	1/2/3/1518	2012-06-06 10:26:32.46669	2012-06-06 10:26:32.46669
1553	/srv/mp3/Buddha Bar/Buddha-Bar II (disc 1_ Dinner)	1/2/3/1518	2012-06-06 10:26:43.751567	2012-06-06 10:26:43.751567
1557	/srv/mp3/Buddha Bar/Buddha-Bar (disc 1_ Dinner)	1/2/3/1518	2012-06-06 10:26:54.756883	2012-06-06 10:26:54.756883
1561	/srv/mp3/Buddha Bar/Buddha-Bar VIII (disc 2_ New York)	1/2/3/1518	2012-06-06 10:27:04.778418	2012-06-06 10:27:04.778418
1566	/srv/mp3/Buddha Bar/Buddha-Bar VIII (disc 1_ Paris)	1/2/3/1518	2012-06-06 10:27:15.830669	2012-06-06 10:27:15.830669
1569	/srv/mp3/Buddha Bar/Buddha-Bar VII (disc 1_ Sarod)	1/2/3/1518	2012-06-06 10:27:25.59282	2012-06-06 10:27:25.59282
1575	/srv/mp3/Buddha Bar/Buddha-Bar (disc 2_ Party)	1/2/3/1518	2012-06-06 10:27:40.878799	2012-06-06 10:27:40.878799
1579	/srv/mp3/Buddha Bar/Buddha-Bar IX (disc 2_ Barons Court)	1/2/3/1518	2012-06-06 10:27:50.841998	2012-06-06 10:27:50.841998
1581	/srv/mp3/Buddha Bar/Buddha-Bar VII (disc 2_ Sarangi)	1/2/3/1518	2012-06-06 10:28:05.332804	2012-06-06 10:28:05.332804
1585	/srv/mp3/Buddha Bar/Buddha-Bar V (disc 2_ Drink)	1/2/3/1518	2012-06-06 10:28:15.778297	2012-06-06 10:28:15.778297
1587	/srv/mp3/Buddha Bar/Buddha-Bar IV (disc 1_ Dinner)	1/2/3/1518	2012-06-06 10:28:25.07042	2012-06-06 10:28:25.07042
1483	/srv/mp3/The Cure/The Cure - 09 - The Head On The Door (1985)	1/2/3/1437	2012-06-06 10:23:29.260267	2012-06-06 10:23:29.260267
1486	/srv/mp3/The Cure/The Cure - 13 - Entreat  (Live 1990)	1/2/3/1437	2012-06-06 10:23:36.936889	2012-06-06 10:23:36.936889
1488	/srv/mp3/The Cure/The Cure - 17 - Paris (Live 1993)	1/2/3/1437	2012-06-06 10:23:42.821278	2012-06-06 10:23:42.821278
1490	/srv/mp3/The Cure/The Cure - 23 - The Cure (2004)	1/2/3/1437	2012-06-06 10:23:52.416422	2012-06-06 10:23:52.416422
1493	/srv/mp3/The Cure/The Cure - 15 - Wish (1992)	1/2/3/1437	2012-06-06 10:24:00.730825	2012-06-06 10:24:00.730825
1496	/srv/mp3/The Cure/The Cure - 10 - Staring At The Sea - The Singles (1986)	1/2/3/1437	2012-06-06 10:24:06.753842	2012-06-06 10:24:06.753842
1500	/srv/mp3/The Cure/The Cure - 07 - The Top (1984)	1/2/3/1437	2012-06-06 10:24:14.688161	2012-06-06 10:24:14.688161
1501	/srv/mp3/The Cure/The Cure - 01 - Three Imaginary Boys (1979)(Deluxe Edition 2004)	1/2/3/1437	2012-06-06 10:24:22.442945	2012-06-06 10:24:22.442945
1502	/srv/mp3/The Cure/The Cure - 01 - Three Imaginary Boys (1979)(Deluxe Edition 2004)/CD1	1/2/3/1437/1501	2012-06-06 10:24:22.447375	2012-06-06 10:24:22.447375
1507	/srv/mp3/The Cure/The Cure - 01 - Three Imaginary Boys (1979)(Deluxe Edition 2004)/CD2	1/2/3/1437/1501	2012-06-06 10:24:28.446041	2012-06-06 10:24:28.446041
1510	/srv/mp3/The Cure/The Cure - 12 - Disintegration (1989)	1/2/3/1437	2012-06-06 10:24:42.183019	2012-06-06 10:24:42.183019
1515	/srv/mp3/The Cure/The Cure - 05 - Pornography (1982)(Deluxe Edition 2005)	1/2/3/1437	2012-06-06 10:24:50.091691	2012-06-06 10:24:50.091691
1516	/srv/mp3/The Cure/The Cure - 05 - Pornography (1982)(Deluxe Edition 2005)/CD1	1/2/3/1437/1515	2012-06-06 10:24:50.09463	2012-06-06 10:24:50.09463
1517	/srv/mp3/The Cure/The Cure - 05 - Pornography (1982)(Deluxe Edition 2005)/CD2	1/2/3/1437/1515	2012-06-06 10:24:56.231236	2012-06-06 10:24:56.231236
1521	/srv/mp3/The Cure/The Cure - 18 - Wild Mood Swings (1996)	1/2/3/1437	2012-06-06 10:25:08.355491	2012-06-06 10:25:08.355491
1525	/srv/mp3/The Cure/The Cure - 21 - Greatest Hits (2001)	1/2/3/1437	2012-06-06 10:25:18.409034	2012-06-06 10:25:18.409034
1526	/srv/mp3/The Cure/The Cure - 21 - Greatest Hits (2001)/Acoustic Bonus CD	1/2/3/1437/1525	2012-06-06 10:25:25.89912	2012-06-06 10:25:25.89912
1529	/srv/mp3/The Cure/The Cure - 02 - Boys Don't Cry (1980)	1/2/3/1437	2012-06-06 10:25:37.781099	2012-06-06 10:25:37.781099
1531	/srv/mp3/The Cure/The Cure - 14 - Mixed Up (1990)	1/2/3/1437	2012-06-06 10:25:45.978505	2012-06-06 10:25:45.978505
1533	/srv/mp3/The Cure/The Cure - 19 - Galore (1997)	1/2/3/1437	2012-06-06 10:25:53.358411	2012-06-06 10:25:53.358411
1539	/srv/mp3/The Rolling Stones	1/2/3	2012-06-06 10:26:10.477151	2012-06-06 10:26:10.477151
1540	/srv/mp3/The Rolling Stones/Sticky Fingers	1/2/3/1539	2012-06-06 10:26:10.577395	2012-06-06 10:26:10.577395
1542	/srv/mp3/Tchaikovsky	1/2/3	2012-06-06 10:26:18.3355	2012-06-06 10:26:18.3355
1543	/srv/mp3/Tchaikovsky/The Nutcracker (Complete)	1/2/3/1542	2012-06-06 10:26:18.553881	2012-06-06 10:26:18.553881
1547	/srv/mp3/Tom Lehrer	1/2/3	2012-06-06 10:26:33.948073	2012-06-06 10:26:33.948073
1548	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer	1/2/3/1547	2012-06-06 10:26:34.395484	2012-06-06 10:26:34.395484
1549	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 1 - Studio recordings with piano	1/2/3/1547/1548	2012-06-06 10:26:34.39817	2012-06-06 10:26:34.39817
1550	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 1 - Studio recordings with piano/Recent recordings	1/2/3/1547/1548/1549	2012-06-06 10:26:34.399668	2012-06-06 10:26:34.399668
1551	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 1 - Studio recordings with piano/Songs by Tom Lehrer (1953)	1/2/3/1547/1548/1549	2012-06-06 10:26:35.517488	2012-06-06 10:26:35.517488
1552	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 1 - Studio recordings with piano/More of Tom Lehrer (1959)	1/2/3/1547/1548/1549	2012-06-06 10:26:41.595171	2012-06-06 10:26:41.595171
1554	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 2 - Live performances	1/2/3/1547/1548	2012-06-06 10:26:46.930439	2012-06-06 10:26:46.930439
1555	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 2 - Live performances/An evening wasted with Tom Lehrer (1959)	1/2/3/1547/1548/1554	2012-06-06 10:26:46.934893	2012-06-06 10:26:46.934893
1556	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 2 - Live performances/Tom Lehrer revisited (1960)	1/2/3/1547/1548/1554	2012-06-06 10:26:51.602618	2012-06-06 10:26:51.602618
1558	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 3 - More live performances + Studio recordings with orchestra	1/2/3/1547/1548	2012-06-06 10:26:57.827901	2012-06-06 10:26:57.827901
1559	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 3 - More live performances + Studio recordings with orchestra/The Richard Hayman Sessions (1960)	1/2/3/1547/1548/1558	2012-06-06 10:26:57.830752	2012-06-06 10:26:57.830752
1560	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 3 - More live performances + Studio recordings with orchestra/That was the year that was (1965)	1/2/3/1547/1548/1558	2012-06-06 10:26:59.742923	2012-06-06 10:26:59.742923
1562	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 3 - More live performances + Studio recordings with orchestra/The Joe Raposo Sessions (for The Electric Company) (1971-72)	1/2/3/1547/1548/1558	2012-06-06 10:27:07.55003	2012-06-06 10:27:07.55003
1563	/srv/mp3/Tom Lehrer/Tom Lehrer - The remains of Tom Lehrer/Disc 3 - More live performances + Studio recordings with orchestra/The Rob Fisher Sessions (New recordings, 1999)	1/2/3/1547/1548/1558	2012-06-06 10:27:10.072552	2012-06-06 10:27:10.072552
1564	/srv/mp3/The Brains	1/2/3	2012-06-06 10:27:11.984237	2012-06-06 10:27:11.984237
1565	/srv/mp3/The Brains/The Brains	1/2/3/1564	2012-06-06 10:27:12.163154	2012-06-06 10:27:12.163154
1567	/srv/mp3/The Association	1/2/3	2012-06-06 10:27:18.690711	2012-06-06 10:27:18.690711
1568	/srv/mp3/The Association/Greatest Hits	1/2/3/1567	2012-06-06 10:27:18.801129	2012-06-06 10:27:18.801129
1570	/srv/mp3/Them Crooked Vultures	1/2/3	2012-06-06 10:27:30.420558	2012-06-06 10:27:30.420558
1572	/srv/mp3/Them Crooked Vultures/Them Crooked Vultures	1/2/3/1570	2012-06-06 10:27:30.803741	2012-06-06 10:27:30.803741
1573	/srv/mp3/The Tubes	1/2/3	2012-06-06 10:27:37.081683	2012-06-06 10:27:37.081683
1574	/srv/mp3/The Tubes/Young & Rich	1/2/3/1573	2012-06-06 10:27:37.224624	2012-06-06 10:27:37.224624
1576	/srv/mp3/The Tubes/Remote Control	1/2/3/1573	2012-06-06 10:27:42.642948	2012-06-06 10:27:42.642948
1577	/srv/mp3/The Tubes/The completion backward principle	1/2/3/1573	2012-06-06 10:27:48.442996	2012-06-06 10:27:48.442996
1578	/srv/mp3/The Tubes/What Do You Want From Life	1/2/3/1573	2012-06-06 10:27:50.339238	2012-06-06 10:27:50.339238
1580	/srv/mp3/The Tubes/Now	1/2/3/1573	2012-06-06 10:27:58.277241	2012-06-06 10:27:58.277241
1582	/srv/mp3/The Tubes/The Tubes	1/2/3/1573	2012-06-06 10:28:06.636665	2012-06-06 10:28:06.636665
1583	/srv/mp3/The B-52's	1/2/3	2012-06-06 10:28:10.753034	2012-06-06 10:28:10.753034
1584	/srv/mp3/The B-52's/B52	1/2/3/1583	2012-06-06 10:28:10.963177	2012-06-06 10:28:10.963177
1586	/srv/mp3/The B-52's/Party Mix-Mesopotamia	1/2/3/1583	2012-06-06 10:28:21.308681	2012-06-06 10:28:21.308681
1484	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1977 (2001)	1/2/3/59/1444	2012-06-06 10:23:32.458314	2012-06-06 10:23:32.458314
1489	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1971 (2001)	1/2/3/59/1444	2012-06-06 10:23:45.989216	2012-06-06 10:23:45.989216
1492	/srv/mp3/Various/VA-1000 Original Hits 1970-1979/1000 Original Hits 1974 (2001)	1/2/3/59/1444	2012-06-06 10:24:00.135864	2012-06-06 10:24:00.135864
1506	/srv/mp3/Various/AGNUS DEI - Music of Inner Harmony  [The Choir of New College, Oxford] Edward Higginbottom	1/2/3/59	2012-06-06 10:24:27.680442	2012-06-06 10:24:27.680442
1508	/srv/mp3/Various/AGNUS DEI - Music of Inner Harmony  [The Choir of New College, Oxford] Edward Higginbottom/covers	1/2/3/59/1506	2012-06-06 10:24:34.057515	2012-06-06 10:24:34.057515
1511	/srv/mp3/Various/time life hit parade	1/2/3/59	2012-06-06 10:24:44.633716	2012-06-06 10:24:44.633716
1512	/srv/mp3/Various/time life hit parade/time life hitparade - 1977	1/2/3/59/1511	2012-06-06 10:24:44.63525	2012-06-06 10:24:44.63525
1520	/srv/mp3/Various/time life hit parade/time life hitparade - 1972	1/2/3/59/1511	2012-06-06 10:25:01.399736	2012-06-06 10:25:01.399736
1523	/srv/mp3/Various/time life hit parade/time life hitparade - 1974	1/2/3/59/1511	2012-06-06 10:25:09.592345	2012-06-06 10:25:09.592345
1528	/srv/mp3/Various/time life hit parade/time life hitparade - 1971	1/2/3/59/1511	2012-06-06 10:25:31.240843	2012-06-06 10:25:31.240843
1534	/srv/mp3/Various/time life hit parade/time life hitparade - 1978	1/2/3/59/1511	2012-06-06 10:25:53.375549	2012-06-06 10:25:53.375549
1541	/srv/mp3/Various/time life hit parade/time life hitparade - 1979	1/2/3/59/1511	2012-06-06 10:26:12.369392	2012-06-06 10:26:12.369392
1544	/srv/mp3/Various/100 Greatest Dance Hits of the 90s	1/2/3/59	2012-06-06 10:26:20.509187	2012-06-06 10:26:20.509187
1571	/srv/mp3/Various/1950's hit songs (2of 2)	1/2/3/59	2012-06-06 10:27:30.628451	2012-06-06 10:27:30.628451
1588	/srv/mp3/Various/Top 1000 Hits of the 60s	1/2/3/59	2012-06-06 10:35:00.99316	2012-06-06 10:35:00.99316
1589	/srv/mp3/Various/Good Old Country Hits	1/2/3/59	2012-06-06 10:41:00.940975	2012-06-06 10:41:00.940975
1590	/srv/mp3/Various/Good Old Country Hits/Various	1/2/3/59/1589	2012-06-06 10:41:07.311286	2012-06-06 10:41:07.311286
1591	/srv/mp3/Various/Good Old Country Hits/Video Clips	1/2/3/59/1589	2012-06-06 10:41:07.39322	2012-06-06 10:41:07.39322
1592	/srv/mp3/Various/VA-1000 Original Hits 1960-1969	1/2/3/59	2012-06-06 10:41:07.870292	2012-06-06 10:41:07.870292
1593	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1969 (2001)	1/2/3/59/1592	2012-06-06 10:41:07.87376	2012-06-06 10:41:07.87376
1594	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1967 (2001)	1/2/3/59/1592	2012-06-06 10:41:17.764397	2012-06-06 10:41:17.764397
1595	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1964 (2001)	1/2/3/59/1592	2012-06-06 10:41:29.226267	2012-06-06 10:41:29.226267
1596	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1962 (2001)	1/2/3/59/1592	2012-06-06 10:41:39.189868	2012-06-06 10:41:39.189868
1597	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1961 (2001)	1/2/3/59/1592	2012-06-06 10:41:49.155428	2012-06-06 10:41:49.155428
1598	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1968 (2001)	1/2/3/59/1592	2012-06-06 10:41:59.781759	2012-06-06 10:41:59.781759
1599	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1960 (2001)	1/2/3/59/1592	2012-06-06 10:42:11.058459	2012-06-06 10:42:11.058459
1600	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1965 (2001)	1/2/3/59/1592	2012-06-06 10:42:24.492466	2012-06-06 10:42:24.492466
1601	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1966 (2001)	1/2/3/59/1592	2012-06-06 10:42:34.519729	2012-06-06 10:42:34.519729
1602	/srv/mp3/Various/VA-1000 Original Hits 1960-1969/1000 Original Hits 1963 (2001)	1/2/3/59/1592	2012-06-06 10:42:44.338178	2012-06-06 10:42:44.338178
1603	/srv/mp3/Various/My Collection of 300 Classical Favorites - the final product	1/2/3/59	2012-06-06 10:42:55.400619	2012-06-06 10:42:55.400619
1604	/srv/mp3/Various/Cafe Copacabana 4 - Latin Flavoured Pearls	1/2/3/59	2012-06-06 10:45:46.942626	2012-06-06 10:45:46.942626
1605	/srv/mp3/Various/BestEver	1/2/3/59	2012-06-06 10:46:03.988428	2012-06-06 10:46:03.988428
1606	/srv/mp3/Various/BestEver/The Worlds Absolute Best Ever Beer Songs	1/2/3/59/1605	2012-06-06 10:46:03.992573	2012-06-06 10:46:03.992573
1607	/srv/mp3/Various/BestEver/The Worlds Absolute Best Ever Beer Songs/CD 1	1/2/3/59/1605/1606	2012-06-06 10:46:03.996105	2012-06-06 10:46:03.996105
1608	/srv/mp3/Various/BestEver/The Worlds Absolute Best Ever Beer Songs/CD 2	1/2/3/59/1605/1606	2012-06-06 10:46:10.969941	2012-06-06 10:46:10.969941
1609	/srv/mp3/Various/BestEver/The Best Rock Album In The World Ever	1/2/3/59/1605	2012-06-06 10:46:18.184592	2012-06-06 10:46:18.184592
1610	/srv/mp3/Various/BestEver/The Best Rock Album In The World Ever/CD 1	1/2/3/59/1605/1609	2012-06-06 10:46:18.186802	2012-06-06 10:46:18.186802
1611	/srv/mp3/Various/BestEver/The Best Rock Album In The World Ever/CD 2	1/2/3/59/1605/1609	2012-06-06 10:46:24.586449	2012-06-06 10:46:24.586449
1612	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever II	1/2/3/59/1605	2012-06-06 10:46:30.74406	2012-06-06 10:46:30.74406
1613	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever II/CD 1	1/2/3/59/1605/1612	2012-06-06 10:46:30.748649	2012-06-06 10:46:30.748649
1614	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever II/CD 2	1/2/3/59/1605/1612	2012-06-06 10:46:38.909701	2012-06-06 10:46:38.909701
1615	/srv/mp3/Various/BestEver/The Best One Hit Wonders In The World Ever	1/2/3/59/1605	2012-06-06 10:46:46.638732	2012-06-06 10:46:46.638732
1616	/srv/mp3/Various/BestEver/The Best One Hit Wonders In The World Ever/CD 1	1/2/3/59/1605/1615	2012-06-06 10:46:46.641827	2012-06-06 10:46:46.641827
1617	/srv/mp3/Various/BestEver/The Best One Hit Wonders In The World Ever/CD 2	1/2/3/59/1605/1615	2012-06-06 10:46:54.693315	2012-06-06 10:46:54.693315
1618	/srv/mp3/Various/BestEver/The Best Christmas Album In The World Ever	1/2/3/59/1605	2012-06-06 10:47:03.279134	2012-06-06 10:47:03.279134
1619	/srv/mp3/Various/BestEver/The Best Christmas Album In The World Ever/CD1	1/2/3/59/1605/1618	2012-06-06 10:47:03.282853	2012-06-06 10:47:03.282853
1620	/srv/mp3/Various/BestEver/The Best Christmas Album In The World Ever/CD2	1/2/3/59/1605/1618	2012-06-06 10:47:10.12993	2012-06-06 10:47:10.12993
1621	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever	1/2/3/59/1605	2012-06-06 10:47:18.213271	2012-06-06 10:47:18.213271
1622	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever/CD 1	1/2/3/59/1605/1621	2012-06-06 10:47:18.218108	2012-06-06 10:47:18.218108
1623	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever/CD 2	1/2/3/59/1605/1621	2012-06-06 10:47:26.542641	2012-06-06 10:47:26.542641
1624	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever III	1/2/3/59/1605	2012-06-06 10:47:31.435165	2012-06-06 10:47:31.435165
1625	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever III/CD 1	1/2/3/59/1605/1624	2012-06-06 10:47:31.439794	2012-06-06 10:47:31.439794
1626	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever III/CD 2	1/2/3/59/1605/1624	2012-06-06 10:47:39.78462	2012-06-06 10:47:39.78462
1627	/srv/mp3/Various/BestEver/The Best Album In The World Ever	1/2/3/59/1605	2012-06-06 10:47:48.193371	2012-06-06 10:47:48.193371
1628	/srv/mp3/Various/BestEver/The Best Album In The World Ever/CD 1	1/2/3/59/1605/1627	2012-06-06 10:47:48.197758	2012-06-06 10:47:48.197758
1629	/srv/mp3/Various/BestEver/The Best Album In The World Ever/CD 2	1/2/3/59/1605/1627	2012-06-06 10:47:56.037485	2012-06-06 10:47:56.037485
1630	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever III	1/2/3/59/1605	2012-06-06 10:48:03.998782	2012-06-06 10:48:03.998782
1631	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever III/CD 1	1/2/3/59/1605/1630	2012-06-06 10:48:04.003597	2012-06-06 10:48:04.003597
1632	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever III/CD 2	1/2/3/59/1605/1630	2012-06-06 10:48:12.170437	2012-06-06 10:48:12.170437
1633	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever	1/2/3/59/1605	2012-06-06 10:48:23.507262	2012-06-06 10:48:23.507262
1634	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever/CD 1	1/2/3/59/1605/1633	2012-06-06 10:48:23.529706	2012-06-06 10:48:23.529706
1635	/srv/mp3/Various/BestEver/The Best Air Guitar Album In The World Ever/CD 2	1/2/3/59/1605/1633	2012-06-06 10:48:30.494709	2012-06-06 10:48:30.494709
1636	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever	1/2/3/59/1605	2012-06-06 10:48:38.085458	2012-06-06 10:48:38.085458
1637	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever/CD 1	1/2/3/59/1605/1636	2012-06-06 10:48:38.087245	2012-06-06 10:48:38.087245
1638	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever/CD 2	1/2/3/59/1605/1636	2012-06-06 10:48:46.237304	2012-06-06 10:48:46.237304
1639	/srv/mp3/Various/BestEver/The Best Number One Singles In The World Ever	1/2/3/59/1605	2012-06-06 10:48:57.73659	2012-06-06 10:48:57.73659
1640	/srv/mp3/Various/BestEver/The Best Number One Singles In The World Ever/CD 1	1/2/3/59/1605/1639	2012-06-06 10:48:57.738798	2012-06-06 10:48:57.738798
1641	/srv/mp3/Various/BestEver/The Best Number One Singles In The World Ever/CD 2	1/2/3/59/1605/1639	2012-06-06 10:49:08.365623	2012-06-06 10:49:08.365623
1642	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever IV	1/2/3/59/1605	2012-06-06 10:49:18.872419	2012-06-06 10:49:18.872419
1643	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever IV/CD 1	1/2/3/59/1605/1642	2012-06-06 10:49:18.87586	2012-06-06 10:49:18.87586
1644	/srv/mp3/Various/BestEver/The Best Sixties Album In The World Ever IV/CD 2	1/2/3/59/1605/1642	2012-06-06 10:49:27.596457	2012-06-06 10:49:27.596457
1645	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever II	1/2/3/59/1605	2012-06-06 10:49:36.139275	2012-06-06 10:49:36.139275
1646	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever II/cd2	1/2/3/59/1605/1645	2012-06-06 10:49:36.142877	2012-06-06 10:49:36.142877
1647	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever II/cd1	1/2/3/59/1605/1645	2012-06-06 10:49:42.111108	2012-06-06 10:49:42.111108
1648	/srv/mp3/Various/BestEver/The Best Reggae Album In The World Ever	1/2/3/59/1605	2012-06-06 10:49:50.043728	2012-06-06 10:49:50.043728
1649	/srv/mp3/Various/BestEver/The Best Reggae Album In The World Ever/CD 1	1/2/3/59/1605/1648	2012-06-06 10:49:50.04779	2012-06-06 10:49:50.04779
1650	/srv/mp3/Various/BestEver/The Best Reggae Album In The World Ever/CD 2	1/2/3/59/1605/1648	2012-06-06 10:49:58.837316	2012-06-06 10:49:58.837316
1651	/srv/mp3/Various/BestEver/The Best Rock Album In The World Ever II	1/2/3/59/1605	2012-06-06 10:50:07.460434	2012-06-06 10:50:07.460434
1652	/srv/mp3/Various/BestEver/The Best Rock Album In The World Ever II/CD 1	1/2/3/59/1605/1651	2012-06-06 10:50:07.46516	2012-06-06 10:50:07.46516
1653	/srv/mp3/Various/BestEver/The Best Rock Album In The World Ever II/CD 2	1/2/3/59/1605/1651	2012-06-06 10:50:13.160926	2012-06-06 10:50:13.160926
1654	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever III	1/2/3/59/1605	2012-06-06 10:50:19.816994	2012-06-06 10:50:19.816994
1655	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever III/CD 1	1/2/3/59/1605/1654	2012-06-06 10:50:19.820128	2012-06-06 10:50:19.820128
1656	/srv/mp3/Various/BestEver/The Greatest Driving Anthems In The World Ever III/CD 2	1/2/3/59/1605/1654	2012-06-06 10:50:26.116465	2012-06-06 10:50:26.116465
1657	/srv/mp3/Various/BestEver/The Best Rock N Roll Love Songs In The World Ever	1/2/3/59/1605	2012-06-06 10:50:35.584975	2012-06-06 10:50:35.584975
1658	/srv/mp3/Various/BestEver/The Best Rock N Roll Love Songs In The World Ever/CD 1	1/2/3/59/1605/1657	2012-06-06 10:50:35.589642	2012-06-06 10:50:35.589642
1659	/srv/mp3/Various/BestEver/The Best Rock N Roll Love Songs In The World Ever/CD 2	1/2/3/59/1605/1657	2012-06-06 10:50:44.30388	2012-06-06 10:50:44.30388
1660	/srv/mp3/Various/The Best of Soul and Rhythm & Blues Collection (Black Music)	1/2/3/59	2012-06-06 10:50:53.61458	2012-06-06 10:50:53.61458
1661	/srv/mp3/Various/Billboard Top 100 Hits of 1981	1/2/3/59	2012-06-06 10:51:17.218016	2012-06-06 10:51:17.218016
1662	/srv/mp3/Various/OST-Woodstock(Darkside_RG)	1/2/3/59	2012-06-06 10:51:48.920511	2012-06-06 10:51:48.920511
1663	/srv/mp3/Various/OST-Woodstock(Darkside_RG)/CD1	1/2/3/59/1662	2012-06-06 10:51:48.924806	2012-06-06 10:51:48.924806
1664	/srv/mp3/Various/OST-Woodstock(Darkside_RG)/CD2	1/2/3/59/1662	2012-06-06 10:51:56.437348	2012-06-06 10:51:56.437348
1665	/srv/mp3/Various/The Best Ever Collection	1/2/3/59	2012-06-06 10:52:00.193666	2012-06-06 10:52:00.193666
1666	/srv/mp3/Various/The Best Ever Collection/The Best Love Songs Ever	1/2/3/59/1665	2012-06-06 10:52:00.198397	2012-06-06 10:52:00.198397
1667	/srv/mp3/Various/The Best Ever Collection/The Best Love Songs Ever/CD 1	1/2/3/59/1665/1666	2012-06-06 10:52:00.20232	2012-06-06 10:52:00.20232
1668	/srv/mp3/Various/The Best Ever Collection/The Best Love Songs Ever/CD 2	1/2/3/59/1665/1666	2012-06-06 10:52:06.197689	2012-06-06 10:52:06.197689
1669	/srv/mp3/Various/The Best Ever Collection/The Best TV Ads Ever	1/2/3/59/1665	2012-06-06 10:52:12.829273	2012-06-06 10:52:12.829273
1670	/srv/mp3/Various/The Best Ever Collection/The Best TV Ads Ever/Part 2	1/2/3/59/1665/1669	2012-06-06 10:52:12.833644	2012-06-06 10:52:12.833644
1671	/srv/mp3/Various/The Best Ever Collection/The Best TV Ads Ever/Part 1	1/2/3/59/1665/1669	2012-06-06 10:52:19.291785	2012-06-06 10:52:19.291785
1672	/srv/mp3/Various/The Best Ever Collection/The Best Bands  Ever	1/2/3/59/1665	2012-06-06 10:52:29.763951	2012-06-06 10:52:29.763951
1673	/srv/mp3/Various/The Best Ever Collection/The Best Bands  Ever/CD 1	1/2/3/59/1665/1672	2012-06-06 10:52:29.769261	2012-06-06 10:52:29.769261
1674	/srv/mp3/Various/The Best Ever Collection/The Best Bands  Ever/CD 2	1/2/3/59/1665/1672	2012-06-06 10:52:36.710667	2012-06-06 10:52:36.710667
1675	/srv/mp3/Various/The Best Ever Collection/The Best Pub Jukebox Ever	1/2/3/59/1665	2012-06-06 10:52:43.465756	2012-06-06 10:52:43.465756
1676	/srv/mp3/Various/The Best Ever Collection/The Best Pub Jukebox Ever/CD 1	1/2/3/59/1665/1675	2012-06-06 10:52:43.470716	2012-06-06 10:52:43.470716
1677	/srv/mp3/Various/The Best Ever Collection/The Best Pub Jukebox Ever/CD 2	1/2/3/59/1665/1675	2012-06-06 10:52:49.853737	2012-06-06 10:52:49.853737
1678	/srv/mp3/Various/The Best Ever Collection/The Best Pop Songs Ever	1/2/3/59/1665	2012-06-06 10:52:55.868861	2012-06-06 10:52:55.868861
1679	/srv/mp3/Various/The Best Ever Collection/The Best Pop Songs Ever/CD 1	1/2/3/59/1665/1678	2012-06-06 10:52:55.870629	2012-06-06 10:52:55.870629
1680	/srv/mp3/Various/The Best Ever Collection/The Best Pop Songs Ever/CD 2	1/2/3/59/1665/1678	2012-06-06 10:53:02.11562	2012-06-06 10:53:02.11562
1681	/srv/mp3/Various/The Best Ever Collection/The Best Summer Ever	1/2/3/59/1665	2012-06-06 10:53:07.719168	2012-06-06 10:53:07.719168
1682	/srv/mp3/Various/The Best Ever Collection/The Best Summer Ever/CD1	1/2/3/59/1665/1681	2012-06-06 10:53:07.722711	2012-06-06 10:53:07.722711
1683	/srv/mp3/Various/The Best Ever Collection/The Best Summer Ever/CD2	1/2/3/59/1665/1681	2012-06-06 10:53:15.21495	2012-06-06 10:53:15.21495
1684	/srv/mp3/Various/The Best Ever Collection/The Best Chillout Ever	1/2/3/59/1665	2012-06-06 10:53:23.96288	2012-06-06 10:53:23.96288
1685	/srv/mp3/Various/The Best Ever Collection/The Best Chillout Ever/CD 1	1/2/3/59/1665/1684	2012-06-06 10:53:23.967621	2012-06-06 10:53:23.967621
1686	/srv/mp3/Various/The Best Ever Collection/The Best Chillout Ever/CD 2	1/2/3/59/1665/1684	2012-06-06 10:53:31.704546	2012-06-06 10:53:31.704546
1687	/srv/mp3/Various/The Best Ever Collection/The Best Party In Town Ever	1/2/3/59/1665	2012-06-06 10:53:39.489337	2012-06-06 10:53:39.489337
1688	/srv/mp3/Various/The Best Ever Collection/The Best Party In Town Ever/CD 1	1/2/3/59/1665/1687	2012-06-06 10:53:39.493884	2012-06-06 10:53:39.493884
1689	/srv/mp3/Various/The Best Ever Collection/The Best Party In Town Ever/CD 2	1/2/3/59/1665/1687	2012-06-06 10:53:46.473436	2012-06-06 10:53:46.473436
1690	/srv/mp3/Various/The Best Ever Collection/The Best Summer Holiday Ever	1/2/3/59/1665	2012-06-06 10:53:53.392146	2012-06-06 10:53:53.392146
1691	/srv/mp3/Various/The Best Ever Collection/The Best Summer Holiday Ever/CD 1	1/2/3/59/1665/1690	2012-06-06 10:53:53.396067	2012-06-06 10:53:53.396067
1692	/srv/mp3/Various/The Best Ever Collection/The Best Summer Holiday Ever/CD 2	1/2/3/59/1665/1690	2012-06-06 10:54:01.030687	2012-06-06 10:54:01.030687
1693	/srv/mp3/Various/The Best Ever Collection/The Best Easy Album Ever	1/2/3/59/1665	2012-06-06 10:54:07.327207	2012-06-06 10:54:07.327207
1694	/srv/mp3/Various/The Best Ever Collection/The Best Easy Album Ever/CD 1	1/2/3/59/1665/1693	2012-06-06 10:54:07.331669	2012-06-06 10:54:07.331669
1695	/srv/mp3/Various/The Best Ever Collection/The Best Easy Album Ever/CD 2	1/2/3/59/1665/1693	2012-06-06 10:54:15.54803	2012-06-06 10:54:15.54803
1696	/srv/mp3/Various/The Best Ever Collection/The Best Heavy Metal Album Ever	1/2/3/59/1665	2012-06-06 10:54:22.741984	2012-06-06 10:54:22.741984
1697	/srv/mp3/Various/The Best Ever Collection/The Best Heavy Metal Album Ever/CD 1	1/2/3/59/1665/1696	2012-06-06 10:54:22.743699	2012-06-06 10:54:22.743699
1698	/srv/mp3/Various/The Best Ever Collection/The Best Heavy Metal Album Ever/CD 2	1/2/3/59/1665/1696	2012-06-06 10:54:30.195341	2012-06-06 10:54:30.195341
1699	/srv/mp3/Various/Misc	1/2/3/59	2012-06-06 10:54:37.519559	2012-06-06 10:54:37.519559
1700	/srv/mp3/Various/country hits	1/2/3/59	2012-06-06 10:54:49.239215	2012-06-06 10:54:49.239215
1701	/srv/mp3/Various/Smooth Jazz	1/2/3/59	2012-06-06 10:55:05.671799	2012-06-06 10:55:05.671799
1702	/srv/mp3/Various/Billboard Top 100 Hits	1/2/3/59	2012-06-06 10:55:14.590664	2012-06-06 10:55:14.590664
1703	/srv/mp3/Various/Billboard Top 100 Hits/1965	1/2/3/59/1702	2012-06-06 10:55:14.595296	2012-06-06 10:55:14.595296
1704	/srv/mp3/Various/Billboard Top 100 Hits/1966	1/2/3/59/1702	2012-06-06 10:55:16.831942	2012-06-06 10:55:16.831942
1705	/srv/mp3/Various/Billboard Top 100 Hits/1969	1/2/3/59/1702	2012-06-06 10:55:19.471192	2012-06-06 10:55:19.471192
1706	/srv/mp3/Various/Billboard Top 100 Hits/1947	1/2/3/59/1702	2012-06-06 10:55:21.082818	2012-06-06 10:55:21.082818
1707	/srv/mp3/Various/Billboard Top 100 Hits/1957	1/2/3/59/1702	2012-06-06 10:55:26.017186	2012-06-06 10:55:26.017186
1708	/srv/mp3/Various/Billboard Top 100 Hits/1960	1/2/3/59/1702	2012-06-06 10:55:28.140795	2012-06-06 10:55:28.140795
1709	/srv/mp3/Various/Billboard Top 100 Hits/1963	1/2/3/59/1702	2012-06-06 10:55:31.384668	2012-06-06 10:55:31.384668
1710	/srv/mp3/Various/Billboard Top 100 Hits/1958	1/2/3/59/1702	2012-06-06 10:55:32.857689	2012-06-06 10:55:32.857689
1711	/srv/mp3/Various/Billboard Top 100 Hits/1962	1/2/3/59/1702	2012-06-06 10:55:35.315412	2012-06-06 10:55:35.315412
1712	/srv/mp3/Various/Billboard Top 100 Hits/1952	1/2/3/59/1702	2012-06-06 10:55:37.997662	2012-06-06 10:55:37.997662
1713	/srv/mp3/Various/Billboard Top 100 Hits/1968	1/2/3/59/1702	2012-06-06 10:55:38.815167	2012-06-06 10:55:38.815167
1714	/srv/mp3/Various/Billboard Top 100 Hits/1954	1/2/3/59/1702	2012-06-06 10:55:39.995519	2012-06-06 10:55:39.995519
1715	/srv/mp3/Various/Billboard Top 100 Hits/1953	1/2/3/59/1702	2012-06-06 10:55:42.519941	2012-06-06 10:55:42.519941
1716	/srv/mp3/Various/Billboard Top 100 Hits/1951	1/2/3/59/1702	2012-06-06 10:55:43.661528	2012-06-06 10:55:43.661528
1717	/srv/mp3/Various/Billboard Top 100 Hits/1950	1/2/3/59/1702	2012-06-06 10:55:44.501336	2012-06-06 10:55:44.501336
1718	/srv/mp3/Various/Billboard Top 100 Hits/1961	1/2/3/59/1702	2012-06-06 10:55:45.67727	2012-06-06 10:55:45.67727
1719	/srv/mp3/Various/Billboard Top 100 Hits/1959	1/2/3/59/1702	2012-06-06 10:55:47.332505	2012-06-06 10:55:47.332505
1720	/srv/mp3/Various/Billboard Top 100 Hits/1956	1/2/3/59/1702	2012-06-06 10:55:48.963002	2012-06-06 10:55:48.963002
1721	/srv/mp3/Various/Billboard Top 100 Hits/1964	1/2/3/59/1702	2012-06-06 10:55:52.338286	2012-06-06 10:55:52.338286
1722	/srv/mp3/Various/Billboard Top 100 Hits/1967	1/2/3/59/1702	2012-06-06 10:55:53.054799	2012-06-06 10:55:53.054799
1723	/srv/mp3/Various/Billboard Top 100 Hits/1949	1/2/3/59/1702	2012-06-06 10:55:54.485784	2012-06-06 10:55:54.485784
1724	/srv/mp3/Various/The Best Pub Album	1/2/3/59	2012-06-06 10:55:55.632288	2012-06-06 10:55:55.632288
1725	/srv/mp3/Various/Billboard Top 200 of Jazz & Smooth Vol 2	1/2/3/59	2012-06-06 10:56:15.508919	2012-06-06 10:56:15.508919
1726	/srv/mp3/Various/Top 75 -Canada- Billboard 06-16-07 Charts @224 Torrent-Tatty	1/2/3/59	2012-06-06 10:56:25.422352	2012-06-06 10:56:25.422352
1727	/srv/mp3/Various/global lounge vol.2 - la corporacion	1/2/3/59	2012-06-06 10:56:55.20177	2012-06-06 10:56:55.20177
1728	/srv/mp3/Various/pf100-70s	1/2/3/59	2012-06-06 10:57:06.880539	2012-06-06 10:57:06.880539
1729	/srv/mp3/Various/pf100-70s/Neil Young	1/2/3/59/1728	2012-06-06 10:57:06.882961	2012-06-06 10:57:06.882961
1730	/srv/mp3/Various/pf100-70s/Neil Young/On the Beach	1/2/3/59/1728/1729	2012-06-06 10:57:06.88444	2012-06-06 10:57:06.88444
1731	/srv/mp3/Various/pf100-70s/Rolling Stones	1/2/3/59/1728	2012-06-06 10:57:11.467528	2012-06-06 10:57:11.467528
1732	/srv/mp3/Various/pf100-70s/Rolling Stones/Exile on Main Street	1/2/3/59/1728/1731	2012-06-06 10:57:11.469803	2012-06-06 10:57:11.469803
1733	/srv/mp3/Various/pf100-70s/085. Wire-1979-154	1/2/3/59/1728	2012-06-06 10:57:23.00119	2012-06-06 10:57:23.00119
1734	/srv/mp3/Various/pf100-70s/Joy Division	1/2/3/59/1728	2012-06-06 10:57:27.719216	2012-06-06 10:57:27.719216
1735	/srv/mp3/Various/pf100-70s/Joy Division/Unknown Pleasures	1/2/3/59/1728/1734	2012-06-06 10:57:27.722877	2012-06-06 10:57:27.722877
1736	/srv/mp3/Various/pf100-70s/Television	1/2/3/59/1728	2012-06-06 10:57:33.370182	2012-06-06 10:57:33.370182
1737	/srv/mp3/Various/pf100-70s/Television/Marquee Moon	1/2/3/59/1728/1736	2012-06-06 10:57:33.371939	2012-06-06 10:57:33.371939
1738	/srv/mp3/Various/pf100-70s/Leonard Cohen	1/2/3/59/1728	2012-06-06 10:57:38.094698	2012-06-06 10:57:38.094698
1739	/srv/mp3/Various/pf100-70s/Leonard Cohen/Songs of Love and Hate	1/2/3/59/1728/1738	2012-06-06 10:57:38.09854	2012-06-06 10:57:38.09854
1740	/srv/mp3/Various/pf100-70s/Sly & The Family Stone	1/2/3/59/1728	2012-06-06 10:57:43.068651	2012-06-06 10:57:43.068651
1741	/srv/mp3/Various/pf100-70s/Sly & The Family Stone/There's a Riot Goin' On	1/2/3/59/1728/1740	2012-06-06 10:57:43.071719	2012-06-06 10:57:43.071719
1742	/srv/mp3/Various/pf100-70s/Randy Newman	1/2/3/59/1728	2012-06-06 10:57:49.649823	2012-06-06 10:57:49.649823
1743	/srv/mp3/Various/pf100-70s/Randy Newman/Sail Away	1/2/3/59/1728/1742	2012-06-06 10:57:49.651579	2012-06-06 10:57:49.651579
1744	/srv/mp3/Various/pf100-70s/Van Halen	1/2/3/59/1728	2012-06-06 10:57:58.074234	2012-06-06 10:57:58.074234
1745	/srv/mp3/Various/pf100-70s/Van Halen/Van Halen	1/2/3/59/1728/1744	2012-06-06 10:57:58.078685	2012-06-06 10:57:58.078685
1746	/srv/mp3/Various/pf100-70s/Big Star	1/2/3/59/1728	2012-06-06 10:58:04.410648	2012-06-06 10:58:04.410648
1747	/srv/mp3/Various/pf100-70s/Big Star/Third_Sister Lovers	1/2/3/59/1728/1746	2012-06-06 10:58:04.412839	2012-06-06 10:58:04.412839
1748	/srv/mp3/Various/pf100-70s/Nilsson	1/2/3/59/1728	2012-06-06 10:58:11.018627	2012-06-06 10:58:11.018627
1749	/srv/mp3/Various/pf100-70s/Nilsson/Nilsson Schmilsson	1/2/3/59/1728/1748	2012-06-06 10:58:11.020809	2012-06-06 10:58:11.020809
1750	/srv/mp3/Various/pf100-70s/Suicide	1/2/3/59/1728	2012-06-06 10:58:16.098464	2012-06-06 10:58:16.098464
1751	/srv/mp3/Various/pf100-70s/Suicide/Suicide	1/2/3/59/1728/1750	2012-06-06 10:58:16.102944	2012-06-06 10:58:16.102944
1752	/srv/mp3/Various/pf100-70s/Iggy & The Stooges	1/2/3/59/1728	2012-06-06 10:58:20.951237	2012-06-06 10:58:20.951237
1753	/srv/mp3/Various/pf100-70s/Iggy & The Stooges/Raw Power	1/2/3/59/1728/1752	2012-06-06 10:58:20.954622	2012-06-06 10:58:20.954622
1754	/srv/mp3/Various/pf100-70s/Blondie	1/2/3/59/1728	2012-06-06 10:58:25.858951	2012-06-06 10:58:25.858951
1755	/srv/mp3/Various/pf100-70s/Blondie/Parallel Lines	1/2/3/59/1728/1754	2012-06-06 10:58:25.863366	2012-06-06 10:58:25.863366
1756	/srv/mp3/Various/pf100-70s/Steve Reich	1/2/3/59/1728	2012-06-06 10:58:33.70505	2012-06-06 10:58:33.70505
1757	/srv/mp3/Various/pf100-70s/Steve Reich/Music For 18 Musicians	1/2/3/59/1728/1756	2012-06-06 10:58:33.706796	2012-06-06 10:58:33.706796
1758	/srv/mp3/Various/pf100-70s/The Specials	1/2/3/59/1728	2012-06-06 10:58:42.666064	2012-06-06 10:58:42.666064
1759	/srv/mp3/Various/pf100-70s/The Specials/The Specials	1/2/3/59/1728/1758	2012-06-06 10:58:42.667851	2012-06-06 10:58:42.667851
1760	/srv/mp3/Various/pf100-70s/Wire	1/2/3/59/1728	2012-06-06 10:58:50.414278	2012-06-06 10:58:50.414278
1761	/srv/mp3/Various/pf100-70s/Wire/Pink Flag	1/2/3/59/1728/1760	2012-06-06 10:58:50.418428	2012-06-06 10:58:50.418428
1762	/srv/mp3/Various/pf100-70s/Wire/154	1/2/3/59/1728/1760	2012-06-06 10:59:02.949655	2012-06-06 10:59:02.949655
1763	/srv/mp3/Various/pf100-70s/Wire/Chairs Missing	1/2/3/59/1728/1760	2012-06-06 10:59:06.014396	2012-06-06 10:59:06.014396
1764	/srv/mp3/Various/pf100-70s/20 Jazz Funk Greats	1/2/3/59/1728	2012-06-06 10:59:13.787447	2012-06-06 10:59:13.787447
1765	/srv/mp3/Various/pf100-70s/Sex Pistols	1/2/3/59/1728	2012-06-06 10:59:14.93672	2012-06-06 10:59:14.93672
1766	/srv/mp3/Various/pf100-70s/Sex Pistols/Never Mind the Bollocks	1/2/3/59/1728/1765	2012-06-06 10:59:14.939639	2012-06-06 10:59:14.939639
1767	/srv/mp3/Various/pf100-70s/Bob Dylan	1/2/3/59/1728	2012-06-06 10:59:22.810386	2012-06-06 10:59:22.810386
1768	/srv/mp3/Various/pf100-70s/Bob Dylan/Blood on the Tracks	1/2/3/59/1728/1767	2012-06-06 10:59:22.814875	2012-06-06 10:59:22.814875
1769	/srv/mp3/Various/pf100-70s/Al Green	1/2/3/59/1728	2012-06-06 10:59:30.183414	2012-06-06 10:59:30.183414
1770	/srv/mp3/Various/pf100-70s/Al Green/Call Me	1/2/3/59/1728/1769	2012-06-06 10:59:30.187183	2012-06-06 10:59:30.187183
1771	/srv/mp3/Various/pf100-70s/The Beatles	1/2/3/59/1728	2012-06-06 10:59:35.471981	2012-06-06 10:59:35.471981
1772	/srv/mp3/Various/pf100-70s/The Beatles/Let It Be	1/2/3/59/1728/1771	2012-06-06 10:59:35.476401	2012-06-06 10:59:35.476401
1773	/srv/mp3/Various/pf100-70s/Jimi Hendrix	1/2/3/59/1728	2012-06-06 10:59:43.519177	2012-06-06 10:59:43.519177
1774	/srv/mp3/Various/pf100-70s/Jimi Hendrix/Band of Gypsies	1/2/3/59/1728/1773	2012-06-06 10:59:43.523687	2012-06-06 10:59:43.523687
1775	/srv/mp3/Various/pf100-70s/The Pop Group	1/2/3/59/1728	2012-06-06 10:59:47.940506	2012-06-06 10:59:47.940506
1776	/srv/mp3/Various/pf100-70s/The Pop Group/Y	1/2/3/59/1728/1775	2012-06-06 10:59:47.942846	2012-06-06 10:59:47.942846
1777	/srv/mp3/Various/pf100-70s/Led Zeppelin	1/2/3/59/1728	2012-06-06 10:59:53.925707	2012-06-06 10:59:53.925707
1778	/srv/mp3/Various/pf100-70s/Led Zeppelin/Houses of the Holy	1/2/3/59/1728/1777	2012-06-06 10:59:53.927961	2012-06-06 10:59:53.927961
1779	/srv/mp3/Various/pf100-70s/Led Zeppelin/IV	1/2/3/59/1728/1777	2012-06-06 10:59:58.96596	2012-06-06 10:59:58.96596
1780	/srv/mp3/Various/pf100-70s/Led Zeppelin/III	1/2/3/59/1728/1777	2012-06-06 11:00:03.691937	2012-06-06 11:00:03.691937
1781	/srv/mp3/Various/pf100-70s/Led Zeppelin/Physical Graffiti	1/2/3/59/1728/1777	2012-06-06 11:00:09.542123	2012-06-06 11:00:09.542123
1782	/srv/mp3/Various/pf100-70s/Marvin Gaye	1/2/3/59/1728	2012-06-06 11:00:17.841556	2012-06-06 11:00:17.841556
1783	/srv/mp3/Various/pf100-70s/Marvin Gaye/What's Going On	1/2/3/59/1728/1782	2012-06-06 11:00:17.846376	2012-06-06 11:00:17.846376
1784	/srv/mp3/Various/pf100-70s/The Stooges	1/2/3/59/1728	2012-06-06 11:00:23.411044	2012-06-06 11:00:23.411044
1785	/srv/mp3/Various/pf100-70s/The Stooges/Fun House	1/2/3/59/1728/1784	2012-06-06 11:00:23.414426	2012-06-06 11:00:23.414426
1786	/srv/mp3/Various/pf100-70s/Giorgio Moroder	1/2/3/59/1728	2012-06-06 11:00:27.975335	2012-06-06 11:00:27.975335
1787	/srv/mp3/Various/pf100-70s/Giorgio Moroder/From Here to Eternity	1/2/3/59/1728/1786	2012-06-06 11:00:27.978174	2012-06-06 11:00:27.978174
1788	/srv/mp3/Various/pf100-70s/Can	1/2/3/59/1728	2012-06-06 11:00:33.225762	2012-06-06 11:00:33.225762
1789	/srv/mp3/Various/pf100-70s/Can/Ege Bamyasi	1/2/3/59/1728/1788	2012-06-06 11:00:33.230218	2012-06-06 11:00:33.230218
1790	/srv/mp3/Various/pf100-70s/Can/Tago Mago	1/2/3/59/1728/1788	2012-06-06 11:00:37.445651	2012-06-06 11:00:37.445651
1791	/srv/mp3/Various/pf100-70s/Can/Future Days	1/2/3/59/1728/1788	2012-06-06 11:00:41.860412	2012-06-06 11:00:41.860412
1792	/srv/mp3/Various/pf100-70s/Paul Simon	1/2/3/59/1728	2012-06-06 11:00:46.645613	2012-06-06 11:00:46.645613
1793	/srv/mp3/Various/pf100-70s/Paul Simon/Paul Simon	1/2/3/59/1728/1792	2012-06-06 11:00:46.647411	2012-06-06 11:00:46.647411
1794	/srv/mp3/Various/pf100-70s/Talking Heads	1/2/3/59/1728	2012-06-06 11:00:55.200443	2012-06-06 11:00:55.200443
1795	/srv/mp3/Various/pf100-70s/Talking Heads/Fear of Music	1/2/3/59/1728/1794	2012-06-06 11:00:55.20208	2012-06-06 11:00:55.20208
1796	/srv/mp3/Various/pf100-70s/Talking Heads/More Songs About Buildings and Food	1/2/3/59/1728/1794	2012-06-06 11:01:01.220959	2012-06-06 11:01:01.220959
1797	/srv/mp3/Various/pf100-70s/Anikulapo Kuti & Africa '70	1/2/3/59/1728	2012-06-06 11:01:06.704115	2012-06-06 11:01:06.704115
1798	/srv/mp3/Various/pf100-70s/Anikulapo Kuti & Africa '70/Expensive Shit	1/2/3/59/1728/1797	2012-06-06 11:01:06.708793	2012-06-06 11:01:06.708793
1799	/srv/mp3/Various/pf100-70s/Ramones	1/2/3/59/1728	2012-06-06 11:01:08.536213	2012-06-06 11:01:08.536213
1800	/srv/mp3/Various/pf100-70s/Ramones/Ramones	1/2/3/59/1728/1799	2012-06-06 11:01:08.539616	2012-06-06 11:01:08.539616
1801	/srv/mp3/Various/pf100-70s/Ramones/Rocket to Russia	1/2/3/59/1728/1799	2012-06-06 11:01:16.863936	2012-06-06 11:01:16.863936
1802	/srv/mp3/Various/pf100-70s/Fela Anikulapo Kuti & Africa '70	1/2/3/59/1728	2012-06-06 11:01:26.332366	2012-06-06 11:01:26.332366
1803	/srv/mp3/Various/pf100-70s/Fela Anikulapo Kuti & Africa '70/Zombie	1/2/3/59/1728/1802	2012-06-06 11:01:26.334163	2012-06-06 11:01:26.334163
1804	/srv/mp3/Various/pf100-70s/Fleetwood Mac	1/2/3/59/1728	2012-06-06 11:01:28.952754	2012-06-06 11:01:28.952754
1805	/srv/mp3/Various/pf100-70s/Fleetwood Mac/Rumours	1/2/3/59/1728/1804	2012-06-06 11:01:28.955721	2012-06-06 11:01:28.955721
1806	/srv/mp3/Various/pf100-70s/David Bowie	1/2/3/59/1728	2012-06-06 11:01:35.895394	2012-06-06 11:01:35.895394
1807	/srv/mp3/Various/pf100-70s/David Bowie/Hunky Dory	1/2/3/59/1728/1806	2012-06-06 11:01:35.899846	2012-06-06 11:01:35.899846
1808	/srv/mp3/Various/pf100-70s/David Bowie/The Rise and Fall of Ziggy Stardust and the Spiders From Mars	1/2/3/59/1728/1806	2012-06-06 11:01:40.455887	2012-06-06 11:01:40.455887
1809	/srv/mp3/Various/pf100-70s/David Bowie/Low	1/2/3/59/1728/1806	2012-06-06 11:01:46.169674	2012-06-06 11:01:46.169674
1810	/srv/mp3/Various/pf100-70s/Elvis Costello	1/2/3/59/1728	2012-06-06 11:01:53.544062	2012-06-06 11:01:53.544062
1811	/srv/mp3/Various/pf100-70s/Elvis Costello/This Year's Model	1/2/3/59/1728/1810	2012-06-06 11:01:53.547024	2012-06-06 11:01:53.547024
1812	/srv/mp3/Various/pf100-70s/Elvis Costello/My Aim Is True	1/2/3/59/1728/1810	2012-06-06 11:01:58.839023	2012-06-06 11:01:58.839023
1813	/srv/mp3/Various/pf100-70s/Nick Drake	1/2/3/59/1728	2012-06-06 11:02:06.049783	2012-06-06 11:02:06.049783
1814	/srv/mp3/Various/pf100-70s/Nick Drake/Bryter Layter	1/2/3/59/1728/1813	2012-06-06 11:02:06.054048	2012-06-06 11:02:06.054048
1815	/srv/mp3/Various/pf100-70s/Nick Drake/Pink Moon	1/2/3/59/1728/1813	2012-06-06 11:02:11.785251	2012-06-06 11:02:11.785251
1816	/srv/mp3/Various/pf100-70s/The Congos	1/2/3/59/1728	2012-06-06 11:02:20.68611	2012-06-06 11:02:20.68611
1817	/srv/mp3/Various/pf100-70s/The Congos/Heart of the Congos	1/2/3/59/1728/1816	2012-06-06 11:02:20.689563	2012-06-06 11:02:20.689563
1818	/srv/mp3/Various/pf100-70s/Gang of Four	1/2/3/59/1728	2012-06-06 11:02:34.777272	2012-06-06 11:02:34.777272
1819	/srv/mp3/Various/pf100-70s/Gang of Four/Entertainment	1/2/3/59/1728/1818	2012-06-06 11:02:34.781698	2012-06-06 11:02:34.781698
1820	/srv/mp3/Various/pf100-70s/The Cars	1/2/3/59/1728	2012-06-06 11:02:43.130013	2012-06-06 11:02:43.130013
1821	/srv/mp3/Various/pf100-70s/The Cars/The Cars	1/2/3/59/1728/1820	2012-06-06 11:02:43.133468	2012-06-06 11:02:43.133468
1822	/srv/mp3/Various/pf100-70s/Michael Jackson	1/2/3/59/1728	2012-06-06 11:02:48.657712	2012-06-06 11:02:48.657712
1823	/srv/mp3/Various/pf100-70s/Michael Jackson/Off the Wall	1/2/3/59/1728/1822	2012-06-06 11:02:48.662205	2012-06-06 11:02:48.662205
1824	/srv/mp3/Various/pf100-70s/Kraftwerk	1/2/3/59/1728	2012-06-06 11:02:54.789994	2012-06-06 11:02:54.789994
1825	/srv/mp3/Various/pf100-70s/Kraftwerk/The Man-Machine	1/2/3/59/1728/1824	2012-06-06 11:02:54.794411	2012-06-06 11:02:54.794411
1826	/srv/mp3/Various/pf100-70s/Kraftwerk/Trans-Europe Express	1/2/3/59/1728/1824	2012-06-06 11:02:59.148409	2012-06-06 11:02:59.148409
1827	/srv/mp3/Various/pf100-70s/XTC	1/2/3/59/1728	2012-06-06 11:03:05.104359	2012-06-06 11:03:05.104359
1828	/srv/mp3/Various/pf100-70s/XTC/Drums and Wires	1/2/3/59/1728/1827	2012-06-06 11:03:05.107727	2012-06-06 11:03:05.107727
1829	/srv/mp3/Various/pf100-70s/T. Rex	1/2/3/59/1728	2012-06-06 11:03:14.315876	2012-06-06 11:03:14.315876
1830	/srv/mp3/Various/pf100-70s/T. Rex/Electric Warrior	1/2/3/59/1728/1829	2012-06-06 11:03:14.319149	2012-06-06 11:03:14.319149
1831	/srv/mp3/Various/pf100-70s/Throbbing Gristle	1/2/3/59/1728	2012-06-06 11:03:21.29365	2012-06-06 11:03:21.29365
1968	/srv/mp3/King Crimson/1981 - Discipline	1/2/3/1952	2012-06-06 12:16:05.186214	2012-06-06 12:16:05.186214
1832	/srv/mp3/Various/pf100-70s/Throbbing Gristle/20 Jazz Funk Greats	1/2/3/59/1728/1831	2012-06-06 11:03:21.295272	2012-06-06 11:03:21.295272
1833	/srv/mp3/Various/pf100-70s/James Brown	1/2/3/59/1728	2012-06-06 11:03:26.799017	2012-06-06 11:03:26.799017
1834	/srv/mp3/Various/pf100-70s/James Brown/The Payback	1/2/3/59/1728/1833	2012-06-06 11:03:26.803518	2012-06-06 11:03:26.803518
1835	/srv/mp3/Various/pf100-70s/Stevie Wonder	1/2/3/59/1728	2012-06-06 11:03:32.067077	2012-06-06 11:03:32.067077
1836	/srv/mp3/Various/pf100-70s/Stevie Wonder/Innervisions	1/2/3/59/1728/1835	2012-06-06 11:03:32.071559	2012-06-06 11:03:32.071559
1837	/srv/mp3/Various/pf100-70s/Miles Davis	1/2/3/59/1728	2012-06-06 11:03:37.244895	2012-06-06 11:03:37.244895
1838	/srv/mp3/Various/pf100-70s/Miles Davis/A Tribute to Jack Johnson	1/2/3/59/1728/1837	2012-06-06 11:03:37.249921	2012-06-06 11:03:37.249921
1839	/srv/mp3/Various/pf100-70s/Miles Davis/On the Corner	1/2/3/59/1728/1837	2012-06-06 11:03:39.484583	2012-06-06 11:03:39.484583
1840	/srv/mp3/Various/pf100-70s/Miles Davis/Live Evil	1/2/3/59/1728/1837	2012-06-06 11:03:41.917891	2012-06-06 11:03:41.917891
1841	/srv/mp3/Various/pf100-70s/Herbie Hancock	1/2/3/59/1728	2012-06-06 11:03:46.288487	2012-06-06 11:03:46.288487
1842	/srv/mp3/Various/pf100-70s/Herbie Hancock/Head Hunters	1/2/3/59/1728/1841	2012-06-06 11:03:46.290267	2012-06-06 11:03:46.290267
1843	/srv/mp3/Various/pf100-70s/Faust	1/2/3/59/1728	2012-06-06 11:03:49.065696	2012-06-06 11:03:49.065696
1844	/srv/mp3/Various/pf100-70s/Faust/IV	1/2/3/59/1728/1843	2012-06-06 11:03:49.067894	2012-06-06 11:03:49.067894
1845	/srv/mp3/Various/pf100-70s/King Crimson	1/2/3/59/1728	2012-06-06 11:03:54.228106	2012-06-06 11:03:54.228106
1846	/srv/mp3/Various/pf100-70s/King Crimson/Red	1/2/3/59/1728/1845	2012-06-06 11:03:54.232655	2012-06-06 11:03:54.232655
1847	/srv/mp3/Various/pf100-70s/King Crimson/Starless and Bible Black	1/2/3/59/1728/1845	2012-06-06 11:03:57.588453	2012-06-06 11:03:57.588453
1848	/srv/mp3/Various/pf100-70s/After the Gold Rush	1/2/3/59/1728	2012-06-06 11:04:01.768043	2012-06-06 11:04:01.768043
1849	/srv/mp3/Various/pf100-70s/Tim Buckley	1/2/3/59/1728	2012-06-06 11:04:07.989383	2012-06-06 11:04:07.989383
1850	/srv/mp3/Various/pf100-70s/Tim Buckley/Starsailor	1/2/3/59/1728/1849	2012-06-06 11:04:07.993869	2012-06-06 11:04:07.993869
1851	/srv/mp3/Various/pf100-70s/Serge Gainsbourg	1/2/3/59/1728	2012-06-06 11:04:14.196333	2012-06-06 11:04:14.196333
1852	/srv/mp3/Various/pf100-70s/Serge Gainsbourg/Histoire De Melody Nelson	1/2/3/59/1728/1851	2012-06-06 11:04:14.200799	2012-06-06 11:04:14.200799
1853	/srv/mp3/Various/pf100-70s/Brian Eno	1/2/3/59/1728	2012-06-06 11:04:19.181619	2012-06-06 11:04:19.181619
1854	/srv/mp3/Various/pf100-70s/Brian Eno/Another Green World	1/2/3/59/1728/1853	2012-06-06 11:04:19.1855	2012-06-06 11:04:19.1855
1855	/srv/mp3/Various/pf100-70s/Brian Eno/Here Come the Warm Jets	1/2/3/59/1728/1853	2012-06-06 11:04:26.815684	2012-06-06 11:04:26.815684
1856	/srv/mp3/Various/pf100-70s/Brian Eno/Before and After Science	1/2/3/59/1728/1853	2012-06-06 11:04:33.143262	2012-06-06 11:04:33.143262
1857	/srv/mp3/Various/pf100-70s/The Clash	1/2/3/59/1728	2012-06-06 11:04:39.310627	2012-06-06 11:04:39.310627
1858	/srv/mp3/Various/pf100-70s/The Clash/The Clash	1/2/3/59/1728/1857	2012-06-06 11:04:39.314608	2012-06-06 11:04:39.314608
1859	/srv/mp3/Various/pf100-70s/The Clash/London Calling	1/2/3/59/1728/1857	2012-06-06 11:04:48.540669	2012-06-06 11:04:48.540669
1860	/srv/mp3/Various/pf100-70s/Creedence Clearwater Revival	1/2/3/59/1728	2012-06-06 11:05:01.240942	2012-06-06 11:05:01.240942
1861	/srv/mp3/Various/pf100-70s/Creedence Clearwater Revival/Cosmo's Factory	1/2/3/59/1728/1860	2012-06-06 11:05:01.245562	2012-06-06 11:05:01.245562
1862	/srv/mp3/Various/pf100-70s/Iggy Pop	1/2/3/59/1728	2012-06-06 11:05:08.900529	2012-06-06 11:05:08.900529
1863	/srv/mp3/Various/pf100-70s/Iggy Pop/The Idiot	1/2/3/59/1728/1862	2012-06-06 11:05:08.902207	2012-06-06 11:05:08.902207
1864	/srv/mp3/Various/pf100-70s/Iggy Pop/Lust for Life	1/2/3/59/1728/1862	2012-06-06 11:05:14.292832	2012-06-06 11:05:14.292832
1865	/srv/mp3/Various/pf100-70s/Robert Wyatt	1/2/3/59/1728	2012-06-06 11:05:19.447336	2012-06-06 11:05:19.447336
1866	/srv/mp3/Various/pf100-70s/Robert Wyatt/Rock Bottom	1/2/3/59/1728/1865	2012-06-06 11:05:19.449398	2012-06-06 11:05:19.449398
1867	/srv/mp3/Various/pf100-70s/Funkadelic	1/2/3/59/1728	2012-06-06 11:05:23.407359	2012-06-06 11:05:23.407359
1868	/srv/mp3/Various/pf100-70s/Funkadelic/Maggot Brain	1/2/3/59/1728/1867	2012-06-06 11:05:23.409314	2012-06-06 11:05:23.409314
1869	/srv/mp3/Various/pf100-70s/Cluster	1/2/3/59/1728	2012-06-06 11:05:28.728855	2012-06-06 11:05:28.728855
1870	/srv/mp3/Various/pf100-70s/Cluster/Zuckerzeit	1/2/3/59/1728/1869	2012-06-06 11:05:28.730505	2012-06-06 11:05:28.730505
1871	/srv/mp3/Various/pf100-70s/Beach Boys	1/2/3/59/1728	2012-06-06 11:05:34.318987	2012-06-06 11:05:34.318987
1872	/srv/mp3/Various/pf100-70s/Beach Boys/Surf's Up	1/2/3/59/1728/1871	2012-06-06 11:05:34.320619	2012-06-06 11:05:34.320619
1873	/srv/mp3/Various/pf100-70s/John Lennon	1/2/3/59/1728	2012-06-06 11:05:40.830239	2012-06-06 11:05:40.830239
1874	/srv/mp3/Various/pf100-70s/John Lennon/Plastic Ono Band	1/2/3/59/1728/1873	2012-06-06 11:05:40.834832	2012-06-06 11:05:40.834832
1875	/srv/mp3/Various/pf100-70s/Devo	1/2/3/59/1728	2012-06-06 11:05:46.371726	2012-06-06 11:05:46.371726
1876	/srv/mp3/Various/pf100-70s/Devo/Q_Are We Not Men_ A_We are Devo_	1/2/3/59/1728/1875	2012-06-06 11:05:46.376167	2012-06-06 11:05:46.376167
1877	/srv/mp3/Various/pf100-70s/George Harrison	1/2/3/59/1728	2012-06-06 11:05:52.842621	2012-06-06 11:05:52.842621
1878	/srv/mp3/Various/pf100-70s/George Harrison/All Things Must Pass	1/2/3/59/1728/1877	2012-06-06 11:05:52.844285	2012-06-06 11:05:52.844285
1879	/srv/mp3/Various/pf100-70s/Roxy Music	1/2/3/59/1728	2012-06-06 11:06:07.400617	2012-06-06 11:06:07.400617
1880	/srv/mp3/Various/pf100-70s/Roxy Music/For Your Pleasure	1/2/3/59/1728/1879	2012-06-06 11:06:07.405097	2012-06-06 11:06:07.405097
1881	/srv/mp3/Various/pf100-70s/Neu!	1/2/3/59/1728	2012-06-06 11:06:12.666588	2012-06-06 11:06:12.666588
1882	/srv/mp3/Various/pf100-70s/Neu!/Neu!	1/2/3/59/1728/1881	2012-06-06 11:06:12.671292	2012-06-06 11:06:12.671292
1883	/srv/mp3/Various/pf100-70s/Aladdin Sane	1/2/3/59/1728	2012-06-06 11:06:16.581581	2012-06-06 11:06:16.581581
1884	/srv/mp3/Various/pf100-70s/Pink Floyd	1/2/3/59/1728	2012-06-06 11:06:21.680645	2012-06-06 11:06:21.680645
1885	/srv/mp3/Various/pf100-70s/Pink Floyd/Wish You Were Here	1/2/3/59/1728/1884	2012-06-06 11:06:21.682253	2012-06-06 11:06:21.682253
1886	/srv/mp3/Various/pf100-70s/Pink Floyd/Dark Side of the Moon	1/2/3/59/1728/1884	2012-06-06 11:06:24.797488	2012-06-06 11:06:24.797488
1887	/srv/mp3/Various/pf100-70s/Pink Floyd/The Wall	1/2/3/59/1728/1884	2012-06-06 11:06:30.668416	2012-06-06 11:06:30.668416
1888	/srv/mp3/Various/pf100-70s/Pink Floyd/Meddle	1/2/3/59/1728/1884	2012-06-06 11:06:46.683587	2012-06-06 11:06:46.683587
1889	/srv/mp3/Various/pf100-70s/The Modern Lovers	1/2/3/59/1728	2012-06-06 11:06:50.698352	2012-06-06 11:06:50.698352
1890	/srv/mp3/Various/pf100-70s/The Modern Lovers/The Modern Lovers	1/2/3/59/1728/1889	2012-06-06 11:06:50.701125	2012-06-06 11:06:50.701125
1891	/srv/mp3/Various/pf100-70s/Buzzcocks	1/2/3/59/1728	2012-06-06 11:06:57.988312	2012-06-06 11:06:57.988312
1892	/srv/mp3/Various/pf100-70s/Buzzcocks/Singles Going Steady	1/2/3/59/1728/1891	2012-06-06 11:06:57.992806	2012-06-06 11:06:57.992806
1893	/srv/mp3/Various/pf100-70s/The Velvet Underground	1/2/3/59/1728	2012-06-06 11:07:08.124415	2012-06-06 11:07:08.124415
1894	/srv/mp3/Various/pf100-70s/The Velvet Underground/Loaded	1/2/3/59/1728/1893	2012-06-06 11:07:08.12893	2012-06-06 11:07:08.12893
1895	/srv/mp3/Various/pf100-70s/Various Artists	1/2/3/59/1728	2012-06-06 11:07:14.573156	2012-06-06 11:07:14.573156
1896	/srv/mp3/Various/pf100-70s/Various Artists/Saturday Night Fever	1/2/3/59/1728/1895	2012-06-06 11:07:14.577697	2012-06-06 11:07:14.577697
1897	/srv/mp3/Various/pf100-70s/Various Artists/The Harder They Come	1/2/3/59/1728/1895	2012-06-06 11:07:25.150176	2012-06-06 11:07:25.150176
1898	/srv/mp3/Various/pf100-70s/Joni Mitchell	1/2/3/59/1728	2012-06-06 11:07:32.299218	2012-06-06 11:07:32.299218
1899	/srv/mp3/Various/pf100-70s/Joni Mitchell/Blue	1/2/3/59/1728/1898	2012-06-06 11:07:32.30279	2012-06-06 11:07:32.30279
1900	/srv/mp3/Various/a salute to the blues - lightning in a bottle - live (2004)	1/2/3/59	2012-06-06 11:07:38.710964	2012-06-06 11:07:38.710964
1901	/srv/mp3/Various/a salute to the blues - lightning in a bottle - live (2004)/cd2	1/2/3/59/1900	2012-06-06 11:07:38.712934	2012-06-06 11:07:38.712934
1902	/srv/mp3/Various/a salute to the blues - lightning in a bottle - live (2004)/cd1	1/2/3/59/1900	2012-06-06 11:07:45.996135	2012-06-06 11:07:45.996135
1903	/srv/mp3/Various/One Hit Wonders	1/2/3/59	2012-06-06 11:07:52.410978	2012-06-06 11:07:52.410978
1904	/srv/mp3/Various/House M.D. Songs	1/2/3/59	2012-06-06 11:08:26.167302	2012-06-06 11:08:26.167302
1905	/srv/mp3/Various/VA-1000 Original Hits 1950-1959	1/2/3/59	2012-06-06 11:08:49.73574	2012-06-06 11:08:49.73574
1906	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1959 (2001)	1/2/3/59/1905	2012-06-06 11:08:49.737368	2012-06-06 11:08:49.737368
1907	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1950 (2001)	1/2/3/59/1905	2012-06-06 11:09:01.644506	2012-06-06 11:09:01.644506
1908	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1956 (2001)	1/2/3/59/1905	2012-06-06 11:09:14.156702	2012-06-06 11:09:14.156702
1909	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1952 (2001)	1/2/3/59/1905	2012-06-06 11:09:26.508116	2012-06-06 11:09:26.508116
1910	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1958 (2001)	1/2/3/59/1905	2012-06-06 11:09:37.980189	2012-06-06 11:09:37.980189
1911	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1955 (2001)	1/2/3/59/1905	2012-06-06 11:09:50.239205	2012-06-06 11:09:50.239205
1912	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1954 (2001)	1/2/3/59/1905	2012-06-06 11:10:02.895174	2012-06-06 11:10:02.895174
1913	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1957 (2001)	1/2/3/59/1905	2012-06-06 11:10:13.554192	2012-06-06 11:10:13.554192
1914	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1953 (2001)	1/2/3/59/1905	2012-06-06 11:10:25.519177	2012-06-06 11:10:25.519177
1915	/srv/mp3/Various/VA-1000 Original Hits 1950-1959/1000 Original Hits 1951 (2001)	1/2/3/59/1905	2012-06-06 11:10:38.37752	2012-06-06 11:10:38.37752
1916	/srv/mp3/Various/RollingStone Top500	1/2/3/59	2012-06-06 11:10:50.718764	2012-06-06 11:10:50.718764
1917	/srv/mp3/Various/Billboard Top 100 Hits of 1968	1/2/3/59	2012-06-06 11:13:27.709436	2012-06-06 11:13:27.709436
1918	/srv/mp3/Various/Hi-Fidelity Lounge	1/2/3/59	2012-06-06 11:14:02.69422	2012-06-06 11:14:02.69422
1919	/srv/mp3/Various/Hi-Fidelity Lounge/Hi-Fidelity Lounge Vol.3 - La Corporacion	1/2/3/59/1918	2012-06-06 11:14:02.698692	2012-06-06 11:14:02.698692
1920	/srv/mp3/Various/Hi-Fidelity Lounge/Hi-Fidelity Lounge Vol.1 - La Corporacion	1/2/3/59/1918	2012-06-06 11:14:10.113156	2012-06-06 11:14:10.113156
1921	/srv/mp3/Various/Hi-Fidelity Lounge/Hi-Fidelity Lounge Vol.2 - La Corporacion	1/2/3/59/1918	2012-06-06 11:14:17.761099	2012-06-06 11:14:17.761099
1922	/srv/mp3/Various/Hi-Fidelity Lounge/Hi-Fidelity Lounge Vol.4 - La Corporacion	1/2/3/59/1918	2012-06-06 11:14:27.959788	2012-06-06 11:14:27.959788
1923	/srv/mp3/Various/Just Great Jazz Songs	1/2/3/59	2012-06-06 11:14:34.689482	2012-06-06 11:14:34.689482
1924	/srv/mp3/Various/Billboard Top 100 Hits of 1982	1/2/3/59	2012-06-06 11:14:55.594228	2012-06-06 11:14:55.594228
1925	/srv/mp3/Various/Rock & Roll Hall of Fame (5 of 5)	1/2/3/59	2012-06-06 11:15:31.221629	2012-06-06 11:15:31.221629
1926	/srv/mp3/Various/blues-the best	1/2/3/59	2012-06-06 11:16:02.14238	2012-06-06 11:16:02.14238
1927	/srv/mp3/Various/blues-the best/vol 2	1/2/3/59/1926	2012-06-06 11:16:02.145751	2012-06-06 11:16:02.145751
1928	/srv/mp3/Various/blues-the best/vol 3	1/2/3/59/1926	2012-06-06 11:16:07.375797	2012-06-06 11:16:07.375797
1929	/srv/mp3/Various/blues-the best/vol 5	1/2/3/59/1926	2012-06-06 11:16:13.434817	2012-06-06 11:16:13.434817
1930	/srv/mp3/Various/blues-the best/vol 1	1/2/3/59/1926	2012-06-06 11:16:18.067523	2012-06-06 11:16:18.067523
1931	/srv/mp3/Various/blues-the best/vol 4	1/2/3/59/1926	2012-06-06 11:16:23.048661	2012-06-06 11:16:23.048661
1932	/srv/mp3/Various/VA-1000 Original Hits 1990-1999	1/2/3/59	2012-06-06 11:16:28.52237	2012-06-06 11:16:28.52237
1933	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1994 (2001)	1/2/3/59/1932	2012-06-06 11:16:28.525842	2012-06-06 11:16:28.525842
1934	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1991 (2001)	1/2/3/59/1932	2012-06-06 11:16:36.952673	2012-06-06 11:16:36.952673
1935	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1997 (2001)	1/2/3/59/1932	2012-06-06 11:16:46.106765	2012-06-06 11:16:46.106765
1936	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1993 (2001)	1/2/3/59/1932	2012-06-06 11:16:54.800637	2012-06-06 11:16:54.800637
1937	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1996 (2001)	1/2/3/59/1932	2012-06-06 11:17:03.055985	2012-06-06 11:17:03.055985
1938	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1992 (2001)	1/2/3/59/1932	2012-06-06 11:17:11.865464	2012-06-06 11:17:11.865464
1939	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1998 (2001)	1/2/3/59/1932	2012-06-06 11:17:21.026927	2012-06-06 11:17:21.026927
1940	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1999 (2001)	1/2/3/59/1932	2012-06-06 11:17:29.286241	2012-06-06 11:17:29.286241
1941	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1990 (2001)	1/2/3/59/1932	2012-06-06 11:17:37.709312	2012-06-06 11:17:37.709312
1942	/srv/mp3/Various/VA-1000 Original Hits 1990-1999/1000 Original Hits 1995 (2001)	1/2/3/59/1932	2012-06-06 11:17:45.56637	2012-06-06 11:17:45.56637
1943	/srv/mp3/Various/Classical Music Top 100	1/2/3/59	2012-06-06 11:17:53.648975	2012-06-06 11:17:53.648975
1944	/srv/mp3/Various/Blue Notes	1/2/3/59	2012-06-06 11:18:41.161158	2012-06-06 11:18:41.161158
1945	/srv/mp3/Various/The Blues Masters	1/2/3/59	2012-06-06 11:18:59.948675	2012-06-06 11:18:59.948675
1946	/srv/mp3/Various/The Essential 1970s	1/2/3/59	2012-06-06 11:19:10.001124	2012-06-06 11:19:10.001124
1947	/srv/mp3/Violent Femmes	1/2/3	2012-06-06 11:19:21.73889	2012-06-06 11:19:21.73889
1948	/srv/mp3/Violent Femmes/violent femmes	1/2/3/1947	2012-06-06 11:19:21.840244	2012-06-06 11:19:21.840244
1949	/srv/mp3/Vince Guaraldi Trio	1/2/3	2012-06-06 11:19:26.676301	2012-06-06 11:19:26.676301
1950	/srv/mp3/Vince Guaraldi Trio/Charlie Brown's Holiday Hits	1/2/3/1949	2012-06-06 11:19:26.772865	2012-06-06 11:19:26.772865
1951	/srv/mp3/Kenny Rogers/The Best Of Kenny Rogers	1/2/3/62	2012-06-06 12:14:58.432223	2012-06-06 12:14:58.432223
1952	/srv/mp3/King Crimson	1/2/3	2012-06-06 12:15:19.111107	2012-06-06 12:15:19.111107
1953	/srv/mp3/King Crimson/1997 - The Nightwatch	1/2/3/1952	2012-06-06 12:15:19.318804	2012-06-06 12:15:19.318804
1954	/srv/mp3/King Crimson/1997 - The Nightwatch/01-The Nightwatch [CD1]	1/2/3/1952/1953	2012-06-06 12:15:19.320543	2012-06-06 12:15:19.320543
1955	/srv/mp3/King Crimson/1997 - The Nightwatch/02-The Nightwatch [CD2]	1/2/3/1952/1953	2012-06-06 12:15:21.271615	2012-06-06 12:15:21.271615
1956	/srv/mp3/King Crimson/2003 - The Power To Believe	1/2/3/1952	2012-06-06 12:15:23.488053	2012-06-06 12:15:23.488053
1957	/srv/mp3/King Crimson/1996 - thrakattak (live)	1/2/3/1952	2012-06-06 12:15:27.351811	2012-06-06 12:15:27.351811
1958	/srv/mp3/King Crimson/2000 - On Broadway (CD1)	1/2/3/1952	2012-06-06 12:15:30.66334	2012-06-06 12:15:30.66334
1959	/srv/mp3/King Crimson/1970 - In The Wake Of Poseidon	1/2/3/1952	2012-06-06 12:15:34.58973	2012-06-06 12:15:34.58973
1960	/srv/mp3/King Crimson/1984 - Three Of Perfect Pair	1/2/3/1952	2012-06-06 12:15:37.332116	2012-06-06 12:15:37.332116
1961	/srv/mp3/King Crimson/1999 - Circus (CD1) - Neon Heat Disease	1/2/3/1952	2012-06-06 12:15:40.420401	2012-06-06 12:15:40.420401
1962	/srv/mp3/King Crimson/1995 - thrak	1/2/3/1952	2012-06-06 12:15:46.983481	2012-06-06 12:15:46.983481
1963	/srv/mp3/King Crimson/1982 - Beat	1/2/3/1952	2012-06-06 12:15:51.438524	2012-06-06 12:15:51.438524
1964	/srv/mp3/King Crimson/1974 b - Red	1/2/3/1952	2012-06-06 12:15:54.927289	2012-06-06 12:15:54.927289
1965	/srv/mp3/King Crimson/2000 - On Broadway (CD2)	1/2/3/1952	2012-06-06 12:15:57.050003	2012-06-06 12:15:57.050003
1966	/srv/mp3/King Crimson/1973 - Lark's Tongues In Aspic	1/2/3/1952	2012-06-06 12:16:00.712042	2012-06-06 12:16:00.712042
1967	/srv/mp3/King Crimson/1972 - Earthbound (live)	1/2/3/1952	2012-06-06 12:16:02.793034	2012-06-06 12:16:02.793034
1969	/srv/mp3/King Crimson/1969 - In The Court Of The Crimson King	1/2/3/1952	2012-06-06 12:16:08.204311	2012-06-06 12:16:08.204311
1970	/srv/mp3/King Crimson/1974 a - Starless And Bible Black	1/2/3/1952	2012-06-06 12:16:10.978687	2012-06-06 12:16:10.978687
1971	/srv/mp3/King Crimson/1997 - Epitaph CD2	1/2/3/1952	2012-06-06 12:16:12.985663	2012-06-06 12:16:12.985663
1972	/srv/mp3/King Crimson/1997 - Epitaph CD1	1/2/3/1952	2012-06-06 12:16:15.034934	2012-06-06 12:16:15.034934
1973	/srv/mp3/King Crimson/1971 - Isladns	1/2/3/1952	2012-06-06 12:16:18.142514	2012-06-06 12:16:18.142514
1974	/srv/mp3/King Crimson/1995 - B'BOOM Official Bootleg  -  Live In Argentina (CD 2)	1/2/3/1952	2012-06-06 12:16:20.146902	2012-06-06 12:16:20.146902
1975	/srv/mp3/King Crimson/1975 - USA (live)	1/2/3/1952	2012-06-06 12:16:22.561139	2012-06-06 12:16:22.561139
1976	/srv/mp3/King Crimson/1970 - Lizard	1/2/3/1952	2012-06-06 12:16:24.57989	2012-06-06 12:16:24.57989
1977	/srv/mp3/King Crimson/1992 - the great deceiver	1/2/3/1952	2012-06-06 12:16:26.381819	2012-06-06 12:16:26.381819
1978	/srv/mp3/King Crimson/1992 - the great deceiver/06-the great deceiver [cd3b]	1/2/3/1952/1977	2012-06-06 12:16:26.385663	2012-06-06 12:16:26.385663
1979	/srv/mp3/King Crimson/1992 - the great deceiver/01-the great deceiver [cd1]	1/2/3/1952/1977	2012-06-06 12:16:27.18336	2012-06-06 12:16:27.18336
1980	/srv/mp3/King Crimson/1992 - the great deceiver/04-the great deceiver [cd2c]	1/2/3/1952/1977	2012-06-06 12:16:29.865121	2012-06-06 12:16:29.865121
1981	/srv/mp3/King Crimson/1992 - the great deceiver/03-the great deceiver [cd2b]	1/2/3/1952/1977	2012-06-06 12:16:30.763696	2012-06-06 12:16:30.763696
1982	/srv/mp3/King Crimson/1992 - the great deceiver/07-the great deceiver [cd4a]	1/2/3/1952/1977	2012-06-06 12:16:33.247409	2012-06-06 12:16:33.247409
1983	/srv/mp3/King Crimson/1992 - the great deceiver/05-the great deceiver [cd3a]	1/2/3/1952/1977	2012-06-06 12:16:35.051471	2012-06-06 12:16:35.051471
1984	/srv/mp3/King Crimson/1992 - the great deceiver/08-the great deceiver [cd4b]	1/2/3/1952/1977	2012-06-06 12:16:38.309996	2012-06-06 12:16:38.309996
1985	/srv/mp3/King Crimson/1992 - the great deceiver/02-the great deceiver [cd2a]	1/2/3/1952/1977	2012-06-06 12:16:41.378979	2012-06-06 12:16:41.378979
1986	/srv/mp3/King Crimson/Absent Lovers	1/2/3/1952	2012-06-06 12:16:42.089887	2012-06-06 12:16:42.089887
1987	/srv/mp3/King Crimson/1995 - b'boom official bootleg  -  live in argentina (cd 1)	1/2/3/1952	2012-06-06 12:16:48.099646	2012-06-06 12:16:48.099646
1988	/srv/mp3/King Crimson/1999 - Circus (CD2) - Fractured	1/2/3/1952	2012-06-06 12:16:51.147701	2012-06-06 12:16:51.147701
1989	/srv/mp3/King Crimson/1994 - Vrooom	1/2/3/1952	2012-06-06 12:16:54.370303	2012-06-06 12:16:54.370303
1990	/srv/mp3/King Crimson/1999 - The Deception Of The Thrush	1/2/3/1952	2012-06-06 12:16:57.030361	2012-06-06 12:16:57.030361
1991	/srv/mp3/King Crimson/2000 - The ConstruKction Of Light	1/2/3/1952	2012-06-06 12:17:03.088989	2012-06-06 12:17:03.088989
1992	/srv/mp3/King Crimson/2002 - Happy With What You Have To Be Happy With	1/2/3/1952	2012-06-06 12:17:08.154433	2012-06-06 12:17:08.154433
1993	/srv/mp3/Kimua Dawson	1/2/3	2012-06-06 12:17:16.782814	2012-06-06 12:17:16.782814
1994	/srv/mp3/Kimya Dawson	1/2/3	2012-06-06 12:17:21.340835	2012-06-06 12:17:21.340835
1995	/srv/mp3/Kimya Dawson/I'm Sorry That Sometimes I'm Mean	1/2/3/1994	2012-06-06 12:17:21.416223	2012-06-06 12:17:21.416223
1996	/srv/mp3/Kimya Dawson/Kimya Dawson - Remember That I Love You	1/2/3/1994	2012-06-06 12:17:24.566782	2012-06-06 12:17:24.566782
1997	/srv/mp3/Kimya Dawson/Kimya Dawson - I'm Sorry That Sometimes I'm Mean	1/2/3/1994	2012-06-06 12:17:28.370646	2012-06-06 12:17:28.370646
1998	/srv/mp3/Jethro Tull	1/2/3	2012-06-06 20:40:26.593747	2012-06-06 20:40:26.593747
1999	/srv/mp3/Jethro Tull/Jethro Tull - Thick As A Brick	1/2/3/1998	2012-06-06 20:40:26.935232	2012-06-06 20:40:26.935232
2000	/srv/mp3/Chuck Mangione	1/2/3	2012-06-06 20:41:22.778082	2012-06-06 20:41:22.778082
2001	/srv/mp3/Chuck Mangione/Chuck Mangione -  Feels So Good REDONE [MP3 128-256][h33t][schon55]	1/2/3/2000	2012-06-06 20:41:22.853889	2012-06-06 20:41:22.853889
2002	/srv/mp3/The Doobie Brothers	1/2/3	2012-06-06 20:41:32.163736	2012-06-06 20:41:32.163736
2003	/srv/mp3/The Doobie Brothers/The Doobie Brothers - Greatest Hits (2001) [CD Rip] vtwin88cube	1/2/3/2002	2012-06-06 20:41:32.32007	2012-06-06 20:41:32.32007
2004	/srv/mp3/Maynard Ferguson	1/2/3	2012-06-06 20:41:44.312851	2012-06-06 20:41:44.312851
2005	/srv/mp3/Maynard Ferguson/Maynard Ferguson - Conquistador - 1977 [VBR] J@N	1/2/3/2004	2012-06-06 20:41:44.512703	2012-06-06 20:41:44.512703
2006	/srv/mp3/Emerson, Lake & Palmer	1/2/3	2012-06-06 20:42:15.234807	2012-06-06 20:42:15.234807
2007	/srv/mp3/Emerson, Lake & Palmer/The Very Best Of Emerson, Lake & Palmer	1/2/3/2006	2012-06-06 20:42:15.464048	2012-06-06 20:42:15.464048
2008	/srv/mp3/Tracy Chapman	1/2/3	2012-06-06 20:42:29.796299	2012-06-06 20:42:29.796299
2009	/srv/mp3/Tracy Chapman/Tracy Chapman - The Very Best of	1/2/3/2008	2012-06-06 20:42:29.894784	2012-06-06 20:42:29.894784
2010	/srv/mp3/Meatloaf	1/2/3	2012-06-06 20:42:41.134552	2012-06-06 20:42:41.134552
2011	/srv/mp3/Meatloaf/Meatloaf-Bat Out Of Hell[1977]cdRip[Magicfingers]	1/2/3/2010	2012-06-06 20:42:41.244744	2012-06-06 20:42:41.244744
2012	/srv/mp3/Edward Sharpe & The Magnetic Zeros	1/2/3	2012-06-13 22:08:09.966612	2012-06-13 22:08:09.966612
2013	/srv/mp3/Edward Sharpe & The Magnetic Zeros/Up From Below	1/2/3/2012	2012-06-13 22:08:10.229742	2012-06-13 22:08:10.229742
2014	/srv/mp3/Various/VA - The Best Alternative & Indie Rock Songs Of 2011 (2012) 320 vtwin88cube	1/2/3/59	2012-06-13 22:08:49.257284	2012-06-13 22:08:49.257284
2015	/srv/mp3/Various/The Best New Rock Hits.(2010).(Music.Mp3).Www.LokoTorrents.CoM	1/2/3/59	2012-06-13 22:09:06.895198	2012-06-13 22:09:06.895198
2016	/srv/mp3/Grouplove	1/2/3	2012-06-13 22:10:55.186044	2012-06-13 22:10:55.186044
2017	/srv/mp3/Grouplove/Grouplove-Never_Trust_A_Happy_Song-(2011)	1/2/3/2016	2012-06-13 22:10:55.38279	2012-06-13 22:10:55.38279
2018	/srv/mp3/Lou Reed	1/2/3	2012-06-13 22:11:28.688429	2012-06-13 22:11:28.688429
2019	/srv/mp3/Lou Reed/Lou.Reed - Rock'N'Roll.Animal.1974 230kbps M.J.108-SRG	1/2/3/2018	2012-06-13 22:11:28.777292	2012-06-13 22:11:28.777292
2020	/srv/mp3/The Kinks	1/2/3	2012-06-13 22:11:36.738553	2012-06-13 22:11:36.738553
2021	/srv/mp3/The Kinks/The Kinks	1/2/3/2020	2012-06-13 22:11:37.47732	2012-06-13 22:11:37.47732
2022	/srv/mp3/The Kinks/The Kinks/nfo cover	1/2/3/2020/2021	2012-06-13 22:11:45.592564	2012-06-13 22:11:45.592564
2023	/srv/mp3/Al Stewert	1/2/3	2012-08-25 22:48:24.380221	2012-08-25 22:48:24.380221
2024	/srv/mp3/Al Stewert/Al Stewart - Greatest Hits	1/2/3/2023	2012-08-25 22:48:24.594094	2012-08-25 22:48:24.594094
2025	/srv/mp3/Soundtrack/Stealing Beauty (OST)[cdrip]vbr[mp3]-darkjedi	1/2/3/325	2012-08-25 22:48:36.034569	2012-08-25 22:48:36.034569
2026	/srv/mp3/Arlo Guthrie	1/2/3	2012-08-25 22:48:45.662151	2012-08-25 22:48:45.662151
2027	/srv/mp3/Arlo Guthrie/Arlo_Guthrie-The_Best_Of_Arlo_Guthrie-(Retail)-1990-HHI	1/2/3/2026	2012-08-25 22:48:45.747321	2012-08-25 22:48:45.747321
2028	/srv/mp3/X	1/2/3	2012-08-25 22:48:49.206847	2012-08-25 22:48:49.206847
2029	/srv/mp3/X/Under the Big Black Sun [2001 Reissue]	1/2/3/2028	2012-08-25 22:48:49.261411	2012-08-25 22:48:49.261411
2030	/srv/mp3/Nicolette Larson	1/2/3	2012-08-25 22:48:57.573984	2012-08-25 22:48:57.573984
2031	/srv/mp3/Nicolette Larson/Nicolette Larson - The Very Best of Nicolette Larson (1999)	1/2/3/2030	2012-08-25 22:48:57.688611	2012-08-25 22:48:57.688611
2032	/srv/mp3/Rush	1/2/3	2012-08-25 22:50:02.863218	2012-08-25 22:50:02.863218
2033	/srv/mp3/Rush/1978 - Hemispheres	1/2/3/2032	2012-08-25 22:50:03.063902	2012-08-25 22:50:03.063902
2034	/srv/mp3/Rush/1981 - Moving Pictures	1/2/3/2032	2012-08-25 22:50:05.113193	2012-08-25 22:50:05.113193
2035	/srv/mp3/Rush/2002 - Vapor Trails	1/2/3/2032	2012-08-25 22:50:08.463219	2012-08-25 22:50:08.463219
2036	/srv/mp3/Rush/2004 - Feedback	1/2/3/2032	2012-08-25 22:50:14.523578	2012-08-25 22:50:14.523578
2037	/srv/mp3/Rush/1980 - Permanent Waves	1/2/3/2032	2012-08-25 22:50:17.997773	2012-08-25 22:50:17.997773
2038	/srv/mp3/Rush/1989 - Presto	1/2/3/2032	2012-08-25 22:50:21.050555	2012-08-25 22:50:21.050555
2039	/srv/mp3/Rush/1982 - Signals	1/2/3/2032	2012-08-25 22:50:27.858609	2012-08-25 22:50:27.858609
2040	/srv/mp3/Rush/1985 - Power Windows	1/2/3/2032	2012-08-25 22:50:32.969099	2012-08-25 22:50:32.969099
2041	/srv/mp3/Rush/1975 - Fly By Night	1/2/3/2032	2012-08-25 22:50:36.627813	2012-08-25 22:50:36.627813
2042	/srv/mp3/Rush/1987 - Hold Your Fire	1/2/3/2032	2012-08-25 22:50:40.423123	2012-08-25 22:50:40.423123
2043	/srv/mp3/Rush/1974 - Rush	1/2/3/2032	2012-08-25 22:50:45.056824	2012-08-25 22:50:45.056824
2044	/srv/mp3/Rush/1993 - Counterparts	1/2/3/2032	2012-08-25 22:50:48.70482	2012-08-25 22:50:48.70482
2045	/srv/mp3/Rush/1991 - Roll The Bones	1/2/3/2032	2012-08-25 22:50:54.132586	2012-08-25 22:50:54.132586
2046	/srv/mp3/Rush/1996 - Test For Echo	1/2/3/2032	2012-08-25 22:50:58.82165	2012-08-25 22:50:58.82165
2047	/srv/mp3/Rush/1996 - Test For Echo/(1996) Rush - Test For Echo	1/2/3/2032/2046	2012-08-25 22:50:58.82471	2012-08-25 22:50:58.82471
2048	/srv/mp3/Rush/1984 - Grace Under Pressure	1/2/3/2032	2012-08-25 22:51:04.053342	2012-08-25 22:51:04.053342
2049	/srv/mp3/Rush/1977 - A Farewell To Kings	1/2/3/2032	2012-08-25 22:51:07.937257	2012-08-25 22:51:07.937257
2050	/srv/mp3/Rush/2007 - Snakes & Arrows	1/2/3/2032	2012-08-25 22:51:10.998212	2012-08-25 22:51:10.998212
2051	/srv/mp3/Rush/1976 - 2112	1/2/3/2032	2012-08-25 22:51:17.046953	2012-08-25 22:51:17.046953
2052	/srv/mp3/Rush/1975 - Caress Of Steel	1/2/3/2032	2012-08-25 22:51:20.056974	2012-08-25 22:51:20.056974
2053	/srv/mp3/Maynard Ferguson/1993 - The Essence of Maynard Ferguson	1/2/3/2004	2012-08-25 22:51:23.054456	2012-08-25 22:51:23.054456
2054	/srv/mp3/Stevie Wonder (flac)	1/2/3	2012-08-25 22:51:32.347688	2012-08-25 22:51:32.347688
2055	/srv/mp3/Dead Kennedys	1/2/3	2012-08-25 22:51:38.837208	2012-08-25 22:51:38.837208
2056	/srv/mp3/Dead Kennedys/Dead Kennedys - Milking The Sacred Cow - lp 2007 by monejo	1/2/3/2055	2012-08-25 22:51:38.922409	2012-08-25 22:51:38.922409
2057	/srv/mp3/Dead Kennedys/Dead Kennedys - Give Me Convenience Or Give Me Death	1/2/3/2055	2012-08-25 22:51:45.053953	2012-08-25 22:51:45.053953
2058	/srv/mp3/Elvis Costello/Elvis Costello/Elvis Costello - My Aim Is True	1/2/3/668/793	2012-08-25 22:51:52.631723	2012-08-25 22:51:52.631723
2059	/srv/mp3/The Doors	1/2/3	2012-08-25 22:52:09.231316	2012-08-25 22:52:09.231316
2060	/srv/mp3/The Doors/The Doors - Greatest Hits 2CD (2008) 320 vtwin88cube	1/2/3/2059	2012-08-25 22:52:09.374448	2012-08-25 22:52:09.374448
2061	/srv/mp3/The Doors/The Doors - Greatest Hits 2CD (2008) 320 vtwin88cube/Disc 2	1/2/3/2059/2060	2012-08-25 22:52:09.37773	2012-08-25 22:52:09.37773
2062	/srv/mp3/The Doors/The Doors - Greatest Hits 2CD (2008) 320 vtwin88cube/Disc 1	1/2/3/2059/2060	2012-08-25 22:52:19.726187	2012-08-25 22:52:19.726187
2063	/srv/mp3/Lou Reed/Lou Reed - Greatest Hits (Steel Box Collection) [2008]	1/2/3/2018	2012-08-25 22:52:50.316931	2012-08-25 22:52:50.316931
2064	/srv/mp3/Meatloaf/The Very Best Of Meatloaf	1/2/3/2010	2012-08-25 22:52:57.460753	2012-08-25 22:52:57.460753
2065	/srv/mp3/Nina Simone/Nina Simone - Anthology [2CDs].www.lokotorrents.com	1/2/3/1385	2012-08-25 22:53:05.379182	2012-08-25 22:53:05.379182
2066	/srv/mp3/Nina Simone/Nina Simone - Anthology [2CDs].www.lokotorrents.com/disc-1	1/2/3/1385/2065	2012-08-25 22:53:05.381545	2012-08-25 22:53:05.381545
2067	/srv/mp3/Nina Simone/Nina Simone - Anthology [2CDs].www.lokotorrents.com/disc-2	1/2/3/1385/2065	2012-08-25 22:53:10.334818	2012-08-25 22:53:10.334818
2068	/srv/mp3/Little River Band	1/2/3	2012-08-25 22:53:16.436468	2012-08-25 22:53:16.436468
2069	/srv/mp3/Little River Band/Little River Band - Greatest Hits [2000][320 KBPS]	1/2/3/2068	2012-08-25 22:53:16.538622	2012-08-25 22:53:16.538622
2070	/srv/mp3/Little River Band/Little River Band - Greatest Hits [2000][320 KBPS]/Cover Art	1/2/3/2068/2069	2012-08-25 22:53:24.00165	2012-08-25 22:53:24.00165
2071	/srv/mp3/Scott Joplin	1/2/3	2012-08-25 22:53:32.614709	2012-08-25 22:53:32.614709
2072	/srv/mp3/Scott Joplin/Greatest Hits	1/2/3/2071	2012-08-25 22:53:32.795164	2012-08-25 22:53:32.795164
2073	/srv/mp3/Mother Mother/Touch Up	1/2/3/655	2012-08-25 22:59:18.872704	2012-08-25 22:59:18.872704
2074	/srv/mp3/Antsy Pants/Antsy Pants	1/2/3/173	2012-08-25 22:59:23.590817	2012-08-25 22:59:23.590817
2075	/srv/mp3/Nellie McKay/Get Away From Me	1/2/3/1052	2012-08-25 22:59:53.523331	2012-08-25 22:59:53.523331
2076	/srv/mp3/The Moody Blues/The Best Of	1/2/3/1430	2012-08-25 23:00:04.590945	2012-08-25 23:00:04.590945
2077	/srv/mp3/Herbie Hancock/Head Hunters.m4af	1/2/3/243	2012-08-25 23:00:06.575435	2012-08-25 23:00:06.575435
\.


--
-- PostgreSQL database dump complete
--

