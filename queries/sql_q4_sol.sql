SELECT play_stage, COUNT(*) AS num_of_subs
FROM euro_cup_2016.match_mast mm 
INNER JOIN euro_cup_2016.player_in_out pio
ON mm.﻿match_no = pio.﻿match_no 
WHERE in_out = 'I'
GROUP BY play_stage;
