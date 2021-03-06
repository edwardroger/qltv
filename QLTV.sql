USE [master]
GO
/****** Object:  Database [QLTV]    Script Date: 13/06/2021 8:02:53 CH ******/
CREATE DATABASE [QLTV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLTV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLTV] SET  MULTI_USER 
GO
ALTER DATABASE [QLTV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLTV] SET QUERY_STORE = OFF
GO
USE [QLTV]
GO
/****** Object:  Table [dbo].[CTMuonTra]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTMuonTra](
	[MaMuonTra] [nchar](10) NOT NULL,
	[MaSach] [nchar](10) NULL,
	[note] [nvarchar](50) NULL,
	[DaTra] [bit] NULL,
	[NgayTra] [date] NULL,
 CONSTRAINT [PK_CTMuonTra] PRIMARY KEY CLUSTERED 
(
	[MaMuonTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [nchar](10) NOT NULL,
	[TenDocGia] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoThe] [nchar](10) NULL,
	[MaNguoiDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuonTra]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuonTra](
	[MaMuonTra] [nchar](10) NOT NULL,
	[SoThe] [nchar](10) NULL,
	[MaNhanVien] [nchar](10) NULL,
	[NgayMuon] [date] NULL,
 CONSTRAINT [PK_MuonTra] PRIMARY KEY CLUSTERED 
(
	[MaMuonTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[SoCCCD] [nvarchar](50) NULL,
	[MaNguoiDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [nchar](10) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[ThongTin] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[MaTacGia] [nchar](10) NULL,
	[MaTheLoai] [nchar](10) NULL,
	[MaNXB] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[GiaSach] [int] NULL,
	[NamXuatBan] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [nchar](10) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[website] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaNguoiDung] [nvarchar](50) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Permission] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [nchar](10) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheThuVien]    Script Date: 13/06/2021 8:02:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThuVien](
	[SoThe] [nchar](10) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayHetHan] [date] NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheThuVien] PRIMARY KEY CLUSTERED 
(
	[SoThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [email], [ThongTin]) VALUES (N'1         ', N'DC Comics', NULL, NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [email], [ThongTin]) VALUES (N'2         ', N'Marvel Comics', NULL, NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [email], [ThongTin]) VALUES (N'3         ', N'DC Label', NULL, NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [email], [ThongTin]) VALUES (N'4         ', N'NXB Trẻ', NULL, NULL, NULL)
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaTheLoai], [MaNXB], [SoLuong], [GiaSach], [NamXuatBan]) VALUES (N'1         ', N'Batman', N'1         ', N'1         ', N'1         ', 1, 100000, N'01 Tha´ng Sa´u 2021')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaTheLoai], [MaNXB], [SoLuong], [GiaSach], [NamXuatBan]) VALUES (N'2         ', N'1', N'1         ', N'1         ', N'1         ', 1, 1, N'13 Tha´ng Sa´u 2021')
GO
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'1         ', N'Mario Puzo', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'10        ', N'Jim Starlin', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'2         ', N'Neil Gaiman', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'3         ', N'Tom King', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'4         ', N'Alan Moore', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'5         ', N'Grant Morrison', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'6         ', N'Scott Snyder', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'7         ', N'Jonathan Hickman', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'8         ', N'Stan Lee', NULL, NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [website], [note]) VALUES (N'9         ', N'Geoff Johns', NULL, NULL)
GO
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TenTaiKhoan], [MatKhau], [Permission]) VALUES (N'1', N'phongtran', N'123', 1)
GO
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'1         ', N'Education')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'2         ', N'Sex and Violent')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'3         ', N'Fantasy')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'4         ', N'Detective')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'5         ', N'Romance')
GO
ALTER TABLE [dbo].[CTMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_CTMuonTra_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CTMuonTra] CHECK CONSTRAINT [FK_CTMuonTra_Sach]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_TaiKhoan] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[TaiKhoan] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_TaiKhoan]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_TheThuVien] FOREIGN KEY([SoThe])
REFERENCES [dbo].[TheThuVien] ([SoThe])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_TheThuVien]
GO
ALTER TABLE [dbo].[MuonTra]  WITH CHECK ADD  CONSTRAINT [FK_MuonTra_CTMuonTra] FOREIGN KEY([MaMuonTra])
REFERENCES [dbo].[CTMuonTra] ([MaMuonTra])
GO
ALTER TABLE [dbo].[MuonTra] CHECK CONSTRAINT [FK_MuonTra_CTMuonTra]
GO
ALTER TABLE [dbo].[MuonTra]  WITH CHECK ADD  CONSTRAINT [FK_MuonTra_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[MuonTra] CHECK CONSTRAINT [FK_MuonTra_NhanVien]
GO
ALTER TABLE [dbo].[MuonTra]  WITH CHECK ADD  CONSTRAINT [FK_MuonTra_TheThuVien] FOREIGN KEY([SoThe])
REFERENCES [dbo].[TheThuVien] ([SoThe])
GO
ALTER TABLE [dbo].[MuonTra] CHECK CONSTRAINT [FK_MuonTra_TheThuVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[TaiKhoan] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
USE [master]
GO
ALTER DATABASE [QLTV] SET  READ_WRITE 
GO
