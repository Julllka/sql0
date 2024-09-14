
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
