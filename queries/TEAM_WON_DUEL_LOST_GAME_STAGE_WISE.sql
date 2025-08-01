-- TEAM_WON_DUEL_LOST_GAME_STAGE_WISE
SELECT STAGE,
CASE
	WHEN DUELS_WON_AWAY > DUELS_WON_HOME AND TEAM_AWAY_SCORE < TEAM_HOME_SCORE THEN TEAM_NAME_AWAY
	WHEN DUELS_WON_HOME > DUELS_WON_AWAY AND TEAM_HOME_SCORE < TEAM_AWAY_SCORE THEN TEAM_NAME_HOME
END AS TEAM_LOST
FROM SOCCER.TBL_UEFA_2022
WHERE TEAM_LOST IS NOT NULL;