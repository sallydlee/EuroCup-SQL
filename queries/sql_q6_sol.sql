WITH non_penalty_matches AS (SELECT 
md.﻿match_no , md.goal_score, 
LEAD(goal_score, 1) OVER (PARTITION BY md.﻿match_no 
ORDER BY md.﻿match_no , md.goal_score desc) AS losing_score
FROM euro_cup_2016.match_details md 
WHERE decided_by != 'P') SELECT COUNT(*) AS single_point_wins
FROM non_penalty_matches
WHERE goal_score - losing_score = 1;