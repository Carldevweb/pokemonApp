PGDMP                        |           pokemon-joute    16.3    16.3 +    î           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ï           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ð           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ñ           1262    25127    pokemon-joute    DATABASE     ‚   CREATE DATABASE "pokemon-joute" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE "pokemon-joute";
                postgres    false            j           1247    25224    type    TYPE     W   CREATE TYPE public.type AS ENUM (
    'EAU',
    'INSECTE',
    'PLANTE',
    'VOL'
);
    DROP TYPE public.type;
       public          postgres    false            R           1247    25138 
   type-objet    TYPE     X   CREATE TYPE public."type-objet" AS ENUM (
    'POKEBALL',
    'POTION',
    'DIVERS'
);
    DROP TYPE public."type-objet";
       public          postgres    false            ×            1259    25145    attaque    TABLE     œ   CREATE TABLE public.attaque (
    id bigint NOT NULL,
    nom character varying(50) NOT NULL,
    type public.type NOT NULL,
    degats integer NOT NULL
);
    DROP TABLE public.attaque;
       public         heap    postgres    false    874            Ø            1259    25148    Attaque_id_seq    SEQUENCE     Ë   ALTER TABLE public.attaque ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Attaque_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            Ù            1259    25149    espece    TABLE     ¿   CREATE TABLE public.espece (
    id bigint NOT NULL,
    nom character varying(50) NOT NULL,
    type public.type NOT NULL,
    pv_initial integer NOT NULL,
    attaque_initiale_id bigint
);
    DROP TABLE public.espece;
       public         heap    postgres    false    874            Ú            1259    25152    Espece_id_seq    SEQUENCE     É   ALTER TABLE public.espece ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Espece_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            Û            1259    25153    dresseur    TABLE     ˜   CREATE TABLE public.dresseur (
    id bigint NOT NULL,
    pseudo character varying(50) NOT NULL,
    mot_de_passe integer,
    portefeuille integer
);
    DROP TABLE public.dresseur;
       public         heap    postgres    false            Ü            1259    25156    dresseur_id_seq    SEQUENCE     Ë   ALTER TABLE public.dresseur ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dresseur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            Ý            1259    25157 
   inventaire    TABLE     x   CREATE TABLE public.inventaire (
    dresseur_id bigint NOT NULL,
    objet_id bigint NOT NULL,
    quantite integer
);
    DROP TABLE public.inventaire;
       public         heap    postgres    false            Þ            1259    25160    objet    TABLE         CREATE TABLE public.objet (
    id bigint NOT NULL,
    nom character varying(50) NOT NULL,
    prix integer NOT NULL,
    type public."type-objet" NOT NULL
);
    DROP TABLE public.objet;
       public         heap    postgres    false    850            ß            1259    25163    pokemon    TABLE     ù   CREATE TABLE public.pokemon (
    id bigint NOT NULL,
    nom character varying(50) NOT NULL,
    niveau integer NOT NULL,
    experience integer,
    espece_id bigint NOT NULL,
    dresseur_id bigint,
    pv integer,
    pv_max integer NOT NULL
);
    DROP TABLE public.pokemon;
       public         heap    postgres    false            à            1259    25166    pokemon_attaque    TABLE     h   CREATE TABLE public.pokemon_attaque (
    pokemon_id bigint NOT NULL,
    attaque_id bigint NOT NULL
);
 #   DROP TABLE public.pokemon_attaque;
       public         heap    postgres    false            á            1259    25169    pokemon_id_seq    SEQUENCE     É   ALTER TABLE public.pokemon ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pokemon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            á          0    25145    attaque 
   TABLE DATA           8   COPY public.attaque (id, nom, type, degats) FROM stdin;
    public          postgres    false    215   1       å          0    25153    dresseur 
   TABLE DATA           J   COPY public.dresseur (id, pseudo, mot_de_passe, portefeuille) FROM stdin;
    public          postgres    false    219   +1       ã          0    25149    espece 
   TABLE DATA           P   COPY public.espece (id, nom, type, pv_initial, attaque_initiale_id) FROM stdin;
    public          postgres    false    217   H1       ç          0    25157 
   inventaire 
   TABLE DATA           E   COPY public.inventaire (dresseur_id, objet_id, quantite) FROM stdin;
    public          postgres    false    221   e1       è          0    25160    objet 
   TABLE DATA           4   COPY public.objet (id, nom, prix, type) FROM stdin;
    public          postgres    false    222   ‚1       é          0    25163    pokemon 
   TABLE DATA           b   COPY public.pokemon (id, nom, niveau, experience, espece_id, dresseur_id, pv, pv_max) FROM stdin;
    public          postgres    false    223   Ÿ1       ê          0    25166    pokemon_attaque 
   TABLE DATA           A   COPY public.pokemon_attaque (pokemon_id, attaque_id) FROM stdin;
    public          postgres    false    224   ¼1       ò           0    0    Attaque_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Attaque_id_seq"', 1, false);
          public          postgres    false    216            ó           0    0    Espece_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Espece_id_seq"', 1, false);
          public          postgres    false    218            ô           0    0    dresseur_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.dresseur_id_seq', 1, false);
          public          postgres    false    220            õ           0    0    pokemon_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pokemon_id_seq', 1, false);
          public          postgres    false    225            <           2606    25171    attaque attaque_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.attaque
    ADD CONSTRAINT attaque_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.attaque DROP CONSTRAINT attaque_pkey;
       public            postgres    false    215            @           2606    25173    dresseur dresseur_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.dresseur
    ADD CONSTRAINT dresseur_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.dresseur DROP CONSTRAINT dresseur_pkey;
       public            postgres    false    219            >           2606    25175    espece espece_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.espece
    ADD CONSTRAINT espece_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.espece DROP CONSTRAINT espece_pkey;
       public            postgres    false    217            D           2606    25177    inventaire inventaire_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.inventaire
    ADD CONSTRAINT inventaire_pkey PRIMARY KEY (dresseur_id, objet_id);
 D   ALTER TABLE ONLY public.inventaire DROP CONSTRAINT inventaire_pkey;
       public            postgres    false    221    221            F           2606    25179    objet objet_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.objet
    ADD CONSTRAINT objet_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.objet DROP CONSTRAINT objet_pkey;
       public            postgres    false    222            J           2606    25181 $   pokemon_attaque pokemon_attaque_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.pokemon_attaque
    ADD CONSTRAINT pokemon_attaque_pkey PRIMARY KEY (pokemon_id, attaque_id);
 N   ALTER TABLE ONLY public.pokemon_attaque DROP CONSTRAINT pokemon_attaque_pkey;
       public            postgres    false    224    224            H           2606    25183    pokemon pokemon_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_pkey;
       public            postgres    false    223            B           2606    25185    dresseur pseudo_unique 
   CONSTRAINT     S   ALTER TABLE ONLY public.dresseur
    ADD CONSTRAINT pseudo_unique UNIQUE (pseudo);
 @   ALTER TABLE ONLY public.dresseur DROP CONSTRAINT pseudo_unique;
       public            postgres    false    219            P           2606    25186    pokemon_attaque attaque_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.pokemon_attaque
    ADD CONSTRAINT attaque_id_fkey FOREIGN KEY (attaque_id) REFERENCES public.attaque(id) NOT VALID;
 I   ALTER TABLE ONLY public.pokemon_attaque DROP CONSTRAINT attaque_id_fkey;
       public          postgres    false    224    215    4668            K           2606    25238    espece attaque_initiale_id_fkey    FK CONSTRAINT     –   ALTER TABLE ONLY public.espece
    ADD CONSTRAINT attaque_initiale_id_fkey FOREIGN KEY (attaque_initiale_id) REFERENCES public.attaque(id) NOT VALID;
 I   ALTER TABLE ONLY public.espece DROP CONSTRAINT attaque_initiale_id_fkey;
       public          postgres    false    215    4668    217            N           2606    25196    pokemon dresseur_id_fkey    FK CONSTRAINT     ˆ   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT dresseur_id_fkey FOREIGN KEY (dresseur_id) REFERENCES public.dresseur(id) NOT VALID;
 B   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT dresseur_id_fkey;
       public          postgres    false    219    4672    223            L           2606    25201    inventaire dresseur_id_fkey    FK CONSTRAINT     ‹   ALTER TABLE ONLY public.inventaire
    ADD CONSTRAINT dresseur_id_fkey FOREIGN KEY (dresseur_id) REFERENCES public.dresseur(id) NOT VALID;
 E   ALTER TABLE ONLY public.inventaire DROP CONSTRAINT dresseur_id_fkey;
       public          postgres    false    221    4672    219            O           2606    25206    pokemon espece_id_fkey    FK CONSTRAINT     ‚   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT espece_id_fkey FOREIGN KEY (espece_id) REFERENCES public.espece(id) NOT VALID;
 @   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT espece_id_fkey;
       public          postgres    false    4670    223    217            M           2606    25211    inventaire objet_id_fkey    FK CONSTRAINT     ‚   ALTER TABLE ONLY public.inventaire
    ADD CONSTRAINT objet_id_fkey FOREIGN KEY (objet_id) REFERENCES public.objet(id) NOT VALID;
 B   ALTER TABLE ONLY public.inventaire DROP CONSTRAINT objet_id_fkey;
       public          postgres    false    4678    221    222            Q           2606    25216    pokemon_attaque pokemon_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.pokemon_attaque
    ADD CONSTRAINT pokemon_id_fkey FOREIGN KEY (pokemon_id) REFERENCES public.pokemon(id) NOT VALID;
 I   ALTER TABLE ONLY public.pokemon_attaque DROP CONSTRAINT pokemon_id_fkey;
       public          postgres    false    4680    224    223            á      xœ‹Ñãââ Å ©      å      xœ‹Ñãââ Å ©      ã      xœ‹Ñãââ Å ©      ç      xœ‹Ñãââ Å ©      è      xœ‹Ñãââ Å ©      é      xœ‹Ñãââ Å ©      ê      xœ‹Ñãââ Å ©     