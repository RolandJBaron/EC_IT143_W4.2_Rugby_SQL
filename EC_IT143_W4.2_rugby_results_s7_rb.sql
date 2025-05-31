IF OBJECT_ID('dbo.sp_LoadRugbyMatchesPlayed', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_LoadRugbyMatchesPlayed;
GO

CREATE PROCEDURE sp_LoadRugbyMatchesPlayed
AS
BEGIN
    TRUNCATE TABLE tbl_Rugby_Matches_Played;

    INSERT INTO tbl_Rugby_Matches_Played
    SELECT * FROM vw_Rugby_Matches_Played;
END;
