SELECT team_name, COUNT(*) AS Matches_Played
FROM (
    SELECT home_team AS team_name FROM dbo.rugby_results
    UNION ALL
    SELECT away_team AS team_name FROM dbo.rugby_results
) AS CombinedTeams
GROUP BY team_name;
