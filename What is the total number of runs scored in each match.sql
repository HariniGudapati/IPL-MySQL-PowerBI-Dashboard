#What is the total number of runs scored in each match?

use new_schema;
show tables;

select match_id,sum(total_runs) as total_runs
from deliveries 
group by match_id
order by total_runs desc;