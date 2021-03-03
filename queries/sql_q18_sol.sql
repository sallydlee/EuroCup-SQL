SELECT
match_no, COUNT(*) AS fouls
FROM euro_cup_2016.penalty_shootout
GROUP BY match_no
ORDER BY fouls DESC;