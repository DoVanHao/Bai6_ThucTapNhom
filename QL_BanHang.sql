USE [QL_Banhang]
GO
/****** Object:  Table [dbo].[tblTempCart]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblTempCart]
GO
/****** Object:  Table [dbo].[tblReorder]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblReorder]
GO
/****** Object:  Table [dbo].[tblRecordInventory]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblRecordInventory]
GO
/****** Object:  Table [dbo].[tblRecord]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblRecord]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblProduct]
GO
/****** Object:  Table [dbo].[tblOrderNote2]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblOrderNote2]
GO
/****** Object:  Table [dbo].[tblOrderNote]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblOrderNote]
GO
/****** Object:  Table [dbo].[tblNewOrder]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblNewOrder]
GO
/****** Object:  Table [dbo].[tblManufacturer]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblManufacturer]
GO
/****** Object:  Table [dbo].[tblLogTrail]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblLogTrail]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblLogin]
GO
/****** Object:  Table [dbo].[tblCashierRecord]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblCashierRecord]
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblAuditTrail]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 8/27/2019 2:17:57 PM ******/
DROP TABLE [dbo].[tblAdmin]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblCashierRecord]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblLogin]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblLogTrail]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblManufacturer]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblNewOrder]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblOrderNote]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblOrderNote2]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblProduct]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblRecord]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblRecordInventory]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblReorder]    Script Date: 8/27/2019 2:17:57 PM ******/
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
/****** Object:  Table [dbo].[tblTempCart]    Script Date: 8/27/2019 2:17:57 PM ******/
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
