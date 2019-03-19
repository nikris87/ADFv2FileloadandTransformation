/****** Object:  StoredProcedure [asr].[sp_Filelogtest]    Script Date: 3/19/2019 1:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
Create PROCEDURE [asr].[sp_Fileexist]
(
    -- Add the parameters for the stored procedure here
@Filename varchar(250),
@Reamrks varchar(500)=''


)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
	Declare @filexist int
	if ((select count(1) from asr.Filelog where [filename]=@Filename)>0)

set @filexist=1

else
begin 
set @filexist=0
	insert into asr.Filelog
	select @Filename,@Reamrks   
end
select @filexist as fileexist

END
