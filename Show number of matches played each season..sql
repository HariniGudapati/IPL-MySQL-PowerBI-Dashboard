use new_schema;
show tables;

#Show number of matches played each season.

SELECT season, COUNT(*) AS total_matches
FROM matches
GROUP BY season
ORDER BY season;

