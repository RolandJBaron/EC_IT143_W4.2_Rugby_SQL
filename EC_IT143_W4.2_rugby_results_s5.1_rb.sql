IF OBJECT_ID('dbo.tbl_Rugby_Matches_Played', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_Rugby_Matches_Played;

SELECT * INTO tbl_Rugby_Matches_Played
FROM vw_Rugby_Matches_Played;
