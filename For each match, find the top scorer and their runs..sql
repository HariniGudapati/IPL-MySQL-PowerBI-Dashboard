#For each match, find the top scorer and their runs.

use new_schema;
show tables;

SELECT match_id, batter, SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY match_id, batter
ORDER BY match_id, total_runs DESC;

