USE [master]
GO
/****** Object:  Database [DATN_BERRYSHOES]    Script Date: 11/21/2024 11:20:44 PM ******/
CREATE DATABASE [DATN_BERRYSHOES]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DATN_BERRYSHOES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DATN_BERRYSHOES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET ARITHABORT OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET  MULTI_USER 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DATN_BERRYSHOES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DATN_BERRYSHOES] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DATN_BERRYSHOES] SET QUERY_STORE = ON
GO
ALTER DATABASE [DATN_BERRYSHOES] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DATN_BERRYSHOES]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSanPhamChiTiet] [int] NULL,
	[TenAnh] [varchar](300) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](100) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeGiay]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeGiay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDeGiay] [nvarchar](100) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKhachHang] [int] NULL,
	[TenDuong] [nvarchar](100) NOT NULL,
	[XaPhuong] [nvarchar](100) NOT NULL,
	[QuanHuyen] [nvarchar](100) NOT NULL,
	[TinhThanhPho] [nvarchar](100) NOT NULL,
	[TenNguoiNhan] [nvarchar](100) NULL,
	[SdtNguoiNhan] [varchar](30) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[WardCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DotGiamGia]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotGiamGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GiaTriGiam] [int] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKhachHang] [int] NULL,
	[IdSanPhamChiTiet] [int] NULL,
	[SoLuong] [smallint] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNhanVien] [int] NULL,
	[IdKhachHang] [int] NULL,
	[IdPhieuGiamGia] [int] NULL,
	[Mahoadon] [nvarchar](100) NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[TienGiam] [money] NULL,
	[TongTien] [money] NULL,
	[LoaiHoaDon] [bit] NULL,
	[PhiVanChuyen] [money] NULL,
	[NgayXacNhan] [datetime] NULL,
	[NgayVanChuyen] [datetime] NULL,
	[NgayNhanHang] [datetime] NULL,
	[NgayHoanThanh] [datetime] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
	[daThanhToan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NULL,
	[IdSanPhamChiTiet] [int] NOT NULL,
	[GiaSanPham] [money] NULL,
	[SoLuong] [smallint] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [varchar](50) NULL,
	[Anh] [varchar](300) NULL,
	[HoVaTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[SoDienThoai] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](300) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangPhieuGiam]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangPhieuGiam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKhachHang] [int] NULL,
	[IdPhieuGiamGia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKichCo] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuHoaDon]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuHoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NULL,
	[IdNhanVien] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaMauSac] [varchar](50) NULL,
	[TenMauSac] [nvarchar](100) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](50) NULL,
	[Anh] [varchar](300) NULL,
	[HoVaTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[QueQuan] [nvarchar](200) NOT NULL,
	[Cccd] [varchar](20) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](300) NULL,
	[VaiTro] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuGiamGia]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiamGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NULL,
	[MaCode] [nvarchar](100) NULL,
	[TenPhieu] [nvarchar](300) NOT NULL,
	[GiaTriGiamToiDa] [money] NULL,
	[GiaTriGiam] [int] NOT NULL,
	[DonToiThieu] [money] NULL,
	[SoLuong] [smallint] NULL,
	[LoaiPhieu] [bit] NULL,
	[KieuPhieu] [bit] NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongThucThanhToan]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongThucThanhToan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NULL,
	[TenPhuongThuc] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[TongTien] [money] NOT NULL,
	[MaGiaoDichVnPay] [varchar](200) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdThuongHieu] [int] NULL,
	[IdChatLieu] [int] NULL,
	[IdDeGiay] [int] NULL,
	[MaSanPham] [nvarchar](max) NULL,
	[TenSanPham] [nvarchar](300) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
	[anh] [varchar](500) NULL,
	[giaBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamChiTiet]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamChiTiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSanPham] [int] NULL,
	[IdKichCo] [int] NULL,
	[IdMauSac] [int] NULL,
	[IdDotGiamGia] [int] NULL,
	[MaSanPhamChiTiet] [nvarchar](max) NULL,
	[QRCode] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [money] NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 11/21/2024 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](100) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[LanCapNhatCuoi] [datetime] NULL,
	[NguoiCapNhat] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anh] ON 

INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731942971/wqsqjoyspa11byb0qfrx.jpg', CAST(N'2024-11-18T22:18:30.353' AS DateTime), NULL, CAST(N'2024-11-18T22:18:30.353' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731942971/vnhugb3grhtsq5c4ynxv.jpg', CAST(N'2024-11-18T22:18:30.407' AS DateTime), NULL, CAST(N'2024-11-18T22:18:30.407' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731942971/vqdfexnocncmeogmkjiy.jpg', CAST(N'2024-11-18T22:18:30.410' AS DateTime), NULL, CAST(N'2024-11-18T22:18:30.410' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, 2, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731942993/fszoseczvcqipuu82gel.jpg', CAST(N'2024-11-18T22:18:51.810' AS DateTime), NULL, CAST(N'2024-11-18T22:18:51.810' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, 2, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731942993/izg2raw0gr161nco1bfy.jpg', CAST(N'2024-11-18T22:18:51.817' AS DateTime), NULL, CAST(N'2024-11-18T22:18:51.817' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, 2, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731942994/zo9yfkhxur8qo44httsz.jpg', CAST(N'2024-11-18T22:18:51.820' AS DateTime), NULL, CAST(N'2024-11-18T22:18:51.820' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, 26, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731943003/lvu4wbjzoli1lqkalvjo.jpg', CAST(N'2024-11-18T22:19:01.373' AS DateTime), NULL, CAST(N'2024-11-18T22:19:01.373' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, 26, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731943003/uchuwccptaqt4p3h0b7s.webp', CAST(N'2024-11-18T22:19:01.377' AS DateTime), NULL, CAST(N'2024-11-18T22:19:01.377' AS DateTime), NULL, 1)
INSERT [dbo].[Anh] ([Id], [IdSanPhamChiTiet], [TenAnh], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, 26, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731943003/ukcnc7gjrkpsp4rapfox.jpg', CAST(N'2024-11-18T22:19:01.383' AS DateTime), NULL, CAST(N'2024-11-18T22:19:01.383' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Anh] OFF
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 

INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, N'Da tổng hợp', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, N'Da bò', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, N'Lụa', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, N'Canvas', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, N'Suede', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, N'Vải', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, N'Nhựa', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, N'Vải dù', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, N'Nỉ', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[ChatLieu] ([Id], [TenChatLieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, N'Gỗ', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[DeGiay] ON 

INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, N'Da', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, N'Cao su', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, N'Dainite', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, N'Commando', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, N'Ridgeway', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, N'Crepe', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, N'Wedge', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, N'Raw Cord', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, N'Leather', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[DeGiay] ([Id], [TenDeGiay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, N'Rubber', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
SET IDENTITY_INSERT [dbo].[DeGiay] OFF
GO
SET IDENTITY_INSERT [dbo].[DiaChi] ON 

INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (2, 2, N'Phan Đình Phùng', N'Thạch Trung', N'Hải Châu', N'Đà Nẵng', N'Lê Ánh Ngọc', N'0912345678', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (3, 3, N'Nguyễn Thái Học', N'Phú Thượng', N'Tây Hồ', N'Hà Nội', N'Trần Quốc Nghĩa', N'0923456789', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (4, 4, N'Đường 3/2', N'Phường 2', N'Tân Bình', N'Tp. Hồ Chí Minh', N'Nguyễn Phúc Long', N'0934567890', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (5, 5, N'Nguyễn Hữu Cảnh', N'Phú Hữu', N'Nhà Bè', N'Tp. Hồ Chí Minh', N'Kiều Khánh Huyền', N'0945678901', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (6, 6, N'Trần Não', N'Bình An', N'Thủ Đức', N'Tp. Hồ Chí Minh', N'Nguyễn Thùy Linh', N'0956789012', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (7, 7, N'Phạm Hữu Lầu', N'Đa Kao', N'Quận 1', N'Tp. Hồ Chí Minh', N'Bùi Huyền Anh', N'0967890123', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (8, 8, N'Hồng Bàng', N'An Hải Bắc', N'Sơn Trà', N'Đà Nẵng', N'Đặng Phương Thảo', N'0978901234', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (9, 9, N'Hà Huy Tập', N'An Khê', N'Tam Kỳ', N'Quảng Nam', N'Lê Hải Đăng', N'0989012345', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (10, 10, N'Quang Trung', N'Thường Định', N'Thành phố Thái Bình', N'Thái Bình', N'Phùng Thanh Hiền', N'0990123456', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (11, 11, N'Nguyễn Đình Chiểu', N'Gia Quất', N'Thuận Thành', N'Bắc Ninh', N'Nguyễn Anh Vũ', N'0910112233', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (12, 12, N'Lê Lợi', N'Phú Thượng', N'Tây Hồ', N'Hà Nội', N'Vũ Thùy Tiên', N'0911223344', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (13, 13, N'Hà Bổng', N'Gia Huynh', N'Hương Khê', N'Hà Tĩnh', N'Lê Phương Anh', N'0912334455', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (14, 14, N'Tôn Đức Thắng', N'Tân Hưng', N'Tân Bình', N'Tp. Hồ Chí Minh', N'Nguyễn Thị Thùy Linh', N'0913445566', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (15, 15, N'Hòa Hảo', N'Hòa An', N'Phú Nhuận', N'Tp. Hồ Chí Minh', N'Đỗ Ánh Dương', N'0914556677', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (16, 16, N'Nguyễn Văn Cừ', N'Mỹ Đình', N'Thành phố Hải Phòng', N'Hải Phòng', N'Nguyễn Thúy Hằng', N'0915667788', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (17, 17, N'Phạm Văn Đồng', N'Phú Đô', N'Nam Từ Liêm', N'Hà Nội', N'Nguyễn Anh Dũng', N'0916778899', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (18, 18, N'Trần Đại Nghĩa', N'Đại Kim', N'Hoàng Mai', N'Hà Nội', N'Vũ Văn Nguyên', N'0917889900', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (19, 19, N'Lê Văn Lương', N'Tân Hưng', N'Tân Bình', N'Tp. Hồ Chí Minh', N'Hoàng Công Vinh', N'0918990011', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (20, 20, N'Nguyễn Trãi', N'Hương Tích', N'Can Lộc', N'Hà Tĩnh', N'Bạch Văn Sơn', N'0919001122', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1, NULL, NULL, NULL)
INSERT [dbo].[DiaChi] ([Id], [IdKhachHang], [TenDuong], [XaPhuong], [QuanHuyen], [TinhThanhPho], [TenNguoiNhan], [SdtNguoiNhan], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [ProvinceID], [DistrictID], [WardCode]) VALUES (24, 1, N'd', N'Xã Việt Hưng', N'Huyện Văn Lâm', N'Hưng Yên', N'Hoàng lan', N'09324823423', CAST(N'2024-11-19T18:36:34.867' AS DateTime), NULL, CAST(N'2024-11-19T18:36:34.867' AS DateTime), NULL, NULL, 268, 2046, N'220911')
SET IDENTITY_INSERT [dbo].[DiaChi] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (1, 1, 1, 2, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (2, 2, 2, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (3, 3, 3, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (4, 4, 4, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (5, 5, 5, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (6, 6, 6, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (7, 7, 7, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (8, 8, 8, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (9, 9, 9, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (10, 10, 10, 1, CAST(N'2024-11-18T15:17:28.840' AS DateTime), 0)
INSERT [dbo].[GioHang] ([Id], [IdKhachHang], [IdSanPhamChiTiet], [SoLuong], [NgayTao], [TrangThai]) VALUES (16, 1, 2, 2, CAST(N'2024-11-19T14:56:43.810' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (1, 1, 1, NULL, N'HD20231011', N'Nguy?n Van Nam', N'namnv1@gmail.com', N'0909123456', N'Tr?n Hung Ð?o, Tây Son, Hoa Lu, Ninh Bình', NULL, 500000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 1', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (2, 2, 2, NULL, N'HD20231012', N'Lê Ánh Ng?c', N'ngocla2@gmail.com', N'0912345678', N'Phan Ðình Phùng, Th?ch Trung, H?i Châu, Ðà N?ng', NULL, 600000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 2', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (3, 1, 3, NULL, N'HD20231013', N'Tr?n Qu?c Nghia', N'nghiatq3@gmail.com', N'0923456789', N'Nguy?n Thái H?c, Phú Thu?ng, Tây H?, Hà N?i', NULL, 700000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 3', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (4, 2, 4, NULL, N'HD20231014', N'Nguy?n Phúc Long', N'longnp4@gmail.com', N'0934567890', N'Ðu?ng 3/2, Phu?ng 2, Tân Bình, TP.HCM', NULL, 800000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 4', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (5, 1, 5, NULL, N'HD20231015', N'Ki?u Khánh Huy?n', N'huyenkh5@gmail.com', N'0945678901', N'Nguy?n H?u C?nh, Phú H?u, Nhà Bè, TP.HCM', NULL, 900000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 5', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (6, 2, 6, NULL, N'HD20231016', N'Nguy?n Thùy Linh', N'linhnt6@gmail.com', N'0956789012', N'Tr?n Não, Bình An, Th? Ð?c, TP.HCM', NULL, 1000000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 6', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (7, 1, 7, NULL, N'HD20231017', N'Bùi Huy?n Anh', N'anhbh7@gmail.com', N'0967890123', N'Ph?m H?u L?u, Ða Kao, Qu?n 1, TP.HCM', NULL, 1100000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 7', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (8, 2, 8, NULL, N'HD20231018', N'Ð?ng Phuong Th?o', N'thaodpt8@gmail.com', N'0978901234', N'H?ng Bàng, An H?i B?c, Son Trà, Ðà N?ng', NULL, 1200000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 8', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (9, 1, 9, NULL, N'HD20231019', N'Lê H?i Ðang', N'danghd9@gmail.com', N'0989012345', N'Hà Huy T?p, An Khê, Tam K?, Qu?ng Nam', NULL, 1300000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 9', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (10, 2, 10, NULL, N'HD20231020', N'Phùng Thanh Hi?n', N'hienpt10@gmail.com', N'0990123456', N'Quang Trung, Thu?ng Ð?nh, Thành ph? Thái Bình, Thái Bình', NULL, 1400000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 10', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (11, 1, 11, NULL, N'HD20231021', N'Nguy?n Anh Vu', N'vuna11@gmail.com', N'0910112233', N'Nguy?n Ðình Chi?u, Gia Qu?t, Thu?n Thành, B?c Ninh', NULL, 1500000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 11', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (12, 2, 12, NULL, N'HD20231022', N'Vu Thùy Tiên', N'tienvt12@gmail.com', N'0911223344', N'Lê L?i, Phú Thu?ng, Tây H?, Hà N?i', NULL, 1600000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 12', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (13, 1, 13, NULL, N'HD20231023', N'Lê Phuong Anh', N'anhpa13@gmail.com', N'0912334455', N'Hà B?ng, Gia Huynh, Huong Khê, Hà Tinh', NULL, 1700000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 13', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (14, 2, 14, NULL, N'HD20231024', N'Nguy?n Th? Thùy Linh', N'linhnt14@gmail.com', N'0913445566', N'Tôn Ð?c Th?ng, Tân Hung, Tân Bình, TP.HCM', NULL, 1800000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 14', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (15, 1, 15, NULL, N'HD20231025', N'Ð? Ánh Duong', N'duongad15@gmail.com', N'0914556677', N'Hòa H?o, Hòa An, Phú Nhu?n, TP.HCM', NULL, 1900000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 15', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (16, 2, 16, NULL, N'HD20231026', N'Nguy?n Thúy H?ng', N'hangnt16@gmail.com', N'0915667788', N'Nguy?n Van C?, M? Ðình, Thành ph? H?i Phòng, H?i Phòng', NULL, 2000000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 16', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (17, 1, 17, NULL, N'HD20231027', N'Nguy?n Anh Dung', N'dungna17@gmail.com', N'0916778899', N'Ph?m Van Ð?ng, Phú Ðô, Nam T? Liêm, Hà N?i', NULL, 2100000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 17', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (18, 2, 18, NULL, N'HD20231028', N'Vu Van Nguyên', N'nguyenvv18@gmail.com', N'0917889900', N'Tr?n Ð?i Nghia, Ð?i Kim, Hoàng Mai, Hà N?i', NULL, 2200000.0000, 1, 30000.0000, CAST(N'2024-11-19T00:16:51.840' AS DateTime), CAST(N'2024-11-19T00:16:56.060' AS DateTime), NULL, NULL, N'Ghi chú hóa don 18', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-19T00:16:58.563' AS DateTime), N'hungbv1@gmail.com', 7, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (19, 1, 19, NULL, N'HD20231029', N'Hoàng Công Vinh', N'vinhhc19@gmail.com', N'0918990011', N'Lê Van Luong, Tân Hung, Tân Bình, TP.HCM', NULL, 2300000.0000, 1, 30000.0000, CAST(N'2024-11-18T15:17:28.820' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 19', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (20, 2, 20, NULL, N'HD20231030', N'B?ch Van Son', N'sonbv20@gmail.com', N'0919001122', N'Nguy?n Trãi, Huong Tích, Can L?c, Hà Tinh', NULL, 2400000.0000, 1, 30000.0000, CAST(N'2024-11-18T23:41:03.390' AS DateTime), NULL, NULL, NULL, N'Ghi chú hóa don 20', CAST(N'2024-11-18T15:17:28.820' AS DateTime), N'Admin', CAST(N'2024-11-19T00:16:42.310' AS DateTime), N'hungbv1@gmail.com', 6, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (21, NULL, 1, 2, N'1732018688098', NULL, N'namnv1@gmail.com', NULL, N'd, Xã Việt Hưng, Huyện Văn Lâm, Hưng Yên', 100000.0000, 10439001.0000, 1, 39001.0000, NULL, NULL, NULL, NULL, N'nhận sáng', CAST(N'2024-11-19T19:18:08.117' AS DateTime), NULL, CAST(N'2024-11-19T19:18:08.117' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (22, NULL, 1, 1, N'1732020240885', NULL, N'namnv1@gmail.com', NULL, N'd, Xã Việt Hưng, Huyện Văn Lâm, Hưng Yên', 50000.0000, 10489001.0000, 1, 39001.0000, CAST(N'2024-11-21T15:43:00.543' AS DateTime), CAST(N'2024-11-21T22:49:38.533' AS DateTime), CAST(N'2024-11-21T22:49:41.290' AS DateTime), CAST(N'2024-11-21T22:49:44.817' AS DateTime), N'', CAST(N'2024-11-19T19:44:00.903' AS DateTime), NULL, CAST(N'2024-11-21T22:49:44.820' AS DateTime), N'hungbv1@gmail.com', 8, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (26, 1, 2, NULL, N'1732184581325', NULL, NULL, NULL, NULL, NULL, 0.0000, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-11-21T17:23:01.327' AS DateTime), N'Bùi Văn Hưng', CAST(N'2024-11-21T22:22:51.553' AS DateTime), NULL, 1, 0)
INSERT [dbo].[HoaDon] ([Id], [IdNhanVien], [IdKhachHang], [IdPhieuGiamGia], [Mahoadon], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [TienGiam], [TongTien], [LoaiHoaDon], [PhiVanChuyen], [NgayXacNhan], [NgayVanChuyen], [NgayNhanHang], [NgayHoanThanh], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [daThanhToan]) VALUES (27, 1, NULL, NULL, N'1732184584433', NULL, NULL, NULL, NULL, NULL, 0.0000, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-11-21T17:23:04.433' AS DateTime), N'Bùi Văn Hưng', CAST(N'2024-11-21T17:23:04.433' AS DateTime), NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] ON 

INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (1, 1, 1, 250000.0000, 2, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (2, 1, 2, 300000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (3, 2, 3, 600000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (4, 3, 4, 700000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (5, 4, 5, 800000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (6, 5, 6, 900000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (7, 6, 7, 1000000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (8, 7, 8, 1100000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (9, 8, 9, 1200000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (10, 9, 10, 1300000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (11, 10, 11, 1400000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (12, 11, 12, 1500000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (13, 12, 13, 1600000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (14, 13, 14, 1700000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (15, 14, 15, 1800000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (16, 15, 16, 1900000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (17, 16, 17, 2000000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (18, 17, 18, 2100000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (19, 18, 19, 2200000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (20, 19, 20, 2300000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (21, 20, 21, 2400000.0000, 1, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (22, 21, 2, 3500000.0000, 2, NULL, NULL)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (23, 21, 26, 3500000.0000, 1, NULL, NULL)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (24, 22, 2, 3500000.0000, 2, NULL, NULL)
INSERT [dbo].[HoaDonChiTiet] ([Id], [IdHoaDon], [IdSanPhamChiTiet], [GiaSanPham], [SoLuong], [GhiChu], [TrangThai]) VALUES (25, 22, 26, 3500000.0000, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, N'KH01', NULL, N'Nguyễn Văn Nam', NULL, 0, N'0909123456', N'namnv1@gmail.com', NULL, N'$2a$10$6kmPo1S9hhu61btOQRUgs.cMgjHBFFrZm.zPF/ZpwsYUyl8kYNw3e', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-21T15:25:23.307' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, N'KH02', NULL, N'Lê Ánh Ngọc', NULL, 0, N'0912345678', N'ngocla2@gmail.com', NULL, N'$2a$10$4HUrZii3Q6lL9KQINRmkr.TFjWBciqVDQ8thBLpdgQTLKRpRLJArS', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.750' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, N'KH03', NULL, N'Trần Quốc Nghĩa', NULL, 0, N'0923456789', N'nghiatq3@gmail.com', NULL, N'$2a$10$8NlSNcUFL9.SYUM/HdZpPOdhXMXd8XlfXAmb5B09RVpvcNZPLi456', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.753' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, N'KH04', NULL, N'Nguyễn Phúc Long', NULL, 0, N'0934567890', N'longnp4@gmail.com', NULL, N'$2a$10$oZ5kHbq4zhISosAqyuAnIeD5vruv0EAC3ksJmw8XKMrZVDZ7Dri92', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.753' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, N'KH05', NULL, N'Kiều Khánh Huyền', NULL, 0, N'0945678901', N'huyenkh5@gmail.com', NULL, N'$2a$10$S0aSRPDgFBFmSVJAH6T2xeLw.8lvcBt4et41JYFTqnKj0TJdw9i4G', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.757' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, N'KH06', NULL, N'Nguyễn Thùy Linh', NULL, 0, N'0956789012', N'linhnt6@gmail.com', NULL, N'$2a$10$eQKykdJ08ryKYuIo1/7SgOcZty9TK5bGfsIppIec6by9VkaFrthU2', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.757' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, N'KH07', NULL, N'Bùi Huyền Anh', NULL, 0, N'0967890123', N'anhbh7@gmail.com', NULL, N'$2a$10$ZELigWAtn.P0F1cDZ1wovekR0XByn7Wks/YLBkAydgu88RbGQ1erW', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.757' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, N'KH08', NULL, N'Đặng Phương Thảo', NULL, 0, N'0978901234', N'thaodpt8@gmail.com', NULL, N'$2a$10$f58Lt5AKMIOTyRvoi1wrCuU0bgFEvcGofAJCJurMvJnMosSZQOGSu', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.760' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, N'KH09', NULL, N'Lê Hải Đăng', NULL, 0, N'0989012345', N'danghd9@gmail.com', NULL, N'$2a$10$fFiXBAQBs4OHr5Bdk/l6su1Me.WSSGxW.79fkQdvfomRZLPkcKD2K', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.760' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, N'KH10', NULL, N'Phùng Thanh Hiền', NULL, 0, N'0990123456', N'hienpt10@gmail.com', NULL, N'$2a$10$1FjNxwUsiefN8jZp9DDVLOw.sAcKefotSJpW57nniiR0AQe1VHNNS', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.760' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (11, N'KH11', NULL, N'Nguyễn Anh Vũ', NULL, 0, N'0910112233', N'vuna11@gmail.com', NULL, N'$2a$10$GVkBYEGdGKmdfxYACUxNGeDSeTrGA9fKYBgL.cSMsSkYpYg6OFYZC', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.763' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (12, N'KH12', NULL, N'Vũ Thùy Tiên', NULL, 0, N'0911223344', N'tienvt12@gmail.com', NULL, N'$2a$10$bhZ6TSixqWMetaiwB5okyu27DjNp0wmj2C6nFek2VXnmqyPzpQBtS', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.763' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (13, N'KH13', NULL, N'Lê Phương Anh', NULL, 0, N'0912334455', N'anhpa13@gmail.com', NULL, N'$2a$10$FALkewXzUq9iAbh4WOrxFeGWMqlWmYvWATpskzpPtEgc8JJE4Gk76', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.767' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (14, N'KH14', NULL, N'Nguyễn Thị Thùy Linh', NULL, 0, N'0913445566', N'linhnt14@gmail.com', NULL, N'$2a$10$49CkNs9nCyPNU.hdAkBU2eEwhobLzPCdKNk9sSXYAjoTD7h7.I1QK', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.767' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (15, N'KH15', NULL, N'Đỗ Ánh Dương', NULL, 0, N'0914556677', N'duongad15@gmail.com', NULL, N'$2a$10$/LbcG15WVU.trMoRcqp1Su8victWq5JRWATkHDDtzjMXENK7QUzbi', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.767' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (16, N'KH16', NULL, N'Nguyễn Thúy Hằng', NULL, 0, N'0915667788', N'hangnt16@gmail.com', NULL, N'$2a$10$M/PrG6u5tqRXBqEeW0q7Z.us9yeBLhH3cwDQZWKEJkqYYaPhM1BO6', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.767' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (17, N'KH17', NULL, N'Nguyễn Anh Dũng', NULL, 0, N'0916778899', N'dungna17@gmail.com', NULL, N'$2a$10$tBZ5QeEOSt8nU1v.wKk5leNnWTsu8FYkrYHIGTn3k7N1y0Lem8ggW', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.770' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (18, N'KH18', NULL, N'Vũ Văn Nguyên', NULL, 0, N'0917889900', N'nguyenvv18@gmail.com', NULL, N'$2a$10$Bmr2wQVckN/0eP/lch6/gO4HLg65WSIzfiO69ErTQiMtQhjHqNihG', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.770' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (19, N'KH19', NULL, N'Hoàng Công Vinh', NULL, 0, N'0918990011', N'vinhhc19@gmail.com', NULL, N'$2a$10$jdpvW61kCaEpMHgTTUzuwOAf9DMQrpMjTX3ZDiVb8V58QSE9PM0Xm', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.773' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (20, N'KH20', NULL, N'Bạch Văn Sơn', NULL, 0, N'0919001122', N'hieutran02102804@gmail.com', NULL, N'$2a$10$FxxDp6F49cd5QWnCckPIpelRrycKA2GlUWvFGqcQUS0U/mJRoAXIa', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-21T13:41:14.440' AS DateTime), N'Admin', 1)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (21, N'KH021', NULL, N'Trần hiếu', CAST(N'2024-11-15' AS Date), 0, N'093478234', N'khachhang@gmail.com', NULL, N'$2a$10$D.VSCrDuCdJ0t/rC4nPePe.WYyhZLqbmZN.1UMymMOV7IdTEG6LyS', CAST(N'2024-11-21T12:37:26.503' AS DateTime), NULL, CAST(N'2024-11-21T12:37:26.503' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KichCo] ON 

INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, N'35', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, N'36', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, N'37', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, N'38', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, N'39', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, N'40', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, N'41', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, N'42', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, N'43', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[KichCo] ([Id], [TenKichCo], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, N'44', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
SET IDENTITY_INSERT [dbo].[KichCo] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuHoaDon] ON 

INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, 20, 1, NULL, CAST(N'2024-11-18T23:41:03.457' AS DateTime), NULL, CAST(N'2024-11-18T23:41:03.457' AS DateTime), N'hungbv1@gmail.com', 2)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, 20, 1, NULL, CAST(N'2024-11-18T23:41:28.127' AS DateTime), NULL, CAST(N'2024-11-18T23:41:28.127' AS DateTime), N'hungbv1@gmail.com', 3)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, 20, 1, NULL, CAST(N'2024-11-19T00:16:42.323' AS DateTime), NULL, CAST(N'2024-11-19T00:16:42.323' AS DateTime), N'hungbv1@gmail.com', 6)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, 18, 1, NULL, CAST(N'2024-11-19T00:16:51.850' AS DateTime), NULL, CAST(N'2024-11-19T00:16:51.850' AS DateTime), N'hungbv1@gmail.com', 2)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, 18, 1, NULL, CAST(N'2024-11-19T00:16:53.783' AS DateTime), NULL, CAST(N'2024-11-19T00:16:53.783' AS DateTime), N'hungbv1@gmail.com', 3)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, 18, 1, NULL, CAST(N'2024-11-19T00:16:56.063' AS DateTime), NULL, CAST(N'2024-11-19T00:16:56.063' AS DateTime), N'hungbv1@gmail.com', 4)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, 18, 1, NULL, CAST(N'2024-11-19T00:16:58.567' AS DateTime), NULL, CAST(N'2024-11-19T00:16:58.567' AS DateTime), N'hungbv1@gmail.com', 7)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, 22, 1, NULL, CAST(N'2024-11-21T15:43:00.557' AS DateTime), NULL, CAST(N'2024-11-21T15:43:00.557' AS DateTime), N'hungbv1@gmail.com', 2)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, 22, 1, NULL, CAST(N'2024-11-21T22:49:36.013' AS DateTime), NULL, CAST(N'2024-11-21T22:49:36.013' AS DateTime), N'hungbv1@gmail.com', 3)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, 22, 1, NULL, CAST(N'2024-11-21T22:49:38.550' AS DateTime), NULL, CAST(N'2024-11-21T22:49:38.550' AS DateTime), N'hungbv1@gmail.com', 4)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (11, 22, 1, NULL, CAST(N'2024-11-21T22:49:41.300' AS DateTime), NULL, CAST(N'2024-11-21T22:49:41.300' AS DateTime), N'hungbv1@gmail.com', 5)
INSERT [dbo].[LichSuHoaDon] ([Id], [IdHoaDon], [IdNhanVien], [GhiChu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (12, 22, 1, NULL, CAST(N'2024-11-21T22:49:44.827' AS DateTime), NULL, CAST(N'2024-11-21T22:49:44.827' AS DateTime), N'hungbv1@gmail.com', 8)
SET IDENTITY_INSERT [dbo].[LichSuHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[MauSac] ON 

INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, N'#2e53c2', N'Xanh dương', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, N'#f76808', N'Cam', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, N'#f50505', N'Đỏ', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, N'#030303', N'Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, N'#77e92b', N'Xanh lá', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, N'#288a6a', N'Turquoise', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, N'#0eccfb', N'Xanh nhạt', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, N'#654206', N'Nâu', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, N'#d1236f', N'Hồng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, N'#003b99', N'Xanh navy', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (11, N'#ffcc00', N'Vàng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (12, N'#e6e6e6', N'Xám', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (13, N'#ffffff', N'Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (14, N'#f9f9f9', N'Kem', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (15, N'#c0c0c0', N'Bạc', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (16, N'#ffd700', N'Vàng kim', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (17, N'#e5e500', N'Vàng chanh', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (18, N'#000080', N'Xanh dương đậm', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (19, N'#4b0082', N'Tím', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (20, N'#ff6347', N'Tomato', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
SET IDENTITY_INSERT [dbo].[MauSac] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, N'NV01', N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731981546/z0creeqvucip1wapdyaf.webp', N'Bùi Văn Hưng', CAST(N'2024-11-12' AS Date), 1, N'Hà Nội', N'9923784234344', N'0934567890', N'hungbv1@gmail.com', N'ADMIN', N'$2a$10$HvDxA3QnA27PyAI3PYUKk.EnpNu0QEwzQw9ZPNQuzKB0ko7qi7RWa', 1, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-19T09:01:23.443' AS DateTime), N'NV01', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, N'NV02', NULL, N'Nguyễn Văn Hải', NULL, NULL, N'Hà Nội', NULL, N'0945678901', N'hainv2@gmail.com', NULL, N'$2a$10$HvDxA3QnA27PyAI3PYUKk.EnpNu0QEwzQw9ZPNQuzKB0ko7qi7RWa', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.813' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, N'NV03', NULL, N'Nguyễn Thành Đồng', NULL, NULL, N'Hà Nội', NULL, N'0934567890', N'dongnt3@gmail.com', NULL, N'$2a$10$pr6cOfol00Mfm267jIbcD.O/oSRsHUQKD6BfNTLy.IUEY387obqQy', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.813' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, N'NV04', NULL, N'Nguyễn Thị Thùy Dương', NULL, NULL, N'Hưng Yên', NULL, N'0945678901', N'duongntt4@gmail.com', NULL, N'$2a$10$xdzZWJ6zISl66SlQUHis..OFQcZdnthCltOQr5DeTDrojKY9CY7Ga', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.817' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, N'NV05', NULL, N'Đỗ Trung Trường', NULL, NULL, N'Hà Nội', NULL, N'0956789012', N'truongdt5@gmail.com', NULL, N'$2a$10$ldNmMibflpWfYNqBNae9Tulb1gO4P58Byk8L4t5zwUfxgs5as/p8q', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.817' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, N'NV06', NULL, N'Nguyễn Văn Thắng', NULL, NULL, N'Hà Nội', NULL, N'0967890123', N'thangnv6@gmail.com', NULL, N'$2a$10$Xammv5gbuLMun4sWEHSjL.d.c63BT1cLvgDEiDO0Fxv88dCSjAigO', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.817' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, N'NV07', NULL, N'Lê Thị Hương Giang', NULL, NULL, N'Hà Nội', NULL, N'0978901234', N'gianglt7@gmail.com', NULL, N'$2a$10$E6PdanJKZOwzOUcUPGgM3O6bT8KX2pcvNAMzI4M.txpq4w8K8kBl2', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.820' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, N'NV08', NULL, N'Lê Văn Tiến', NULL, NULL, N'Hà Nội', NULL, N'0989012345', N'tienlv8@gmail.com', NULL, N'$2a$10$3haOm5xlMj.aVqvrsQzFY.ioZ9DOTMTlc/12Oe5.SoqndiGeeb67K', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.820' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, N'NV09', NULL, N'Nguyễn Văn Huy', NULL, NULL, N'Hà Nội', NULL, N'0990123456', N'huyhv9@gmail.com', NULL, N'$2a$10$7GfELWirLXSD0B.ygC0i1.61UhwJCzruA5Y/XZxjJxrAKk2VHA7M.', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.823' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, N'NV10', NULL, N'Vũ Tiến Vinh', NULL, NULL, N'Hà Nội', NULL, N'0901234567', N'vinhv10@gmail.com', NULL, N'$2a$10$MaTi.Yk0WJySF3udvNAR5OMZsiT32xuyWF.t8Oq041rTS9wQtU5mm', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.823' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (11, N'NV11', NULL, N'Nguyễn Thị Ngọc Ánh', NULL, NULL, N'Hà Nội', NULL, N'0912345678', N'anhnt11@gmail.com', NULL, N'$2a$10$yZ8ohFnj4kYXdFeDIC1czOXIHH4eQ4S2.cgPvRZ9Jko9VKflyx0PS', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.827' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (12, N'NV12', NULL, N'Hoàng Văn Phương', NULL, NULL, N'Hà Nội', NULL, N'0923456789', N'phuonghv12@gmail.com', NULL, N'$2a$10$0H4BRCfdBWEOdbjyfZmM1e2c0gAwjq08N47xbUnL2rj0fkqJr41ke', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.827' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (13, N'NV13', NULL, N'Đặng Thị Thanh Lan', NULL, NULL, N'Hà Nội', NULL, N'0934567890', N'lannt13@gmail.com', NULL, N'$2a$10$/juTVl4RZvvgIGmmr6K8QOJ3rxipR9NIwvWemvS8o3Sd/nzRZJNwe', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.827' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (14, N'NV14', NULL, N'Nguyễn Trung Hiếu', NULL, NULL, N'Hà Nội', NULL, N'0945678901', N'hieun14@gmail.com', NULL, N'$2a$10$KmG0.MzqpVQm5LpV9fNMTuDLbxZna6oWqa1uWbezuz0zOwGTDh.AO', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.830' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (15, N'NV15', NULL, N'Dương Quang Vinh', NULL, NULL, N'Hà Nội', NULL, N'0956789012', N'vinhdq15@gmail.com', NULL, N'$2a$10$0OuOineZuw5gtto2b/DmDuO5/RHl37EvQa4mfKUfFX.fmPH6ieSa.', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.830' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (16, N'NV16', NULL, N'Vi Văn Thái', NULL, NULL, N'Hà Nội', NULL, N'0967890123', N'thai.vv16@gmail.com', NULL, N'$2a$10$ZZ/DoTo5m540R6ijxId0WuU5O9BAJraJWIiQdLE5dtchExZp1VKlC', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.830' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (17, N'NV17', NULL, N'Vũ Trọng Minh', NULL, NULL, N'Hà Nội', NULL, N'0978901234', N'minhvtr17@gmail.com', NULL, N'$2a$10$bt7tu0gER6OZyw5TBGCoCeg37xOvEOLuE12ynmS9Cb7ad3XohnxFO', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.833' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (18, N'NV18', NULL, N'Truong Văn Thiện', NULL, NULL, N'Hà Nội', NULL, N'0989012345', N'thientv18@gmail.com', NULL, N'$2a$10$lcmQbpg7vGRASK/beuZfbO/rqdCvxdYPrVUGsyJUrTWLNEDyKnaBy', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.833' AS DateTime), N'Admin', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (19, N'NV19', N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731924918/m5sqfq2jwnfcqfrowmt1.jpg', N'Trần Tuấn Vũ', NULL, 1, N'Hà Nội', N'9992647234343', N'0990123456', N'vutuan19@gmail.com', N'tuan vu', N'$2a$10$dPobtQ1C.n0ikpHVeK.c/OWZVPkhrPOXL.Ntft/li77K4eouQPve2', 0, CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T22:11:26.833' AS DateTime), N'NV01', 1)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [Anh], [HoVaTen], [NgaySinh], [GioiTinh], [QueQuan], [Cccd], [SoDienThoai], [Email], [TaiKhoan], [MatKhau], [VaiTro], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (21, N'nv00932', N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1732178333/t5zjvp9nfzswqkn6ixwa.jpg', N'Trần tùng lâm', CAST(N'2024-11-19' AS Date), 0, N'Hà Nội', N'9923784234344', N'0990123456', N'lamtt@gmial.com', N'lam', N'123', 0, CAST(N'2024-11-21T15:41:13.050' AS DateTime), N'NV01', CAST(N'2024-11-21T15:41:13.050' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuGiamGia] ON 

INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, 1, N'PGG001', N'Giảm 10%', 50000.0000, 10, 100000.0000, 100, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, 2, N'PGG002', N'Giảm 20%', 100000.0000, 20, 200000.0000, 50, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, 3, N'PGG003', N'Giảm 15%', 70000.0000, 15, 150000.0000, 80, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, 4, N'PGG004', N'Giảm 5%', 30000.0000, 5, 50000.0000, 200, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, 5, N'PGG005', N'Giảm 25%', 120000.0000, 25, 250000.0000, 30, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, 6, N'PGG006', N'Giảm 30%', 150000.0000, 30, 300000.0000, 20, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, 7, N'PGG007', N'Giảm 50%', 200000.0000, 50, 500000.0000, 10, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, 8, N'PGG008', N'Giảm 40%', 100000.0000, 40, 400000.0000, 15, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, 9, N'PGG009', N'Giảm 12%', 60000.0000, 12, 120000.0000, 75, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, 10, N'PGG010', N'Giảm 18%', 90000.0000, 18, 180000.0000, 40, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (11, 11, N'PGG011', N'Giảm 22%', 110000.0000, 22, 220000.0000, 35, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (12, 12, N'PGG012', N'Giảm 8%', 40000.0000, 8, 80000.0000, 150, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (13, 13, N'PGG013', N'Giảm 28%', 130000.0000, 28, 280000.0000, 25, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (14, 14, N'PGG014', N'Giảm 3%', 15000.0000, 3, 30000.0000, 250, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (15, 15, N'PGG015', N'Giảm 35%', 160000.0000, 35, 350000.0000, 18, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (16, 16, N'PGG016', N'Giảm 7%', 35000.0000, 7, 70000.0000, 180, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (17, 17, N'PGG017', N'Giảm 23%', 110000.0000, 23, 230000.0000, 27, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (18, 18, N'PGG018', N'Giảm 17%', 85000.0000, 17, 170000.0000, 45, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (19, 19, N'PGG019', N'Giảm 13%', 65000.0000, 13, 130000.0000, 65, 0, 0, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.840' AS DateTime), N'Admin', 1)
INSERT [dbo].[PhieuGiamGia] ([Id], [IdHoaDon], [MaCode], [TenPhieu], [GiaTriGiamToiDa], [GiaTriGiam], [DonToiThieu], [SoLuong], [LoaiPhieu], [KieuPhieu], [NgayBatDau], [NgayKetThuc], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (21, NULL, N'vc001', N'giảm hè', NULL, 180000, 5000000.0000, 90, 1, NULL, CAST(N'2024-11-18T15:38:00.000' AS DateTime), CAST(N'2024-11-22T15:38:00.000' AS DateTime), CAST(N'2024-11-19T08:38:58.107' AS DateTime), NULL, CAST(N'2024-11-19T08:38:58.107' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[PhieuGiamGia] OFF
GO
SET IDENTITY_INSERT [dbo].[PhuongThucThanhToan] ON 

INSERT [dbo].[PhuongThucThanhToan] ([Id], [IdHoaDon], [TenPhuongThuc], [MoTa], [TongTien], [MaGiaoDichVnPay], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, 22, N'Vnpay', NULL, 10489001.0000, N'1732020221702', CAST(N'2024-11-19T19:44:00.987' AS DateTime), NULL, CAST(N'2024-11-19T19:44:00.987' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[PhuongThucThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (1, 1, 1, 1, N'SPURJSJP5', N'Giày thể thao Nike Air Max', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:36:48.890' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983671/x1liqulia945oijd2nnu.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (2, 2, 1, 1, N'SP5S6FIRM', N'Giày cao cổ Adidas Superstar', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:37:37.610' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983720/ahqmcxusb7v6hisvxs4p.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (3, 3, 2, 2, N'SPU3S6FGW', N'Giày chạy bộ Asics Gel-Kayano', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:37:48.337' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983731/w5ldiesn3li1zvzgg0zs.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (4, 4, 1, 1, N'SPCD85FAS', N'Giày công sở Clarks Originals', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:37:59.627' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983742/gkthxh6syrft46ucn1zk.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (5, 5, 1, 1, N'SPE77RDGD', N'Giày đế vuông Gucci Horsebit', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:38:10.563' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983753/b0vzj7whydmevdpwzhle.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (6, 6, 2, 1, N'SPR1D4PMN', N'Giày thể thao Puma Suede Classic', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:39:21.227' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983823/qrxa0byha0twb7brgpph.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (7, 7, 2, 2, N'SPT5TDVXZ', N'Giày sandal Birkenstock Arizona', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:39:32.660' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983835/nqkedb1wdrdev0veqmzi.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (8, 8, 1, 1, N'SPHIY5DNV', N'Giày lười Salvatore Ferragamo', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:39:43.603' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983846/dnambuvgrv04dwgljjky.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (9, 9, 1, 1, N'SPLN6FG5S', N'Giày boot Timberland 6-Inch Premium', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:39:57.590' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983860/hmqiuweprjtabiyifoa1.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (10, 10, 2, 2, N'SPO5DFPN6', N'Giày thể thao New Balance 574', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:40:15.040' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983877/fyfatc5chmwvcytgtavk.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (11, 1, 2, 2, N'SPCK1P53J', N'Giày chạy bộ Nike ZoomX', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:40:27.317' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983889/wtiiwdc56h3j3cyr5f4c.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (12, 2, 2, 2, N'SPHD5YFGR', N'Giày thể thao Adidas Ultraboost', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:40:48.287' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983910/wysh28xhp4j7fqy12ncy.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (13, 4, 1, 1, N'SPJD6RF5S', N'Giày công sở Geox', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:41:17.660' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983940/zfarrhmzrstfehhhgqle.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (14, 2, 2, 2, N'SPJK1WESG', N'Giày cao cổ Converse All Star', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:41:43.357' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983966/fmdaag6mh330b2imnwef.webp', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (15, 3, 2, 1, N'SPQN7FDFP', N'Giày sneaker Vans Old Skool', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:41:53.473' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983976/roq3ityvorzgfrbf1dxr.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (16, 6, 2, 2, N'SPLM9HFGH', N'Giày thể thao Reebok Classic', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:42:13.503' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731983996/afjp2t3ydnwq8h2ql2uj.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (17, 1, 1, 1, N'SPPL4DKNS', N'Giày thể thao Saucony', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:42:23.893' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731984006/xuycsvcnsavw58floebq.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (18, 8, 1, 1, N'SPOB8CND5', N'Giày lười Sperry Top-Sider', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:42:39.710' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731984022/uvnqlcntgvobuhyv00i0.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (19, 4, 1, 1, N'SPTD6CND4', N'Giày boot Dr. Martens 1460', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:43:06.510' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731984049/uekmm3g63vfakr4dsmmu.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (20, 2, 2, 2, N'SPBX3YFPN', N'Giày thể thao On Cloudstratus', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:43:29.283' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731984072/gvunmd4afjzvewpgsixg.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (21, 3, 2, 2, N'SPCA5F7PL', N'Giày chạy bộ Mizuno Wave Rider', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (22, 1, 2, 1, N'SPXY6GFFV', N'Giày thể thao Hoka One One', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-19T09:44:03.260' AS DateTime), N'NV01', 1, N'http://res.cloudinary.com/dkc0ky8md/image/upload/v1731984105/uzl66jbb05axdsxphdll.jpg', 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (23, 2, 1, 1, N'SPTB7KNS5', N'Giày cao cổ UGG Classic', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (24, 3, 2, 2, N'SPVS4KJ5H', N'Giày sneaker Fila Disruptor', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (25, 3, 2, 2, N'SPCN3MD3B', N'Giày thể thao Asics Gel-Quantum', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (26, 2, 2, 1, N'SPNT4P4LT', N'Giày thể thao Adidas NMD', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (27, 4, 1, 1, N'SPFL1T5PX', N'Giày lười Clarks', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (28, 7, 2, 2, N'SPWT6R7BG', N'Giày sandal Teva', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (29, 3, 1, 1, N'SPTF9T3GH', N'Giày thể thao Columbia', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
INSERT [dbo].[SanPham] ([Id], [IdThuongHieu], [IdChatLieu], [IdDeGiay], [MaSanPham], [TenSanPham], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai], [anh], [giaBan]) VALUES (30, 1, 1, 1, N'SPVL2X9JD', N'Giày lười Dr. Scholl', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1, NULL, 4500000)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhamChiTiet] ON 

INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, 1, 1, 1, NULL, N'SP001-CT1', N'SP001CT1', 94, 3500000.0000, N'Giày thể thao Nike Air Max Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-21T22:19:40.167' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, 1, 2, 2, NULL, N'SP001-CT2', N'SP001CT2', 148, 3500000.0000, N'Giày thể thao Nike Air Max Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-21T22:19:40.177' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, 2, 1, 1, NULL, N'SP002-CT1', N'SP002CT1', 80, 2700000.0000, N'Giày cao cổ Adidas Superstar Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, 2, 2, 2, NULL, N'SP002-CT2', N'SP002CT2', 60, 2700000.0000, N'Giày cao cổ Adidas Superstar Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, 3, 1, 1, NULL, N'SP003-CT1', N'SP003CT1', 120, 3000000.0000, N'Giày chạy bộ Asics Gel-Kayano Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, 3, 2, 2, NULL, N'SP003-CT2', N'SP003CT2', 100, 3000000.0000, N'Giày chạy bộ Asics Gel-Kayano Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, 4, 1, 1, NULL, N'SP004-CT1', N'SP004CT1', 90, 2500000.0000, N'Giày công sở Clarks Originals Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, 4, 2, 2, NULL, N'SP004-CT2', N'SP004CT2', 70, 2500000.0000, N'Giày công sở Clarks Originals Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, 5, 1, 1, NULL, N'SP005-CT1', N'SP005CT1', 85, 4500000.0000, N'Giày đế vuông Gucci Horsebit Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, 5, 2, 2, NULL, N'SP005-CT2', N'SP005CT2', 75, 4500000.0000, N'Giày đế vuông Gucci Horsebit Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (11, 6, 1, 1, NULL, N'SP006-CT1', N'SP006CT1', 110, 2600000.0000, N'Giày thể thao Puma Suede Classic Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (12, 6, 2, 2, NULL, N'SP006-CT2', N'SP006CT2', 95, 2600000.0000, N'Giày thể thao Puma Suede Classic Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (13, 7, 1, 1, NULL, N'SP007-CT1', N'SP007CT1', 70, 1800000.0000, N'Giày sandal Birkenstock Arizona Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (14, 7, 2, 2, NULL, N'SP007-CT2', N'SP007CT2', 50, 1800000.0000, N'Giày sandal Birkenstock Arizona Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (15, 8, 1, 1, NULL, N'SP008-CT1', N'SP008CT1', 60, 3500000.0000, N'Giày lười Salvatore Ferragamo Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (16, 8, 2, 2, NULL, N'SP008-CT2', N'SP008CT2', 40, 3500000.0000, N'Giày lười Salvatore Ferragamo Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (17, 9, 1, 1, NULL, N'SP009-CT1', N'SP009CT1', 55, 4000000.0000, N'Giày boot Timberland 6-Inch Premium Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (18, 9, 2, 2, NULL, N'SP009-CT2', N'SP009CT2', 45, 4000000.0000, N'Giày boot Timberland 6-Inch Premium Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (19, 10, 1, 1, NULL, N'SP010-CT1', N'SP010CT1', 65, 3200000.0000, N'Giày thể thao New Balance 574 Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (20, 10, 2, 2, NULL, N'SP010-CT2', N'SP010CT2', 55, 3200000.0000, N'Giày thể thao New Balance 574 Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (21, 11, 1, 1, NULL, N'SP011-CT1', N'SP011CT1', 40, 3700000.0000, N'Giày chạy bộ Nike ZoomX Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (22, 11, 2, 2, NULL, N'SP011-CT2', N'SP011CT2', 30, 3700000.0000, N'Giày chạy bộ Nike ZoomX Đen', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (23, 12, 1, 1, NULL, N'SP012-CT1', N'SP012CT1', 60, 3800000.0000, N'Giày thể thao Adidas Ultraboost Trắng', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (24, 12, 2, 2, NULL, N'SP012-CT2', N'SP012CT2', 50, 3800000.0000, N'Giày thể thao Adidas Ultraboost cho nữ', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.800' AS DateTime), N'Admin', 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (25, NULL, NULL, NULL, NULL, N'spct009', NULL, 90, 89000.0000, NULL, CAST(N'2024-11-18T19:07:16.230' AS DateTime), N'NV01', CAST(N'2024-11-18T19:07:16.230' AS DateTime), NULL, 1)
INSERT [dbo].[SanPhamChiTiet] ([Id], [IdSanPham], [IdKichCo], [IdMauSac], [IdDotGiamGia], [MaSanPhamChiTiet], [QRCode], [SoLuong], [GiaTien], [MoTa], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (26, 1, 3, 2, NULL, N'spct009 up', NULL, 20, 3500000.0000, NULL, CAST(N'2024-11-18T19:08:38.853' AS DateTime), N'NV01', CAST(N'2024-11-18T21:51:29.957' AS DateTime), N'NV19', 1)
SET IDENTITY_INSERT [dbo].[SanPhamChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (1, N'Nike', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (2, N'Adidas', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (3, N'Gucci', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (4, N'Dolce', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (5, N'Balenciaga', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (6, N'Puma', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (7, N'Birkenstock', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (8, N'Salvatore Ferragamo', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (9, N'Timberland', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (10, N'New Balance', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (11, N'Fila', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (12, N'Kith', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (13, N'Off-White', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (14, N'Yeezy', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (15, N'Louis Vuitton', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (16, N'Burberry', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (17, N'Prada', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (18, N'Chanel', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (19, N'Merrell', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (20, N'H&M', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (21, N'Zara', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu], [NgayTao], [NguoiTao], [LanCapNhatCuoi], [NguoiCapNhat], [TrangThai]) VALUES (22, N'Mango', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', CAST(N'2024-11-18T15:17:28.797' AS DateTime), N'Admin', 1)
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__3B2ABEFC3B6EE4B5]    Script Date: 11/21/2024 11:20:45 PM ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[Mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Anh] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Anh] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[Anh] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[DeGiay] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DeGiay] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[DeGiay] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[DiaChi] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DiaChi] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[DiaChi] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[DotGiamGia] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DotGiamGia] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [LoaiHoaDon]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[KichCo] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KichCo] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[KichCo] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[LichSuHoaDon] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[LichSuHoaDon] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [VaiTro]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[PhieuGiamGia] ADD  DEFAULT ((0)) FOR [LoaiPhieu]
GO
ALTER TABLE [dbo].[PhieuGiamGia] ADD  DEFAULT ((0)) FOR [KieuPhieu]
GO
ALTER TABLE [dbo].[PhieuGiamGia] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[PhieuGiamGia] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPhamChiTiet] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SanPhamChiTiet] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[SanPhamChiTiet] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (getdate()) FOR [LanCapNhatCuoi]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [FK_Anh_SanPhamChiTiet] FOREIGN KEY([IdSanPhamChiTiet])
REFERENCES [dbo].[SanPhamChiTiet] ([Id])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [FK_Anh_SanPhamChiTiet]
GO
ALTER TABLE [dbo].[DiaChi]  WITH CHECK ADD  CONSTRAINT [FK_DiaChi_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[DiaChi] CHECK CONSTRAINT [FK_DiaChi_KhachHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPhamChiTiet] FOREIGN KEY([IdSanPhamChiTiet])
REFERENCES [dbo].[SanPhamChiTiet] ([Id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPhamChiTiet]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhieuGiamGia] FOREIGN KEY([IdPhieuGiamGia])
REFERENCES [dbo].[PhieuGiamGia] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhieuGiamGia]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet] FOREIGN KEY([IdSanPhamChiTiet])
REFERENCES [dbo].[SanPhamChiTiet] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet]
GO
ALTER TABLE [dbo].[KhachHangPhieuGiam]  WITH CHECK ADD  CONSTRAINT [FK_KhachHangPhieuGiam_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[KhachHangPhieuGiam] CHECK CONSTRAINT [FK_KhachHangPhieuGiam_KhachHang]
GO
ALTER TABLE [dbo].[KhachHangPhieuGiam]  WITH CHECK ADD  CONSTRAINT [FK_KhachHangPhieuGiam_PhieuGiamGia] FOREIGN KEY([IdPhieuGiamGia])
REFERENCES [dbo].[PhieuGiamGia] ([Id])
GO
ALTER TABLE [dbo].[KhachHangPhieuGiam] CHECK CONSTRAINT [FK_KhachHangPhieuGiam_PhieuGiamGia]
GO
ALTER TABLE [dbo].[LichSuHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_LichSuHoaDon_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[LichSuHoaDon] CHECK CONSTRAINT [FK_LichSuHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[LichSuHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_LichSuHoaDon_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[LichSuHoaDon] CHECK CONSTRAINT [FK_LichSuHoaDon_NhanVien]
GO
ALTER TABLE [dbo].[PhieuGiamGia]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiamGia_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[PhieuGiamGia] CHECK CONSTRAINT [FK_PhieuGiamGia_HoaDon]
GO
ALTER TABLE [dbo].[PhuongThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_PhuongThucThanhToan_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] CHECK CONSTRAINT [FK_PhuongThucThanhToan_HoaDon]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChatLieu] FOREIGN KEY([IdChatLieu])
REFERENCES [dbo].[ChatLieu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChatLieu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DeGiay] FOREIGN KEY([IdDeGiay])
REFERENCES [dbo].[DeGiay] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DeGiay]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([IdThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_DotGiamGia] FOREIGN KEY([IdDotGiamGia])
REFERENCES [dbo].[DotGiamGia] ([Id])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_DotGiamGia]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_KichCo] FOREIGN KEY([IdKichCo])
REFERENCES [dbo].[KichCo] ([Id])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_KichCo]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_MauSac] FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_MauSac]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_SanPham]
GO
USE [master]
GO
ALTER DATABASE [DATN_BERRYSHOES] SET  READ_WRITE 
GO
