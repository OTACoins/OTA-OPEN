CREATE PROCEDURE [OTACoins].[GetRecords]
    @instance INT,
    @ids [OTACoins].[IdTable] READONLY
AS
    SET NOCOUNT ON;

    SELECT [Key], [Value], [Version]
    FROM [OTACoins].[Records]
    INNER JOIN @ids AS Ids ON Records.[Key] = Ids.[Id]
    WHERE Records.[Instance] = @instance;

RETURN;
