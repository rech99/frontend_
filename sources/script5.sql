USE [db_simpsons]
GO
/****** Object:  User [simpsons]    Script Date: 11/11/2019 12:50:28 p. m. ******/
CREATE USER [simpsons] FOR LOGIN [simpsons] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [simpsons]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 11/11/2019 12:50:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descp] [varchar](150) NULL,
	[photo] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [photo]) VALUES (2, N'Homero', N'Jay', N'Simpsons', 34, N'Papa de Bart, Lisa y Maggie Simpsons y esposo de Marge', N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Wax_Museum_Plus_%286345577800%29.jpg/800px-Wax_Museum_Plus_%286345577800%29.jpg')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [photo]) VALUES (3, N'Bartolomeo', N'Jay', N'Simpsons', 10, N'Hermano de Lisa y de Maggie Simpsons', N'https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Bart_Simpson_-_Skateboarding.png/200px-Bart_Simpson_-_Skateboarding.png')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [photo]) VALUES (4, N'Lisa', N'', N'Simpsons', 8, N'Hermana de Bart y de Maggie Simpsons', N'https://upload.wikimedia.org/wikipedia/en/thumb/e/ec/Lisa_Simpson.png/220px-Lisa_Simpson.png')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [photo]) VALUES (5, N'Margory', N'', N'Simpsons', 34, N'Mama de Bart, Lisa y Maggie Simpsons y esposa de Homero', N'https://upload.wikimedia.org/wikipedia/en/0/0b/Marge_Simpson.png')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
