PGDMP                         y            nkc2    12.5    12.5 ?    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    230418    nkc2    DATABASE     ?   CREATE DATABASE nkc2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE nkc2;
                postgres    false            ?            1259    230759    adminlog    TABLE     ?   CREATE TABLE public.adminlog (
    id integer NOT NULL,
    loggedon timestamp without time zone,
    loggedby character varying,
    module character varying,
    activitydone character varying,
    activityid integer
);
    DROP TABLE public.adminlog;
       public         heap    postgres    false            ?            1259    230757    adminlog_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.adminlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.adminlog_id_seq;
       public          postgres    false    245            =           0    0    adminlog_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.adminlog_id_seq OWNED BY public.adminlog.id;
          public          postgres    false    244            ?            1259    230569    alarmconfiguration    TABLE     ?  CREATE TABLE public.alarmconfiguration (
    id integer NOT NULL,
    companylocation integer NOT NULL,
    assetcategory integer NOT NULL,
    asset integer NOT NULL,
    alertsubcategory character varying(255),
    alertlimittype character varying(255),
    configvalue integer,
    alarm character varying(255),
    severity character varying(255),
    createdon timestamp without time zone,
    status boolean
);
 &   DROP TABLE public.alarmconfiguration;
       public         heap    postgres    false            ?            1259    230567    alarmconfiguration_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.alarmconfiguration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.alarmconfiguration_id_seq;
       public          postgres    false    229            >           0    0    alarmconfiguration_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.alarmconfiguration_id_seq OWNED BY public.alarmconfiguration.id;
          public          postgres    false    228            ?            1259    230595    alert    TABLE     X  CREATE TABLE public.alert (
    id integer NOT NULL,
    assetcategory integer NOT NULL,
    asset integer NOT NULL,
    alertsubcategory character varying(255),
    alertlimittype character varying(255),
    trackvalue double precision,
    alarm character varying(255),
    alertstatus boolean,
    triggeredon timestamp without time zone
);
    DROP TABLE public.alert;
       public         heap    postgres    false            ?            1259    230593    alert_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.alert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.alert_id_seq;
       public          postgres    false    231            ?           0    0    alert_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.alert_id_seq OWNED BY public.alert.id;
          public          postgres    false    230            ?            1259    230519    asset    TABLE     ?   CREATE TABLE public.asset (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    assetcategory integer NOT NULL,
    companylocation integer NOT NULL,
    status boolean
);
    DROP TABLE public.asset;
       public         heap    postgres    false            ?            1259    230517    asset_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.asset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.asset_id_seq;
       public          postgres    false    223            @           0    0    asset_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.asset_id_seq OWNED BY public.asset.id;
          public          postgres    false    222            ?            1259    230556    asset_sensor_allocation    TABLE     |   CREATE TABLE public.asset_sensor_allocation (
    id integer NOT NULL,
    status boolean,
    asset_id integer NOT NULL
);
 +   DROP TABLE public.asset_sensor_allocation;
       public         heap    postgres    false            ?            1259    230554    asset_sensor_allocation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.asset_sensor_allocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.asset_sensor_allocation_id_seq;
       public          postgres    false    227            A           0    0    asset_sensor_allocation_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.asset_sensor_allocation_id_seq OWNED BY public.asset_sensor_allocation.id;
          public          postgres    false    226            ?            1259    230470    assetcategory    TABLE     ?   CREATE TABLE public.assetcategory (
    id integer NOT NULL,
    name character varying(255),
    keyvalue integer,
    status boolean
);
 !   DROP TABLE public.assetcategory;
       public         heap    postgres    false            ?            1259    230468    assetcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.assetcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.assetcategory_id_seq;
       public          postgres    false    213            B           0    0    assetcategory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.assetcategory_id_seq OWNED BY public.assetcategory.id;
          public          postgres    false    212            ?            1259    230508 	   checklist    TABLE     u  CREATE TABLE public.checklist (
    id integer NOT NULL,
    checkpart character varying(255),
    checkpoint character varying(255),
    checkpointstatus boolean,
    description character varying(255),
    standardvalue integer,
    status boolean,
    remark character varying(255),
    submittedon timestamp without time zone,
    submittedby character varying(255)
);
    DROP TABLE public.checklist;
       public         heap    postgres    false            ?            1259    230506    checklist_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.checklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.checklist_id_seq;
       public          postgres    false    221            C           0    0    checklist_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.checklist_id_seq OWNED BY public.checklist.id;
          public          postgres    false    220            ?            1259    230497    checklistmaster    TABLE     ;  CREATE TABLE public.checklistmaster (
    id integer NOT NULL,
    checkpart character varying(255),
    checkpoint character varying(255),
    description character varying(255),
    standardvalue integer,
    status boolean,
    createdon timestamp without time zone,
    updatedon timestamp without time zone
);
 #   DROP TABLE public.checklistmaster;
       public         heap    postgres    false            ?            1259    230495    checklistmaster_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.checklistmaster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.checklistmaster_id_seq;
       public          postgres    false    219            D           0    0    checklistmaster_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.checklistmaster_id_seq OWNED BY public.checklistmaster.id;
          public          postgres    false    218            ?            1259    230459    companylocation    TABLE     ?   CREATE TABLE public.companylocation (
    id integer NOT NULL,
    location character varying(255),
    productioncapacity integer,
    longitude character varying(255),
    latitude character varying(255),
    status boolean
);
 #   DROP TABLE public.companylocation;
       public         heap    postgres    false            ?            1259    230457    companylocation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.companylocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.companylocation_id_seq;
       public          postgres    false    211            E           0    0    companylocation_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.companylocation_id_seq OWNED BY public.companylocation.id;
          public          postgres    false    210            ?            1259    230448    dept    TABLE     w   CREATE TABLE public.dept (
    id integer NOT NULL,
    name character varying(255),
    des character varying(255)
);
    DROP TABLE public.dept;
       public         heap    postgres    false            ?            1259    230446    dept_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.dept_id_seq;
       public          postgres    false    209            F           0    0    dept_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.dept_id_seq OWNED BY public.dept.id;
          public          postgres    false    208            ?            1259    230489    durationtype    TABLE     ?   CREATE TABLE public.durationtype (
    id integer NOT NULL,
    durationtype character varying(255),
    lowlimit integer,
    highlimit integer,
    status boolean
);
     DROP TABLE public.durationtype;
       public         heap    postgres    false            ?            1259    230487    durationtype_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.durationtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.durationtype_id_seq;
       public          postgres    false    217            G           0    0    durationtype_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.durationtype_id_seq OWNED BY public.durationtype.id;
          public          postgres    false    216            ?            1259    230616    lossanalysis    TABLE     ?  CREATE TABLE public.lossanalysis (
    id integer NOT NULL,
    assetcategory integer NOT NULL,
    asset integer NOT NULL,
    losscategory integer NOT NULL,
    losssubcategory integer NOT NULL,
    shift integer NOT NULL,
    fromtime time without time zone,
    totime time without time zone,
    losstime integer,
    createdon timestamp without time zone,
    status boolean
);
     DROP TABLE public.lossanalysis;
       public         heap    postgres    false            ?            1259    230614    lossanalysis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.lossanalysis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.lossanalysis_id_seq;
       public          postgres    false    233            H           0    0    lossanalysis_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.lossanalysis_id_seq OWNED BY public.lossanalysis.id;
          public          postgres    false    232            ?            1259    230478    losscategory    TABLE     ?   CREATE TABLE public.losscategory (
    id integer NOT NULL,
    losscategory character varying(255),
    description character varying(255),
    status boolean
);
     DROP TABLE public.losscategory;
       public         heap    postgres    false            ?            1259    230476    losscategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.losscategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.losscategory_id_seq;
       public          postgres    false    215            I           0    0    losscategory_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.losscategory_id_seq OWNED BY public.losscategory.id;
          public          postgres    false    214            ?            1259    230540    losssubcategory    TABLE     ?   CREATE TABLE public.losssubcategory (
    id integer NOT NULL,
    losssubcategory character varying(255),
    description character varying(255),
    status boolean,
    losscategory integer NOT NULL
);
 #   DROP TABLE public.losssubcategory;
       public         heap    postgres    false            ?            1259    230538    losssubcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.losssubcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.losssubcategory_id_seq;
       public          postgres    false    225            J           0    0    losssubcategory_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.losssubcategory_id_seq OWNED BY public.losssubcategory.id;
          public          postgres    false    224            ?            1259    230672    preventivemaintenance    TABLE     ?  CREATE TABLE public.preventivemaintenance (
    id integer NOT NULL,
    assetcategory integer NOT NULL,
    asset integer NOT NULL,
    durationtype integer NOT NULL,
    durationvalue integer,
    allchecklistcompleted boolean,
    submittedyear integer,
    submittedon timestamp without time zone,
    submittedby character varying(255),
    isautosubmit boolean,
    assignedon timestamp without time zone,
    submittedbysupervisor character varying(255)
);
 )   DROP TABLE public.preventivemaintenance;
       public         heap    postgres    false            ?            1259    230732    preventivemaintenance_checklist    TABLE     ?   CREATE TABLE public.preventivemaintenance_checklist (
    id integer NOT NULL,
    preventivemaintenance integer NOT NULL,
    checklist integer NOT NULL
);
 3   DROP TABLE public.preventivemaintenance_checklist;
       public         heap    postgres    false            ?            1259    230730 &   preventivemaintenance_checklist_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.preventivemaintenance_checklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.preventivemaintenance_checklist_id_seq;
       public          postgres    false    243            K           0    0 &   preventivemaintenance_checklist_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.preventivemaintenance_checklist_id_seq OWNED BY public.preventivemaintenance_checklist.id;
          public          postgres    false    242            ?            1259    230670    preventivemaintenance_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.preventivemaintenance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.preventivemaintenance_id_seq;
       public          postgres    false    237            L           0    0    preventivemaintenance_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.preventivemaintenance_id_seq OWNED BY public.preventivemaintenance.id;
          public          postgres    false    236            ?            1259    230649    preventivemaintenancemaster    TABLE     L  CREATE TABLE public.preventivemaintenancemaster (
    id integer NOT NULL,
    assetcategory integer NOT NULL,
    asset integer NOT NULL,
    durationtype integer NOT NULL,
    durationvalue integer,
    uploadedby character varying(255),
    createdon timestamp without time zone,
    lastupdatedon timestamp without time zone
);
 /   DROP TABLE public.preventivemaintenancemaster;
       public         heap    postgres    false            ?            1259    230714 +   preventivemaintenancemaster_checklistmaster    TABLE     ?   CREATE TABLE public.preventivemaintenancemaster_checklistmaster (
    id integer NOT NULL,
    preventivemaintenancemaster integer NOT NULL,
    checklistmaster integer NOT NULL
);
 ?   DROP TABLE public.preventivemaintenancemaster_checklistmaster;
       public         heap    postgres    false            ?            1259    230712 2   preventivemaintenancemaster_checklistmaster_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.preventivemaintenancemaster_checklistmaster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.preventivemaintenancemaster_checklistmaster_id_seq;
       public          postgres    false    241            M           0    0 2   preventivemaintenancemaster_checklistmaster_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.preventivemaintenancemaster_checklistmaster_id_seq OWNED BY public.preventivemaintenancemaster_checklistmaster.id;
          public          postgres    false    240            ?            1259    230647 "   preventivemaintenancemaster_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.preventivemaintenancemaster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.preventivemaintenancemaster_id_seq;
       public          postgres    false    235            N           0    0 "   preventivemaintenancemaster_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.preventivemaintenancemaster_id_seq OWNED BY public.preventivemaintenancemaster.id;
          public          postgres    false    234            ?            1259    230440    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            ?            1259    230438    role_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    207            O           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    206            ?            1259    230698    sensor    TABLE     q  CREATE TABLE public.sensor (
    id integer NOT NULL,
    status boolean,
    name character varying(255),
    tag_name character varying(255),
    sensor_type character varying(255),
    additional_info character varying(255),
    battery_life integer,
    in_use boolean,
    model integer,
    asset_sensor_allocation_id integer,
    fw_version character varying
);
    DROP TABLE public.sensor;
       public         heap    postgres    false            ?            1259    230696    sensor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sensor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.sensor_id_seq;
       public          postgres    false    239            P           0    0    sensor_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.sensor_id_seq OWNED BY public.sensor.id;
          public          postgres    false    238            ?            1259    230786    sensoralerts    TABLE     &  CREATE TABLE public.sensoralerts (
    id integer NOT NULL,
    sensorid integer,
    alertname character varying(200),
    alertmsg character varying(200),
    alertval character varying(200),
    status boolean,
    severity character varying(200),
    created_on timestamp without time zone DEFAULT now(),
    property character varying(200),
    description character varying(200),
    remarks character varying(200),
    recommendation character varying(200),
    resolvedon timestamp without time zone,
    resolvedby character varying(200)
);
     DROP TABLE public.sensoralerts;
       public         heap    postgres    false            ?            1259    230784    sensoralerts_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sensoralerts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sensoralerts_id_seq;
       public          postgres    false    249            Q           0    0    sensoralerts_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sensoralerts_id_seq OWNED BY public.sensoralerts.id;
          public          postgres    false    248            ?            1259    230770    sensordetails    TABLE     m  CREATE TABLE public.sensordetails (
    id integer NOT NULL,
    alarm character varying(200),
    operator character varying(200),
    msg character varying(200),
    realtimeval character varying(200),
    thresholdvalue character varying(200),
    sensorid integer,
    property character varying(200),
    units character varying(200),
    type character varying(200),
    description character varying(200),
    propertyid character varying(200),
    propertytype character varying(200),
    lowrange character varying(200),
    midrange character varying(200),
    highrange character varying(200),
    lowop character varying(200),
    medop character varying(200),
    highop character varying(200),
    alertstatus character varying(200),
    alerttype character varying(200),
    sampleinterval character varying(200),
    asset integer,
    assetcategory integer
);
 !   DROP TABLE public.sensordetails;
       public         heap    postgres    false            ?            1259    230768    sensordetails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sensordetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sensordetails_id_seq;
       public          postgres    false    247            R           0    0    sensordetails_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sensordetails_id_seq OWNED BY public.sensordetails.id;
          public          postgres    false    246            ?            1259    230805 	   sensorval    TABLE       CREATE TABLE public.sensorval (
    id integer NOT NULL,
    sensorid integer,
    property character varying(200),
    units character varying(200),
    liveval character varying(200),
    created_on timestamp without time zone DEFAULT now(),
    propertyid integer
);
    DROP TABLE public.sensorval;
       public         heap    postgres    false            ?            1259    230803    sensorval_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sensorval_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sensorval_id_seq;
       public          postgres    false    251            S           0    0    sensorval_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sensorval_id_seq OWNED BY public.sensorval.id;
          public          postgres    false    250            ?            1259    230421    shift    TABLE     ?   CREATE TABLE public.shift (
    id integer NOT NULL,
    name character varying(255),
    starttime time without time zone,
    endtime time without time zone,
    status boolean,
    "plantId" integer
);
    DROP TABLE public.shift;
       public         heap    postgres    false            ?            1259    230419    shift_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.shift_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.shift_id_seq;
       public          postgres    false    203            T           0    0    shift_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.shift_id_seq OWNED BY public.shift.id;
          public          postgres    false    202            ?            1259    230429    user    TABLE     W  CREATE TABLE public."user" (
    id integer NOT NULL,
    status boolean,
    first_name character varying(255),
    last_name character varying(255),
    middle_name character varying(255),
    password character varying(255),
    username character varying(255),
    company_location_id integer,
    plant_id integer,
    role_id integer
);
    DROP TABLE public."user";
       public         heap    postgres    false            ?            1259    230427    user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    205            U           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    204            4           2604    230762    adminlog id    DEFAULT     j   ALTER TABLE ONLY public.adminlog ALTER COLUMN id SET DEFAULT nextval('public.adminlog_id_seq'::regclass);
 :   ALTER TABLE public.adminlog ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            ,           2604    230572    alarmconfiguration id    DEFAULT     ~   ALTER TABLE ONLY public.alarmconfiguration ALTER COLUMN id SET DEFAULT nextval('public.alarmconfiguration_id_seq'::regclass);
 D   ALTER TABLE public.alarmconfiguration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            -           2604    230598    alert id    DEFAULT     d   ALTER TABLE ONLY public.alert ALTER COLUMN id SET DEFAULT nextval('public.alert_id_seq'::regclass);
 7   ALTER TABLE public.alert ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            )           2604    230522    asset id    DEFAULT     d   ALTER TABLE ONLY public.asset ALTER COLUMN id SET DEFAULT nextval('public.asset_id_seq'::regclass);
 7   ALTER TABLE public.asset ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            +           2604    230559    asset_sensor_allocation id    DEFAULT     ?   ALTER TABLE ONLY public.asset_sensor_allocation ALTER COLUMN id SET DEFAULT nextval('public.asset_sensor_allocation_id_seq'::regclass);
 I   ALTER TABLE public.asset_sensor_allocation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            $           2604    230473    assetcategory id    DEFAULT     t   ALTER TABLE ONLY public.assetcategory ALTER COLUMN id SET DEFAULT nextval('public.assetcategory_id_seq'::regclass);
 ?   ALTER TABLE public.assetcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            (           2604    230511    checklist id    DEFAULT     l   ALTER TABLE ONLY public.checklist ALTER COLUMN id SET DEFAULT nextval('public.checklist_id_seq'::regclass);
 ;   ALTER TABLE public.checklist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            '           2604    230500    checklistmaster id    DEFAULT     x   ALTER TABLE ONLY public.checklistmaster ALTER COLUMN id SET DEFAULT nextval('public.checklistmaster_id_seq'::regclass);
 A   ALTER TABLE public.checklistmaster ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            #           2604    230462    companylocation id    DEFAULT     x   ALTER TABLE ONLY public.companylocation ALTER COLUMN id SET DEFAULT nextval('public.companylocation_id_seq'::regclass);
 A   ALTER TABLE public.companylocation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            "           2604    230451    dept id    DEFAULT     b   ALTER TABLE ONLY public.dept ALTER COLUMN id SET DEFAULT nextval('public.dept_id_seq'::regclass);
 6   ALTER TABLE public.dept ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            &           2604    230492    durationtype id    DEFAULT     r   ALTER TABLE ONLY public.durationtype ALTER COLUMN id SET DEFAULT nextval('public.durationtype_id_seq'::regclass);
 >   ALTER TABLE public.durationtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            .           2604    230619    lossanalysis id    DEFAULT     r   ALTER TABLE ONLY public.lossanalysis ALTER COLUMN id SET DEFAULT nextval('public.lossanalysis_id_seq'::regclass);
 >   ALTER TABLE public.lossanalysis ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            %           2604    230481    losscategory id    DEFAULT     r   ALTER TABLE ONLY public.losscategory ALTER COLUMN id SET DEFAULT nextval('public.losscategory_id_seq'::regclass);
 >   ALTER TABLE public.losscategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            *           2604    230543    losssubcategory id    DEFAULT     x   ALTER TABLE ONLY public.losssubcategory ALTER COLUMN id SET DEFAULT nextval('public.losssubcategory_id_seq'::regclass);
 A   ALTER TABLE public.losssubcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            0           2604    230675    preventivemaintenance id    DEFAULT     ?   ALTER TABLE ONLY public.preventivemaintenance ALTER COLUMN id SET DEFAULT nextval('public.preventivemaintenance_id_seq'::regclass);
 G   ALTER TABLE public.preventivemaintenance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            3           2604    230735 "   preventivemaintenance_checklist id    DEFAULT     ?   ALTER TABLE ONLY public.preventivemaintenance_checklist ALTER COLUMN id SET DEFAULT nextval('public.preventivemaintenance_checklist_id_seq'::regclass);
 Q   ALTER TABLE public.preventivemaintenance_checklist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            /           2604    230652    preventivemaintenancemaster id    DEFAULT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster ALTER COLUMN id SET DEFAULT nextval('public.preventivemaintenancemaster_id_seq'::regclass);
 M   ALTER TABLE public.preventivemaintenancemaster ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            2           2604    230717 .   preventivemaintenancemaster_checklistmaster id    DEFAULT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster_checklistmaster ALTER COLUMN id SET DEFAULT nextval('public.preventivemaintenancemaster_checklistmaster_id_seq'::regclass);
 ]   ALTER TABLE public.preventivemaintenancemaster_checklistmaster ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            !           2604    230443    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            1           2604    230701 	   sensor id    DEFAULT     f   ALTER TABLE ONLY public.sensor ALTER COLUMN id SET DEFAULT nextval('public.sensor_id_seq'::regclass);
 8   ALTER TABLE public.sensor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            6           2604    230789    sensoralerts id    DEFAULT     r   ALTER TABLE ONLY public.sensoralerts ALTER COLUMN id SET DEFAULT nextval('public.sensoralerts_id_seq'::regclass);
 >   ALTER TABLE public.sensoralerts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            5           2604    230773    sensordetails id    DEFAULT     t   ALTER TABLE ONLY public.sensordetails ALTER COLUMN id SET DEFAULT nextval('public.sensordetails_id_seq'::regclass);
 ?   ALTER TABLE public.sensordetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            8           2604    230808    sensorval id    DEFAULT     l   ALTER TABLE ONLY public.sensorval ALTER COLUMN id SET DEFAULT nextval('public.sensorval_id_seq'::regclass);
 ;   ALTER TABLE public.sensorval ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    251    251                       2604    230424    shift id    DEFAULT     d   ALTER TABLE ONLY public.shift ALTER COLUMN id SET DEFAULT nextval('public.shift_id_seq'::regclass);
 7   ALTER TABLE public.shift ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                        2604    230432    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            0          0    230759    adminlog 
   TABLE DATA           \   COPY public.adminlog (id, loggedon, loggedby, module, activitydone, activityid) FROM stdin;
    public          postgres    false    245   ?                 0    230569    alarmconfiguration 
   TABLE DATA           ?   COPY public.alarmconfiguration (id, companylocation, assetcategory, asset, alertsubcategory, alertlimittype, configvalue, alarm, severity, createdon, status) FROM stdin;
    public          postgres    false    229   ?      "          0    230595    alert 
   TABLE DATA           ?   COPY public.alert (id, assetcategory, asset, alertsubcategory, alertlimittype, trackvalue, alarm, alertstatus, triggeredon) FROM stdin;
    public          postgres    false    231                   0    230519    asset 
   TABLE DATA           ^   COPY public.asset (id, name, description, assetcategory, companylocation, status) FROM stdin;
    public          postgres    false    223   !                0    230556    asset_sensor_allocation 
   TABLE DATA           G   COPY public.asset_sensor_allocation (id, status, asset_id) FROM stdin;
    public          postgres    false    227   ?                0    230470    assetcategory 
   TABLE DATA           C   COPY public.assetcategory (id, name, keyvalue, status) FROM stdin;
    public          postgres    false    213   y                0    230508 	   checklist 
   TABLE DATA           ?   COPY public.checklist (id, checkpart, checkpoint, checkpointstatus, description, standardvalue, status, remark, submittedon, submittedby) FROM stdin;
    public          postgres    false    221   ?                0    230497    checklistmaster 
   TABLE DATA           ~   COPY public.checklistmaster (id, checkpart, checkpoint, description, standardvalue, status, createdon, updatedon) FROM stdin;
    public          postgres    false    219   	                0    230459    companylocation 
   TABLE DATA           h   COPY public.companylocation (id, location, productioncapacity, longitude, latitude, status) FROM stdin;
    public          postgres    false    211   ?                0    230448    dept 
   TABLE DATA           -   COPY public.dept (id, name, des) FROM stdin;
    public          postgres    false    209   L                0    230489    durationtype 
   TABLE DATA           U   COPY public.durationtype (id, durationtype, lowlimit, highlimit, status) FROM stdin;
    public          postgres    false    217   i      $          0    230616    lossanalysis 
   TABLE DATA           ?   COPY public.lossanalysis (id, assetcategory, asset, losscategory, losssubcategory, shift, fromtime, totime, losstime, createdon, status) FROM stdin;
    public          postgres    false    233   ?                0    230478    losscategory 
   TABLE DATA           M   COPY public.losscategory (id, losscategory, description, status) FROM stdin;
    public          postgres    false    215                   0    230540    losssubcategory 
   TABLE DATA           a   COPY public.losssubcategory (id, losssubcategory, description, status, losscategory) FROM stdin;
    public          postgres    false    225   ?      (          0    230672    preventivemaintenance 
   TABLE DATA           ?   COPY public.preventivemaintenance (id, assetcategory, asset, durationtype, durationvalue, allchecklistcompleted, submittedyear, submittedon, submittedby, isautosubmit, assignedon, submittedbysupervisor) FROM stdin;
    public          postgres    false    237   D       .          0    230732    preventivemaintenance_checklist 
   TABLE DATA           _   COPY public.preventivemaintenance_checklist (id, preventivemaintenance, checklist) FROM stdin;
    public          postgres    false    243   !      &          0    230649    preventivemaintenancemaster 
   TABLE DATA           ?   COPY public.preventivemaintenancemaster (id, assetcategory, asset, durationtype, durationvalue, uploadedby, createdon, lastupdatedon) FROM stdin;
    public          postgres    false    235   ?!      ,          0    230714 +   preventivemaintenancemaster_checklistmaster 
   TABLE DATA           w   COPY public.preventivemaintenancemaster_checklistmaster (id, preventivemaintenancemaster, checklistmaster) FROM stdin;
    public          postgres    false    241   ?"      
          0    230440    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    207   #      *          0    230698    sensor 
   TABLE DATA           ?   COPY public.sensor (id, status, name, tag_name, sensor_type, additional_info, battery_life, in_use, model, asset_sensor_allocation_id, fw_version) FROM stdin;
    public          postgres    false    239   4#      4          0    230786    sensoralerts 
   TABLE DATA           ?   COPY public.sensoralerts (id, sensorid, alertname, alertmsg, alertval, status, severity, created_on, property, description, remarks, recommendation, resolvedon, resolvedby) FROM stdin;
    public          postgres    false    249   z$      2          0    230770    sensordetails 
   TABLE DATA             COPY public.sensordetails (id, alarm, operator, msg, realtimeval, thresholdvalue, sensorid, property, units, type, description, propertyid, propertytype, lowrange, midrange, highrange, lowop, medop, highop, alertstatus, alerttype, sampleinterval, asset, assetcategory) FROM stdin;
    public          postgres    false    247   ?$      6          0    230805 	   sensorval 
   TABLE DATA           c   COPY public.sensorval (id, sensorid, property, units, liveval, created_on, propertyid) FROM stdin;
    public          postgres    false    251   ?%                0    230421    shift 
   TABLE DATA           P   COPY public.shift (id, name, starttime, endtime, status, "plantId") FROM stdin;
    public          postgres    false    203   &                0    230429    user 
   TABLE DATA           ?   COPY public."user" (id, status, first_name, last_name, middle_name, password, username, company_location_id, plant_id, role_id) FROM stdin;
    public          postgres    false    205   ?&      V           0    0    adminlog_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.adminlog_id_seq', 190, true);
          public          postgres    false    244            W           0    0    alarmconfiguration_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.alarmconfiguration_id_seq', 1, false);
          public          postgres    false    228            X           0    0    alert_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.alert_id_seq', 1, false);
          public          postgres    false    230            Y           0    0    asset_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.asset_id_seq', 20, true);
          public          postgres    false    222            Z           0    0    asset_sensor_allocation_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.asset_sensor_allocation_id_seq', 43, true);
          public          postgres    false    226            [           0    0    assetcategory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.assetcategory_id_seq', 15, true);
          public          postgres    false    212            \           0    0    checklist_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.checklist_id_seq', 46, true);
          public          postgres    false    220            ]           0    0    checklistmaster_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.checklistmaster_id_seq', 21, true);
          public          postgres    false    218            ^           0    0    companylocation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.companylocation_id_seq', 31, true);
          public          postgres    false    210            _           0    0    dept_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.dept_id_seq', 1, false);
          public          postgres    false    208            `           0    0    durationtype_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.durationtype_id_seq', 1, false);
          public          postgres    false    216            a           0    0    lossanalysis_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.lossanalysis_id_seq', 14, true);
          public          postgres    false    232            b           0    0    losscategory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.losscategory_id_seq', 20, true);
          public          postgres    false    214            c           0    0    losssubcategory_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.losssubcategory_id_seq', 11, true);
          public          postgres    false    224            d           0    0 &   preventivemaintenance_checklist_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.preventivemaintenance_checklist_id_seq', 44, true);
          public          postgres    false    242            e           0    0    preventivemaintenance_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.preventivemaintenance_id_seq', 19, true);
          public          postgres    false    236            f           0    0 2   preventivemaintenancemaster_checklistmaster_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.preventivemaintenancemaster_checklistmaster_id_seq', 21, true);
          public          postgres    false    240            g           0    0 "   preventivemaintenancemaster_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.preventivemaintenancemaster_id_seq', 8, true);
          public          postgres    false    234            h           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
          public          postgres    false    206            i           0    0    sensor_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.sensor_id_seq', 23, true);
          public          postgres    false    238            j           0    0    sensoralerts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sensoralerts_id_seq', 1, true);
          public          postgres    false    248            k           0    0    sensordetails_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sensordetails_id_seq', 17, true);
          public          postgres    false    246            l           0    0    sensorval_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sensorval_id_seq', 3, true);
          public          postgres    false    250            m           0    0    shift_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.shift_id_seq', 16, true);
          public          postgres    false    202            n           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 24, true);
          public          postgres    false    204            e           2606    230767    adminlog adminlog_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.adminlog
    ADD CONSTRAINT adminlog_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.adminlog DROP CONSTRAINT adminlog_pkey;
       public            postgres    false    245            U           2606    230577 *   alarmconfiguration alarmconfiguration_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.alarmconfiguration
    ADD CONSTRAINT alarmconfiguration_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.alarmconfiguration DROP CONSTRAINT alarmconfiguration_pkey;
       public            postgres    false    229            W           2606    230603    alert alert_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_pkey;
       public            postgres    false    231            O           2606    230527    asset asset_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_pkey;
       public            postgres    false    223            S           2606    230561 4   asset_sensor_allocation asset_sensor_allocation_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.asset_sensor_allocation
    ADD CONSTRAINT asset_sensor_allocation_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.asset_sensor_allocation DROP CONSTRAINT asset_sensor_allocation_pkey;
       public            postgres    false    227            E           2606    230475     assetcategory assetcategory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.assetcategory
    ADD CONSTRAINT assetcategory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.assetcategory DROP CONSTRAINT assetcategory_pkey;
       public            postgres    false    213            M           2606    230516    checklist checklist_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.checklist
    ADD CONSTRAINT checklist_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.checklist DROP CONSTRAINT checklist_pkey;
       public            postgres    false    221            K           2606    230505 $   checklistmaster checklistmaster_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.checklistmaster
    ADD CONSTRAINT checklistmaster_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.checklistmaster DROP CONSTRAINT checklistmaster_pkey;
       public            postgres    false    219            C           2606    230467 $   companylocation companylocation_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.companylocation
    ADD CONSTRAINT companylocation_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.companylocation DROP CONSTRAINT companylocation_pkey;
       public            postgres    false    211            A           2606    230456    dept dept_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.dept DROP CONSTRAINT dept_pkey;
       public            postgres    false    209            I           2606    230494    durationtype durationtype_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.durationtype
    ADD CONSTRAINT durationtype_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.durationtype DROP CONSTRAINT durationtype_pkey;
       public            postgres    false    217            Y           2606    230621    lossanalysis lossanalysis_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lossanalysis
    ADD CONSTRAINT lossanalysis_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.lossanalysis DROP CONSTRAINT lossanalysis_pkey;
       public            postgres    false    233            G           2606    230486    losscategory losscategory_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.losscategory
    ADD CONSTRAINT losscategory_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.losscategory DROP CONSTRAINT losscategory_pkey;
       public            postgres    false    215            Q           2606    230548 $   losssubcategory losssubcategory_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.losssubcategory
    ADD CONSTRAINT losssubcategory_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.losssubcategory DROP CONSTRAINT losssubcategory_pkey;
       public            postgres    false    225            c           2606    230737 D   preventivemaintenance_checklist preventivemaintenance_checklist_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenance_checklist
    ADD CONSTRAINT preventivemaintenance_checklist_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.preventivemaintenance_checklist DROP CONSTRAINT preventivemaintenance_checklist_pkey;
       public            postgres    false    243            ]           2606    230680 0   preventivemaintenance preventivemaintenance_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.preventivemaintenance
    ADD CONSTRAINT preventivemaintenance_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.preventivemaintenance DROP CONSTRAINT preventivemaintenance_pkey;
       public            postgres    false    237            a           2606    230719 \   preventivemaintenancemaster_checklistmaster preventivemaintenancemaster_checklistmaster_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster_checklistmaster
    ADD CONSTRAINT preventivemaintenancemaster_checklistmaster_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.preventivemaintenancemaster_checklistmaster DROP CONSTRAINT preventivemaintenancemaster_checklistmaster_pkey;
       public            postgres    false    241            [           2606    230654 <   preventivemaintenancemaster preventivemaintenancemaster_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.preventivemaintenancemaster
    ADD CONSTRAINT preventivemaintenancemaster_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.preventivemaintenancemaster DROP CONSTRAINT preventivemaintenancemaster_pkey;
       public            postgres    false    235            ?           2606    230445    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    207            _           2606    230706    sensor sensor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.sensor
    ADD CONSTRAINT sensor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.sensor DROP CONSTRAINT sensor_pkey;
       public            postgres    false    239            i           2606    230795    sensoralerts sensoralerts_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sensoralerts
    ADD CONSTRAINT sensoralerts_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sensoralerts DROP CONSTRAINT sensoralerts_pkey;
       public            postgres    false    249            g           2606    230778     sensordetails sensordetails_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sensordetails
    ADD CONSTRAINT sensordetails_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sensordetails DROP CONSTRAINT sensordetails_pkey;
       public            postgres    false    247            k           2606    230814    sensorval sensorval_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.sensorval
    ADD CONSTRAINT sensorval_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.sensorval DROP CONSTRAINT sensorval_pkey;
       public            postgres    false    251            ;           2606    230426    shift shift_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.shift
    ADD CONSTRAINT shift_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.shift DROP CONSTRAINT shift_pkey;
       public            postgres    false    203            =           2606    230437    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    205            r           2606    230588 0   alarmconfiguration alarmconfiguration_asset_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.alarmconfiguration
    ADD CONSTRAINT alarmconfiguration_asset_fkey FOREIGN KEY (asset) REFERENCES public.asset(id);
 Z   ALTER TABLE ONLY public.alarmconfiguration DROP CONSTRAINT alarmconfiguration_asset_fkey;
       public          postgres    false    223    2895    229            q           2606    230583 8   alarmconfiguration alarmconfiguration_assetcategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.alarmconfiguration
    ADD CONSTRAINT alarmconfiguration_assetcategory_fkey FOREIGN KEY (assetcategory) REFERENCES public.assetcategory(id);
 b   ALTER TABLE ONLY public.alarmconfiguration DROP CONSTRAINT alarmconfiguration_assetcategory_fkey;
       public          postgres    false    229    213    2885            p           2606    230578 :   alarmconfiguration alarmconfiguration_companylocation_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.alarmconfiguration
    ADD CONSTRAINT alarmconfiguration_companylocation_fkey FOREIGN KEY (companylocation) REFERENCES public.companylocation(id);
 d   ALTER TABLE ONLY public.alarmconfiguration DROP CONSTRAINT alarmconfiguration_companylocation_fkey;
       public          postgres    false    211    229    2883            t           2606    230609    alert alert_asset_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_asset_fkey FOREIGN KEY (asset) REFERENCES public.asset(id);
 @   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_asset_fkey;
       public          postgres    false    231    2895    223            s           2606    230604    alert alert_assetcategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_assetcategory_fkey FOREIGN KEY (assetcategory) REFERENCES public.assetcategory(id);
 H   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_assetcategory_fkey;
       public          postgres    false    231    2885    213            l           2606    230528    asset asset_assetcategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_assetcategory_fkey FOREIGN KEY (assetcategory) REFERENCES public.assetcategory(id);
 H   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_assetcategory_fkey;
       public          postgres    false    223    213    2885            m           2606    230533     asset asset_companylocation_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_companylocation_fkey FOREIGN KEY (companylocation) REFERENCES public.companylocation(id);
 J   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_companylocation_fkey;
       public          postgres    false    2883    223    211            o           2606    230562 =   asset_sensor_allocation asset_sensor_allocation_asset_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asset_sensor_allocation
    ADD CONSTRAINT asset_sensor_allocation_asset_id_fkey FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 g   ALTER TABLE ONLY public.asset_sensor_allocation DROP CONSTRAINT asset_sensor_allocation_asset_id_fkey;
       public          postgres    false    227    2895    223            v           2606    230627 $   lossanalysis lossanalysis_asset_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lossanalysis
    ADD CONSTRAINT lossanalysis_asset_fkey FOREIGN KEY (asset) REFERENCES public.asset(id);
 N   ALTER TABLE ONLY public.lossanalysis DROP CONSTRAINT lossanalysis_asset_fkey;
       public          postgres    false    2895    223    233            u           2606    230622 ,   lossanalysis lossanalysis_assetcategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lossanalysis
    ADD CONSTRAINT lossanalysis_assetcategory_fkey FOREIGN KEY (assetcategory) REFERENCES public.assetcategory(id);
 V   ALTER TABLE ONLY public.lossanalysis DROP CONSTRAINT lossanalysis_assetcategory_fkey;
       public          postgres    false    233    213    2885            w           2606    230632 +   lossanalysis lossanalysis_losscategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lossanalysis
    ADD CONSTRAINT lossanalysis_losscategory_fkey FOREIGN KEY (losscategory) REFERENCES public.losscategory(id);
 U   ALTER TABLE ONLY public.lossanalysis DROP CONSTRAINT lossanalysis_losscategory_fkey;
       public          postgres    false    2887    233    215            x           2606    230637 .   lossanalysis lossanalysis_losssubcategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lossanalysis
    ADD CONSTRAINT lossanalysis_losssubcategory_fkey FOREIGN KEY (losssubcategory) REFERENCES public.losssubcategory(id);
 X   ALTER TABLE ONLY public.lossanalysis DROP CONSTRAINT lossanalysis_losssubcategory_fkey;
       public          postgres    false    2897    233    225            y           2606    230642 $   lossanalysis lossanalysis_shift_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lossanalysis
    ADD CONSTRAINT lossanalysis_shift_fkey FOREIGN KEY (shift) REFERENCES public.shift(id);
 N   ALTER TABLE ONLY public.lossanalysis DROP CONSTRAINT lossanalysis_shift_fkey;
       public          postgres    false    2875    233    203            n           2606    230549 1   losssubcategory losssubcategory_losscategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.losssubcategory
    ADD CONSTRAINT losssubcategory_losscategory_fkey FOREIGN KEY (losscategory) REFERENCES public.losscategory(id);
 [   ALTER TABLE ONLY public.losssubcategory DROP CONSTRAINT losssubcategory_losscategory_fkey;
       public          postgres    false    225    2887    215            ~           2606    230686 6   preventivemaintenance preventivemaintenance_asset_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenance
    ADD CONSTRAINT preventivemaintenance_asset_fkey FOREIGN KEY (asset) REFERENCES public.asset(id);
 `   ALTER TABLE ONLY public.preventivemaintenance DROP CONSTRAINT preventivemaintenance_asset_fkey;
       public          postgres    false    237    2895    223            }           2606    230681 >   preventivemaintenance preventivemaintenance_assetcategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenance
    ADD CONSTRAINT preventivemaintenance_assetcategory_fkey FOREIGN KEY (assetcategory) REFERENCES public.assetcategory(id);
 h   ALTER TABLE ONLY public.preventivemaintenance DROP CONSTRAINT preventivemaintenance_assetcategory_fkey;
       public          postgres    false    213    237    2885            ?           2606    230743 N   preventivemaintenance_checklist preventivemaintenance_checklist_checklist_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenance_checklist
    ADD CONSTRAINT preventivemaintenance_checklist_checklist_fkey FOREIGN KEY (checklist) REFERENCES public.checklist(id);
 x   ALTER TABLE ONLY public.preventivemaintenance_checklist DROP CONSTRAINT preventivemaintenance_checklist_checklist_fkey;
       public          postgres    false    243    2893    221            ?           2606    230738 Z   preventivemaintenance_checklist preventivemaintenance_checklist_preventivemaintenance_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenance_checklist
    ADD CONSTRAINT preventivemaintenance_checklist_preventivemaintenance_fkey FOREIGN KEY (preventivemaintenance) REFERENCES public.preventivemaintenance(id);
 ?   ALTER TABLE ONLY public.preventivemaintenance_checklist DROP CONSTRAINT preventivemaintenance_checklist_preventivemaintenance_fkey;
       public          postgres    false    2909    237    243                       2606    230691 =   preventivemaintenance preventivemaintenance_durationtype_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenance
    ADD CONSTRAINT preventivemaintenance_durationtype_fkey FOREIGN KEY (durationtype) REFERENCES public.durationtype(id);
 g   ALTER TABLE ONLY public.preventivemaintenance DROP CONSTRAINT preventivemaintenance_durationtype_fkey;
       public          postgres    false    237    2889    217            {           2606    230660 B   preventivemaintenancemaster preventivemaintenancemaster_asset_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster
    ADD CONSTRAINT preventivemaintenancemaster_asset_fkey FOREIGN KEY (asset) REFERENCES public.asset(id);
 l   ALTER TABLE ONLY public.preventivemaintenancemaster DROP CONSTRAINT preventivemaintenancemaster_asset_fkey;
       public          postgres    false    223    2895    235            z           2606    230655 J   preventivemaintenancemaster preventivemaintenancemaster_assetcategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster
    ADD CONSTRAINT preventivemaintenancemaster_assetcategory_fkey FOREIGN KEY (assetcategory) REFERENCES public.assetcategory(id);
 t   ALTER TABLE ONLY public.preventivemaintenancemaster DROP CONSTRAINT preventivemaintenancemaster_assetcategory_fkey;
       public          postgres    false    235    213    2885            ?           2606    230720 k   preventivemaintenancemaster_checklistmaster preventivemaintenancemaster_ch_preventivemaintenancemaster_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster_checklistmaster
    ADD CONSTRAINT preventivemaintenancemaster_ch_preventivemaintenancemaster_fkey FOREIGN KEY (preventivemaintenancemaster) REFERENCES public.preventivemaintenancemaster(id);
 ?   ALTER TABLE ONLY public.preventivemaintenancemaster_checklistmaster DROP CONSTRAINT preventivemaintenancemaster_ch_preventivemaintenancemaster_fkey;
       public          postgres    false    2907    241    235            ?           2606    230725 k   preventivemaintenancemaster_checklistmaster preventivemaintenancemaster_checklistmaste_checklistmaster_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster_checklistmaster
    ADD CONSTRAINT preventivemaintenancemaster_checklistmaste_checklistmaster_fkey FOREIGN KEY (checklistmaster) REFERENCES public.checklistmaster(id);
 ?   ALTER TABLE ONLY public.preventivemaintenancemaster_checklistmaster DROP CONSTRAINT preventivemaintenancemaster_checklistmaste_checklistmaster_fkey;
       public          postgres    false    219    241    2891            |           2606    230665 I   preventivemaintenancemaster preventivemaintenancemaster_durationtype_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivemaintenancemaster
    ADD CONSTRAINT preventivemaintenancemaster_durationtype_fkey FOREIGN KEY (durationtype) REFERENCES public.durationtype(id);
 s   ALTER TABLE ONLY public.preventivemaintenancemaster DROP CONSTRAINT preventivemaintenancemaster_durationtype_fkey;
       public          postgres    false    235    217    2889            ?           2606    230707 -   sensor sensor_asset_sensor_allocation_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sensor
    ADD CONSTRAINT sensor_asset_sensor_allocation_id_fkey FOREIGN KEY (asset_sensor_allocation_id) REFERENCES public.asset_sensor_allocation(id);
 W   ALTER TABLE ONLY public.sensor DROP CONSTRAINT sensor_asset_sensor_allocation_id_fkey;
       public          postgres    false    239    227    2899            ?           2606    230796 '   sensoralerts sensoralerts_sensorid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sensoralerts
    ADD CONSTRAINT sensoralerts_sensorid_fkey FOREIGN KEY (sensorid) REFERENCES public.sensor(id);
 Q   ALTER TABLE ONLY public.sensoralerts DROP CONSTRAINT sensoralerts_sensorid_fkey;
       public          postgres    false    239    2911    249            ?           2606    230815 !   sensorval sensorval_sensorid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sensorval
    ADD CONSTRAINT sensorval_sensorid_fkey FOREIGN KEY (sensorid) REFERENCES public.sensor(id);
 K   ALTER TABLE ONLY public.sensorval DROP CONSTRAINT sensorval_sensorid_fkey;
       public          postgres    false    239    251    2911            0   Q  x??Z?n$?=??˞? J$%?)?\?5g??k??'{6????????T]??~?$??|??)&?9???R>
