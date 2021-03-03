SELECT
referee_id, venue_id, COUNT(DISTINCT ﻿match_no) AS matches
FROM euro_cup_2016.match_mast
GROUP BY referee_id, venue_id;