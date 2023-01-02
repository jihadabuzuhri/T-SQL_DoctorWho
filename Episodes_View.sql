
USE DoctorWho    
GO

BEGIN TRANSACTION
GO

DROP VIEW IF EXISTS viewEpisodes;
GO


CREATE VIEW viewEpisodes
AS
    SELECT e.EpisodeId, a.AuthorName, d.DoctorName,
        dbo.fnCompanions(e.EpisodeId) AS Companions,
        dbo.fnEnemies(e.EpisodeId) AS Enemies
    FROM tblEpisode e
        INNER JOIN tblAuthor a ON e.AuthorId = a.AuthorId
        INNER JOIN tblDoctor d ON e.DoctorId = d.DoctorId
GO

-- Retrieve the data from the view
SELECT *
FROM viewEpisodes

-- Retrieve only the episodes written by a specific author
SELECT * FROM viewEpisodes WHERE AuthorName = 'Steven Moffat'

-- Retrieve only the episodes featuring a specific doctor
SELECT * FROM viewEpisodes WHERE DoctorName = 'William Hartnell'

-- Retrieve only the episodes with a specific companion
SELECT * FROM viewEpisodes WHERE Companions LIKE '%Rose Tyler%'

-- Retrieve only the episodes with a specific enemy
SELECT * FROM viewEpisodes WHERE Enemies LIKE '%Dalek%'


-- ROLLBACK TRANSACTION
COMMIT TRANSACTION