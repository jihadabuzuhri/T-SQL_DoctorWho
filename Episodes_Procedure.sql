
USE DoctorWho    
GO

BEGIN TRANSACTION
GO

DROP PROCEDURE IF EXISTS spSummariseEpisodes;
GO

CREATE PROCEDURE spSummariseEpisodes
AS
BEGIN
    -- Find the 3 most frequently-appearing companions
    SELECT TOP 3 CompanionName, COUNT(*) AS NumAppearances
    FROM tblCompanion c
    INNER JOIN tblEpisodeCompanion ec ON c.CompanionId = ec.CompanionId
    GROUP BY CompanionName
    ORDER BY NumAppearances DESC

    -- Find the 3 most frequently-appearing enemies
    SELECT TOP 3 EnemyName, COUNT(*) AS NumAppearances
    FROM tblEnemy e
    INNER JOIN tblEpisodeEnemy ee ON e.EnemyId = ee.EnemyId
    GROUP BY EnemyName
    ORDER BY NumAppearances DESC
END


EXEC spSummariseEpisodes


-- ROLLBACK TRANSACTION
COMMIT TRANSACTION