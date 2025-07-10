#What is the average score in 1st innings vs 2nd innings?

use new_schema;
show tables;

select inning , round(avg(total_runs),2) as avg_score
from (select match_id ,inning,sum(total_runs) as total_runs
from deliveries
group by match_id,inning)
as inning_scores
group by inning;

