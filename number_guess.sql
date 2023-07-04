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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 2, 515);
INSERT INTO public.games VALUES (3, 2, 490);
INSERT INTO public.games VALUES (4, 3, 333);
INSERT INTO public.games VALUES (5, 3, 534);
INSERT INTO public.games VALUES (6, 2, 481);
INSERT INTO public.games VALUES (7, 2, 1);
INSERT INTO public.games VALUES (8, 2, 229);
INSERT INTO public.games VALUES (9, 4, 527);
INSERT INTO public.games VALUES (10, 4, 501);
INSERT INTO public.games VALUES (11, 5, 536);
INSERT INTO public.games VALUES (12, 5, 270);
INSERT INTO public.games VALUES (13, 4, 439);
INSERT INTO public.games VALUES (14, 4, 1);
INSERT INTO public.games VALUES (15, 4, 488);
INSERT INTO public.games VALUES (16, 6, 518);
INSERT INTO public.games VALUES (17, 6, 185);
INSERT INTO public.games VALUES (18, 7, 502);
INSERT INTO public.games VALUES (19, 7, 551);
INSERT INTO public.games VALUES (20, 6, 234);
INSERT INTO public.games VALUES (21, 6, 1);
INSERT INTO public.games VALUES (22, 6, 472);
INSERT INTO public.games VALUES (23, 8, 560);
INSERT INTO public.games VALUES (24, 8, 464);
INSERT INTO public.games VALUES (25, 9, 144);
INSERT INTO public.games VALUES (26, 9, 125);
INSERT INTO public.games VALUES (27, 8, 397);
INSERT INTO public.games VALUES (28, 8, 1);
INSERT INTO public.games VALUES (29, 8, 541);
INSERT INTO public.games VALUES (30, 10, 60);
INSERT INTO public.games VALUES (31, 10, 504);
INSERT INTO public.games VALUES (32, 11, 491);
INSERT INTO public.games VALUES (33, 11, 531);
INSERT INTO public.games VALUES (34, 10, 340);
INSERT INTO public.games VALUES (35, 10, 1);
INSERT INTO public.games VALUES (36, 10, 492);
INSERT INTO public.games VALUES (37, 12, 25);
INSERT INTO public.games VALUES (38, 12, 6);
INSERT INTO public.games VALUES (39, 13, 505);
INSERT INTO public.games VALUES (40, 13, 13);
INSERT INTO public.games VALUES (41, 12, 486);
INSERT INTO public.games VALUES (42, 12, 1);
INSERT INTO public.games VALUES (43, 12, 204);
INSERT INTO public.games VALUES (44, 1, 1);
INSERT INTO public.games VALUES (45, 1, 38);
INSERT INTO public.games VALUES (46, 14, 410);
INSERT INTO public.games VALUES (47, 14, 490);
INSERT INTO public.games VALUES (48, 15, 67);
INSERT INTO public.games VALUES (49, 15, 515);
INSERT INTO public.games VALUES (50, 14, 523);
INSERT INTO public.games VALUES (51, 14, 1);
INSERT INTO public.games VALUES (52, 14, 509);
INSERT INTO public.games VALUES (53, 1, 29);
INSERT INTO public.games VALUES (54, 1, 1);
INSERT INTO public.games VALUES (55, 16, 549);
INSERT INTO public.games VALUES (56, 16, 492);
INSERT INTO public.games VALUES (57, 17, 538);
INSERT INTO public.games VALUES (58, 17, 216);
INSERT INTO public.games VALUES (59, 16, 81);
INSERT INTO public.games VALUES (60, 16, 1);
INSERT INTO public.games VALUES (61, 16, 520);
INSERT INTO public.games VALUES (62, 18, 517);
INSERT INTO public.games VALUES (63, 18, 7);
INSERT INTO public.games VALUES (64, 19, 494);
INSERT INTO public.games VALUES (65, 19, 504);
INSERT INTO public.games VALUES (66, 18, 129);
INSERT INTO public.games VALUES (67, 18, 1);
INSERT INTO public.games VALUES (68, 18, 522);
INSERT INTO public.games VALUES (69, 20, 34);
INSERT INTO public.games VALUES (70, 20, 55);
INSERT INTO public.games VALUES (71, 21, 512);
INSERT INTO public.games VALUES (72, 21, 10);
INSERT INTO public.games VALUES (73, 20, 334);
INSERT INTO public.games VALUES (74, 20, 1);
INSERT INTO public.games VALUES (75, 20, 520);
INSERT INTO public.games VALUES (76, 22, 463);
INSERT INTO public.games VALUES (77, 22, 484);
INSERT INTO public.games VALUES (78, 23, 528);
INSERT INTO public.games VALUES (79, 23, 286);
INSERT INTO public.games VALUES (80, 22, 125);
INSERT INTO public.games VALUES (81, 22, 1);
INSERT INTO public.games VALUES (82, 22, 268);
INSERT INTO public.games VALUES (83, 24, 211);
INSERT INTO public.games VALUES (84, 24, 490);
INSERT INTO public.games VALUES (85, 25, 507);
INSERT INTO public.games VALUES (86, 25, 105);
INSERT INTO public.games VALUES (87, 24, 246);
INSERT INTO public.games VALUES (88, 24, 1);
INSERT INTO public.games VALUES (89, 24, 390);
INSERT INTO public.games VALUES (90, 26, 541);
INSERT INTO public.games VALUES (91, 26, 479);
INSERT INTO public.games VALUES (92, 27, 543);
INSERT INTO public.games VALUES (93, 27, 172);
INSERT INTO public.games VALUES (94, 26, 316);
INSERT INTO public.games VALUES (95, 26, 1);
INSERT INTO public.games VALUES (96, 26, 295);
INSERT INTO public.games VALUES (97, 28, 137);
INSERT INTO public.games VALUES (98, 28, 492);
INSERT INTO public.games VALUES (99, 29, 66);
INSERT INTO public.games VALUES (100, 29, 454);
INSERT INTO public.games VALUES (101, 28, 497);
INSERT INTO public.games VALUES (102, 28, 1);
INSERT INTO public.games VALUES (103, 28, 221);
INSERT INTO public.games VALUES (104, 30, 590);
INSERT INTO public.games VALUES (105, 30, 160);
INSERT INTO public.games VALUES (106, 31, 452);
INSERT INTO public.games VALUES (107, 31, 263);
INSERT INTO public.games VALUES (108, 30, 198);
INSERT INTO public.games VALUES (109, 30, 1);
INSERT INTO public.games VALUES (110, 30, 256);
INSERT INTO public.games VALUES (111, 32, 12);
INSERT INTO public.games VALUES (112, 33, 546);
INSERT INTO public.games VALUES (113, 33, 478);
INSERT INTO public.games VALUES (114, 34, 35);
INSERT INTO public.games VALUES (115, 34, 496);
INSERT INTO public.games VALUES (116, 33, 14);
INSERT INTO public.games VALUES (117, 33, 1);
INSERT INTO public.games VALUES (118, 33, 521);
INSERT INTO public.games VALUES (119, 35, 13);
INSERT INTO public.games VALUES (120, 36, 1);
INSERT INTO public.games VALUES (121, 36, 177);
INSERT INTO public.games VALUES (122, 37, 432);
INSERT INTO public.games VALUES (123, 37, 116);
INSERT INTO public.games VALUES (124, 36, 501);
INSERT INTO public.games VALUES (125, 36, 1);
INSERT INTO public.games VALUES (126, 36, 488);
INSERT INTO public.games VALUES (127, 38, 428);
INSERT INTO public.games VALUES (128, 38, 475);
INSERT INTO public.games VALUES (129, 39, 493);
INSERT INTO public.games VALUES (130, 39, 270);
INSERT INTO public.games VALUES (131, 38, 177);
INSERT INTO public.games VALUES (132, 38, 1);
INSERT INTO public.games VALUES (133, 38, 494);
INSERT INTO public.games VALUES (134, 1, 14);
INSERT INTO public.games VALUES (135, 40, 64);
INSERT INTO public.games VALUES (136, 40, 283);
INSERT INTO public.games VALUES (137, 41, 339);
INSERT INTO public.games VALUES (138, 41, 536);
INSERT INTO public.games VALUES (139, 40, 550);
INSERT INTO public.games VALUES (140, 40, 1);
INSERT INTO public.games VALUES (141, 40, 305);
INSERT INTO public.games VALUES (142, 42, 113);
INSERT INTO public.games VALUES (143, 42, 507);
INSERT INTO public.games VALUES (144, 43, 497);
INSERT INTO public.games VALUES (145, 43, 512);
INSERT INTO public.games VALUES (146, 42, 381);
INSERT INTO public.games VALUES (147, 42, 1);
INSERT INTO public.games VALUES (148, 42, 315);
INSERT INTO public.games VALUES (149, 44, 536);
INSERT INTO public.games VALUES (150, 44, 444);
INSERT INTO public.games VALUES (151, 45, 139);
INSERT INTO public.games VALUES (152, 45, 529);
INSERT INTO public.games VALUES (153, 44, 332);
INSERT INTO public.games VALUES (154, 44, 1);
INSERT INTO public.games VALUES (155, 44, 448);
INSERT INTO public.games VALUES (156, 48, 304);
INSERT INTO public.games VALUES (157, 48, 294);
INSERT INTO public.games VALUES (158, 49, 516);
INSERT INTO public.games VALUES (159, 49, 484);
INSERT INTO public.games VALUES (160, 48, 479);
INSERT INTO public.games VALUES (161, 48, 1);
INSERT INTO public.games VALUES (162, 48, 513);
INSERT INTO public.games VALUES (163, 50, 525);
INSERT INTO public.games VALUES (164, 50, 488);
INSERT INTO public.games VALUES (165, 51, 561);
INSERT INTO public.games VALUES (166, 51, 530);
INSERT INTO public.games VALUES (167, 50, 303);
INSERT INTO public.games VALUES (168, 50, 1);
INSERT INTO public.games VALUES (169, 50, 513);
INSERT INTO public.games VALUES (170, 52, 1);
INSERT INTO public.games VALUES (171, 52, 521);
INSERT INTO public.games VALUES (172, 53, 501);
INSERT INTO public.games VALUES (173, 53, 504);
INSERT INTO public.games VALUES (174, 52, 490);
INSERT INTO public.games VALUES (175, 52, 1);
INSERT INTO public.games VALUES (176, 52, 516);
INSERT INTO public.games VALUES (177, 54, 1);
INSERT INTO public.games VALUES (178, 54, 481);
INSERT INTO public.games VALUES (179, 55, 517);
INSERT INTO public.games VALUES (180, 55, 546);
INSERT INTO public.games VALUES (181, 54, 113);
INSERT INTO public.games VALUES (182, 54, 1);
INSERT INTO public.games VALUES (183, 54, 539);
INSERT INTO public.games VALUES (184, 56, 140);
INSERT INTO public.games VALUES (185, 56, 515);
INSERT INTO public.games VALUES (186, 57, 142);
INSERT INTO public.games VALUES (187, 57, 524);
INSERT INTO public.games VALUES (188, 56, 518);
INSERT INTO public.games VALUES (189, 56, 1);
INSERT INTO public.games VALUES (190, 56, 524);
INSERT INTO public.games VALUES (191, 58, 475);
INSERT INTO public.games VALUES (192, 58, 174);
INSERT INTO public.games VALUES (193, 59, 89);
INSERT INTO public.games VALUES (194, 60, 32);
INSERT INTO public.games VALUES (195, 59, 166);
INSERT INTO public.games VALUES (196, 60, 189);
INSERT INTO public.games VALUES (197, 61, 203);
INSERT INTO public.games VALUES (198, 58, 184);
INSERT INTO public.games VALUES (199, 58, 1);
INSERT INTO public.games VALUES (200, 61, 159);
INSERT INTO public.games VALUES (201, 58, 177);
INSERT INTO public.games VALUES (202, 59, 227);
INSERT INTO public.games VALUES (203, 59, 1);
INSERT INTO public.games VALUES (204, 59, 244);
INSERT INTO public.games VALUES (205, 62, 170);
INSERT INTO public.games VALUES (206, 62, 108);
INSERT INTO public.games VALUES (207, 63, 289);
INSERT INTO public.games VALUES (208, 63, 446);
INSERT INTO public.games VALUES (209, 62, 15);
INSERT INTO public.games VALUES (210, 62, 1);
INSERT INTO public.games VALUES (211, 62, 503);
INSERT INTO public.games VALUES (212, 64, 526);
INSERT INTO public.games VALUES (213, 64, 355);
INSERT INTO public.games VALUES (214, 65, 539);
INSERT INTO public.games VALUES (215, 65, 489);
INSERT INTO public.games VALUES (216, 64, 515);
INSERT INTO public.games VALUES (217, 64, 1);
INSERT INTO public.games VALUES (218, 64, 409);
INSERT INTO public.games VALUES (219, 35, 30);
INSERT INTO public.games VALUES (220, 78, 305);
INSERT INTO public.games VALUES (221, 78, 711);
INSERT INTO public.games VALUES (222, 79, 503);
INSERT INTO public.games VALUES (223, 79, 606);
INSERT INTO public.games VALUES (224, 78, 612);
INSERT INTO public.games VALUES (225, 78, 275);
INSERT INTO public.games VALUES (226, 78, 271);
INSERT INTO public.games VALUES (227, 80, 154);
INSERT INTO public.games VALUES (228, 80, 309);
INSERT INTO public.games VALUES (229, 81, 429);
INSERT INTO public.games VALUES (230, 81, 930);
INSERT INTO public.games VALUES (231, 80, 266);
INSERT INTO public.games VALUES (232, 80, 64);
INSERT INTO public.games VALUES (233, 80, 961);
INSERT INTO public.games VALUES (234, 82, 701);
INSERT INTO public.games VALUES (235, 82, 332);
INSERT INTO public.games VALUES (236, 83, 905);
INSERT INTO public.games VALUES (237, 83, 607);
INSERT INTO public.games VALUES (238, 82, 230);
INSERT INTO public.games VALUES (239, 82, 276);
INSERT INTO public.games VALUES (240, 82, 409);
INSERT INTO public.games VALUES (241, 84, 302);
INSERT INTO public.games VALUES (242, 84, 120);
INSERT INTO public.games VALUES (243, 85, 407);
INSERT INTO public.games VALUES (244, 85, 693);
INSERT INTO public.games VALUES (245, 84, 820);
INSERT INTO public.games VALUES (246, 84, 504);
INSERT INTO public.games VALUES (247, 84, 58);
INSERT INTO public.games VALUES (248, 86, 666);
INSERT INTO public.games VALUES (249, 86, 484);
INSERT INTO public.games VALUES (250, 87, 227);
INSERT INTO public.games VALUES (251, 87, 337);
INSERT INTO public.games VALUES (252, 86, 948);
INSERT INTO public.games VALUES (253, 86, 834);
INSERT INTO public.games VALUES (254, 86, 854);
INSERT INTO public.games VALUES (255, 88, 496);
INSERT INTO public.games VALUES (256, 88, 650);
INSERT INTO public.games VALUES (257, 89, 460);
INSERT INTO public.games VALUES (258, 89, 359);
INSERT INTO public.games VALUES (259, 88, 201);
INSERT INTO public.games VALUES (260, 88, 13);
INSERT INTO public.games VALUES (261, 88, 757);
INSERT INTO public.games VALUES (262, 90, 830);
INSERT INTO public.games VALUES (263, 90, 987);
INSERT INTO public.games VALUES (264, 91, 858);
INSERT INTO public.games VALUES (265, 91, 135);
INSERT INTO public.games VALUES (266, 90, 755);
INSERT INTO public.games VALUES (267, 90, 949);
INSERT INTO public.games VALUES (268, 90, 820);
INSERT INTO public.games VALUES (269, 92, 955);
INSERT INTO public.games VALUES (270, 92, 372);
INSERT INTO public.games VALUES (271, 93, 782);
INSERT INTO public.games VALUES (272, 93, 337);
INSERT INTO public.games VALUES (273, 92, 143);
INSERT INTO public.games VALUES (274, 92, 715);
INSERT INTO public.games VALUES (275, 92, 299);
INSERT INTO public.games VALUES (276, 96, 2);
INSERT INTO public.games VALUES (277, 96, 1);
INSERT INTO public.games VALUES (278, 98, 741);
INSERT INTO public.games VALUES (279, 98, 836);
INSERT INTO public.games VALUES (280, 99, 96);
INSERT INTO public.games VALUES (281, 99, 110);
INSERT INTO public.games VALUES (282, 98, 806);
INSERT INTO public.games VALUES (283, 98, 233);
INSERT INTO public.games VALUES (284, 98, 585);
INSERT INTO public.games VALUES (285, 100, 1);
INSERT INTO public.games VALUES (286, 100, 394);
INSERT INTO public.games VALUES (287, 101, 757);
INSERT INTO public.games VALUES (288, 101, 828);
INSERT INTO public.games VALUES (289, 100, 572);
INSERT INTO public.games VALUES (290, 100, 256);
INSERT INTO public.games VALUES (291, 100, 251);
INSERT INTO public.games VALUES (292, 102, 687);
INSERT INTO public.games VALUES (293, 102, 21);
INSERT INTO public.games VALUES (294, 103, 417);
INSERT INTO public.games VALUES (295, 103, 614);
INSERT INTO public.games VALUES (296, 102, 991);
INSERT INTO public.games VALUES (297, 102, 637);
INSERT INTO public.games VALUES (298, 102, 770);
INSERT INTO public.games VALUES (299, 104, 625);
INSERT INTO public.games VALUES (300, 104, 987);
INSERT INTO public.games VALUES (301, 105, 594);
INSERT INTO public.games VALUES (302, 105, 930);
INSERT INTO public.games VALUES (303, 104, 767);
INSERT INTO public.games VALUES (304, 104, 202);
INSERT INTO public.games VALUES (305, 104, 378);
INSERT INTO public.games VALUES (306, 106, 152);
INSERT INTO public.games VALUES (307, 106, 53);
INSERT INTO public.games VALUES (308, 107, 293);
INSERT INTO public.games VALUES (309, 107, 917);
INSERT INTO public.games VALUES (310, 106, 78);
INSERT INTO public.games VALUES (311, 106, 418);
INSERT INTO public.games VALUES (312, 106, 1001);
INSERT INTO public.games VALUES (313, 108, 557);
INSERT INTO public.games VALUES (314, 108, 525);
INSERT INTO public.games VALUES (315, 109, 957);
INSERT INTO public.games VALUES (316, 109, 119);
INSERT INTO public.games VALUES (317, 108, 972);
INSERT INTO public.games VALUES (318, 108, 926);
INSERT INTO public.games VALUES (319, 108, 251);
INSERT INTO public.games VALUES (320, 110, 971);
INSERT INTO public.games VALUES (321, 110, 450);
INSERT INTO public.games VALUES (322, 111, 670);
INSERT INTO public.games VALUES (323, 111, 501);
INSERT INTO public.games VALUES (324, 110, 296);
INSERT INTO public.games VALUES (325, 110, 210);
INSERT INTO public.games VALUES (326, 110, 757);
INSERT INTO public.games VALUES (327, 112, 256);
INSERT INTO public.games VALUES (328, 112, 263);
INSERT INTO public.games VALUES (329, 113, 789);
INSERT INTO public.games VALUES (330, 113, 393);
INSERT INTO public.games VALUES (331, 112, 714);
INSERT INTO public.games VALUES (332, 112, 180);
INSERT INTO public.games VALUES (333, 112, 398);
INSERT INTO public.games VALUES (334, 114, 764);
INSERT INTO public.games VALUES (335, 114, 159);
INSERT INTO public.games VALUES (336, 115, 955);
INSERT INTO public.games VALUES (337, 115, 953);
INSERT INTO public.games VALUES (338, 114, 143);
INSERT INTO public.games VALUES (339, 114, 679);
INSERT INTO public.games VALUES (340, 114, 572);
INSERT INTO public.games VALUES (341, 116, 969);
INSERT INTO public.games VALUES (342, 116, 710);
INSERT INTO public.games VALUES (343, 117, 579);
INSERT INTO public.games VALUES (344, 117, 478);
INSERT INTO public.games VALUES (345, 116, 43);
INSERT INTO public.games VALUES (346, 116, 194);
INSERT INTO public.games VALUES (347, 116, 620);
INSERT INTO public.games VALUES (348, 118, 467);
INSERT INTO public.games VALUES (349, 118, 931);
INSERT INTO public.games VALUES (350, 119, 496);
INSERT INTO public.games VALUES (351, 119, 695);
INSERT INTO public.games VALUES (352, 118, 52);
INSERT INTO public.games VALUES (353, 118, 771);
INSERT INTO public.games VALUES (354, 118, 479);
INSERT INTO public.games VALUES (355, 120, 668);
INSERT INTO public.games VALUES (356, 120, 171);
INSERT INTO public.games VALUES (357, 121, 790);
INSERT INTO public.games VALUES (358, 121, 248);
INSERT INTO public.games VALUES (359, 120, 51);
INSERT INTO public.games VALUES (360, 120, 746);
INSERT INTO public.games VALUES (361, 120, 770);
INSERT INTO public.games VALUES (362, 122, 775);
INSERT INTO public.games VALUES (363, 122, 227);
INSERT INTO public.games VALUES (364, 123, 872);
INSERT INTO public.games VALUES (365, 123, 683);
INSERT INTO public.games VALUES (366, 122, 314);
INSERT INTO public.games VALUES (367, 122, 854);
INSERT INTO public.games VALUES (368, 122, 317);
INSERT INTO public.games VALUES (369, 124, 892);
INSERT INTO public.games VALUES (370, 124, 434);
INSERT INTO public.games VALUES (371, 125, 760);
INSERT INTO public.games VALUES (372, 125, 982);
INSERT INTO public.games VALUES (373, 124, 90);
INSERT INTO public.games VALUES (374, 124, 225);
INSERT INTO public.games VALUES (375, 124, 479);
INSERT INTO public.games VALUES (376, 126, 857);
INSERT INTO public.games VALUES (377, 126, 768);
INSERT INTO public.games VALUES (378, 127, 467);
INSERT INTO public.games VALUES (379, 127, 419);
INSERT INTO public.games VALUES (380, 126, 314);
INSERT INTO public.games VALUES (381, 126, 902);
INSERT INTO public.games VALUES (382, 126, 856);
INSERT INTO public.games VALUES (383, 128, 846);
INSERT INTO public.games VALUES (384, 128, 689);
INSERT INTO public.games VALUES (385, 129, 672);
INSERT INTO public.games VALUES (386, 129, 799);
INSERT INTO public.games VALUES (387, 128, 117);
INSERT INTO public.games VALUES (388, 128, 294);
INSERT INTO public.games VALUES (389, 128, 371);
INSERT INTO public.games VALUES (416, 161, 516);
INSERT INTO public.games VALUES (417, 161, 389);
INSERT INTO public.games VALUES (418, 162, 363);
INSERT INTO public.games VALUES (419, 162, 721);
INSERT INTO public.games VALUES (420, 161, 980);
INSERT INTO public.games VALUES (421, 161, 336);
INSERT INTO public.games VALUES (422, 161, 283);
INSERT INTO public.games VALUES (423, 163, 445);
INSERT INTO public.games VALUES (424, 163, 123);
INSERT INTO public.games VALUES (425, 164, 470);
INSERT INTO public.games VALUES (426, 164, 844);
INSERT INTO public.games VALUES (427, 163, 82);
INSERT INTO public.games VALUES (428, 163, 701);
INSERT INTO public.games VALUES (429, 163, 588);
INSERT INTO public.games VALUES (430, 165, 174);
INSERT INTO public.games VALUES (431, 165, 58);
INSERT INTO public.games VALUES (432, 166, 672);
INSERT INTO public.games VALUES (433, 166, 374);
INSERT INTO public.games VALUES (434, 165, 700);
INSERT INTO public.games VALUES (435, 165, 451);
INSERT INTO public.games VALUES (436, 165, 329);
INSERT INTO public.games VALUES (437, 167, 365);
INSERT INTO public.games VALUES (438, 167, 601);
INSERT INTO public.games VALUES (439, 168, 708);
INSERT INTO public.games VALUES (440, 168, 806);
INSERT INTO public.games VALUES (441, 167, 828);
INSERT INTO public.games VALUES (442, 167, 451);
INSERT INTO public.games VALUES (443, 167, 290);
INSERT INTO public.games VALUES (444, 169, 1);
INSERT INTO public.games VALUES (445, 169, 927);
INSERT INTO public.games VALUES (446, 170, 155);
INSERT INTO public.games VALUES (447, 170, 222);
INSERT INTO public.games VALUES (448, 169, 982);
INSERT INTO public.games VALUES (449, 169, 380);
INSERT INTO public.games VALUES (450, 169, 789);
INSERT INTO public.games VALUES (451, 171, 298);
INSERT INTO public.games VALUES (452, 171, 193);
INSERT INTO public.games VALUES (453, 172, 190);
INSERT INTO public.games VALUES (454, 172, 211);
INSERT INTO public.games VALUES (455, 171, 832);
INSERT INTO public.games VALUES (456, 171, 453);
INSERT INTO public.games VALUES (457, 171, 321);
INSERT INTO public.games VALUES (458, 173, 544);
INSERT INTO public.games VALUES (459, 173, 143);
INSERT INTO public.games VALUES (460, 174, 857);
INSERT INTO public.games VALUES (461, 174, 501);
INSERT INTO public.games VALUES (462, 173, 520);
INSERT INTO public.games VALUES (463, 173, 932);
INSERT INTO public.games VALUES (464, 173, 88);
INSERT INTO public.games VALUES (465, 175, 404);
INSERT INTO public.games VALUES (466, 175, 967);
INSERT INTO public.games VALUES (467, 176, 196);
INSERT INTO public.games VALUES (468, 176, 738);
INSERT INTO public.games VALUES (469, 175, 11);
INSERT INTO public.games VALUES (470, 175, 324);
INSERT INTO public.games VALUES (471, 175, 554);
INSERT INTO public.games VALUES (472, 177, 167);
INSERT INTO public.games VALUES (473, 177, 710);
INSERT INTO public.games VALUES (474, 178, 592);
INSERT INTO public.games VALUES (475, 178, 943);
INSERT INTO public.games VALUES (476, 177, 539);
INSERT INTO public.games VALUES (477, 177, 635);
INSERT INTO public.games VALUES (478, 177, 643);
INSERT INTO public.games VALUES (479, 179, 1);
INSERT INTO public.games VALUES (480, 179, 187);
INSERT INTO public.games VALUES (481, 180, 429);
INSERT INTO public.games VALUES (482, 180, 937);
INSERT INTO public.games VALUES (483, 179, 735);
INSERT INTO public.games VALUES (484, 179, 288);
INSERT INTO public.games VALUES (485, 179, 744);
INSERT INTO public.games VALUES (486, 181, 201);
INSERT INTO public.games VALUES (487, 181, 4);
INSERT INTO public.games VALUES (488, 182, 246);
INSERT INTO public.games VALUES (489, 182, 629);
INSERT INTO public.games VALUES (490, 181, 438);
INSERT INTO public.games VALUES (491, 181, 823);
INSERT INTO public.games VALUES (492, 181, 603);
INSERT INTO public.games VALUES (493, 183, 572);
INSERT INTO public.games VALUES (494, 183, 508);
INSERT INTO public.games VALUES (495, 184, 85);
INSERT INTO public.games VALUES (496, 184, 922);
INSERT INTO public.games VALUES (497, 183, 14);
INSERT INTO public.games VALUES (498, 183, 26);
INSERT INTO public.games VALUES (499, 183, 417);
INSERT INTO public.games VALUES (500, 185, 437);
INSERT INTO public.games VALUES (501, 185, 571);
INSERT INTO public.games VALUES (502, 186, 18);
INSERT INTO public.games VALUES (503, 186, 466);
INSERT INTO public.games VALUES (504, 185, 332);
INSERT INTO public.games VALUES (505, 185, 234);
INSERT INTO public.games VALUES (506, 185, 171);
INSERT INTO public.games VALUES (507, 187, 98);
INSERT INTO public.games VALUES (508, 187, 640);
INSERT INTO public.games VALUES (509, 188, 506);
INSERT INTO public.games VALUES (510, 188, 701);
INSERT INTO public.games VALUES (511, 187, 815);
INSERT INTO public.games VALUES (512, 187, 27);
INSERT INTO public.games VALUES (513, 187, 14);
INSERT INTO public.games VALUES (514, 189, 567);
INSERT INTO public.games VALUES (515, 189, 510);
INSERT INTO public.games VALUES (516, 190, 801);
INSERT INTO public.games VALUES (517, 190, 939);
INSERT INTO public.games VALUES (518, 189, 169);
INSERT INTO public.games VALUES (519, 189, 738);
INSERT INTO public.games VALUES (520, 189, 15);
INSERT INTO public.games VALUES (521, 191, 719);
INSERT INTO public.games VALUES (522, 191, 416);
INSERT INTO public.games VALUES (523, 192, 999);
INSERT INTO public.games VALUES (524, 192, 875);
INSERT INTO public.games VALUES (525, 191, 927);
INSERT INTO public.games VALUES (526, 191, 620);
INSERT INTO public.games VALUES (527, 191, 933);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Nick');
INSERT INTO public.users VALUES (2, 'user_1688166643146');
INSERT INTO public.users VALUES (3, 'user_1688166643145');
INSERT INTO public.users VALUES (4, 'user_1688166678036');
INSERT INTO public.users VALUES (5, 'user_1688166678035');
INSERT INTO public.users VALUES (6, 'user_1688166836682');
INSERT INTO public.users VALUES (7, 'user_1688166836681');
INSERT INTO public.users VALUES (8, 'user_1688166849695');
INSERT INTO public.users VALUES (9, 'user_1688166849694');
INSERT INTO public.users VALUES (10, 'user_1688166860229');
INSERT INTO public.users VALUES (11, 'user_1688166860228');
INSERT INTO public.users VALUES (12, 'user_1688166873037');
INSERT INTO public.users VALUES (13, 'user_1688166873036');
INSERT INTO public.users VALUES (14, 'user_1688168146340');
INSERT INTO public.users VALUES (15, 'user_1688168146339');
INSERT INTO public.users VALUES (16, 'user_1688168816661');
INSERT INTO public.users VALUES (17, 'user_1688168816660');
INSERT INTO public.users VALUES (18, 'user_1688169183185');
INSERT INTO public.users VALUES (19, 'user_1688169183184');
INSERT INTO public.users VALUES (20, 'user_1688426279254');
INSERT INTO public.users VALUES (21, 'user_1688426279253');
INSERT INTO public.users VALUES (22, 'user_1688426576296');
INSERT INTO public.users VALUES (23, 'user_1688426576295');
INSERT INTO public.users VALUES (24, 'user_1688426595952');
INSERT INTO public.users VALUES (25, 'user_1688426595951');
INSERT INTO public.users VALUES (26, 'user_1688426608637');
INSERT INTO public.users VALUES (27, 'user_1688426608636');
INSERT INTO public.users VALUES (28, 'user_1688426815919');
INSERT INTO public.users VALUES (29, 'user_1688426815918');
INSERT INTO public.users VALUES (30, 'user_1688427428112');
INSERT INTO public.users VALUES (31, 'user_1688427428111');
INSERT INTO public.users VALUES (32, 'input');
INSERT INTO public.users VALUES (33, 'user_1688427869953');
INSERT INTO public.users VALUES (34, 'user_1688427869952');
INSERT INTO public.users VALUES (35, 'maria');
INSERT INTO public.users VALUES (36, 'user_1688428877135');
INSERT INTO public.users VALUES (37, 'user_1688428877134');
INSERT INTO public.users VALUES (38, 'user_1688428965038');
INSERT INTO public.users VALUES (39, 'user_1688428965037');
INSERT INTO public.users VALUES (40, 'user_1688429159115');
INSERT INTO public.users VALUES (41, 'user_1688429159114');
INSERT INTO public.users VALUES (42, 'user_1688429211574');
INSERT INTO public.users VALUES (43, 'user_1688429211573');
INSERT INTO public.users VALUES (44, 'user_1688429231929');
INSERT INTO public.users VALUES (45, 'user_1688429231928');
INSERT INTO public.users VALUES (46, 'user_1688429261218');
INSERT INTO public.users VALUES (47, 'user_1688429261217');
INSERT INTO public.users VALUES (48, 'user_1688429309321');
INSERT INTO public.users VALUES (49, 'user_1688429309320');
INSERT INTO public.users VALUES (50, 'user_1688429356459');
INSERT INTO public.users VALUES (51, 'user_1688429356458');
INSERT INTO public.users VALUES (52, 'user_1688429378333');
INSERT INTO public.users VALUES (53, 'user_1688429378332');
INSERT INTO public.users VALUES (54, 'user_1688429439414');
INSERT INTO public.users VALUES (55, 'user_1688429439413');
INSERT INTO public.users VALUES (56, 'user_1688429611579');
INSERT INTO public.users VALUES (57, 'user_1688429611578');
INSERT INTO public.users VALUES (58, 'user_1688429811724');
INSERT INTO public.users VALUES (59, 'user_1688429813632');
INSERT INTO public.users VALUES (60, 'user_1688429811723');
INSERT INTO public.users VALUES (61, 'user_1688429813631');
INSERT INTO public.users VALUES (62, 'user_1688429828732');
INSERT INTO public.users VALUES (63, 'user_1688429828731');
INSERT INTO public.users VALUES (64, 'user_1688429951247');
INSERT INTO public.users VALUES (65, 'user_1688429951246');
INSERT INTO public.users VALUES (66, 'user_1688431563524');
INSERT INTO public.users VALUES (67, 'user_1688431563523');
INSERT INTO public.users VALUES (68, 'user_1688431569228');
INSERT INTO public.users VALUES (69, 'user_1688431569227');
INSERT INTO public.users VALUES (70, 'user_1688431577684');
INSERT INTO public.users VALUES (71, 'user_1688431577683');
INSERT INTO public.users VALUES (72, 'user_1688433009307');
INSERT INTO public.users VALUES (73, 'user_1688433009306');
INSERT INTO public.users VALUES (74, 'user_1688433943906');
INSERT INTO public.users VALUES (75, 'user_1688433943905');
INSERT INTO public.users VALUES (76, 'user_1688433976494');
INSERT INTO public.users VALUES (77, 'user_1688433976493');
INSERT INTO public.users VALUES (78, 'user_1688435189709');
INSERT INTO public.users VALUES (79, 'user_1688435189708');
INSERT INTO public.users VALUES (80, 'user_1688435419747');
INSERT INTO public.users VALUES (81, 'user_1688435419746');
INSERT INTO public.users VALUES (82, 'user_1688435539528');
INSERT INTO public.users VALUES (83, 'user_1688435539527');
INSERT INTO public.users VALUES (84, 'user_1688435548751');
INSERT INTO public.users VALUES (85, 'user_1688435548750');
INSERT INTO public.users VALUES (86, 'user_1688435557055');
INSERT INTO public.users VALUES (87, 'user_1688435557054');
INSERT INTO public.users VALUES (88, 'user_1688435564727');
INSERT INTO public.users VALUES (89, 'user_1688435564726');
INSERT INTO public.users VALUES (90, 'user_1688435571968');
INSERT INTO public.users VALUES (91, 'user_1688435571967');
INSERT INTO public.users VALUES (92, 'user_1688435603449');
INSERT INTO public.users VALUES (93, 'user_1688435603448');
INSERT INTO public.users VALUES (94, 'user_1688435898995');
INSERT INTO public.users VALUES (95, 'user_1688435898994');
INSERT INTO public.users VALUES (96, 'user_1688435956390');
INSERT INTO public.users VALUES (97, 'user_1688435956389');
INSERT INTO public.users VALUES (98, 'user_1688437029777');
INSERT INTO public.users VALUES (99, 'user_1688437029776');
INSERT INTO public.users VALUES (100, 'user_1688437037311');
INSERT INTO public.users VALUES (101, 'user_1688437037310');
INSERT INTO public.users VALUES (102, 'user_1688437049112');
INSERT INTO public.users VALUES (103, 'user_1688437049111');
INSERT INTO public.users VALUES (104, 'user_1688437058788');
INSERT INTO public.users VALUES (105, 'user_1688437058787');
INSERT INTO public.users VALUES (106, 'user_1688437070435');
INSERT INTO public.users VALUES (107, 'user_1688437070434');
INSERT INTO public.users VALUES (108, 'user_1688437209659');
INSERT INTO public.users VALUES (109, 'user_1688437209658');
INSERT INTO public.users VALUES (110, 'user_1688437216933');
INSERT INTO public.users VALUES (111, 'user_1688437216932');
INSERT INTO public.users VALUES (112, 'user_1688437273773');
INSERT INTO public.users VALUES (113, 'user_1688437273772');
INSERT INTO public.users VALUES (114, 'user_1688437279849');
INSERT INTO public.users VALUES (115, 'user_1688437279848');
INSERT INTO public.users VALUES (116, 'user_1688437458056');
INSERT INTO public.users VALUES (117, 'user_1688437458055');
INSERT INTO public.users VALUES (118, 'user_1688437924784');
INSERT INTO public.users VALUES (119, 'user_1688437924783');
INSERT INTO public.users VALUES (120, 'user_1688438635486');
INSERT INTO public.users VALUES (121, 'user_1688438635485');
INSERT INTO public.users VALUES (122, 'user_1688438644059');
INSERT INTO public.users VALUES (123, 'user_1688438644058');
INSERT INTO public.users VALUES (124, 'user_1688438668689');
INSERT INTO public.users VALUES (125, 'user_1688438668688');
INSERT INTO public.users VALUES (126, 'user_1688438677447');
INSERT INTO public.users VALUES (127, 'user_1688438677446');
INSERT INTO public.users VALUES (128, 'user_1688438787252');
INSERT INTO public.users VALUES (129, 'user_1688438787251');
INSERT INTO public.users VALUES (161, 'user_1688439664334');
INSERT INTO public.users VALUES (162, 'user_1688439664333');
INSERT INTO public.users VALUES (163, 'user_1688439685142');
INSERT INTO public.users VALUES (164, 'user_1688439685141');
INSERT INTO public.users VALUES (165, 'user_1688439694240');
INSERT INTO public.users VALUES (166, 'user_1688439694239');
INSERT INTO public.users VALUES (167, 'user_1688439701381');
INSERT INTO public.users VALUES (168, 'user_1688439701380');
INSERT INTO public.users VALUES (169, 'user_1688440039223');
INSERT INTO public.users VALUES (170, 'user_1688440039222');
INSERT INTO public.users VALUES (171, 'user_1688440049541');
INSERT INTO public.users VALUES (172, 'user_1688440049540');
INSERT INTO public.users VALUES (173, 'user_1688440059584');
INSERT INTO public.users VALUES (174, 'user_1688440059583');
INSERT INTO public.users VALUES (175, 'user_1688440232345');
INSERT INTO public.users VALUES (176, 'user_1688440232344');
INSERT INTO public.users VALUES (177, 'user_1688440250335');
INSERT INTO public.users VALUES (178, 'user_1688440250334');
INSERT INTO public.users VALUES (179, 'user_1688440346763');
INSERT INTO public.users VALUES (180, 'user_1688440346762');
INSERT INTO public.users VALUES (181, 'user_1688440356592');
INSERT INTO public.users VALUES (182, 'user_1688440356591');
INSERT INTO public.users VALUES (183, 'user_1688440385488');
INSERT INTO public.users VALUES (184, 'user_1688440385487');
INSERT INTO public.users VALUES (185, 'user_1688440425887');
INSERT INTO public.users VALUES (186, 'user_1688440425886');
INSERT INTO public.users VALUES (187, 'user_1688440432826');
INSERT INTO public.users VALUES (188, 'user_1688440432825');
INSERT INTO public.users VALUES (189, 'user_1688440441190');
INSERT INTO public.users VALUES (190, 'user_1688440441189');
INSERT INTO public.users VALUES (191, 'user_1688440473172');
INSERT INTO public.users VALUES (192, 'user_1688440473171');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 527, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 192, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

