USE [QL_Banhang]
GO
/****** Object:  Table [dbo].[tblTempCart]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblTempCart]
GO
/****** Object:  Table [dbo].[tblReorder]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblReorder]
GO
/****** Object:  Table [dbo].[tblRecordInventory]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblRecordInventory]
GO
/****** Object:  Table [dbo].[tblRecord]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblRecord]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblProduct]
GO
/****** Object:  Table [dbo].[tblOrderNote2]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblOrderNote2]
GO
/****** Object:  Table [dbo].[tblOrderNote]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblOrderNote]
GO
/****** Object:  Table [dbo].[tblNewOrder]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblNewOrder]
GO
/****** Object:  Table [dbo].[tblManufacturer]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblManufacturer]
GO
/****** Object:  Table [dbo].[tblLogTrail]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblLogTrail]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblLogin]
GO
/****** Object:  Table [dbo].[tblCashierRecord]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblCashierRecord]
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblAuditTrail]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 8/29/2019 8:33:18 PM ******/
DROP TABLE [dbo].[tblAdmin]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAuditTrail](
	[Dater] [varchar](50) NULL,
	[Transactype] [varchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Authority] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCashierRecord]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCashierRecord](
	[Cashier] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[DateTime] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogin](
	[ID] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLogTrail]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogTrail](
	[Dater] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Authority] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblManufacturer]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblManufacturer](
	[ID] [varchar](50) NOT NULL,
	[MName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNewOrder]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNewOrder](
	[IDOrder] [varchar](50) NOT NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
	[CritLimit] [varchar](50) NULL,
 CONSTRAINT [PK_tblNewOrder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOrderNote]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOrderNote](
	[OrderID] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
	[CritLimit] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOrderNote2]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOrderNote2](
	[OrderID] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ID] [varchar](50) NOT NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[CritLimit] [varchar](50) NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRecord]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRecord](
	[ID] [varchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[DateTime] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRecordInventory]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRecordInventory](
	[OrderID] [varchar](50) NULL,
	[ID] [varchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[DateTime] [varchar](50) NULL,
	[OrderType] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblReorder]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblReorder](
	[IDOrder] [varchar](50) NOT NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
 CONSTRAINT [PK_tblReorder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTempCart]    Script Date: 8/29/2019 8:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTempCart](
	[PID] [varchar](50) NOT NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[Total] [varchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblTempCart] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblAdmin] ([Username], [Password]) VALUES (N'admin', N'123')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'8/29/2019 8:30:02 PM', N'Deletion', N'All Items from Receive form were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'8/29/2019 8:30:32 PM', N'Deletion', N'Item: Quần tây nam has been removed from orders!', N'Admin')
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'hao', N'ID:W1DS8', N'T-Shirt', N'550', N'1', N'550.00', N'Nam', N'Medium', N'jagg', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'hao', N'ID:Sh007', N'Giày bitis hunter', N'800', N'2', N'1,600.00', N'Nam', N'Small', N'Bitis', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'hao', N'ID:006RW', N'Áo khoác nữ', N'200', N'2', N'400.00', N'Nữ', N'Medium', N'Gucci', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'hao', N'ID:Sh008', N'Áo phông nữ', N'300', N'1', N'300.00', N'Nữ', N'Medium', N'Adidas', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'hao', N'ID:BI0ZI', N'Black Short', N'200', N'4', N'800.00', N'Nam', N'Small', N'zat', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'nam', N'ID:Sh007', N'Giày bitis hunter', N'800', N'1', N'800.00', N'Nam', N'Small', N'Bitis', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'dong', N'ID:W1DS8', N'T-Shirt', N'550', N'2', N'1,100.00', N'Nam', N'Medium', N'jagg', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'dong', N'ID:Sh007', N'Giày bitis hunter', N'800', N'1', N'800.00', N'Nam', N'Small', N'Bitis', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'dong', N'ID:Sh008', N'Áo phông nữ', N'300', N'1', N'300.00', N'Nữ', N'Medium', N'Adidas', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'hao', N'ID:Sh008', N'Áo phông nữ', N'300', N'1', N'300.00', N'Nữ', N'Medium', N'Adidas', CAST(N'2019-10-04' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'nam', N'ID:Sh008', N'Áo phông nữ', N'300', N'1', N'300.00', N'Nữ', N'Medium', N'Adidas', CAST(N'2019-10-14' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'quyet', N'ID:BI0ZI', N'Black Short', N'200', N'1', N'200.00', N'Nam', N'Small', N'zat', CAST(N'2019-11-26' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'quyet', N'ID:W1DS8', N'T-Shirt', N'550', N'1', N'550.00', N'Nam', N'Medium', N'jagg', CAST(N'2019-11-26' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'quyet', N'ID:BI0ZI', N'Black Short', N'200', N'2', N'400.00', N'Nam', N'Small', N'zat', CAST(N'2019-11-26' AS Date))
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:0U2A2', N'Nguyễn Văn Nam', N'20', N'Đống Đa, Hà Nội', N'0987729331', N'nam', N'123')
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:3011A', N'Cao Mạnh Quyết', N'22', N'Hà Tĩnh', N'0986868686', N'quyet', N'123')
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:EE123', N'Đỗ Văn Hào', N'20', N'Duy Tiên, Hà Nam', N'09012452545', N'hao', N'123')
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:S9SSS', N'Dương Khắc Đông', N'21', N'Thanh Hóa', N'09195203959', N'dong', N'123')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'8/29/2019 8:29:19 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'8/29/2019 8:30:17 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:3FESJ', N'd')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:6H4J0', N'Anh')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:DR2TN', N'Xyz company')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:KLJT5', N'lel company')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:SONI3', N'fashion')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:YDG5I', N'Hanh')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:006RW', N'Áo khoác nữ', N'200', N'Nữ', N'Medium', N'Gucci', N'3', N'150', N'fashion', N'10')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:9XDK8', N'White Shirt', N'300', N'Nam', N'Medium', N'zaen', N'8', N'200', N'lel company', N'12')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:BI0ZI', N'Black Short', N'200', N'Nam', N'Small', N'zat', N'16', N'150', N'Xyz company', N'21')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:Sh007', N'Giày bitis hunter', N'800', N'Nam', N'Small', N'Bitis', N'9', N'600', N'fashion', N'17')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:Sh008', N'Áo phông nữ', N'300', N'Nữ', N'Medium', N'Adidas', N'5', N'200', N'fashion', N'19')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'Nam', N'Medium', N'jagg', N'1', N'400', N'lel company', N'15')
INSERT [dbo].[tblReorder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver]) VALUES (N'RoID:#N2!A', N'ID:Sh007', N'Giày bitis hunter', N'800', N'600', N'Nam', N'Small', N'Bitis', N'1', N'fashion', N'10/2/2019 11:03:14 PM', N'10/3/2019 11:03:12 PM')
INSERT [dbo].[tblReorder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver]) VALUES (N'RoID:NI1I2', N'ID:9XDK8', N'White Shirt', N'300', N'200', N'Nam', N'Medium', N'zaen', N'1', N'lel company', N'10/2/2019 11:03:21 PM', N'10/3/2019 11:03:20 PM')
INSERT [dbo].[tblReorder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver]) VALUES (N'RoID:SGODK', N'ID:W1DS8', N'T-Shirt', N'550', N'500', N'Nam', N'Medium', N'jagg', N'12', N'lel company', N'9/25/2019 8:58:09 PM', N'9/30/2019 8:58:04 PM')
