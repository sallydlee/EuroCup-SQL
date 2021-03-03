SELECT 
country_name, assistant_refs
FROM (SELECT country_name, COUNT(DISTINCT ﻿ass_ref_id) as assistant_refs
FROM euro_cup_2016.asst_referee_mast arm
INNER JOIN euro_cup_2016.soccer_country sc
ON arm.country_id = sc.﻿country_id
GROUP BY ﻿country_id
ORDER BY assistant_refs DESC) t
LIMIT 1;