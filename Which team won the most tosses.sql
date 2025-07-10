#Which team won the most tosses?

use new_schema;
show tables;
select toss_winner , count(*) as team_won_most_tosses
from matches
group by toss_winner
order by team_won_most_tosses desc;