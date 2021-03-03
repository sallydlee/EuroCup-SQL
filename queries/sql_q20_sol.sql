SELECT
DISTINCT player_id, player_name
FROM euro_cup_2016.player_in_out pio
INNER JOIN euro_cup_2016.player_mast pm
ON pio.player_id = pm.﻿player_id
WHERE play_half = 1 AND in_out = 'I' AND play_schedule = 'NT';