﻿CREATE PROCEDURE [OTACoins].[GetAllRecords]
    @instance INT,
    @recordType TINYINT,
    @recordName VARCHAR(512)
AS
    SET NOCOUNT ON;
    
    SELECT Records.[Key], Records.[Value], Records.[Version]
    FROM [OTACoins].[Records]
    WHERE Records.[Instance] = @instance AND Records.[Type] = @recordType AND Records.[Name] = @recordName;

RETURN;
