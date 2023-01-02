
USE DoctorWho    
GO

BEGIN TRANSACTION

SELECT *
FROM tblCompanion

SELECT *
FROM tblEpisodeCompanion

DELETE FROM tblCompanion
WHERE CompanionId NOT IN 
(SELECT DISTINCT CompanionId FROM tblEpisodeCompanion);


SELECT *
FROM tblCompanion

-- ROLLBACK TRANSACTION
COMMIT TRANSACTION

