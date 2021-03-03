WITH referee_bookings AS (SELECT
referee_id, COUNT(*) AS bookings
FROM euro_cup_2016.match_mast mm
INNER JOIN euro_cup_2016.player_booked pb
ON mm.﻿match_no = pb.﻿match_no
GROUP BY referee_id
ORDER BY bookings DESC)

SELECT referee_id, bookings
FROM referee_bookings
WHERE bookings = (SELECT MAX(bookings) from referee_bookings)
;