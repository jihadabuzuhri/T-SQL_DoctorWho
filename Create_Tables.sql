
USE DoctorWho    
GO

CREATE TABLE tblEnemy
(
    EnemyId INT NOT NULL IDENTITY PRIMARY KEY,
    EnemyName VARCHAR(350) NOT NULL,
    Description Text NULL DEFAULT NULL
);
GO


CREATE TABLE tblAuthor
(
    AuthorId INT NOT NULL IDENTITY PRIMARY KEY,
    AuthorName VARCHAR(350) NOT NULL
);
GO

CREATE TABLE tblDoctor
(
    DoctorId VARCHAR(250) NOT NULL PRIMARY KEY,
    DoctorNumber INT NOT NULL,
    DoctorName VARCHAR(350) NOT NULL,
    BirthDate Date NULL DEFAULT NULL,
    FirstEpisodeDate Date NULL DEFAULT NULL,
    LastEpisodeDate Date NULL DEFAULT NULL
);
GO

CREATE TABLE tblCompanion
(
    CompanionId INT NOT NULL IDENTITY PRIMARY KEY,
    CompanionName VARCHAR(350) NOT NULL,
    WhoPlayed VARCHAR(350) NOT NULL
);
GO

CREATE TABLE tblEpisode
(
    EpisodeId INT NOT NULL IDENTITY PRIMARY KEY,
    SeriesNumber INT NULL DEFAULT 0,
    EpisodeNumber INT NULL DEFAULT 0,
    EpisodeType VARCHAR(250) NOT NULL,
    Title Text NOT NULL,
    EpisodeDate Date NULL DEFAULT NULL,
    AuthorId INT NOT NULL REFERENCES tblAuthor (AuthorId),
    DoctorId VARCHAR(250) NOT NULL REFERENCES tblDoctor (DoctorId),
    Notes Text NULL DEFAULT NULL
);
GO

CREATE TABLE tblEpisodeCompanion
(
    EpisodeCompanionId INT NOT NULL IDENTITY PRIMARY KEY,
    EpisodeId INT NOT NULL REFERENCES tblEpisode (EpisodeId),
    CompanionId INT NOT NULL REFERENCES tblCompanion (CompanionId)
);
GO

CREATE TABLE tblEpisodeEnemy
(
    EpisodeEnemyId INT NOT NULL IDENTITY PRIMARY KEY,
    EpisodeId INT NOT NULL REFERENCES tblEpisode (EpisodeId),
    EnemyId INT NOT NULL REFERENCES tblEnemy (EnemyId)
);
GO
