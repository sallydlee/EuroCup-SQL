SELECT
match_no, kick_no AS fouls
FROM euro_cup_2016.penalty_shootout
ORDER BY kick_no DESC
LIMIT 1;
