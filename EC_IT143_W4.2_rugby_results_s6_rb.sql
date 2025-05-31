TRUNCATE TABLE tbl_Rugby_Matches_Played;

INSERT INTO tbl_Rugby_Matches_Played
SELECT * FROM vw_Rugby_Matches_Played;