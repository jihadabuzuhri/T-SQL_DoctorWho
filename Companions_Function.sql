
USE DoctorWho    
GO

BEGIN TRANSACTION

DROP FUNCTION IF EXISTS fnCompanions;
GO

CREATE FUNCTION fnCompanions(@EpisodeId INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CompanionList VARCHAR(MAX)

    SELECT @CompanionList = CONCAT(@CompanionList,CompanionName,',')
    FROM tblCompanion c
    INNER JOIN tblEpisodeCompanion ec ON c.CompanionId = ec.CompanionId
    WHERE ec.EpisodeId = @EpisodeId
    -- PRINT @CompanionList
    RETURN @CompanionList
END




-- Declare a variable to hold the result of the function
DECLARE @CompanionList VARCHAR(MAX)

-- Call the function and store the result in the variable
SELECT @CompanionList = dbo.fnCompanions(5)

-- Print the result
PRINT @CompanionList


-- ROLLBACK TRANSACTION
COMMIT TRANSACTION


