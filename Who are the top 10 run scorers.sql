#Who are the top 10 run scorers?
use new_schema;
show tables;
select batter , sum(batsman_runs) as top_10_run_scorers
from deliveries
group by batter
order by top_10_run_scorers desc
limit 10;