SELECT
DISTINCT pm.﻿player_id, pm.player_name, pm.jersey_no, pm.playing_club
FROM euro_cup_2016.player_mast pm 
LEFT JOIN euro_cup_2016.soccer_country sc 
ON pm.team_id = sc.﻿country_id 
INNER JOIN euro_cup_2016.match_details md 
ON (pm.team_id = md.team_id AND player_gk = pm.﻿player_id) 
WHERE sc.country_name ='England';