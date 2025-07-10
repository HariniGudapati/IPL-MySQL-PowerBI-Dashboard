use new_schema; 
SHOW TABLES;

#1.List all unique teams that played in the IPL.
select distinct
team1 as unique_teams from matches
union
select distinct team2 from matches;
 

