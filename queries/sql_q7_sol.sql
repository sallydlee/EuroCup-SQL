SELECT DISTINCT mm.venue_id AS venues
FROM euro_cup_2016.penalty_shootout ps 
INNER JOIN euro_cup_2016.match_mast mm 
WHERE ps.match_no = mm.﻿match_no;