#Which team scored the highest total in a single match?

use new_schema;
show tables;
select match_id, batting_team, sum(total_runs) AS total_runs
from deliveries
group by match_id, batting_team
order by total_runs desc
limit 1;
