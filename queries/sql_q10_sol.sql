SELECT 
﻿player_id, team_id, sc.country_name, jersey_no, player_name, posi_to_play,
dt_of_bir, age, playing_club 
FROM euro_cup_2016.player_mast pm 
LEFT JOIN euro_cup_2016.soccer_country sc 
ON pm.team_id = sc.﻿country_id
WHERE playing_club ='Liverpool' AND country_name ='England';