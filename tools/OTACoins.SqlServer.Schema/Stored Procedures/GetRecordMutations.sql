CREATE PROCEDURE [OTACoins].[GetRecordMutations]
    @instance INT,
    @recordKey VARBINARY(256)
AS
    SET NOCOUNT ON;

    SELECT Transactions.[MutationHash]
    FROM [OTACoins].[RecordMutations]
    INNER JOIN [OTACoins].[Transactions] ON RecordMutations.[TransactionId] = Transactions.[Id]
    WHERE RecordMutations.[Instance] = @instance AND RecordMutations.[RecordKey] = @recordKey;

RETURN;
