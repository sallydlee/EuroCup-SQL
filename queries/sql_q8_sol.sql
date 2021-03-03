WITH penalty_results AS (SELECT 
country_name, match_no, team_id, COUNT(*) AS penalty_shots
FROM euro_cup_2016.penalty_shootout ps 
LEFT JOIN euro_cup_2016.soccer_country sc 
ON ps.team_id = sc.﻿country_id 
GROUP BY match_no, team_id) 

SELECT match_no, country_name FROM penalty_results
WHERE penalty_shots IN (SELECT MAX(penalty_shots) FROM penalty_results);
