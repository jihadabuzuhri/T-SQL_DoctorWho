
USE DoctorWho    
GO

BEGIN TRANSACTION

SELECT * FROM tblEpisode

-- Update the DoctorId column of EpisodeId =5 to NULL for testing 
UPDATE tblEpisode
SET DoctorId=null
WHERE EpisodeId =5;

SELECT * FROM tblEpisode

-- Update the Title column of all episodes with 0 doctor appearances
UPDATE tblEpisode
SET Title = CONCAT(Title, '_CANCELLED')
WHERE DoctorId IS NULL;

SELECT * FROM tblEpisode

-- ROLLBACK TRANSACTION
COMMIT TRANSACTION