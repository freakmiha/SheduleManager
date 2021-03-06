USE [master]
GO
/****** Object:  Database [DataBase_Shedule]    Script Date: 11.06.2017 23:01:02 ******/
CREATE DATABASE [DataBase_Shedule]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DataBase_Shedule', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DataBase_Shedule.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DataBase_Shedule_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DataBase_Shedule_log.ldf' , SIZE = 92864KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DataBase_Shedule] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataBase_Shedule].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataBase_Shedule] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET ARITHABORT OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DataBase_Shedule] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DataBase_Shedule] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DataBase_Shedule] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DataBase_Shedule] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DataBase_Shedule] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET RECOVERY FULL 
GO
ALTER DATABASE [DataBase_Shedule] SET  MULTI_USER 
GO
ALTER DATABASE [DataBase_Shedule] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DataBase_Shedule] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DataBase_Shedule] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DataBase_Shedule] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DataBase_Shedule', N'ON'
GO
USE [DataBase_Shedule]
GO
/****** Object:  SqlAssembly [SheduleCLR]    Script Date: 11.06.2017 23:01:02 ******/
CREATE ASSEMBLY [SheduleCLR]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C01030090AA20590000000000000000E00022200B013000000C00000006000000000000E22B0000002000000040000000000010002000000002000004000000000000000600000000000000008000000002000000000000030060850000100000100000000010000010000000000000100000000000000000000000902B00004F00000000400000D803000000000000000000000000000000000000006000000C000000582A00001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000E80B000000200000000C000000020000000000000000000000000000200000602E72737263000000D80300000040000000040000000E0000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000001200000000000000000000000000004000004200000000000000000000000000000000C42B000000000000480000000200050090210000C808000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B300500FF000000010000110004FE151200000103FE1513000001000F00281000000A0A062C1600047201000070281100000A8112000001DDCD0000000F00281200000A281300000A16FE010B072C22000472610000700F00281200000A281400000A281100000A8112000001DD9800000000000F00281200000A191719731500000A0C00086F1600000A690D098D1C00000113041613062B07110611055813060811041106091106596F1700000A25130516FE02130711072DDF031104731800000A811300000100DE0B082C07086F1900000A00DC00DE171308000411086F1A00000A281100000A8112000001DE1ADE181309000411096F1A00000A281100000A811200000100DE002A00012800000200780047BF000B000000000000670066CD00171500000100000F00D7E60018150000012202281B00000A002A00000042534A4201000100000000000C00000076342E302E33303331390000000005006C00000080020000237E0000EC0200007403000023537472696E67730000000060060000EC000000235553004C0700001000000023475549440000005C0700006C01000023426C6F620000000000000002000001471502000900000000FA013300160000010000001D0000000200000002000000030000001B0000000F0000000100000001000000020000000000360201000000000006006D01DC020600DA01DC0206008B00AA020F00FC0200000600B3006D02060050016D02060031016D020600C1016D0206008D016D020600A6016D020600E0006D0206009F00BD0206007D00BD02060014016D020600FB0007020600390366020A00CA0089020A0021020B030A0053030B0306005B020A0006007F02660206005D000A0006002402660206003C000A00060020030A0006006B000A0006005F020A000600F80166020600510066020000000001000000000001000100010010005D005D03410001000100502000000000960037006A0001008421000000008618A40206000400000001006200020002002000020003004C030900A40201001100A40206001900A4020A002900A40210003100A40210003900A40210004100A40210004900A40210005100A40210005900A40210006100A40215006900A40210007100A40210007900A40210008900A4020600910050022B00910040032F009100FD013500B1002B033900B90032033E00A100A4024400D9002B024F00D900320053009900A4025B00E90075000600A900450035008100A402060020007B0065012E000B0076002E0013007F002E001B009E002E002300A7002E002B00C2002E003300C2002E003B00C2002E004300A7002E004B00C8002E005300C2002E005B00C2002E006300E0002E006B000A012E00730017011A000480000001000000000000000000000000005D030000040000000000000000000000610029000000000004000000000000000000000061001400000000000000003C4D6F64756C653E0053797374656D2E494F0053797374656D2E446174610066696C6544617461006D73636F726C69620052656164004C6F61640046696C654D6F6465006765745F4D6573736167650049446973706F7361626C650046696C650066696C654E616D650046696C65536861726500446973706F736500477569644174747269627574650044656275676761626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C654174747269627574650053716C50726F63656475726541747472696275746500417373656D626C7954726164656D61726B417474726962757465005461726765744672616D65776F726B41747472696275746500417373656D626C7946696C6556657273696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650042797465006765745F56616C75650053797374656D2E52756E74696D652E56657273696F6E696E670053716C537472696E67006765745F4C656E6774680053686564756C654D616E616765724C6962726172792E646C6C006765745F49734E756C6C0046696C6553747265616D0053797374656D0053797374656D2E5265666C656374696F6E00457863657074696F6E004D6963726F736F66742E53716C5365727665722E536572766572002E63746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C54797065730046696C654163636573730045786973747300466F726D6174004F626A656374006F705F496D706C6963697400726573756C740053716C42696E6172790053686564756C654D616E616765724C6962726172790000005F1F043004400430043C0435044204400420003C00460069006C0065004E0061006D0065003E0020003D04350420003C043E04360435044204200031044B0442044C0420003F044304410442044B043C04200028006E0075006C006C0029000180872404300439043B0420003C007B0030007D003E0020003D043504200041044304490435044104420432044304350442042C00200038043B04380420003D04350434043E0441044204300442043E0447043D043E0420003F04400430043204200034043B044F04200034043E044104420443043F04300420003A0420004404300439043B04430401000052A2EC96F7B4AA469E98C7AFAEAE51ED00042001010803200001052001011111042001010E042001010210070A02021251081D05080802125512550320000205000111490E0320000E040001020E0500020E0E1C0A2004010E1161116511690320000A072003081D050808052001011D0508B77A5C561934E0890B000301114910114D1011490801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000701000000001A01001553686564756C654D616E616765724C696272617279000005010000000017010012436F7079726967687420C2A920203230313700002901002439343139616236362D346466332D346230632D386633622D31613434636634386362383000000C010007312E302E302E3000004D01001C2E4E45544672616D65776F726B2C56657273696F6E3D76342E352E320100540E144672616D65776F726B446973706C61794E616D65142E4E4554204672616D65776F726B20342E352E32040100000000000000000092AA205900000000020000001C010000742A0000740C0000525344531F6DFDA6FD38A542AA89228A6384F4A001000000443A5C5F736F75726365735C53686564756C654D616E616765724C6962726172795C53686564756C654D616E616765724C6962726172795C6F626A5C44656275675C53686564756C654D616E616765724C6962726172792E70646200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B82B00000000000000000000D22B0000002000000000000000000000000000000000000000000000C42B0000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF2500200010000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000584000007C03000000000000000000007C0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004DC020000010053007400720069006E006700460069006C00650049006E0066006F000000B802000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000022000100010043006F006D00700061006E0079004E0061006D0065000000000000000000540016000100460069006C0065004400650073006300720069007000740069006F006E0000000000530068006500640075006C0065004D0061006E0061006700650072004C006900620072006100720079000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E003000000054001A00010049006E007400650072006E0061006C004E0061006D0065000000530068006500640075006C0065004D0061006E0061006700650072004C006900620072006100720079002E0064006C006C0000004800120001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020002000320030003100370000002A00010001004C006500670061006C00540072006100640065006D00610072006B00730000000000000000005C001A0001004F0072006900670069006E0061006C00460069006C0065006E0061006D0065000000530068006500640075006C0065004D0061006E0061006700650072004C006900620072006100720079002E0064006C006C0000004C0016000100500072006F0064007500630074004E0061006D00650000000000530068006500640075006C0065004D0061006E0061006700650072004C006900620072006100720079000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E00300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000C000000E43B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = SAFE

