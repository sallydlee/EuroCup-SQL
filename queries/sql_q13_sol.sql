SELECT
DISTINCT gd.player_id, player_name
FROM euro_cup_2016.goal_details gd
LEFT JOIN euro_cup_2016.player_mast pm
ON gd.player_id = pm.﻿player_id
WHERE posi_to_play = 'DF' OR posi_to_play = 'FD'
ORDER BY player_name;