??*??????????zx|y9?~???????B?B?C?Ǥǔ???>=~?????_?>>}?~??????????!_??@?H|?2)gm?O/?O/Oߟ?8}??c????/??Oߞ?Hr`O"G?iT??O??V??6q)Y'.?J>|???????????_?8?????.?Pǒ????Sc?çg???y{??c!:?T?@????BBu"ǘ?D??8?a<???M>?)??j.I?==?%N??I?g?D?FmS?X??sl??<<??X????t)P??R?$?X˟?㞎m?????,$G%q???T?~!???cb(Ac?H?Q	T<?U'?\?~??'????D??y????94????Z?%$/n????T3? ?kchSD??Z/???e?L?D;?{??)1?ϛ!?h-y?2Y4J??Ǆ??x??֤i??7?u?Gf+=??h?ݓ4??V+V`%?H?Q7XH??pNS??Vgn?)??<^LY?@XmO!??N?j????O!S???-7+l;?r??\???J?xX????Q	????%d???_??K??k???)M?%??????ǧ2??U?ϯ???O???P????[ȝ??1?)? -v?)????Xal-?}?$
?鯘?AcD?ڃ?????Ţ7d??58????e*??<?Q??/??
?`͒6V??7?80??p???9.? ,?d?%???&r?E}>}9??SWٌm?)G????巧????x???)6b??=p?`??'A?֗??n?T?_4?4Uh?J??????W????=>=????9?#H?\l!H?(~?+!ϥֲk?H??đ<U??J%??!.	?E??H?qi?\?`??????υJR!?Vz	ܢ?AB.1"??)TG0 ?k??h?RVXB:?5????????-????O???c????? ?OB??5?XI??68???_?}?d[J?6?+U?[???MW?#?܏?_*z~?c?EAsς9??ؤ???b+?s??Ֆd???㽂?x?t$?$??7O"?V??Ytc???x?X???\?/???A???F?U?6H???ի?nl
ūO?z<<ⵖ>]?? ?<%?:H????P_??F??­? ??f??)١??gMRk/?U??P?c?f?B;`?`X??U?|??r????z(\B?T ?1??a`??f??&?~?h/>[C?Z,CkC??s^@[(?AQ?1ykI?ȣ?{(?b??!??W?F+?P?)5??2??5???M?? ?A6?W??ˤ?<?^???x?!?P??
,?zUX?&?r\C???cA?捀]?????oL?Ϥ?C]K?Y?*c?#I;ό]7?k?Tn??7??=|?f?Q???????D??g??A?<4alC???ebj+??\?`Q?B?7?)4??9ڰ?[_?NM<8?w?`V?2??F?ԣyNjB?l??Q?[?I??K?L??I??IĲM"??J?M??M?Z%?N?????fM????ehrh?>??)??N7?<X??ϴ?۶??2???"[?-?p?????? ?"?u???Aы?z\??C???l!??b?bQˊy?_?
m??*??j*????܏?? _??4???~?<?a???*?ߟ??:??@?^?b??????<}	?|fiV????*?????,:|Z᱇d1@l?}??g??????Q>w?_?g???#??&-?߽⽏1?|??p???\???@?@?=???6??\?s???d!滸.?C?W?w?:1???UW???A}???,ap-_Uf.{̰u%??M.OTAD=Ԭ?r??.???ҵU??y?4?As??<?Tm?Y??*?*?e?{j$?I?aέ/?k????F<M???????"??c4?????fm#?6???h~h?K?;??i??4?ٳ??w???ڀ??????mwK? ??????X??({I^??޿?n554?ں`^kU?'\?$$???}??29;0W??8h?v?;??6???Rq??ۀ]?Ҟ???+Ӳ??????:???U/???r??	?????1?:!R?=<#?{n+o]??4??P???;???Pc???i3y?]?NH?ں?u???? e ???6?%zFp?[?sa??͸`Jޑ:??xb9??9]?ZsZ?'A?}b?:_?b4?ӈ???,??? Hq4??5???/qǅՈjO?"9? ?[?̈ZO??&?8???
??,?`?h?ۯ??BiԿVZE?X<???m4Ȱ?ڸ?/?c???;??v3^?a??o??	?U$[??H??Rm)^?<?t??n???N?????e7qԪ\?"y????Td?8?%/J?x?b??ĤRs?y??G?Bm\????{??5????*1m٣fBI鿽??ػz1-&:????/H?????C?5??2?ֵ8??@A?Jh??elkM?]?D??~?Q?/gh?X??f?lC?MLe`U܏.????;???C??????}??h?(.24????3?؉??~????jO`?)?Q?\]?!.?h?z?Q?n?%d???匝/?0?ā?_'L????3???g??=/-\?ᨊ?D??z|?r??V?8x???V:??=???w???Q?.aR???,????R?dP\xp}?LJdt?	SðU???؊j????_????ã}???l?	?YT??%T;E?Y?H??9??*:d????7\0?l^?]?-?zE2?.&??#?????????z?"?h?gW?٦@t$?]?a??W!H?=?x???g/BE8?i??:?/v#X??~?F/???;yPh?W&&?????;?·W/Rc?Ŝ???????&??Z?2???SD??S????T             x?????? ? ?      "      x?????? ? ?         ?   x?e??
?0D?ӯ?H6M[=???Q(c-h?n??ݦAIX&of7K???????m{?5?Z-Ar|????Ɖt??3???`fZ@??]?mm???3?K??}????"?;
???2̦l??D?wR??????J??8&?O?R?8!???ua???,>?????a??i?݋?????$?LI?0I????Us         w   x?-??? ??bNxM ??2????HF??Bd??^???8?Oq2ж3?:D?ߦ??*P?`?j6??FdJ???m{ڏ?d6v?????E??vQ???fWiF??l?)???? ?T4?         Z   x?3?t,.N-1?42?,?2???9̀|Cΐ?ļ??Ԣx?̴N#??T??!?)H??T?)1/??$b??[Y\Z?? ? ???qqq 7?x           x??S?j?0<K_???>l?9??=???bqI&__)	?؁E???a$vȽ???螗????2??v?]??3?B\?<???榊?JH??M??f?u??????}|?T9oBE???˲\?G=MU?)E}??????m???prR?r-?&Z?h?!*0_??or?????!.???7???Z?OI??mX???zl ??HJ6??d???&???\C?p9B?p)?5mJ?aB?!C?GQȰ?-?G?1AF?<*L???V;?
ӭ0?
ӭ0???{??a0         ?   x???;jC1??Z??l?b???cT??6?M?$?'??q??????~!???<?t??I??7?N?N?o??>Ps??^&??`?,??oH???Of?.?S????Զ?ۆ![?R?9w????*QGRmUW??|
(?/҉6

??????6?s??փI ?????c-_B??????`l?@?*?@ڪ?@?ii???'A#Y?????6гF?x??)??I ?(?+??7.?         F  x?eRMO?0=??&j??4G???K?:@?6i??{???P?8??߳?2=??<?0qߓD??YS?p?(?L??4d?t?v?8??L?-?8????????"??s?=?r?h?:?	????p??y???q??kt??x???BL~m?z
?*QH?T??? ?[?o"?" *?,??%?jcf?u?݀3y??晹??F|x?o"0?h??????}?v?id?(??p}?ӄl?X?I?=4?|???Eۓc??Sm/?O???L3dA5RiH??z|???<.?9Xф?B?ѿ???????{K)$)?g???9????o?y?            x?????? ? ?         ;   x?3?tI??4?46?,?2?OM??L?cN???? ???5??LM,???=... ??]      $   ?  x?m?۱? D??*?@=???q??+ِ?$C>4V?vK?????,?,6???@???"H????w?u?r????w??0P???>?C????V*???A?Jä?U??#aI?5U??u?i?Q??6aW?\KE ?????)~Ѳhӑ}?b???l??A??h??b???n46???H????8qh?weo?rd;???J?\Y̾H?e?C?~???\?4GO|,????x\a]څ[g.???K?_{?????%?i???ϸ?j???NE\?Y3?"?U?P?D<?s?cB_????????k?x?}??????         ?   x?M???0???S?	LPD9?zӋ??e?L?ZL|{7&j??????4?\?Jpg????!B??(??>?`?`???$`lc???6????%?V??'Q?7?5??g????????I8?t?j?=?o@9?fӌ??)v???n-u!??R??:?ȏ? ?Ӌǁ??ς?"?~,S?         q   x?3?LL).N,N? ??Ӑː?L
?E?`Q#?$??B???8}?32?R?r???S?a|???%gpi??Sb^??P?Tb?eh ??,.-JE?B??Yr??qqq 7?4Z      (   ?   x???;?0?99E/?ȿ?4??p?./!Q???/??e+???`(,?RL???)԰8???7??Tw???ݥ??7sx???+抑?3?A??@?????yi?T?????_+?<?!?Dix?vL??)???wL???X?}dl6@?&61?0? ?qb<D!LRZ?Z.!??]?Ri?҉????b?2JwI*[??~Y??      .   ?   x???? гT??ͯ??_??A/?????f`c2?.N,lփ?ʸ<U5xq Q2?????I?˓ʗ5???:]?:?~???Kݖc<???i8??,णe?ٲ?ٲ??r???????A??b????Z???dT煘????1[6c??n???$?:???
H3?L?$3Z??f???#?C?4?      &   ?   x???;
?0??9:E/?GdY?z?.??h??o?ChI4??!???:ҍ?yz_??8???3w?L=ZO?Bȁ??Q?p???'A9w,z?@V??ixC0%VW??6	??_????,AH??j??,dy?B?? A>??$?b|????-OB<??????????????n	 ????      ,   Z   x?ʹ1?@{̕???\6?8?t????j0???T???]???zyՇ??<?[?h?.O?m??.?u??O{?m/~??#F?pk????      
      x?3?tt????2?v?????? +??      *   6  x?uR?n?0=;_?L?!?^?]z(H[7?P??"?? I???٦eh????{y??? ????j?u	???P'	u?$`???????i?.?4?2???o??]"?????ְ???1??S"Nvv?۬Lt?L?Ҿ]}\?}.]??O??$?'?ScR?Q`S0V?? ?0????????=???o~?5x??o??`2f???q??Pt ?K"+B?f#W0?????ڪ???&??QϚ??l?;>3???z?Iɐ??_{݈??w?KQ?ʤ?j?ǜ?B\??????5i??sL'?ӿ?4???|???R?F??.      4   L   x?3?4?,I-.A& ??????????????????????????!?d?F
