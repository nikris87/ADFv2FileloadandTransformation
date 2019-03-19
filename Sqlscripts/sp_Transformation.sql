/****** Object:  StoredProcedure [asr].[sp_Transformation]    Script Date: 3/19/2019 2:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
Create PROCEDURE [asr].[sp_Transformation]

AS
BEGIN
IF OBJECT_ID('asr.Finaltable', 'U') IS NOT NULL
 DROP TABLE asr.Finaltable;

 SELECT [Service Vendor]
      ,[Line of business]
      ,[PO]
      ,[SKU]
      ,[Quantity] + 1 as [Quantity]
      ,[Serial Number]
      ,[CVE SKU]
      ,[OEM SKU] into [asr].[Finaltable]
  FROM [asr].[Sampletable]

END


