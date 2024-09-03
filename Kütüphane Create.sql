CREATE TABLE Kitaplar
(
	KitapID int IDENTITY(1000,1),
	KitapIsmi nvarchar(120) NOT NULL,
	Yazar int NOT NULL,
	BasimEvi int NOT NULL,
	Tur int NOT NULL,
	Kiralanabilirlik bit
	CONSTRAINT pk_Kitaplar PRIMARY KEY(KitapID),
	CONSTRAINT fk_Yazarlar FOREIGN KEY(Yazar) REFERENCES Yazarlar(YazarID),
	CONSTRAINT fk_Basimevleri FOREIGN KEY(BasimEvi) REFERENCES Basimevleri(EvID),
	CONSTRAINT fk_Turler FOREIGN KEY(Tur) REFERENCES Turler(TurID)
)
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
CREATE TABLE Kiracilar
(
	KiraciID int IDENTITY(3000,1),
	KiraciIsim nvarchar(120) NOT NULL,
	KiraciSoyisim nvarchar(120) NOT NULL,
	KiralamaTarihi nvarchar(20) NOT NULL,
	SonTeslimTarihi nvarchar(20) NOT NULL,
	Kitap int NOT NULL,
	CONSTRAINT pk_Kiracýlar PRIMARY KEY(KiraciID),
	CONSTRAINT fk_KiralananKitap FOREIGN KEY(Kitap) REFERENCES Kitaplar(KitapID)
)
GO
CREATE TABLE Bagiscilar
(
	BagisciID int IDENTITY(2000,1),
	BagisciIsim nvarchar(120) NOT NULL,
	BagisciSoyisim nvarchar(120) NOT NULL,
	BagisTarihi nvarchar(20),
	Kitap int NOT NUll,
	CONSTRAINT pk_Bagiscilar PRIMARY KEY (BagisciID),
	CONSTRAINT fk_BagislananKitap FOREIGN KEY(Kitap) REFERENCES Kitaplar(KitapID)
)
GO

