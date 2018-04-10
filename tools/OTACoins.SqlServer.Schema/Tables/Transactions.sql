CREATE TABLE [OTACoins].[Transactions]
(
    [Id] BIGINT NOT NULL IDENTITY,
    [Instance] INT NOT NULL,
    [TransactionHash] BINARY(32) NOT NULL,
    [MutationHash] BINARY(32) NOT NULL,
    [RawData] VARBINARY(MAX) NOT NULL,

    CONSTRAINT [PK_Transactions]
    PRIMARY KEY ([Id]),
)
GO

CREATE NONCLUSTERED INDEX [IX_Transactions_Id]
ON [OTACoins].[Transactions] ([Instance], [Id])
GO

CREATE NONCLUSTERED INDEX [IX_Transactions_TransactionHash]
ON [OTACoins].[Transactions] ([Instance], [TransactionHash])
GO

CREATE NONCLUSTERED INDEX [IX_Transactions_MutationHash]
ON [OTACoins].[Transactions] ([Instance], [MutationHash])
GO