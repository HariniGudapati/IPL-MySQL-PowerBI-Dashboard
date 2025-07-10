#How many matches were won by chasing vs. defending?

use new_schema;
show tables;
select toss_decision, count(*) as total_matches,
sum(case when toss_decision = 'bat' and toss_winner = winner then 1 else 0 end) as won_batting_first,
sum(case when toss_decision = 'field' and toss_winner = winner then 1 else 0 end) as won_chasing
from matches
group by toss_decision;