IF OBJECT_ID('dbo.Rugby_Matches_Played', 'V') IS NOT NULL
    DROP VIEW dbo.Rugby_Matches_Played;
GO

CREATE VIEW Rugby_Matches_Played AS
SELECT team_name, COUNT(*) AS Matches_Played
FROM (
    SELECT home_team AS team_name FROM Rugby_Results
    UNION ALL
    SELECT away_team AS team_name FROM Rugby_Results
) AS CombinedTeams
GROUP BY team_name;
