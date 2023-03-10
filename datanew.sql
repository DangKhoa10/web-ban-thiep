USE [master]
GO
/****** Object:  Database [QuanLyThiepMoi]    Script Date: 5/12/2022 5:21:49 PM ******/
CREATE DATABASE [QuanLyThiepMoi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThiepMoi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyThiepMoi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyThiepMoi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyThiepMoi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyThiepMoi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThiepMoi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThiepMoi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThiepMoi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThiepMoi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyThiepMoi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThiepMoi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyThiepMoi] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThiepMoi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThiepMoi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThiepMoi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThiepMoi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyThiepMoi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyThiepMoi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyThiepMoi', N'ON'
GO
ALTER DATABASE [QuanLyThiepMoi] SET QUERY_STORE = OFF
GO
USE [QuanLyThiepMoi]
GO
/****** Object:  Table [dbo].[authorities]    Script Date: 5/12/2022 5:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorities](
	[username] [varchar](50) NULL,
	[authority] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 5/12/2022 5:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaThiep] [int] NOT NULL,
	[SoLuongMua] [int] NULL,
	[DonGia] [money] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/12/2022 5:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLapHD] [date] NULL,
	[username] [varchar](50) NULL,
	[HoTenNguoiNhan] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TrangThai] [smallint] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThiep]    Script Date: 5/12/2022 5:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThiep](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiThiep] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThiepMoi]    Script Date: 5/12/2022 5:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiepMoi](
	[MaThiep] [int] IDENTITY(1,1) NOT NULL,
	[TenThiep] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GiaTien] [money] NULL,
	[SoLuongTon] [int] NULL,
	[MaLoai] [int] NULL,
 CONSTRAINT [PK_ThiepMoi] PRIMARY KEY CLUSTERED 
(
	[MaThiep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/12/2022 5:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](100) NULL,
	[enabled] [tinyint] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'khoa', N'ROLE_NV')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'nguyen', N'ROLE_NV')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'thuan', N'ROLE_NV')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'quan', N'ROLE_NV')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'admin', N'ROLE_NV')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'susan', N'ROLE_KH')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'john', N'ROLE_KH')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'aaa', N'ROLE_KH')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'max', N'ROLE_KH')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'marky', N'ROLE_KH')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'susan2', N'ROLE_KH')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'gogo', N'ROLE_KH')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'April', N'ROLE_KH')
GO
SET IDENTITY_INSERT [dbo].[LoaiThiep] ON 

INSERT [dbo].[LoaiThiep] ([MaLoai], [TenLoai]) VALUES (1, N'Thiệp cưới')
INSERT [dbo].[LoaiThiep] ([MaLoai], [TenLoai]) VALUES (2, N'Thiệp sự kiện')
SET IDENTITY_INSERT [dbo].[LoaiThiep] OFF
GO
SET IDENTITY_INSERT [dbo].[ThiepMoi] ON 

INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (1, N'Thiệp cưới hoa hồng', N'Thiệp thiết kế đơn giản chỉ bằng 1 đóa hồng, tuy nhiên với sự phối màu đầy cá tính, kết hợp cùng chất liệu giấy can trong đã làm cho bộ thiệp trở nên hoàn hảo và độc đáo vô cùng.', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/thiep-cuoi-1438.jpg?v=1643263295793', 12000.0000, 198, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (2, N'Thiệp cưới xanh pastel', N'Mẫu thiệp cưới pastel nhẹ nhàng, tươi mát dành cho các cặp đôi.', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/thiep-cuoi-1508.jpg?v=1643262650803', 10000.0000, 305, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (3, N'Thiệp cưới cổ điển', N'Màu vàng gold cổ điển cùng màu nhũ lóng lánh luôn là sự kết hợp ăn ý, chưa bao giờ lỗi mốt. Cộng thêm khí chất quý tộc của logo tạo nên một bộ thiệp sang trọng, mang đậm nét vương giả. Thích hợp cho các cặp đôi yêu thích sự chỉnh chu và muốn thể hiện đẳng cấp của mình.', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/1734-01a.jpg?v=1643261924347', 15000.0000, 110, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (4, N'Thiệp cưới Acrylic', N'Thiệp cưới Acrylic, còn biết đến với tên gọi là thiệp cưới Mica, được làm từ chất liệu nhựa Acrylic trong suốt, đã cho thấy sự độc đáo, khác biệt hơn so với các mẫu thiệp cưới thông thường. Không cầu kỳ hoa mỹ mà bằng vào sự giản đơn, thanh lịch, thiệp cưới Acrylic đã tôn lên vẻ đẹp dịu dàng, sang trọng, thu hút mọi ánh nhìn khi lướt qua nó.', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/mica-2-e62bdd1e-462f-4dff-9df4-f006903d50bc.jpg?v=1643262179277', 17000.0000, 0, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (5, N'Thiệp cưới laser', N'Những đường cắt tỉ mĩ mới chi tiết cổ điển tạo nên sự quý tộc , tôn nghiêm cho lễ cưới của các cặp đôi', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/thiep-cuoi-1414.jpg?v=1612238228433', 20000.0000, 249, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (6, N'Thiệp cưới đóng dấu sáp', N'Họa tiết được đóng sáp dầu tạo cảm giác thoải mái khi cầm trên tay , họa tiết nhẹ nhàng ', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/thiep-cuoi-1442.jpg?v=1610957943393', 15000.0000, 250, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (13, N'Thiệp cưới màu nước', N'Đường nét vẽ tay tinh tế tạo sự giản đơn', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/thiep-cuoi-1327.jpg?v=1610964102330', 10000.0000, 160, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (14, N'Thiệp cưới rustic', N'Thiệp cưới mang thiết kế hiện đại , sang trọng', N'https://bizweb.dktcdn.net/thumb/large/100/416/938/products/thiep-cuoi-1165.jpg?v=1610965284030', 15000.0000, 599, 1)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (16, N'Thiệp sinh nhật (Best Wishes For You)', N'Chất liệu: Giấy Ivory, phong bì giấy Kraft,', N'https://i.imgur.com/xYBUCXn.jpg', 12000.0000, 399, 2)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (17, N'Thiệp tạ lỗi', N'Thiệp in thiết kế bởi thương hiệu Fairy Corner.
Made in Viet Nam , chất liệu: Ivory, phong bì giấy Kraft', N'https://i.imgur.com/xRGdenq.jpg', 10000.0000, 119, 2)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (18, N'Thiệp chúc mừng', N'Thiệp chúc mừng trong các dịp hệ trọng , được thiết kế dòng chữ Cheer! You are the best ', N'https://i.imgur.com/1KZnP9M.jpg', 14000.0000, 299, 2)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (19, N'Thiệp giấy in Birthday – Relax', N'Thiệp in thiết kế bởi thương hiệu Fairy Corner

Chất liệu thiệp và phong bì: Ivory

Kích thước thiệp: 10×15 cm

Kích thước phong bì: 11×16 cm', N'https://i.imgur.com/kOZzC7T.jpg', 14000.0000, 252, 2)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (20, N'Thiệp chia tay', N'Thiệp chia tay chủ đề Farewell làm bằng giấy Ivovry , phong bì giấy Kraft', N'https://i.imgur.com/vSRD31d.jpg', 16000.0000, 125, 2)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (21, N'Thiệp chúc mừng Congrats', N'Thiệp chức mừng kiểu dáng tinh tế , giản dị , được thiết kế bởi thương hiệu Fairy Corner', N'https://i.imgur.com/phRLFOm.jpg', 15000.0000, 100, 2)
INSERT [dbo].[ThiepMoi] ([MaThiep], [TenThiep], [MoTa], [HinhAnh], [GiaTien], [SoLuongTon], [MaLoai]) VALUES (22, N'Thiệp handmade', N'Thiệp handmade hiệu ứng Happy Women’s Day là series thiệp đặc biệt dành cho ngày Phụ Nữ với bốn mẫu thiệp và 4 hiệu ứng khác nhau, ngoài chức năng là một tấm thiệp đặc biệt, thiệp còn có thể dùng như mini album, bạn có thể dán khoảng 5 tấm ảnh để làm món quà của mình thêm đặc biệt', N'https://i.imgur.com/wK7hpEd.jpg', 78000.0000, 200, 2)
SET IDENTITY_INSERT [dbo].[ThiepMoi] OFF
GO
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'aaa', N'{bcrypt}$2a$10$lUL2qNnMvnPqvlQRUS0MvuK.UoxtY5AXGAIdjFoD/sRFqpLkUYqvu', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'admin', N'{noop}test123', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'April', N'{bcrypt}$2a$10$lo0U0z6Qehye/Z6HxjL.q.Q/Aj5ZYH16zwiVm2GFke.alRMjz2f0G', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'gogo', N'{bcrypt}$2a$10$/xJz3rW7oQgXaWjDH77HV.7OHATLLGlfhSXSLsL61jWLq6KUItx4C', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'john', N'{bcrypt}$2a$10$1nMxKkII4J7nhwstTaFz1.4gIlmqcrc49cJHPYF0IAT1ikiF.muLW', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'khoa', N'{noop}test123', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'marky', N'{bcrypt}$2a$10$wDw/gOUyBTEx6bK4iifbg.rPZD34QArCVN.Pg4vILFk9TN0HzxmCy', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'max', N'{bcrypt}$2a$10$eZlkYKSYW3khhIkFz8LsZOBsA0F2/qK3TXRfhKLQP5ktjycRt0BpK', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'nguyen', N'{noop}test123', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'quan', N'{noop}test123', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'susan', N'{bcrypt}$2a$10$4M56w7uHr4zXARHNkXt0mOzVds.1xodFvbIIjUQJfRQJK.Nrji13a', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'susan2', N'{bcrypt}$2a$10$Txzm3SmhPTGr0CdU3OiimuEr1dpI9WVV313GgJbkSErx.cyt2dzEu', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'thuan', N'{noop}test123', 1)
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FK_authorities_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FK_authorities_users]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_ThiepMoi] FOREIGN KEY([MaThiep])
REFERENCES [dbo].[ThiepMoi] ([MaThiep])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_ThiepMoi]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_users]
GO
ALTER TABLE [dbo].[ThiepMoi]  WITH CHECK ADD  CONSTRAINT [FK_ThiepMoi_LoaiThiep] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiThiep] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThiepMoi] CHECK CONSTRAINT [FK_ThiepMoi_LoaiThiep]
GO
USE [master]
GO
ALTER DATABASE [QuanLyThiepMoi] SET  READ_WRITE 
GO
