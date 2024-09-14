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
  