SELECT ﻿match_no, COUNT(*) as fouls 
FROM euro_cup_2016.player_booked
GROUP BY ﻿match_no
ORDER BY COUNT(*) DESC
LIMIT 1;
