PGDMP     *            	    
    x            rentair_tutorial #   12.4 (Ubuntu 12.4-0ubuntu0.20.04.1) #   12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    rentair_tutorial    DATABASE     �   CREATE DATABASE rentair_tutorial WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
     DROP DATABASE rentair_tutorial;
                postgres    false            �            1259    16387 	   employees    TABLE     �   CREATE TABLE public.employees (
    id bigint NOT NULL,
    lastname character varying(50),
    firstname character varying(50),
    contact character varying(15),
    email character varying(30),
    date_joined character varying(15)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16385    employees_id_seq    SEQUENCE     y   CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    203            �           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    202                       2604    16390    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    16387 	   employees 
   TABLE DATA           Y   COPY public.employees (id, lastname, firstname, contact, email, date_joined) FROM stdin;
    public          postgres    false    203   t       �           0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          postgres    false    202                       2606    16392    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    203            �   �   x�U�=�0����_R.i��v��.g1�k+X�_ ����k��t�v��W���%<�e��X�,`�F�-ZT��	���R"a_�V#�H]\�����>��A�~F������O��a\�������u��R/`P:l     