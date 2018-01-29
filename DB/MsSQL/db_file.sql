USE [master]
GO
/****** Object:  Database [MyApp]    Script Date: 1/19/2018 3:10:53 PM ******/
CREATE DATABASE [MyApp]
ALTER DATABASE [MyApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MyApp]
GO
/****** Object:  Table [dbo].[test]    Script Date: 1/19/2018 3:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[desc] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [MyApp] SET  READ_WRITE 
GO
