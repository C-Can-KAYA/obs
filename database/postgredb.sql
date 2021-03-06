PGDMP                         y           postgres    13.3    13.3 7    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13442    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3058                        2615    16405    OBS    SCHEMA        CREATE SCHEMA "OBS";
    DROP SCHEMA "OBS";
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16432    DERS    TABLE     m   CREATE TABLE "OBS"."DERS" (
    "DERS_ID" integer NOT NULL,
    "OGRETMEN_ID" integer,
    "DERS_AD" text
);
    DROP TABLE "OBS"."DERS";
       OBS         heap    postgres    false    7            ?            1259    16430    DERS_DERS_ID_seq    SEQUENCE     ?   CREATE SEQUENCE "OBS"."DERS_DERS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "OBS"."DERS_DERS_ID_seq";
       OBS          postgres    false    209    7            ?           0    0    DERS_DERS_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "OBS"."DERS_DERS_ID_seq" OWNED BY "OBS"."DERS"."DERS_ID";
          OBS          postgres    false    208            ?            1259    16452    DERS_OGRENCI    TABLE     ?   CREATE TABLE "OBS"."DERS_OGRENCI" (
    "KAYIT_ID" integer NOT NULL,
    "OGRENCI_ID" integer NOT NULL,
    "DERS_ID" integer NOT NULL
);
 !   DROP TABLE "OBS"."DERS_OGRENCI";
       OBS         heap    postgres    false    7            ?            1259    16450    DERS_OGRENCI_KAYIT_ID_seq    SEQUENCE     ?   CREATE SEQUENCE "OBS"."DERS_OGRENCI_KAYIT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "OBS"."DERS_OGRENCI_KAYIT_ID_seq";
       OBS          postgres    false    7    211            ?           0    0    DERS_OGRENCI_KAYIT_ID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "OBS"."DERS_OGRENCI_KAYIT_ID_seq" OWNED BY "OBS"."DERS_OGRENCI"."KAYIT_ID";
          OBS          postgres    false    210            ?            1259    16424    KONU    TABLE     x   CREATE TABLE "OBS"."KONU" (
    "KONU_ID" integer NOT NULL,
    "KONU" character varying(100),
    "DERS_ID" integer
);
    DROP TABLE "OBS"."KONU";
       OBS         heap    postgres    false    7            ?            1259    16422    KONU_KONU_ID_seq    SEQUENCE     ?   CREATE SEQUENCE "OBS"."KONU_KONU_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "OBS"."KONU_KONU_ID_seq";
       OBS          postgres    false    207    7            ?           0    0    KONU_KONU_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "OBS"."KONU_KONU_ID_seq" OWNED BY "OBS"."KONU"."KONU_ID";
          OBS          postgres    false    206            ?            1259    16416    OGRENCI    TABLE     y   CREATE TABLE "OBS"."OGRENCI" (
    "OGR_ID" integer NOT NULL,
    "OGR_NUM" integer,
    "NAME" character varying(50)
);
    DROP TABLE "OBS"."OGRENCI";
       OBS         heap    postgres    false    7            ?            1259    16414    OGRENCI_OGR_ID_seq    SEQUENCE     ?   CREATE SEQUENCE "OBS"."OGRENCI_OGR_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "OBS"."OGRENCI_OGR_ID_seq";
       OBS          postgres    false    205    7            ?           0    0    OGRENCI_OGR_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "OBS"."OGRENCI_OGR_ID_seq" OWNED BY "OBS"."OGRENCI"."OGR_ID";
          OBS          postgres    false    204            ?            1259    16408    OGRETMEN    TABLE     g   CREATE TABLE "OBS"."OGRETMEN" (
    "OGR_ID" integer NOT NULL,
    "OGR_NAME" character varying(50)
);
    DROP TABLE "OBS"."OGRETMEN";
       OBS         heap    postgres    false    7            ?            1259    16406    OGRETMEN_OGR_ID_seq    SEQUENCE     ?   CREATE SEQUENCE "OBS"."OGRETMEN_OGR_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "OBS"."OGRETMEN_OGR_ID_seq";
       OBS          postgres    false    203    7            ?           0    0    OGRETMEN_OGR_ID_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "OBS"."OGRETMEN_OGR_ID_seq" OWNED BY "OBS"."OGRETMEN"."OGR_ID";
          OBS          postgres    false    202            ?            1259    16482    authorities    TABLE     ~   CREATE TABLE "OBS".authorities (
    username character varying(50) NOT NULL,
    authority character varying(50) NOT NULL
);
    DROP TABLE "OBS".authorities;
       OBS         heap    postgres    false    7            ?            1259    16474    users    TABLE     ?   CREATE TABLE "OBS".users (
    username character varying(50) NOT NULL,
    password character varying(500) NOT NULL,
    enabled boolean NOT NULL
);
    DROP TABLE "OBS".users;
       OBS         heap    postgres    false    7            I           2604    16435    DERS DERS_ID    DEFAULT     p   ALTER TABLE ONLY "OBS"."DERS" ALTER COLUMN "DERS_ID" SET DEFAULT nextval('"OBS"."DERS_DERS_ID_seq"'::regclass);
 >   ALTER TABLE "OBS"."DERS" ALTER COLUMN "DERS_ID" DROP DEFAULT;
       OBS          postgres    false    208    209    209            J           2604    16455    DERS_OGRENCI KAYIT_ID    DEFAULT     ?   ALTER TABLE ONLY "OBS"."DERS_OGRENCI" ALTER COLUMN "KAYIT_ID" SET DEFAULT nextval('"OBS"."DERS_OGRENCI_KAYIT_ID_seq"'::regclass);
 G   ALTER TABLE "OBS"."DERS_OGRENCI" ALTER COLUMN "KAYIT_ID" DROP DEFAULT;
       OBS          postgres    false    210    211    211            H           2604    16427    KONU KONU_ID    DEFAULT     p   ALTER TABLE ONLY "OBS"."KONU" ALTER COLUMN "KONU_ID" SET DEFAULT nextval('"OBS"."KONU_KONU_ID_seq"'::regclass);
 >   ALTER TABLE "OBS"."KONU" ALTER COLUMN "KONU_ID" DROP DEFAULT;
       OBS          postgres    false    206    207    207            G           2604    16419    OGRENCI OGR_ID    DEFAULT     t   ALTER TABLE ONLY "OBS"."OGRENCI" ALTER COLUMN "OGR_ID" SET DEFAULT nextval('"OBS"."OGRENCI_OGR_ID_seq"'::regclass);
 @   ALTER TABLE "OBS"."OGRENCI" ALTER COLUMN "OGR_ID" DROP DEFAULT;
       OBS          postgres    false    204    205    205            F           2604    16411    OGRETMEN OGR_ID    DEFAULT     v   ALTER TABLE ONLY "OBS"."OGRETMEN" ALTER COLUMN "OGR_ID" SET DEFAULT nextval('"OBS"."OGRETMEN_OGR_ID_seq"'::regclass);
 A   ALTER TABLE "OBS"."OGRETMEN" ALTER COLUMN "OGR_ID" DROP DEFAULT;
       OBS          postgres    false    202    203    203            ?          0    16432    DERS 
   TABLE DATA           D   COPY "OBS"."DERS" ("DERS_ID", "OGRETMEN_ID", "DERS_AD") FROM stdin;
    OBS          postgres    false    209   ?:       ?          0    16452    DERS_OGRENCI 
   TABLE DATA           L   COPY "OBS"."DERS_OGRENCI" ("KAYIT_ID", "OGRENCI_ID", "DERS_ID") FROM stdin;
    OBS          postgres    false    211   ?:       ?          0    16424    KONU 
   TABLE DATA           =   COPY "OBS"."KONU" ("KONU_ID", "KONU", "DERS_ID") FROM stdin;
    OBS          postgres    false    207   ;       ?          0    16416    OGRENCI 
   TABLE DATA           ?   COPY "OBS"."OGRENCI" ("OGR_ID", "OGR_NUM", "NAME") FROM stdin;
    OBS          postgres    false    205   v;       ?          0    16408    OGRETMEN 
   TABLE DATA           9   COPY "OBS"."OGRETMEN" ("OGR_ID", "OGR_NAME") FROM stdin;
    OBS          postgres    false    203   ?;       ?          0    16482    authorities 
   TABLE DATA           9   COPY "OBS".authorities (username, authority) FROM stdin;
    OBS          postgres    false    213   <       ?          0    16474    users 
   TABLE DATA           ;   COPY "OBS".users (username, password, enabled) FROM stdin;
    OBS          postgres    false    212   9<       ?           0    0    DERS_DERS_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"OBS"."DERS_DERS_ID_seq"', 38, true);
          OBS          postgres    false    208            ?           0    0    DERS_OGRENCI_KAYIT_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"OBS"."DERS_OGRENCI_KAYIT_ID_seq"', 16, true);
          OBS          postgres    false    210            ?           0    0    KONU_KONU_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"OBS"."KONU_KONU_ID_seq"', 21, true);
          OBS          postgres    false    206            ?           0    0    OGRENCI_OGR_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"OBS"."OGRENCI_OGR_ID_seq"', 68, true);
          OBS          postgres    false    204            ?           0    0    OGRETMEN_OGR_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"OBS"."OGRETMEN_OGR_ID_seq"', 29, true);
          OBS          postgres    false    202            U           2606    16457    DERS_OGRENCI DERS_OGRENCI_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "OBS"."DERS_OGRENCI"
    ADD CONSTRAINT "DERS_OGRENCI_pkey" PRIMARY KEY ("KAYIT_ID");
 K   ALTER TABLE ONLY "OBS"."DERS_OGRENCI" DROP CONSTRAINT "DERS_OGRENCI_pkey";
       OBS            postgres    false    211            P           2606    16429    KONU KONU_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY "OBS"."KONU"
    ADD CONSTRAINT "KONU_pkey" PRIMARY KEY ("KONU_ID");
 ;   ALTER TABLE ONLY "OBS"."KONU" DROP CONSTRAINT "KONU_pkey";
       OBS            postgres    false    207            N           2606    16421    OGRENCI OGRENCI_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "OBS"."OGRENCI"
    ADD CONSTRAINT "OGRENCI_pkey" PRIMARY KEY ("OGR_ID");
 A   ALTER TABLE ONLY "OBS"."OGRENCI" DROP CONSTRAINT "OGRENCI_pkey";
       OBS            postgres    false    205            S           2606    16437    DERS OGRETMEN_KONU_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "OBS"."DERS"
    ADD CONSTRAINT "OGRETMEN_KONU_pkey" PRIMARY KEY ("DERS_ID");
 D   ALTER TABLE ONLY "OBS"."DERS" DROP CONSTRAINT "OGRETMEN_KONU_pkey";
       OBS            postgres    false    209            L           2606    16413    OGRETMEN OGRETMEN_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "OBS"."OGRETMEN"
    ADD CONSTRAINT "OGRETMEN_pkey" PRIMARY KEY ("OGR_ID");
 C   ALTER TABLE ONLY "OBS"."OGRETMEN" DROP CONSTRAINT "OGRETMEN_pkey";
       OBS            postgres    false    203            W           2606    16459    DERS_OGRENCI UNIQUE_KAYIT 
   CONSTRAINT     j   ALTER TABLE ONLY "OBS"."DERS_OGRENCI"
    ADD CONSTRAINT "UNIQUE_KAYIT" UNIQUE ("OGRENCI_ID", "DERS_ID");
 F   ALTER TABLE ONLY "OBS"."DERS_OGRENCI" DROP CONSTRAINT "UNIQUE_KAYIT";
       OBS            postgres    false    211    211            Y           2606    16481    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "OBS".users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);
 9   ALTER TABLE ONLY "OBS".users DROP CONSTRAINT users_pkey;
       OBS            postgres    false    212            Q           1259    16949    fki_konu_ders_fk    INDEX     G   CREATE INDEX fki_konu_ders_fk ON "OBS"."KONU" USING btree ("DERS_ID");
 #   DROP INDEX "OBS".fki_konu_ders_fk;
       OBS            postgres    false    207            \           2606    16460    DERS_OGRENCI FK_DERS    FK CONSTRAINT     ?   ALTER TABLE ONLY "OBS"."DERS_OGRENCI"
    ADD CONSTRAINT "FK_DERS" FOREIGN KEY ("DERS_ID") REFERENCES "OBS"."DERS"("DERS_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY "OBS"."DERS_OGRENCI" DROP CONSTRAINT "FK_DERS";
       OBS          postgres    false    211    209    2899            ]           2606    16465    DERS_OGRENCI FK_OGRENCİ    FK CONSTRAINT     ?   ALTER TABLE ONLY "OBS"."DERS_OGRENCI"
    ADD CONSTRAINT "FK_OGRENCİ" FOREIGN KEY ("OGRENCI_ID") REFERENCES "OBS"."OGRENCI"("OGR_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY "OBS"."DERS_OGRENCI" DROP CONSTRAINT "FK_OGRENCİ";
       OBS          postgres    false    2894    205    211            [           2606    16445    DERS FK_OGRETMEN    FK CONSTRAINT     ?   ALTER TABLE ONLY "OBS"."DERS"
    ADD CONSTRAINT "FK_OGRETMEN" FOREIGN KEY ("OGRETMEN_ID") REFERENCES "OBS"."OGRETMEN"("OGR_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY "OBS"."DERS" DROP CONSTRAINT "FK_OGRETMEN";
       OBS          postgres    false    203    209    2892            ^           2606    16485     authorities fk_authorities_users    FK CONSTRAINT     ?   ALTER TABLE ONLY "OBS".authorities
    ADD CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES "OBS".users(username);
 I   ALTER TABLE ONLY "OBS".authorities DROP CONSTRAINT fk_authorities_users;
       OBS          postgres    false    213    212    2905            Z           2606    16944    KONU konu_ders_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "OBS"."KONU"
    ADD CONSTRAINT konu_ders_fk FOREIGN KEY ("DERS_ID") REFERENCES "OBS"."DERS"("DERS_ID") NOT VALID;
 <   ALTER TABLE ONLY "OBS"."KONU" DROP CONSTRAINT konu_ders_fk;
       OBS          postgres    false    209    207    2899            ?   6   x?32?42??M,I?M,???26??2?@lN#΂?????ܜ??D?=... `?      ?      x?????? ? ?      ?   M   x?3?9??(???Ȉ˒33?$5?(1?34????NI?K?M?M8?좬LNc3.C΂???̲̒TNc?=... h?Q      ?   R   x?33?44??N=?<;3????5?J,??M?23??9???KO-?2??4415???H,Q?v?t???tN??????? R?      ?   4   x?32?t??H,QpN?S?v?t?2???+?????s???,9??1z\\\ ?}c      ?      x?????? ? ?      ?   ?   x??+?M??T1JT14P)O?7??3?0??s??	u4?/???̎4wN.?s??H-ʱ+Lv31???p?	??,??K??I????W?dh?V?QP???VP???gj??U???]U???_??Wd??V4$F??? ??-     