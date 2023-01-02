
USE DoctorWho    
GO

BEGIN TRANSACTION

DROP FUNCTION IF EXISTS fnEnemies;
GO

CREATE FUNCTION fnEnemies(@EpisodeId INT)
RETURNS VARCHAR(MAX)
AS
BEGIN

    DECLARE @EnemyList VARCHAR(MAX)

    SELECT @EnemyList = CONCAT(@EnemyList,EnemyName,',')
    FROM tblEnemy e
        INNER JOIN tblEpisodeEnemy ee ON e.EnemyId = ee.EnemyId
    WHERE ee.EpisodeId = @EpisodeId

    RETURN @EnemyList

END



-- Declare a variable to hold the result of the function
DECLARE @EnemyList VARCHAR(MAX)

-- Call the function and store the result in the variable
SELECT @EnemyList = dbo.fnEnemies(5)

-- Print the result
PRINT @EnemyList


-- ROLLBACK TRANSACTION
COMMIT TRANSACTION




