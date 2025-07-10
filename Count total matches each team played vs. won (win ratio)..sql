#Count total matches each team played vs. won (win ratio).

use new_schema;
show tables;
select team,count(*) as match_played,sum(case when team= winner then 1 else 0 end )as match_won
from (select team1 as team, winner from matches 
union all
select team2 as team, winner from matches ) as all_matches
group by team
order by match_played desc;

