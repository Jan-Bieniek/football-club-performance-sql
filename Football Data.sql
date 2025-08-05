
SELECT id AS league_id, name 
FROM League


SELECT team_long_name 
FROM Team

SELECT DISTINCT season 
FROM Match 
ORDER BY season

SELECT SEASON, COUNT(*) AS TOTAL_MATCHES 
FROM MATCH 
GROUP BY SEASON
ORDER BY SEASON 






--total seasons number

SELECT COUNT(DISTINCT season) AS total_seasons FROM Match;


-- total games played

SELECT COUNT(*) AS total_matches FROM Match;

--all teams

SELECT COUNT(*) AS total_teams FROM Team;


--all leages

SELECT COUNT(*) AS total_leagues FROM League;




--- SLIDE 2 GOALS SCORED PER TEAM PER SEASON- THE BEST AND THE WORST

SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals DESC


SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2009/2010'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals DESC 




SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2010/2011'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals DESC 



SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2011/2012'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals DESC 


SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2012/2013'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals DESC 

SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2013/2014'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals DESC 


---WORST SCORERS

SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals ASC


SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2009/2010'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals ASC




SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2010/2011'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals ASC



SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2011/2012'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals ASC 


SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2012/2013'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals ASC 

SELECT team_long_name,
m.season,
SUM(
	CASE
		WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
    	WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      	ELSE 0
	END
) AS total_goals
FROM  "Match" m
LEFT JOIN Team t 
ON m.home_team_api_id = t.team_api_id 
	OR t.team_api_id = m.away_team_api_id
WHERE season = '2013/2014'
GROUP BY t.team_long_name, m.season 
ORDER BY m.season, total_goals ASC 


---slide 4-club goal differences - top 5 clubs that scored the most goals compared to last season


WITH goals_by_season AS (
  SELECT 
    season,
    t.team_long_name,
    SUM(
      CASE 
        WHEN m.home_team_api_id = t.team_api_id THEN m.home_team_goal
        WHEN m.away_team_api_id = t.team_api_id THEN m.away_team_goal
        ELSE 0
      END
    ) AS total_goals
  FROM "Match" m
  JOIN Team t 
    ON t.team_api_id IN (m.home_team_api_id, m.away_team_api_id)
  GROUP BY season, t.team_long_name
)
SELECT 
  season,
  team_long_name,
  total_goals,
  LAG(total_goals) OVER (PARTITION BY team_long_name ORDER BY season) AS last_season_goals,
  total_goals - LAG(total_goals) OVER (PARTITION BY team_long_name ORDER BY season) AS goal_diff
FROM goals_by_season
ORDER BY goal_diff DESC NULLS LAST
LIMIT 7


--- slide 4-club goal differences - Bottom 5 clubs that declined the most in total goals scored 

WITH goals_by_season AS (
  SELECT 
    season,
    t.team_long_name,
    SUM(
      CASE 
        WHEN m.home_team_api_id = t.team_api_id THEN m.home_team_goal
        WHEN m.away_team_api_id = t.team_api_id THEN m.away_team_goal
        ELSE 0
      END
    ) AS total_goals
  FROM "Match" m
  JOIN Team t 
    ON t.team_api_id IN (m.home_team_api_id, m.away_team_api_id)
  GROUP BY season, t.team_long_name
)
SELECT 
  season,
  team_long_name,
  total_goals,
  LAG(total_goals) OVER (PARTITION BY team_long_name ORDER BY season) AS last_season_goals,
  total_goals - LAG(total_goals) OVER (PARTITION BY team_long_name ORDER BY season) AS goal_diff
FROM goals_by_season
ORDER BY goal_diff asc NULLS LAST
LIMIT 7


--FC BARCELONA GOALS

SELECT
  season,
  SUM(CASE 
        WHEN home_team_api_id = team_api_id THEN home_team_goal
        WHEN away_team_api_id = team_api_id THEN away_team_goal
        ELSE 0
      END) AS total_goals
FROM Match
LEFT JOIN Team ON team_api_id = Match.home_team_api_id OR team_api_id = Match.away_team_api_id
WHERE team_long_name = 'FC Barcelona'
GROUP BY season
ORDER BY season


--- Real Madrid Goals

SELECT
  season,
  SUM(CASE 
        WHEN home_team_api_id = team_api_id THEN home_team_goal
        WHEN away_team_api_id = team_api_id THEN away_team_goal
        ELSE 0
      END) AS total_goals
FROM Match
LEFT JOIN Team ON team_api_id = Match.home_team_api_id OR team_api_id = Match.away_team_api_id
WHERE team_long_name = 'Real Madrid CF'
GROUP BY season
ORDER BY season

--PSG TOTAL GOALS

SELECT
  season,
  SUM(CASE 
        WHEN home_team_api_id = team_api_id THEN home_team_goal
        WHEN away_team_api_id = team_api_id THEN away_team_goal
        ELSE 0
      END) AS total_goals
FROM Match
LEFT JOIN Team ON team_api_id = Match.home_team_api_id OR team_api_id = Match.away_team_api_id
WHERE team_long_name = 'Paris Saint-Germain'
GROUP BY season
ORDER BY season


---WORST PERFORMERS


SELECT
  season,
  team_long_name,
  SUM(
    CASE
      WHEN team_api_id = home_team_api_id THEN home_team_goal
      WHEN team_api_id = away_team_api_id THEN away_team_goal
      ELSE 0
    END
  ) AS total_goals
FROM "Match" m
LEFT JOIN Team t
  ON t.team_api_id = m.home_team_api_id OR t.team_api_id = m.away_team_api_id
  WHERE t.team_long_name = 'Naval 1° de Maio'
GROUP BY season, team_long_name
ORDER BY team_long_name, season

---THE WORST PERFORMER GOALS LOST


SELECT 
  season,
  team_long_name,
  SUM(goals_conceded) AS total_goals_conceded
FROM (
  SELECT 
    m.season,
    t.team_long_name,
    m.away_team_goal AS goals_conceded
  FROM "Match" m
  JOIN Team t ON m.home_team_api_id = t.team_api_id
  UNION ALL
  SELECT 
    m.season,
    t.team_long_name,
    m.home_team_goal AS goals_conceded
  FROM "Match" m
  JOIN Team t ON m.away_team_api_id = t.team_api_id
) AS combined
GROUP BY season, team_long_name
ORDER BY total_goals_conceded DESC

	
	
--BIG TEAM, BAD SEASON?

SELECT 
  season,
  t.team_long_name,
  SUM(
    CASE 
      WHEN t.team_api_id = m.home_team_api_id THEN m.home_team_goal
      WHEN t.team_api_id = m.away_team_api_id THEN m.away_team_goal
      ELSE 0
    END
  ) AS total_goals
FROM "Match" m
JOIN Team t 
  ON t.team_api_id = m.home_team_api_id OR t.team_api_id = m.away_team_api_id
WHERE t.team_long_name IN (
  'Manchester United',
  'Milan',
  'Olympique de Marseille',
  'FC Barcelona',
  'Inter',
  'Chelsea',
  'Juventus',
  'Arsenal'
)
GROUP BY season, t.team_long_name
ORDER BY total_goals 