GO
/****** Object:  StoredProcedure [dbo].[clr_LoadFile]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[clr_LoadFile]
	@FileName [nvarchar](max),
	@FileBinary [varbinary](max) OUTPUT,
	@ErrorMessage [nvarchar](max) OUTPUT
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [SheduleCLR].[SheduleManagerLibrary.File].[Load]
GO
/****** Object:  StoredProcedure [dbo].[p_Academic_Years]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_Academic_Years]
as
begin
	select 
		ay.Academic_Years_ID
		, ay.Year_Begin
		, ay.Year_End
		, cast(ay.Year_Begin as varchar(4)) + ' - ' + cast(ay.Year_End as varchar(4)) as AcademicYears
	from dbo.t_Academic_Years as ay
end
GO
/****** Object:  StoredProcedure [dbo].[p_Academic_Years_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Academic_Years_Save]
	@Action int, @Academic_Years_ID int, @Year_Begin int, @Year_End int
as
begin
	if (@Action = 1)
	begin
		insert into dbo.t_Academic_Years(Year_Begin, Year_End) select @Year_Begin, @Year_End
		return scope_identity()
	end
	else if (@Action = 2)
	begin
		update dbo.t_Academic_Years 
		set 
			Year_Begin = @Year_Begin 
			, Year_End = @Year_End
		where 
			Academic_Years_ID = @Academic_Years_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_ClassRooms]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_ClassRooms]
as
begin
	select 
		cr.ClassRooms_ID
		, cr.Name
	from dbo.t_ClassRooms as cr
end

GO
/****** Object:  StoredProcedure [dbo].[p_ClassRooms_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_ClassRooms_Save] 
	@Action int, @ClassRooms_ID int, @Name varchar(16)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_ClassRooms (Name) select @Name
		return scope_identity()
	end
	else if (@Action = 2)
	begin
		update dbo.t_ClassRooms set Name = @Name where ClassRooms_ID = @ClassRooms_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Days]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Days]
as
begin
	select d.Days_ID, d.Name from dbo.t_Days as d
end
GO
/****** Object:  StoredProcedure [dbo].[p_Days_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_Days_Save] 
	@Action int, @Days_ID int, @Name varchar(16)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Days (Name) select @Name
		return scope_identity()
	end
	else if (@Action = 2)
	begin
		update dbo.t_Days set Name = @Name where Days_ID = @Days_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_DictionariesList]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_DictionariesList]
as 
begin
	select 
		Dictionaries_ID
		, Name
		, TableName
		, ViewName
	from dbo.t_Dictionaries
	order by Name
end
GO
/****** Object:  StoredProcedure [dbo].[p_Groups]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Groups]
as
begin
	select g.Groups_ID, g.Name from dbo.t_Groups as g
end
GO
/****** Object:  StoredProcedure [dbo].[p_Groups_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_Groups_Save] 
	@Action int, @Groups_ID int, @Name varchar(16)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Groups (Name) select @Name
		return scope_identity()
	end
	else if (@Action = 2)
	begin
		update dbo.t_Groups set Name = @Name where Groups_ID = @Groups_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Institutes]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Institutes]
as
begin
	select 
		inst.Institutes_ID, inst.Name
	from dbo.t_Institutes as inst
end
GO
/****** Object:  StoredProcedure [dbo].[p_Institutes_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Institutes_Save] 
	@Action int, @Institutes_ID int, @Name varchar(16)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Institutes (Name) select @Name
	end
	else if (@Action = 2)
	begin
		update dbo.t_Institutes set Name = @Name where Institutes_ID = @Institutes_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Lesson_Number]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Lesson_Number]
as
begin
	select ln.Lesson_Number_ID, ln.Number, ln.TimeBegin, ln.TimeEnd from dbo.t_Lesson_Number as ln
end
GO
/****** Object:  StoredProcedure [dbo].[p_Lesson_Number_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_Lesson_Number_Save]
	@Action int, @Lesson_Number_ID int, @Number int, @TimeBegin varchar(8), @TimeEnd varchar(8)
as
begin
	if (@Action = 1)
	begin
		insert into dbo.t_Lesson_Number (Number, TimeBegin, TimeEnd) 
		select @Number, cast(@TimeBegin as time(0)),  cast(@TimeEnd as time(0))
		return scope_identity()
	end
	else if (@Action = 2)
	begin
		update dbo.t_Lesson_Number 
		set 
			Number = @Number
			, TimeBegin = cast(@TimeBegin as time(0))
			, TimeEnd = cast(@TimeEnd as time(0))
		where 
			Lesson_Number_ID = @Lesson_Number_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Lesson_Type]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Lesson_Type]
as
begin
	select lt.Lesson_Type_ID, lt.Name, lt.Symbol from dbo.t_Lesson_Type as lt
end
GO
/****** Object:  StoredProcedure [dbo].[p_Lesson_Type_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Lesson_Type_Save]
	@Action int, @Lesson_Type_ID int, @Name varchar(16), @Symbol varchar(8)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Lesson_Type(Name, Symbol) select @Name, @Symbol
	end
	else if (@Action = 2)
	begin
		update dbo.t_Lesson_Type set Name = @Name, Symbol = @Symbol where Lesson_Type_ID = @Lesson_Type_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Rep_Shedule]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Rep_Shedule] @Shedules_ID int
as 
begin
	select
		sh.Shedules_ID
		, cast(ay.Year_Begin as varchar(4)) + ' - ' + cast(ay.Year_End as varchar(4)) as AcademicYears
		, ay.Academic_Years_ID as _AcademicYearsID
		, inst.Name as InstitutName
		, inst.Institutes_ID as _InstitutID
		, sem.Name as SemestrName
		, sem.Semestrs_ID as _SemestrID
		, shd.Shedules_Detail_ID
		, d.Name as DayName
		, g.Name as GroupName
		, ln.Number as LessonNumber
		, ln.TimeBegin
		, ln.TimeEnd
		, lt.Name as LessonTypeName
		, lt.Symbol as LessonTypeSymbol
		, s.Name as SubjectName
		, t.Name as TeacherName
		, w.Name as WeekName
		, w.Symbol as WeekSymbol
		, cr.Name as ClassRoomName
	from dbo.t_Shedules as sh
		left join dbo.t_Shedules_Detail as shd on shd.Shedules_ID = sh.Shedules_ID
		left join dbo.t_Academic_Years as ay on ay.Academic_Years_ID = sh.Accademic_Years_ID
		left join dbo.t_Institutes as inst on inst.Institutes_ID = sh.Institutes_ID
		left join dbo.t_Semestrs as sem on sem.Semestrs_ID = sh.Semesters_ID
		left join dbo.t_Days as d on d.Days_ID = shd.Days_ID
		left join dbo.t_Groups as g on g.Groups_ID = shd.Groups_ID
		left join dbo.t_Lesson_Number as ln on ln.Lesson_Number_ID = shd.Lesson_Number_ID
		left join dbo.t_Lesson_Type as lt on lt.Lesson_Type_ID = shd.Lesson_Type_ID
		left join dbo.t_Subjects as s on s.Subjects_ID = shd.Subject_ID
		left join dbo.t_Teachers as t on t.Teachers_ID = shd.Teachers_ID
		left join dbo.t_Weeks as w on w.Weeks_ID = shd.Weeks_ID
		left join dbo.t_ClassRooms as cr on cr.ClassRooms_ID = shd.ClassRooms_ID
	where sh.Shedules_ID = @Shedules_ID
end
GO
/****** Object:  StoredProcedure [dbo].[p_Rep_SheduleTeacher]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Rep_SheduleTeacher] 
@Academic_Years_ID int, @Semesters_ID int, @Teachers_ID int
as 
begin
	select
		sh.Shedules_ID
		, cast(ay.Year_Begin as varchar(4)) + ' - ' + cast(ay.Year_End as varchar(4)) as AcademicYears
		, ay.Academic_Years_ID as _AcademicYearsID
		, inst.Name as InstitutName
		, inst.Institutes_ID as _InstitutID
		, sem.Name as SemestrName
		, sem.Semestrs_ID as _SemestrID
		, shd.Shedules_Detail_ID
		, d.Name as DayName
		, g.Name as GroupName
		, ln.Number as LessonNumber
		, ln.TimeBegin
		, ln.TimeEnd
		, lt.Name as LessonTypeName
		, lt.Symbol as LessonTypeSymbol
		, s.Name as SubjectName
		, t.Name as TeacherName
		, w.Name as WeekName
		, w.Symbol as WeekSymbol
		, cr.Name as ClassRoomName
	from dbo.t_Shedules as sh
		left join dbo.t_Shedules_Detail as shd on shd.Shedules_ID = sh.Shedules_ID
		left join dbo.t_Academic_Years as ay on ay.Academic_Years_ID = sh.Accademic_Years_ID
		left join dbo.t_Institutes as inst on inst.Institutes_ID = sh.Institutes_ID
		left join dbo.t_Semestrs as sem on sem.Semestrs_ID = sh.Semesters_ID
		left join dbo.t_Days as d on d.Days_ID = shd.Days_ID
		left join dbo.t_Groups as g on g.Groups_ID = shd.Groups_ID
		left join dbo.t_Lesson_Number as ln on ln.Lesson_Number_ID = shd.Lesson_Number_ID
		left join dbo.t_Lesson_Type as lt on lt.Lesson_Type_ID = shd.Lesson_Type_ID
		left join dbo.t_Subjects as s on s.Subjects_ID = shd.Subject_ID
		left join dbo.t_Teachers as t on t.Teachers_ID = shd.Teachers_ID
		left join dbo.t_Weeks as w on w.Weeks_ID = shd.Weeks_ID
		left join dbo.t_ClassRooms as cr on cr.ClassRooms_ID = shd.ClassRooms_ID
	where sh.Accademic_Years_ID = @Academic_Years_ID
		and sh.Semesters_ID = @Semesters_ID
		and shd.Teachers_ID = @Teachers_ID
end
GO
/****** Object:  StoredProcedure [dbo].[p_Semestrs]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Semestrs]
as
begin
	select sem.Semestrs_ID, sem.Name from dbo.t_Semestrs as sem
end
GO
/****** Object:  StoredProcedure [dbo].[p_Semestrs_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Semestrs_Save] 
	@Action int, @Semestrs_ID int, @Name varchar(16)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Semestrs (Name) select @Name
	end
	else if (@Action = 2)
	begin
		update dbo.t_Semestrs set Name = @Name where Semestrs_ID = @Semestrs_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Shedule]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_Shedule] @Shedules_ID int
as 
begin
	select
		sh.Shedules_ID
		, cast(ay.Year_Begin as varchar(4)) + ' - ' + cast(ay.Year_End as varchar(4)) as AcademicYears
		, ay.Academic_Years_ID as _AcademicYearsID
		, inst.Name as InstitutName
		, inst.Institutes_ID as _InstitutID
		, sem.Name as SemestrName
		, sem.Semestrs_ID as _SemestrID
		, shd.Shedules_Detail_ID
		, d.Name as DayName
		, g.Name as GroupName
		, ln.Number as LessonNumber
		, ln.TimeBegin
		, ln.TimeEnd
		, lt.Name as LessonTypeName
		, s.Name as SubjectName
		, t.Name as TeacherName
		, w.Name as WeekName
		, cr.Name as ClassRoomName
	from dbo.t_Shedules as sh
		left join dbo.t_Shedules_Detail as shd on shd.Shedules_ID = sh.Shedules_ID
		left join dbo.t_Academic_Years as ay on ay.Academic_Years_ID = sh.Accademic_Years_ID
		left join dbo.t_Institutes as inst on inst.Institutes_ID = sh.Institutes_ID
		left join dbo.t_Semestrs as sem on sem.Semestrs_ID = sh.Semesters_ID
		left join dbo.t_Days as d on d.Days_ID = shd.Days_ID
		left join dbo.t_Groups as g on g.Groups_ID = shd.Groups_ID
		left join dbo.t_Lesson_Number as ln on ln.Lesson_Number_ID = shd.Lesson_Number_ID
		left join dbo.t_Lesson_Type as lt on lt.Lesson_Type_ID = shd.Lesson_Type_ID
		left join dbo.t_Subjects as s on s.Subjects_ID = shd.Subject_ID
		left join dbo.t_Teachers as t on t.Teachers_ID = shd.Teachers_ID
		left join dbo.t_Weeks as w on w.Weeks_ID = shd.Weeks_ID
		left join dbo.t_ClassRooms as cr on cr.ClassRooms_ID = shd.ClassRooms_ID
	where sh.Shedules_ID = @Shedules_ID
end
GO
/****** Object:  StoredProcedure [dbo].[p_Shedule_Delete]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_Shedule_Delete] @Shedule_ID int
as 
begin
	begin try
		begin tran
		delete from dbo.t_Files where Files_ID = (select Files_ID from dbo.t_Shedules where Shedules_ID = @Shedule_ID)
		delete from dbo.t_Shedules where Shedules_ID = @Shedule_ID
		delete from dbo.t_Shedules_Detail where Shedules_ID = @Shedule_ID		 
		if (@@trancount > 0) commit
	end try
	begin catch
		declare @ErrorMessage varchar(max) = error_message()
		if (@@trancount > 0) rollback
		raiserror('Ошибка при удалении расписания: %s', 16, 1, @ErrorMessage)
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[p_SheduleParse]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_SheduleParse]	@FilePath varchar(max), @FileBinary varbinary(max) = null
as
begin
	-- {Если запускается из Microsoft SQL Server Management Studio, то выводим сообщения} 
	if app_name() like '%Microsoft SQL Server Management Studio%' declare @_debug bit = 1	
	
	begin try
		-- {Получим имя файла} 
		declare @FileName varchar(1024) = right(@FilePath, charindex('\', reverse(@FilePath))-1)

		-- {Загрузим файл}
		declare @ErrorMessage varchar(max)
		--declare @FileBinary varbinary(max), 
		--exec dbo.clr_LoadFile @FileName = @FilePath, @FileBinary = @FileBinary out, @ErrorMessage = @ErrorMessage out
		--if ((len(@ErrorMessage) > 0) or (datalength(@FileBinary) = 0)) raiserror('Ошибка при загрузке файла расписания: %s', 16, 1, @ErrorMessage)

		-- {Запишем файл в таблицу} 
		insert into dbo.t_Files (Name, Date, FileData) select @FileName, getdate(), @FileBinary 
		declare @Files_ID int = scope_identity()

		-- {Заполнение временной таблицы из файла} 
		if object_id('tempdb..#rasp') is not null drop table #rasp

		-- {Добавим файл Excel к связному серверу}
		if (exists(select 1 from sys.servers where name = 'XlsLnkSrv')) exec sp_dropserver @server = 'XlsLnkSrv', @droplogins = 'droplogins'
		exec sp_addlinkedserver @server = 'XlsLnkSrv', @srvproduct = 'ACE 12.0', @provider = 'Microsoft.ACE.OLEDB.12.0', @datasrc = @FilePath, @provstr = 'Excel 12.0; HDR=No; IMEX=1;'

		--select * into #rasp from openquery (XlsLnkSrv, 'select * from [Лист1$]')
		--exec('select * into #rasp from openrowset(''Microsoft.ACE.OLEDB.12.0'', ''Excel 12.0; HDR=No; IMEX=1; Database='+@FilePath+''', [Лист1$]) tt')

		-- {Узнаем количество колонок во временной таблице} 
		declare @_countColumns int = (select count(*) from tempdb.sys.columns where object_id = object_id('tempdb..#rasp')) 
		if (@_debug = 1) raiserror('# Количество колонок во временной таблице: %i', 0, 1, @_countColumns)

		-- {Добавим поле id} 
		alter table #rasp add id int identity(1,1)

		-- {Получим строку с описанием института, курса и учебного года} 
		declare @_information varchar(max) = (select top 1 F2 from #rasp) 
		set @_information = replace(replace(replace(@_information, char(10), ''), char(13), ''), '  ', '') 
		if (@_debug = 1) raiserror('# @_information = %s', 1, 0, @_information)

		-- {Разберем полученную строку} 
		declare @_semestr varchar(max) = right(rtrim(left(@_information, charindex('СЕМЕСТРА', upper(@_information))-1))
			, charindex(' ', reverse(rtrim(left(@_information, charindex('СЕМЕСТРА', upper(@_information))-1))))-1)
		declare @Semestrs_ID int 
		if (upper(@_semestr) = 'ВЕСЕННЕГО') set @Semestrs_ID = (select Semestrs_ID from dbo.t_Semestrs where Name = 'Весенний')
		else set @Semestrs_ID = (select Semestrs_ID from dbo.t_Semestrs where Name = 'Осенний')

		declare @_institut varchar(max) = left(substring(@_information, charindex('КУРСА', upper(@_information))+6, len(@_information)),
			charindex(' НА ', upper(substring(@_information, charindex('КУРСА', upper(@_information))+6, len(@_information))))-1)
		if (upper(@_institut) like 'ИНСТИТУТА') set @_institut = replace(@_institut, 'Института', 'Институт') 
		if (upper(@_institut) like 'ФИЛИАЛА') set @_institut = replace(@_institut, 'Филиала', 'Филиал')

		declare @_academicYears varchar(max) = right(@_information, charindex(' АН ', reverse(upper(@_information)))-1) 
		declare @_yearBegin int = substring(@_academicYears, 1, charindex('-', @_academicYears)-1) 
		declare @_yearEnd int = substring(@_academicYears, charindex('-', @_academicYears)+1, 4)

		-- {Добавим строку в таблицу расписаний} 
		declare @Institutes_ID int 
		if (not(exists(select top 1 * from dbo.t_Institutes where upper(Name) = upper(@_institut)))) 
		begin
			insert into dbo.t_Institutes (Name) select @_institut 
			set @Institutes_ID = scope_identity()
		end 
		else 
		begin
			set @Institutes_ID = (select Institutes_ID from dbo.t_Institutes where upper(Name) = upper(@_institut))
		end

		declare @Academic_Years_ID int 
		if (not(exists(select top 1 * from dbo.t_Academic_Years where Year_Begin = @_yearBegin and Year_End = @_yearEnd))) 
		begin
			insert into dbo.t_Academic_Years (Year_Begin, Year_End) select @_yearBegin, @_yearEnd 
			set @Academic_Years_ID = scope_identity()
		end 
		else 
		begin
			set @Academic_Years_ID = (select Academic_Years_ID from dbo.t_Academic_Years where Year_Begin = @_yearBegin and Year_End = @_yearEnd)
		end

		insert into dbo.t_Shedules (Files_ID, Accademic_Years_ID, Institutes_ID, Semesters_ID, Is_Actual) select @Files_ID, @Academic_Years_ID, @Institutes_ID, @Semestrs_ID, 0
		declare @Shedules_ID int = scope_identity()

		-- {Удалим ненужные поля} 
		delete from #rasp where id = 1 
		delete from #rasp where id >= (select id from #rasp where upper(F3) like upper('%Начальник%'))

		if object_id('tempdb..#t_rasp') is not null drop table #t_rasp

		create table #t_rasp (
			id int identity(1,1), GroupNumber varchar(max), Day varchar(max), NumberLesson varchar(max) 
			, DateBegin varchar(max), DateEnd varchar(max), Weekend varchar(max), Name varchar(max) 
			, Type varchar(max), Teacher varchar(max), Cabinet varchar(max), old_id int)
		declare @i int = 2 

		while @i <= @_countColumns 
		begin
			declare @_columnName varchar(8) = (select name from tempdb.sys.columns where object_id = object_id('tempdb..#rasp') and column_id = @i) 
			declare @_sql nvarchar(max) = N'set @_columnValue = (select ' + @_columnName + ' from #rasp where id = 3)' 
			declare @_columnValue varchar(max) 
	
			exec sp_executesql @_sql, N'@_columnValue varchar(max) out', @_columnValue = @_columnValue out 
			if (upper(ltrim(rtrim(@_columnValue))) = 'ПРЕДМЕТ') 
			begin
				-- {Узнаем номер группы} 
				declare @_groupNumber varchar(max) 
				set @_sql = N'set @_groupNumber = (select ' + @_columnName + ' from #rasp where id = 2)' 
				exec sp_executesql @_sql, N'@_groupNumber varchar(max) out', @_groupNumber = @_groupNumber out 	

				set @_sql = N' insert into #t_rasp (GroupNumber, Day, NumberLesson, DateBegin, DateEnd, Weekend, Name, Type, Teacher, Cabinet, old_id)
					select ''' + @_groupNumber + ''', F1, F2, F3, F4, F5, F' + cast(@i as varchar) + ', F' + cast(@i+1 as varchar) + ', F' + cast(@i+2 as varchar) + ', F' + cast(@i+3 as varchar) + ', id from #rasp where id >= 4' 
				exec sp_executesql @_sql
			end 
			set @i += 1
		end 
		if object_id('tempdb..#rasp') is not null drop table #rasp

		-- {Почистим таблицу от ненужных данных} 
		update #t_rasp set Name = null where Name in ('День', 'самостоятельных', 'занятий')

		select * from #t_rasp

		declare
			@id int
			, @GroupNumber varchar(max) 
			, @Day varchar(max) 
			, @NumberLesson varchar(max) 
			, @DateBegin varchar(max) 
			, @DateEnd varchar(max) 
			, @Weekend varchar(max) 
			, @SubjectName varchar(max) 
			, @Type varchar(max) 
			, @Teacher varchar(max) 
			, @Cabinet varchar(max)

		declare
			@Groups_ID int 
			, @Days_ID int 
			, @Lesson_Number_ID int 
			, @Weeks_ID int 
			, @Subject_ID int 
			, @Lesson_Type_ID int 
			, @Teachers_ID int 
			, @ClassRooms_ID int
	
		while (exists(select top 1 * from #t_rasp order by id)) 
		begin
			select top 1 @id = id, @GroupNumber = GroupNumber , @Day = Day , @NumberLesson = NumberLesson , @DateBegin = DateBegin , @DateEnd = DateEnd , @Weekend = Weekend , @SubjectName = Name , @Type = Type , @Teacher = Teacher , @Cabinet = Cabinet
			from #t_rasp order by id

			-- {Очистим переменные} 
			-- {Получим значения для записи в таблицы} 
			if ((@GroupNumber is not null) and (not(exists(select top 1 * from dbo.t_Groups where upper(Name) = upper(@GroupNumber))))) 
			begin
				insert into dbo.t_Groups (Name) select @GroupNumber set @Groups_ID = scope_identity()
			end 
			else 
			begin
				set @Groups_ID = (select Groups_ID from dbo.t_Groups where upper(Name) = upper(@GroupNumber))
			end

			if (@Day is not null) set @Days_ID = (select Days_ID from dbo.t_Days where upper(Name) = upper(@Day)) 
			if (@NumberLesson is not null) set @Lesson_Number_ID = (select Lesson_Number_ID from dbo.t_Lesson_Number where Number = @NumberLesson) 
			set @Weeks_ID = (select Weeks_ID from dbo.t_Weeks where Symbol = @Weekend) 
			set @Lesson_Type_ID = (select Lesson_Type_ID from dbo.t_Lesson_Type where upper(Symbol) = upper(@Type))

			-- {Проверим, есть ли номера недель}
			declare @t_Weeks_Numbers table(SubjectName varchar(max), Number int)
			insert into @t_Weeks_Numbers (SubjectName, Number) 
			select SubjectName, Number from dbo.f_SubjectName_Parse(@SubjectName)
			if (exists(select top 1 * from @t_Weeks_Numbers))			
				set @SubjectName = (select top 1 SubjectName from @t_Weeks_Numbers)

			-- {Проверка названия предмета в справочнике}
			if ((@SubjectName is not null) and (not(exists(select top 1 * from dbo.t_Subjects where upper(Name) = upper(@SubjectName) or upper(Name) like @SubjectName + '%')))) 
			begin
				insert into dbo.t_Subjects (Name) select @SubjectName set @Subject_ID = scope_identity()
			end 
			else 
			begin
				set @Subject_ID = (select Subjects_ID from dbo.t_Subjects where upper(Name) = upper(@SubjectName))
			end

			if ((@Teacher is not null) and (not(exists(select top 1 * from dbo.t_Teachers where upper(Name) = upper(@Teacher))))) 
			begin
				insert into dbo.t_Teachers (Name) select (@Teacher) set @Teachers_ID = scope_identity()
			end 
			else 
			begin
				set @Teachers_ID = (select Teachers_ID from dbo.t_Teachers where upper(Name) = upper(@Teacher))
			end

			if ((@Cabinet is not null) and (not(exists(select top 1 * from dbo.t_ClassRooms where upper(Name) = upper(@Cabinet))))) 
			begin
				insert into dbo.t_ClassRooms (Name) select (@Cabinet) set @ClassRooms_ID = scope_identity()
			end 
			else 
			begin
				set @ClassRooms_ID = (select ClassRooms_ID from dbo.t_ClassRooms where upper(Name) = upper(@Cabinet))
			end

			insert into dbo.t_Shedules_Detail (Shedules_ID, Groups_ID, Days_ID, Weeks_ID, Lesson_Number_ID, Subject_ID, Lesson_Type_ID, Teachers_ID, ClassRooms_ID) select @Shedules_ID, @Groups_ID, @Days_ID, @Weeks_ID, @Lesson_Number_ID, @Subject_ID, @Lesson_Type_ID, @Teachers_ID, @ClassRooms_ID
			declare @Shedules_Details_ID int = scope_identity()
			insert dbo.t_Weeks_Numbers (Shedules_Detail_ID, Number)
			select @Shedules_Details_ID, w.Number from @t_Weeks_Numbers as w

			delete from #t_rasp where id = @id
		end if object_id('tempdb..#rasp') is not null drop table #t_rasp select * from dbo.t_Shedules_Detail
		if (@@trancount > 0) commit
	end try
	begin catch
		if (@@trancount > 0) rollback
		set @ErrorMessage = error_message() 
		raiserror('%s', 16, 1, @ErrorMessage)
		return -1
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[p_Shedules_List]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_Shedules_List]
as begin
	select 		
		s.Shedules_ID
		, f.Name as FileName
		, f.Date as FileDate
		, cast(ay.Year_Begin as varchar(4)) + ' - ' + cast(ay.Year_End as varchar(4)) as AcademicYears
		, ay.Academic_Years_ID as _AcademicYearsID
		, i.Name as Institut
		, i.Institutes_ID as _InstitutID
		, sem.Name as Semestr
		, sem.Semestrs_ID as _SemestrID
		, s.Is_Actual		
	from dbo.t_Files as f
		left join dbo.t_Shedules as s on s.Files_ID = f.Files_ID
		left join dbo.t_Academic_Years as ay on ay.Academic_Years_ID = s.Accademic_Years_ID
		left join dbo.t_Institutes as i on i.Institutes_ID = s.Institutes_ID
		left join dbo.t_Semestrs as sem on sem.Semestrs_ID = s.Semesters_ID
end	



GO
/****** Object:  StoredProcedure [dbo].[p_ShedulesList_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[p_ShedulesList_Save]
	@ShedulesID int, @AcademicYearsID int, @InstitutID int, @SemestrID int, @IsActual bit
as
begin
	begin tran
	begin try
		update dbo.t_Shedules
		set Accademic_Years_ID = @AcademicYearsID
			, Institutes_ID = @InstitutID
			, Semesters_ID = @SemestrID
			, IS_Actual = @IsActual
		where
			Shedules_ID = @ShedulesID
		if (@@trancount > 0) commit
	end try
	begin catch
		declare @ErrorMessage varchar(max) = error_message()		
		if (@@trancount > 0) rollback
		raiserror('%s', 16, 1, @ErrorMessage)		
	end catch
end


GO
/****** Object:  StoredProcedure [dbo].[p_Subjects]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Subjects]
as
begin
	select s.Subjects_ID, s.Name from dbo.t_Subjects as s
end
GO
/****** Object:  StoredProcedure [dbo].[p_Subjects_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Subjects_Save] 
	@Action int, @Subjects_ID int, @Name varchar(16)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Subjects (Name) select @Name
	end
	else if (@Action = 2)
	begin
		update dbo.t_Subjects set Name = @Name where Subjects_ID = @Subjects_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Teachers]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Teachers]
as
begin
	select t.Teachers_ID, t.Name from dbo.t_Teachers as t
end
GO
/****** Object:  StoredProcedure [dbo].[p_Teachers_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Teachers_Save] 
	@Action int, @Teachers_ID int, @Name varchar(16)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Teachers (Name) select @Name
	end
	else if (@Action = 2)
	begin
		update dbo.t_Teachers set Name = @Name where Teachers_ID = @Teachers_ID
	end
end
GO
/****** Object:  StoredProcedure [dbo].[p_Weeks]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Weeks]
as
begin
	select w.Weeks_ID, w.Name, w.Symbol from dbo.t_Weeks as w
end
GO
/****** Object:  StoredProcedure [dbo].[p_Weeks_Save]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[p_Weeks_Save]
	@Action int, @Weeks_ID int, @Name varchar(16), @Symbol varchar(8)
as begin
	if (@Action = 1)
	begin
		insert into dbo.t_Weeks(Name, Symbol) select @Name, @Symbol
	end
	else if (@Action = 2)
	begin
		update dbo.t_Weeks set Name = @Name, Symbol = @Symbol where Weeks_ID = @Weeks_ID
	end
end
GO
/****** Object:  UserDefinedFunction [dbo].[f_SubjectName_Parse]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[f_SubjectName_Parse] (@subjectName varchar(max))
returns @t_WeeksNumbers table (SubjectName varchar(max), Number int)
as begin
	set @subjectName = replace(replace(@subjectName, char(10), ''), char(13), ' ')

	while charindex(' Н. ', upper(@subjectName)) > 0 begin
		declare @index int = charindex(' Н. ', upper(@subjectName))
		declare @numbers varchar(max) = left(@subjectName, @index)
		set @subjectName = substring(@subjectName, @index+3, len(@subjectName))

		declare @lenNumbers int = len(@numbers)
		declare @num varchar(max) = ''
		while (@lenNumbers >= 0) begin										
			declare @s varchar(max) = left(@numbers, 1)
			set @numbers = substring(@numbers, 2, len(@numbers))
			if (isnumeric(@s) = 1) and (@s <> ',') set @num += @s
			else 
			begin 
				if (len(@num) > 0)  
				begin
					insert into @t_WeeksNumbers (Number) select cast(@num as int)
					set @num = ''
				end
			end
			set @lenNumbers = @lenNumbers - 1
		end	
	end
	update @t_WeeksNumbers set SubjectName = @subjectName
	return
end









GO
/****** Object:  Table [dbo].[t_Academic_Years]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Academic_Years](
	[Academic_Years_ID] [int] IDENTITY(1,1) NOT NULL,
	[Year_Begin] [int] NULL,
	[Year_End] [int] NULL,
 CONSTRAINT [PK_t_Academic_Years] PRIMARY KEY CLUSTERED 
(
	[Academic_Years_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_ClassRooms]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_ClassRooms](
	[ClassRooms_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](16) NULL,
 CONSTRAINT [PK_t_ClassRooms] PRIMARY KEY CLUSTERED 
(
	[ClassRooms_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Days]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Days](
	[Days_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](16) NULL,
 CONSTRAINT [PK_t_Days] PRIMARY KEY CLUSTERED 
(
	[Days_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dictionaries]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dictionaries](
	[Dictionaries_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NULL,
	[TableName] [varchar](128) NULL,
	[ViewName] [varchar](128) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Files]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Files](
	[Files_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NULL,
	[Date] [datetime] NULL,
	[FileData] [varbinary](max) NULL,
 CONSTRAINT [PK_t_Files] PRIMARY KEY CLUSTERED 
(
	[Files_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Forms]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Forms](
	[Forms_ID] [int] IDENTITY(1,1) NOT NULL,
	[Files_ID] [nchar](10) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Forms_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Groups]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Groups](
	[Groups_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](16) NULL,
 CONSTRAINT [PK_t_Groups] PRIMARY KEY CLUSTERED 
(
	[Groups_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Institutes]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Institutes](
	[Institutes_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](1024) NULL,
 CONSTRAINT [PK_t_Institutes] PRIMARY KEY CLUSTERED 
(
	[Institutes_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Lesson_Number]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Lesson_Number](
	[Lesson_Number_ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[TimeBegin] [time](0) NULL,
	[TimeEnd] [time](0) NULL,
 CONSTRAINT [PK_t_Lesson_Number] PRIMARY KEY CLUSTERED 
(
	[Lesson_Number_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Lesson_Type]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Lesson_Type](
	[Lesson_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NULL,
	[Symbol] [varchar](8) NULL,
 CONSTRAINT [PK_t_Lesson_Type] PRIMARY KEY CLUSTERED 
(
	[Lesson_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Semestrs]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Semestrs](
	[Semestrs_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](16) NULL,
 CONSTRAINT [PK_t_Semestrs] PRIMARY KEY CLUSTERED 
(
	[Semestrs_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Shedules]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Shedules](
	[Shedules_ID] [int] IDENTITY(1,1) NOT NULL,
	[Files_ID] [int] NULL,
	[Accademic_Years_ID] [int] NULL,
	[Institutes_ID] [int] NULL,
	[Semesters_ID] [int] NULL,
	[Is_Actual] [bit] NULL,
 CONSTRAINT [PK_t_Shedules] PRIMARY KEY CLUSTERED 
(
	[Shedules_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Shedules_Detail]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Shedules_Detail](
	[Shedules_Detail_ID] [int] IDENTITY(1,1) NOT NULL,
	[Shedules_ID] [int] NULL,
	[Groups_ID] [int] NULL,
	[Days_ID] [int] NULL,
	[Weeks_ID] [int] NULL,
	[Lesson_Number_ID] [int] NULL,
	[Subject_ID] [int] NULL,
	[Lesson_Type_ID] [int] NULL,
	[Teachers_ID] [int] NULL,
	[ClassRooms_ID] [int] NULL,
 CONSTRAINT [PK_t_Shedules_Detail] PRIMARY KEY CLUSTERED 
(
	[Shedules_Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Subjects]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Subjects](
	[Subjects_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NULL,
 CONSTRAINT [PK_t_Subjects] PRIMARY KEY CLUSTERED 
(
	[Subjects_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Teachers]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Teachers](
	[Teachers_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](512) NULL,
 CONSTRAINT [PK_t_Teachers] PRIMARY KEY CLUSTERED 
(
	[Teachers_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Weeks]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Weeks](
	[Weeks_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](16) NULL,
	[Symbol] [varchar](2) NULL,
 CONSTRAINT [PK_t_Weeks] PRIMARY KEY CLUSTERED 
(
	[Weeks_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Weeks_Number]    Script Date: 11.06.2017 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Weeks_Number](
	[Weeks_Number_ID] [int] IDENTITY(1,1) NOT NULL,
	[Shedules_Detail_ID] [int] NULL,
	[Number] [int] NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [DataBase_Shedule] SET  READ_WRITE 
GO
