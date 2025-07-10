#Who are the top 10 wicket takers?

use new_schema;
show tables;
select bowler , count(*) as top_10_wicket_takers
from deliveries
where is_wicket = 1 and dismissal_kind not in('run out','retired hurt','obstructing the field')
group by bowler 
order by top_10_wicket_takers desc
limit 10;