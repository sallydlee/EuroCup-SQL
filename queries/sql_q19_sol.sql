SELECT
COUNT(DISTINCT player_captain) AS capt_gk_count
FROM euro_cup_2016.match_captain mc
INNER JOIN euro_cup_2016.player_mast pm
ON mc.player_captain = pm.﻿player_id
WHERE pm.posi_to_play = 'GK';