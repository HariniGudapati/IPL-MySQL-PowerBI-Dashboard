#Which bowler has the best economy rate (min 100 balls)?

use new_schema;
show tables;

select bowler , count(*) as balls_bowled,
sum(total_runs) as runs_conceded,
round(sum(total_runs)/(count(*)/6), 2) as  economy_rate
from deliveries
group by bowler
having balls_bowled >=100
order by economy_rate asc
limit 10;
