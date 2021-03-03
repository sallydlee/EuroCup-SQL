SELECT 
DISTINCT country_name, pm.player_name, pm.jersey_no 
FROM euro_cup_2016.match_details md 
LEFT JOIN euro_cup_2016.soccer_country sc 
ON md.team_id = sc.﻿country_id
LEFT JOIN euro_cup_2016.player_mast pm 
ON (md.team_id = pm.team_id AND md.player_gk = pm.﻿player_id) 
WHERE play_stage = 'G' AND country_name ='Germany';