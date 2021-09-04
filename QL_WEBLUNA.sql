CREATE DATABASE QL_WEBLUNA
USE QL_WEBLUNA


CREATE TABLE DANGKY(
NAME VARCHAR(50),
USERNAME VARCHAR(50),
EMAIL VARCHAR(50),
MATKHAU VARCHAR(MAX),
CONSTRAINT PK_DANGKY PRIMARY KEY(USERNAME)
)


CREATE TABLE DANGNHAP(
USERNAME VARCHAR(50) UNIQUE,
MATKHAU VARCHAR(MAX),
CONSTRAINT PK_DANGNHAP PRIMARY KEY (USERNAME),
CONSTRAINT FK_DANGNHAP_DANGKY FOREIGN KEY (USERNAME) REFERENCES DANGKY(USERNAME)
)



CREATE TABLE LOAI(
MALOAI VARCHAR(20),
TENLOAI VARCHAR(50),
CONSTRAINT PK_LOAI PRIMARY KEY(MALOAI)
)

CREATE TABLE SANPHAM(
MALOAI VARCHAR(20),
MASP VARCHAR(20),
TENSP VARCHAR(50),
GIA INT,
HINHANH VARCHAR(20),
GHICHU VARCHAR(50),
soluong int, 
thanhtien int,
CONSTRAINT PK_SANPHAM PRIMARY KEY(MASP),
CONSTRAINT FK_SANPHAM_LOAI FOREIGN KEY (MALOAI) REFERENCES LOAI(MALOAI)
)


INSERT INTO DANGKY
VALUES
('Tran', 'myxtraann', 'mytran0209@gmail.com', 'mtran123'),
('Toan', 'toan13', 'ptoan1303@gmail.com', 'ptoan456'),
('Son', 'son01', 'sonng@gmail.com', 'hson789');


INSERT INTO DANGNHAP
VALUES
('myxtraann', 'mtran123'),
('toan13', 'ptoan456'),
('son01', 'hson789');


INSERT INTO LOAI
VALUES
(1, 'Shirts'),
(2, 'Hoodie'),
(3, 'Crop Tops'),
(4, 'Dresses'),
(5, 'Bottoms'),
(6, 'Sets'),
(7, 'Accessories');
--delete LOAI

INSERT INTO SANPHAM
VALUES
(1, '01', 'Shirt A', 400000, '1.jpg', NULL,NULL,NULL),
(1, '02', 'Shirt B', 400000, '2.jpg', NULL,NULL,NULL),
(1, '03', 'Shirt C', 45000, '3.jpg', NULL,NULL,NULL),
(1, '04', 'Shirt D', 450000, '4.jpg', NULL,NULL,NULL),
(1, '05', 'Shirt E', 400000, '5.jpg', NULL,NULL,NULL),
(1, '06', 'Shirt F', 400000, '6.jpg', NULL,NULL,NULL),
(1, '07', 'Shirt G', 450000, '7.jpg', NULL,NULL,NULL),
(1, '08', 'Shirt H', 450000, '8.jpg', NULL,NULL,NULL),
(1, '09', 'Shirt I', 450000, '9.jpg', NULL,NULL,NULL),
(2, '10','Hoodie A', 500000, '10.jpg', NULL,NULL,NULL),
(2, '11','Hoodie B', 500000, '11.jpg', NULL,NULL,NULL),
(2, '12','Hoodie C', 500000, '12.jpg', NULL,NULL,NULL),
(2, '13','Hoodie D', 550000, '13.jpg', NULL,NULL,NULL),
(2, '14','Hoodie E', 550000, '14.jpg', NULL,NULL,NULL),
(2, '15','Hoodie F', 550000, '15.jpg', NULL,NULL,NULL),
(3, '16','Crop top A', 300000, '16.jpg', NULL,NULL,NULL),
(3, '17','Crop top B', 300000, '17.jpg', NULL,NULL,NULL),
(3, '18','Crop top C', 300000, '18.jpg', NULL,NULL,NULL),
(3, '19','Crop top D', 320000, '19.jpg', NULL,NULL,NULL),
(3, '20','Crop top E', 320000, '20.jpg', NULL,NULL,NULL),
(3, '21','Crop top F', 320000, '21.jpg', NULL,NULL,NULL),
(3, '22','Crop top G', 340000, '22.jpg', NULL,NULL,NULL),
(3, '23','Crop top H', 340000, '23.jpg', NULL,NULL,NULL),
(3, '24','Crop top I', 340000, '24.jpg', NULL,NULL,NULL),
(4, '25','Dress A', 400000, '25.jpg', NULL,NULL,NULL),
(4, '26','Dress B', 400000, '26.jpg', NULL,NULL,NULL),
(4, '27','Dress C', 400000, '27.jpg', NULL,NULL,NULL),
(4, '28','Dress D', 380000, '28.jpg', NULL,NULL,NULL),
(4, '29','Dress E', 380000, '29.jpg', NULL,NULL,NULL),
(4, '30','Dress F', 380000, '30.jpg', NULL,NULL,NULL),
(4, '31','Dress G', 360000, '31.jpg', NULL,NULL,NULL),
(4, '32','Dress H', 360000, '32.jpg', NULL,NULL,NULL),
(4, '33','Dress I', 360000, '33.jpg', NULL,NULL,NULL),
(5, '34','Bottom A', 380000, '34.jpg', NULL,NULL,NULL),
(5, '35','Bottom B', 380000, '35.jpg', NULL,NULL,NULL),
(5, '36','Bottom C', 380000, '36.jpg', NULL,NULL,NULL),
(5, '37','Bottom D', 380000, '37.jpg', NULL,NULL,NULL),
(5, '38','Bottom E', 360000, '38.jpg', NULL,NULL,NULL),
(5, '39','Bottom F', 360000, '39.jpg', NULL,NULL,NULL),
(5, '40','Bottom G', 360000, '40.jpg', NULL,NULL,NULL),
(5, '41','Bottom H', 350000, '41.jpg', NULL,NULL,NULL),
(5, '42','Bottom I', 350000, '42.jpg', NULL,NULL,NULL),
(5, '43','Bottom J', 350000, '43.jpg', NULL,NULL,NULL),
(6, '44','Set A', 750000, '45.jpg', NULL,NULL,NULL),
(6, '45','Set B', 750000, '46.jpg', NULL,NULL,NULL),
(6, '46','Set C', 750000, '47.jpg', NULL,NULL,NULL),
(6, '47','Set D', 700000, '48.jpg', NULL,NULL,NULL),
(6, '48','Set E', 700000, '49.jpg', NULL,NULL,NULL),
(6, '49','Set F', 700000, '50.jpg', NULL,NULL,NULL),
(7, '50','Accessories A', 200000, '51.jpg', NULL,NULL,NULL),
(7, '51','Accessories B', 200000, '52.jpg', NULL,NULL,NULL),
(7, '52','Accessories C', 200000, '53.jpg', NULL,NULL,NULL),
(7, '53','Accessories D', 350000, '54.jpg', NULL,NULL,NULL),
(7, '54','Accessories E', 350000, '55.jpg', NULL,NULL,NULL),
(7, '55','Accessories F', 350000, '56.jpg', NULL,NULL,NULL),
(7, '56','Accessories G', 100000, '57.jpg', NULL,NULL,NULL),
(7, '57','Accessories H', 100000, '58.jpg', NULL,NULL,NULL),
(7, '58','Accessories I', 100000, '59.jpg', NULL,NULL,NULL);

--delete from SANPHAM
