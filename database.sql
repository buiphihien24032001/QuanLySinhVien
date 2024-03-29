USE [FPL_DAOTAO]
GO
/****** Object:  Table [dbo].[GRADE]    Script Date: 03-Jun-21 1:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRADE](
	[ID] [int] NOT NULL,
	[MASV] [nvarchar](50) NULL,
	[Tienganh] [int] NULL,
	[Tinhoc] [int] NULL,
	[GDTC] [int] NULL,
 CONSTRAINT [PK_GRADE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 03-Jun-21 1:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[MASV] [nvarchar](50) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDT] [nvarchar](15) NULL,
	[Gioitinh] [bit] NULL,
	[Diachi] [nvarchar](50) NULL,
	[Hinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_STUDENTS] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 03-Jun-21 1:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (0, N'sv003', 10, 10, 8)
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (1, N'sv001', 8, 9, 10)
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (2, N'sv002', 7, 6, 9)
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (3, N'sv003', 10, 10, 8)
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (4, N'sv004', 9, 6, 5)
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (5, N'sv005', 10, 9, 10)
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (6, N'sv006', 10, 10, 10)
INSERT [dbo].[GRADE] ([ID], [MASV], [Tienganh], [Tinhoc], [GDTC]) VALUES (7, N'sv007', 10, 9, 5)
INSERT [dbo].[STUDENTS] ([MASV], [Hoten], [Email], [SoDT], [Gioitinh], [Diachi], [Hinh]) VALUES (N'sv001', N'Bùi Phi Hiền', N'hienbui@gmail.com', N'0365361218', 1, N'Dong Nai', N'hien.jpg')
INSERT [dbo].[STUDENTS] ([MASV], [Hoten], [Email], [SoDT], [Gioitinh], [Diachi], [Hinh]) VALUES (N'sv002', N'Bùi Trọng Nghĩa', N'nghiabui@gmail.com', N'0548634354', 1, N'Gia kiem', N'nghia.jpg')
INSERT [dbo].[STUDENTS] ([MASV], [Hoten], [Email], [SoDT], [Gioitinh], [Diachi], [Hinh]) VALUES (N'sv003', N'Đặng Đoàn Bảo Hân', N'handangdoan@gmail.com', N'0353651547', 1, N'Da Nang', N'han.jpg')
INSERT [dbo].[STUDENTS] ([MASV], [Hoten], [Email], [SoDT], [Gioitinh], [Diachi], [Hinh]) VALUES (N'sv004', N'Võ Thị Mỹ Uyên', N'uyenvtm@gmail.com', N'0354687459', 0, N'Binh Thuan', N'uyen.jpg')
INSERT [dbo].[STUDENTS] ([MASV], [Hoten], [Email], [SoDT], [Gioitinh], [Diachi], [Hinh]) VALUES (N'sv005', N'Trần Mộng Quỳnh', N'quynhtran@gmail.com', N'0351248974', 0, N'TPHCM', N'quynh.jpg')
INSERT [dbo].[STUDENTS] ([MASV], [Hoten], [Email], [SoDT], [Gioitinh], [Diachi], [Hinh]) VALUES (N'sv006', N'Vũ Thanh Huyền', N'huyenvuthanh@gmail.com', N'0372547854', 0, N'Ha Noi', N'huyen.jpg')
INSERT [dbo].[STUDENTS] ([MASV], [Hoten], [Email], [SoDT], [Gioitinh], [Diachi], [Hinh]) VALUES (N'sv007', N'Vu Thanh Huynh', N'asdas@gmail.com', N'0564784521', 0, N'Ninh Thuan', N'5.png')
INSERT [dbo].[USERS] ([username], [password], [role]) VALUES (N'adminbuiphihien', N'240301', N'phong dao tao')
INSERT [dbo].[USERS] ([username], [password], [role]) VALUES (N'buiphihien', N'240301', N'giang vien')
ALTER TABLE [dbo].[GRADE]  WITH CHECK ADD  CONSTRAINT [fk_msv] FOREIGN KEY([MASV])
REFERENCES [dbo].[STUDENTS] ([MASV])
GO
ALTER TABLE [dbo].[GRADE] CHECK CONSTRAINT [fk_msv]
GO
