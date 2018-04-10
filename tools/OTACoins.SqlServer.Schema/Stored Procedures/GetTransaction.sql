CREATE PROCEDURE [OTACoins].[GetTransaction]
    @instance INT,
    @mutationHash BINARY(32)
AS
    SET NOCOUNT ON;

    SELECT [RawData]
    FROM [OTACoins].[Transactions]
    WHERE Transactions.[Instance] = @instance AND Transactions.[MutationHash] = @mutationHash;

RETURN;
