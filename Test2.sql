CREATE DATABASE Highlands
GO

USE Highlands
GO

CREATE TABLE City(
   City_ID int PRIMARY KEY,
   City_Name nvarchar(100),
   Find_Store int
)
GO

CREATE TABLE District(
   District_ID int PRIMARY KEY,
   City_ID int FOREIGN KEY REFERENCES City(City_ID),
   District_Name nvarchar(150)
)
GO

CREATE TABLE Utilities(
   Utilities_ID int PRIMARY KEY,
   Utilities_Name nvarchar(100)
)
GO

CREATE TABLE CoffeStore(
   City_ID int FOREIGN KEY REFERENCES City(City_ID),
   District_ID int FOREIGN KEY REFERENCES District(District_ID),
   Store_Name nvarchar(200),
   Tel bigint,
   Utilities_ID int  FOREIGN KEY REFERENCES Utilities(Utilities_ID),
)
GO

--Thêm dữ liệu vào bảng

INSERT INTO City(City_ID, City_Name, Find_Store) VALUES
   (3,N'TP Hồ Chí Minh',3),
   (5,N'Hà Nội',3),
   (9,N'Đà Nẵng',2)
GO
SELECT * FROM City

INSERT INTO District(City_ID, District_ID, District_Name) VALUES
   (5,828,N'Quận Hoàng Mai'),
   (5,827,N'Quận Hoàn Kiếm'),
   (5,825,N'Quận Cầu Giấy'),
   (3,804,N'Quận 7'),
   (3,810,N'Quận Thủ Đức'),
   (3,815,N'Quận Tân Phú'),
   (9,890,N'Quận Hải Châu'),
   (9,893,N'Quận Liên Chiểu')
GO
SELECT * FROM District

INSERT INTO Utilities(Utilities_ID, Utilities_Name) VALUES
   (1,N'Wifi Miễn Phí'),
   (2,N'Thanh Toán Bằng Thẻ')
GO
SELECT * FROM Utilities

INSERT INTO CoffeStore(City_ID, District_ID,Store_Name, Tel, Utilities_ID) VALUES
   (3,804,N'HIGHLANDS COFFEE PHẠM VĂN NGHỊ',02871095449,2),
   (3,810,N'HIGHLANDS COFFEE 981 KHA VẠN CÂN',02871092449,1),
   (3,815,N'HIGHLANDS COFFEE LÊ TRỌNG TẤN',02871054949,1),
   (5,828,N'HIGHLANDS COFFEE ECO LAKE VIEW',02456780059,2),
   (5,827,N'HIGHLANDS COFFEE HYUNDAI HILLSMALL HÀ NỘI',02456780012,1),
   (5,825,N'HIGHLANDS COFFEE GAMUDA GARDENS',02456780018,1),
   (9,890,N'HIGHLANDS COFFEE DNG AIRPORT ARRIVALS',02363832003,2),
   (9,893,N'HIGHLANDS COFFEE VTV8 DA NANG',02367109778,1)
GO
SELECT * FROM CoffeStore
   


