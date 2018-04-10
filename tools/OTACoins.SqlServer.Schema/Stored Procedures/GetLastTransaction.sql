CREATE PROCEDURE [OTACoins].[GetLastTransaction]
    @instance INT
AS
    SET NOCOUNT ON;

    SELECT TOP(1) Transactions.[TransactionHash]
    FROM [OTACoins].[Transactions]
    WHERE Transactions.[Instance] = @instance
    ORDER BY Transactions.[Id] DESC;

RETURN;
