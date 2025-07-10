#Who are the top 5 players with the most "Player of the Match" awards?

use new_schema;
show tables;

select distinct player_of_match,count(*) as Player_of_the_Match 
from matches
where player_of_match is not null
group by player_of_match
order by player_of_the_match desc
limit 5;
