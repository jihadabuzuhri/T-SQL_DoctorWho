SELECT TOP (1000)
        [AuthorId]
      , [AuthorName]
FROM [DoctorWho].[dbo].[tblAuthor]


SELECT TOP (1000)
        [CompanionId]
      , [CompanionName]
      , [WhoPlayed]
FROM [DoctorWho].[dbo].[tblCompanion]

SELECT TOP (1000)
        [DoctorId]
      , [DoctorNumber]
      , [DoctorName]
      , [BirthDate]
      , [FirstEpisodeDate]
      , [LastEpisodeDate]
FROM [DoctorWho].[dbo].[tblDoctor]


SELECT TOP (1000)
        [EnemyId]
      , [EnemyName]
      , [Description]
FROM [DoctorWho].[dbo].[tblEnemy]


SELECT TOP (1000)
        [EpisodeId]
      , [SeriesNumber]
      , [EpisodeNumber]
      , [EpisodeType]
      , [Title]
      , [EpisodeDate]
      , [AuthorId]
      , [DoctorId]
      , [Notes]
FROM [DoctorWho].[dbo].[tblEpisode]


SELECT TOP (1000)
        [EpisodeCompanionId]
      , [EpisodeId]
      , [CompanionId]
FROM [DoctorWho].[dbo].[tblEpisodeCompanion]


SELECT TOP (1000)
        [EpisodeCompanionId]
      , [EpisodeId]
      , [CompanionId]
FROM [DoctorWho].[dbo].[tblEpisodeCompanion]


SELECT TOP (1000)
        [EpisodeEnemyId]
      , [EpisodeId]
      , [EnemyId]
FROM [DoctorWho].[dbo].[tblEpisodeEnemy]
