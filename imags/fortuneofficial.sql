USE [National Fortune]
GO
/****** Object:  Table [dbo].[ChiTietIQ]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietIQ](
	[Mã IQ CSDL] [nvarchar](100) NOT NULL,
	[Mã SP] [nvarchar](255) NOT NULL,
	[Nhóm SP] [nvarchar](255) NULL,
	[Đơn vị tính] [nvarchar](255) NULL,
	[Số lượng] [float] NULL,
	[Giá mục tiêu của Sale (Gíá bốc)] [nvarchar](255) NULL,
	[Giá chốt báo KH] [nvarchar](255) NULL,
	[Giá MIN] [nvarchar](255) NULL,
	[Báo giá 1] [nvarchar](255) NULL,
	[Báo giá 2] [nvarchar](255) NULL,
	[Báo giá 3] [nvarchar](255) NULL,
	[Báo giá 4] [nvarchar](255) NULL,
	[Báo giá 5] [nvarchar](255) NULL,
	[Báo giá 6] [nvarchar](255) NULL,
	[Báo giá 7] [nvarchar](255) NULL,
	[Báo giá 8] [nvarchar](255) NULL,
	[Báo giá 9] [nvarchar](255) NULL,
	[Báo giá 10] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChiTietIQ] PRIMARY KEY CLUSTERED 
(
	[Mã IQ CSDL] ASC,
	[Mã SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietTSKT]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietTSKT](
	[ID bảng] [float] NOT NULL,
	[Mã SP] [nvarchar](255) NULL,
	[id nhóm tskt] [float] NULL,
	[giá trị] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChitietTSKT] PRIMARY KEY CLUSTERED 
(
	[ID bảng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DauMoi]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauMoi](
	[Mã Đầu Mối] [nvarchar](255) NOT NULL,
	[Tên] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
	[Chức vụ] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Nội dung trao đổi] [nvarchar](255) NULL,
	[Mã KH] [nvarchar](255) NULL,
 CONSTRAINT [PK_DauMoi] PRIMARY KEY CLUSTERED 
(
	[Mã Đầu Mối] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IQ]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IQ](
	[Ngày tạo] [nvarchar](255) NULL,
	[Mã IQ CSDL] [nvarchar](100) NOT NULL,
	[Mã IQ _(KH_SP_Date)] [nvarchar](255) NULL,
	[MÃ KH] [nvarchar](255) NULL,
	[Trạng thái] [nvarchar](255) NULL,
	[Ngành] [nvarchar](255) NULL,
	[Xuất xứ] [nvarchar](255) NULL,
	[Thời gian cần hàng] [datetime] NULL,
	[Địa điểm giao hàng (Loại giá)] [nvarchar](255) NULL,
	[Mức độ ưu tiên] [nvarchar](255) NULL,
 CONSTRAINT [PK_IQ] PRIMARY KEY CLUSTERED 
(
	[Mã IQ CSDL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Mã KH] [nvarchar](255) NOT NULL,
	[Tên khách hàng/NCC] [nvarchar](255) NULL,
	[Số điện thoại] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Địa chỉ] [nvarchar](255) NULL,
	[Người quản lý] [nvarchar](255) NULL,
	[Thảo luận] [nvarchar](255) NULL,
	[Phân loại] [nvarchar](255) NULL,
	[Mức độ tiềm năng] [nvarchar](255) NULL,
	[Catalogue] [nvarchar](255) NULL,
	[Tốc độ phản hồi] [nvarchar](255) NULL,
	[OEM] [nvarchar](255) NULL,
	[Range of commission] [nvarchar](255) NULL,
	[References] [nvarchar](255) NULL,
	[Technical data sheet] [nvarchar](255) NULL,
	[Danh xưng] [nvarchar](255) NULL,
	[Số hợp đồng] [float] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Mã KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[Mã NCC] [nvarchar](255) NOT NULL,
	[Tên NCC] [nvarchar](255) NULL,
	[SĐT] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Địa chỉ] [nvarchar](255) NULL,
	[Website] [nvarchar](255) NULL,
	[Thông tin người liên lạc 1] [nvarchar](255) NULL,
	[Thông tin người liên lạc 2] [nvarchar](255) NULL,
	[Thông tin người liên lạc 3] [nvarchar](255) NULL,
	[Thông tin người liên lạc 4] [nvarchar](255) NULL,
	[NOTE] [nvarchar](255) NULL,
	[LEVEL] [nvarchar](255) NULL,
	[OLD notes] [nvarchar](255) NULL,
	[Feedback đơn hàng đã nhập] [nvarchar](255) NULL,
	[Catalogue] [nvarchar](255) NULL,
	[References] [nvarchar](255) NULL,
	[Range of Commission] [nvarchar](255) NULL,
	[Technical data sheet] [nvarchar](255) NULL,
	[OEM] [nvarchar](255) NULL,
	[Tốc độ phản hồi] [nvarchar](255) NULL,
	[Nhóm tốc độ phản hồi] [nvarchar](255) NULL,
	[Tên người phụ trách] [nvarchar](255) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[Mã NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Mã SP] [nvarchar](255) NOT NULL,
	[Mã NCC] [nvarchar](255) NULL,
	[Nhóm SP] [nvarchar](255) NULL,
	[Tên SP chi tiết] [nvarchar](255) NULL,
	[Ngành] [nvarchar](255) NULL,
	[Mô tả Sản phẩm] [nvarchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Mã SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSKT]    Script Date: 1/10/2022 8:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKT](
	[id nhóm tskt] [float] NOT NULL,
	[tên] [nvarchar](255) NULL,
	[Nhóm SP] [nvarchar](255) NULL,
 CONSTRAINT [PK_TSKT] PRIMARY KEY CLUSTERED 
(
	[id nhóm tskt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietIQ]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietIQ_IQ] FOREIGN KEY([Mã IQ CSDL])
REFERENCES [dbo].[IQ] ([Mã IQ CSDL])
GO
ALTER TABLE [dbo].[ChiTietIQ] CHECK CONSTRAINT [FK_ChiTietIQ_IQ]
GO
ALTER TABLE [dbo].[ChiTietIQ]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietIQ_SanPham] FOREIGN KEY([Mã SP])
REFERENCES [dbo].[SanPham] ([Mã SP])
GO
ALTER TABLE [dbo].[ChiTietIQ] CHECK CONSTRAINT [FK_ChiTietIQ_SanPham]
GO
ALTER TABLE [dbo].[ChitietTSKT]  WITH CHECK ADD  CONSTRAINT [FK_ChitietTSKT_SanPham] FOREIGN KEY([Mã SP])
REFERENCES [dbo].[SanPham] ([Mã SP])
GO
ALTER TABLE [dbo].[ChitietTSKT] CHECK CONSTRAINT [FK_ChitietTSKT_SanPham]
GO
ALTER TABLE [dbo].[ChitietTSKT]  WITH CHECK ADD  CONSTRAINT [FK_ChitietTSKT_TSKT] FOREIGN KEY([id nhóm tskt])
REFERENCES [dbo].[TSKT] ([id nhóm tskt])
GO
ALTER TABLE [dbo].[ChitietTSKT] CHECK CONSTRAINT [FK_ChitietTSKT_TSKT]
GO
ALTER TABLE [dbo].[DauMoi]  WITH CHECK ADD  CONSTRAINT [FK_DauMoi_KhachHang] FOREIGN KEY([Mã KH])
REFERENCES [dbo].[KhachHang] ([Mã KH])
GO
ALTER TABLE [dbo].[DauMoi] CHECK CONSTRAINT [FK_DauMoi_KhachHang]
GO
ALTER TABLE [dbo].[IQ]  WITH CHECK ADD  CONSTRAINT [FK_IQ_KhachHang] FOREIGN KEY([MÃ KH])
REFERENCES [dbo].[KhachHang] ([Mã KH])
GO
ALTER TABLE [dbo].[IQ] CHECK CONSTRAINT [FK_IQ_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NCC] FOREIGN KEY([Mã NCC])
REFERENCES [dbo].[NCC] ([Mã NCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NCC]
GO
