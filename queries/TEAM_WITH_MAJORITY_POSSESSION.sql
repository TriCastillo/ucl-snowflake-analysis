-- TEAM_WITH_MAJORITY_POSSESSION
SELECT 
CASE
	WHEN POSSESSION_HOME > POSSESSION_AWAY THEN TEAM_NAME_HOME
	WHEN POSSESSION_AWAY > POSSESSION_HOME THEN TEAM_NAME_AWAY
	ELSE NULL
END AS TEAM_NAME, COUNT(*) AS GAME_COUNT
FROM SOCCER.TBL_UEFA_2021
GROUP BY TEAM_NAME
ORDER BY GAME_COUNT DESC
LIMIT 1;