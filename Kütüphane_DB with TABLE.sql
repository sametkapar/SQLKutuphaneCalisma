CREATE DATABASE Kutuphane_DB
GO
USE Kutuphane_DB
GO
CREATE TABLE Yazarlar
(
	YazarID int IDENTITY(1,1),
	YazarIsim nvarchar(120) NOT NULL,
	YazarSoyIsim nvarchar(120) NOT NULL,
	CONSTRAINT pk_Yazarlar PRIMARY KEY(YazarID)	
)
GO
CREATE TABLE Basimevleri
(
	EvID int IDENTITY(1,1),
	BasýmEvi_Isim nvarchar(120) NOT NULL,
	BasýmEvi_Adres ntext
	CONSTRAINT pk_BasimEvleri PRIMARY KEY(EvID)
)
GO
CREATE TABLE Turler
(
	TurID int IDENTITY(1,1),
	TurIsim nvarchar(120)
	CONSTRAINT pk_Turler PRIMARY KEY(TurID)
)
GO
CREATE TABLE Kitaplar
(
	KitapID int IDENTITY(1000,1),
	KitapIsmi nvarchar(120) NOT NULL,
	Yazar int NOT NULL,
	BasimEvi int NOT NULL,
	Tur int NOT NULL,
	Kiralanabilirlik bit,
	OrjinalDil nvarchar(120),
	CONSTRAINT pk_Kitaplar PRIMARY KEY(KitapID,OrjinalDil),
	CONSTRAINT fk_Yazarlar FOREIGN KEY(Yazar) REFERENCES Yazarlar(YazarID),
	CONSTRAINT fk_Basimevleri FOREIGN KEY(BasimEvi) REFERENCES Basimevleri(EvID),
	CONSTRAINT fk_Turler FOREIGN KEY(Tur) REFERENCES Turler(TurID)
)
GO
CREATE TABLE Kiracilar
(
	KiraciID int IDENTITY(3000,1),
	KiraciIsim nvarchar(120) NOT NULL,
	KiraciSoyisim nvarchar(120) NOT NULL,
	KiralamaTarihi date NOT NULL,
	SonTeslimTarihi date NOT NULL,
	Kitap int NOT NULL,
	Dil nvarchar(120) NOT NULL,
	CONSTRAINT pk_Kiracýlar PRIMARY KEY(KiraciID),
	CONSTRAINT fk_KiralananKitap FOREIGN KEY(Kitap,Dil) REFERENCES Kitaplar(KitapID,OrjinalDil)
)
GO
CREATE TABLE Bagiscilar
(
	BagisciID int IDENTITY(2000,1),
	BagisciIsim nvarchar(120) NOT NULL,
	BagisciSoyisim nvarchar(120) NOT NULL,
	BagisTarihi date,
	Kitap int NOT NUll,
	Dil nvarchar(120) NOT NULL,
	CONSTRAINT pk_Bagiscilar PRIMARY KEY (BagisciID),
	CONSTRAINT fk_BagislananKitap FOREIGN KEY(Kitap,Dil) REFERENCES Kitaplar(KitapID,OrjinalDil)
)
GO
CREATE TABLE Diller
(
	Dil nvarchar(30) NOT NULL,
	CONSTRAINT pk_Diller PRIMARY KEY(Dil)
)
GO
CREATE TABLE CevrilenDiller
(
	Kitap int NOT NULl,
	Dil nvarchar(120),
	CevrilenDiller nvarchar(30),
	CONSTRAINT fk_OrjinalDiller FOREIGN KEY(Kitap,Dil) REFERENCES Kitaplar(KitapID,OrjinalDil),
	CONSTRAINT fk_CevrilenDiller FOREIGN KEY(CevrilenDiller) REFERENCES Diller(Dil)
)
GO
CREATE TABLE Cevirmenler
(
	CevirmenID int IDENTITY(4000,1),
	CevirmenIsim nvarchar(120),
	CevirmenSoysimi nvarchar(120),
	Kitap int NOT NULL,
	Dil nvarchar(120),
	CONSTRAINT pk_Cevirmenler PRIMARY KEY(CevirmenID),
	CONSTRAINT fk_CevrilenKitap FOREIGN KEY(Kitap,Dil) REFERENCES Kitaplar(KitapID,OrjinalDil)
)