??V@d?gfn``f?Y??????? C"k      2   ?   x???1?0???c????8Wc0FI?Ŀ｢? 16ͥ?z_߫?]?????_??ۉ
\C?? v[?p?ڻ$?d???X???)?8Q??i???1?ǫ?3? ؞놂??$%??JϜ(???*????g?f?<(??8???et?L??x'K? ??9???M?#i_?~?s??I]?p?= ?d      6   ^   x?}ʱ? ?:????$?N@c?p????V6?z ?u???䂘-???z??? p!?u?5	xo0??biS?
;?on?H]j???#1?	BO         ?   x??λ
?0???)|?????l-?Kۡ?]B??D0q??7?X?,d8????4??????`<?p(?ٺ?????CD??$? ???.???,D?ߒP,?j?n$ۑ??5?z??bE^$?Ve~??+?T??D*???m?m??5g??_?PN??LpѦ;BA	??]???qJ?'B???X?         ?   x?m??
?0????[????eL?CO^?V\a?Э??M?	?JB?7|Hc?!??2p?+???zxjTmT?4plK䭓
8??Hq????	??8?h?? 㜸?y?Q}?G$i~?@=???? {?
2??B??dۺ?ס꾣??#??3????4?Yp???V)?o[???Ll?o?*?~1	_?z?S?G?? ??q     