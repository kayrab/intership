USE [Sofia Airport]
GO

/****** Object:  Table [dbo].[Airports]    Script Date: 14/07/2022 15:56:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Airports](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Airports] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Airports]  WITH CHECK ADD  CONSTRAINT [FK_Airports_Airports] FOREIGN KEY([ID])
REFERENCES [dbo].[Airports] ([ID])
GO

ALTER TABLE [dbo].[Airports] CHECK CONSTRAINT [FK_Airports_Airports]
GO

