create table public.exam
(
    exam_name varchar(256) not null,
    exam_id   integer      not null
        primary key
);

alter table public.exam
    owner to postgres;

create table public.specialization
(
    name              varchar(128) not null,
    specialization_id integer      not null
        primary key
);

alter table public.specialization
    owner to postgres;

create table public.status
(
    status_name varchar(128) not null,
    status_id   integer      not null
        primary key
);

alter table public.status
    owner to postgres;

create table public.supervisor
(
    user_id       uuid         not null
        constraint user_id_must_be_distinct
            unique,
    full_name     varchar(256) not null,
    supervisor_id uuid         not null
        primary key
);

alter table public.supervisor
    owner to postgres;

create table public.type
(
    type_id   integer      not null
        primary key,
    type_name varchar(128) not null
);

alter table public.type
    owner to postgres;

create table public.publication
(
    publication_id uuid         not null
        primary key,
    name           varchar(512) not null,
    output_data    varchar(256) not null,
    num_of_pages   integer      not null,
    co_authors     varchar(300) not null,
    type_id        integer      not null
        references public.type
);

alter table public.publication
    owner to postgres;

create table public.student
(
    user_id           uuid         not null
        constraint student_user_id_must_be_distinct
            unique,
    student_id        uuid         not null
        primary key,
    start_date        date         not null,
    department        varchar(256) not null,
    enrollment_order  varchar(256) not null,
    academic_leave    boolean      not null,
    plan_path         varchar(512) not null
        unique,
    studying_duration integer      not null,
    full_name         varchar(256) not null,
    specialization_id integer      not null
        references public.specialization,
    publication_id    uuid         not null
        constraint publication_id_must_be_distinct
            unique
        references public.publication,
    supervisor_id     uuid
        references public.supervisor,
    faculty           varchar(512) not null,
    group_name        varchar(100) not null
);

alter table public.student
    owner to postgres;

create table public.conference
(
    name          varchar(400) not null,
    conference_id uuid         not null
        primary key,
    article_name  varchar(300) not null,
    co_authors    varchar(200) not null,
    language      varchar(40)  not null,
    type_id       integer      not null
        references public.type,
    student_id    uuid         not null
        references public.student
);

alter table public.conference
    owner to postgres;

create table public.dissertation
(
    title_path      varchar(512) not null,
    pz_path         varchar(512) not null,
    dissertation_id uuid         not null
        primary key,
    status_id       integer      not null
        references public.status,
    student_id      uuid         not null
        references public.student,
    publish_date    date         not null
);

alter table public.dissertation
    owner to postgres;

create table public.student_exam
(
    mark       integer not null,
    date       date    not null,
    exam_id    integer not null
        references public.exam,
    student_id uuid    not null
        references public.student
);

alter table public.student_exam
    owner to postgres;

create table public.subject
(
    subject_id   uuid         not null
        primary key,
    name         varchar(256) not null,
    main_teacher varchar(256) not null,
    hours        integer      not null,
    student_id   uuid         not null
        references public.student
);

alter table public.subject
    owner to postgres;

create table public.user_class
(
    id   integer      not null
        primary key,
    name varchar(128) not null
);

alter table public.user_class
    owner to postgres;

create table public.client_user
(
    user_id  uuid         not null
        primary key,
    email    varchar(128) not null,
    password varchar(256) not null,
    id       integer      not null
        references public.user_class
);

alter table public.client_user
    owner to postgres;

