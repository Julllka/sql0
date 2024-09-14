create table if not exists singers (
singer_id serial primary key,
singer_name TEXT not null
);

create table if not exists ganres (
ganre_id serial primary key,
ganres_name varchar(50) not null
);

CREATE TABLE if not exists singer_ganres_interest (
singer_id INTEGER references singers(id),
ganre_id INTEGER references ganres(id),
constraint pk PRIMARY KEY (singer_id, ganre_id)
);

create table if not exists album_list (
album_id serial primary key,
album_name varchar(50) not null,
release_date DATE not NULL
);

create table if not exists album_singer_interest (
singer_id INTEGER references singers(id),
album_id INTEGER references album_list(id),
constraint pk PRIMARY KEY (singer_id, album_id)
);

create table if not exists collection (
collection_id serial primary key,
songs_collection varchar(50) not null,
release_year DATE not null
);

create table if not exists track_list (
track_id serial primary key,
collection_id INTEGER not null references track_list(id),
track_name varchar(50) not null,
duration INTEGER CHECK (duration>1) 
);

create table if not exists collection_track_interest (
collection_id INTEGER references collection(id),
track_id INTEGER references track_list(id),
constraint pk PRIMARY KEY (collection_id, track_id)
);

insert into singers (name)
values ('Dua Lipa','Adele', 'Bille Eilish','Mikl Jecson');

insert into ganres (name)
values ('Pop','Jaz', 'Electro');

insert into album_list (name)
values ('Time', 'Love', 'September');

insert into track_list (name)
values ('Song_a', 'Song_b', 'Song_c', 'Song_d', 'Song_e', 'Song_f');

insert into collection (name)
values ('Star', 'Yesterday', 'Sunshine', 'Goodbay');

select name, length
from track_list
where MAX(lenth);

select name, length
from track_list
where length > 3,5;

select name, release_year
from collection
where release_year > 2018-01-01 and release_year < 2020-12-31;

select name 
from singers s
where name != ' ';

select name
from track_list
where name like '%my%';
  


select singer_name COUNT(singer_id), ganre_name
from singers
join singer_name on ganre_id = singer_id
group by singer_name

select count(track_id)
from track_list
where release_year > 2019-01-01 and release_year < 2020-12-31

select track_name, AVG(length)
from collection_track_interest

select singer_name
from singers s 
where release_year > 2020-12-31 and release_year < 2020-01-01

select collection_name
from collection
where singer_name != '%Adele%' 
