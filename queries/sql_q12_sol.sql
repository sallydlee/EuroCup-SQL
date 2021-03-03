SELECT 
sc.country_name ,pm.posi_to_play , COUNT(*) AS goals
FROM euro_cup_2016.goal_details gd 
LEFT JOIN euro_cup_2016.player_mast pm 
ON gd.player_id = pm.﻿player_id 
LEFT JOIN euro_cup_2016.soccer_country sc 
ON gd.team_id = sc.﻿country_id 
group by sc.country_name , pm.posi_to_play 
order by sc.country_name , pm.posi_to_play ;