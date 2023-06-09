﻿CREATE DATABASE QuanLyNhanSu
USE QuanLyNhanSu

CREATE TABLE QuanLy (
	MaQL VARCHAR(15) NOT NULL PRIMARY KEY,
	HoTen NVARCHAR(50),
	GioiTinh NVARCHAR(5),
	NgaySinh VARCHAR(15),
	DiaChi NVARCHAR(50),
	SDT VARCHAR(15),
	Email VARCHAR(50)
)

CREATE TABLE PhongBan (
	MaPB VARCHAR(15) NOT NULL PRIMARY KEY,
	TenPB NVARCHAR(50),
	NgayLap VARCHAR(15),
	SDT VARCHAR(15),
	MaQL VARCHAR(15) FOREIGN KEY REFERENCES QuanLy(MaQL)
)

CREATE TABLE NhanVien (
	MaNV VARCHAR(15) NOT NULL PRIMARY KEY,
	HoTen NVARCHAR(50),
	GioiTinh NVARCHAR(5),
	NgaySinh VARCHAR(15),
	DiaChi NVARCHAR(50),
	SDT VARCHAR(15),
	Email VARCHAR(50),
	ChucVu NVARCHAR(50),
	ViTriCongViec NVARCHAR(50),
	MaPB VARCHAR(15) FOREIGN KEY REFERENCES PhongBan(MaPB)
)

CREATE TABLE DuAn (
	MaDA VARCHAR(15) NOT NULL PRIMARY KEY,
	TenDA NVARCHAR(50),
	SoNV INT,
	MoTaDA NVARCHAR(100),
	MaPB VARCHAR(15) FOREIGN KEY REFERENCES PhongBan(MaPB)
)

CREATE TABLE ChamCong (	
	MaCC INT IDENTITY(1, 1) PRIMARY KEY,
	NgayLam INT,
	ThangLam INT,
	NamLam INT,
	TrangThai NVARCHAR(50),
	GhiChu NVARCHAR(50),
	MaNV VARCHAR(15) NOT NULL FOREIGN KEY REFERENCES NhanVien(MaNV)
)

CREATE TABLE TaiKhoanDangNhap (
	TenTK NVARCHAR(50) NOT NULL PRIMARY KEY,
	MatKhau NVARCHAR(50),
	MaQL VARCHAR(15) FOREIGN KEY REFERENCES QuanLy(MaQL)
)
)
--Cái này phải chạy, để lấy tài khoản đăng nhập.
insert into TaiKhoanDangNhap values ('admin', '123', 'QL001')
select * from QuanLy
select MaPB from PhongBan
insert into QuanLy values ('QL001', N'Bùi Mộc Quế Anh', N'Nữ', '27/7/2003', N'Hòa Bình', '0352593469', '123@gmail.com')
select MaQL from TaiKhoanDangNhap where TenTK = 'admin'
