SELECT * FROM Yazarlar
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('�mer' , 'Seyfettin')
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('Fyodor', 'Dostoyevski')
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('Jhon R.R.', 'Tolkein')
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('Hayao', 'Miyazaki')

SELECT * FROM Turler
INSERT INTO Turler(TurIsim) VALUES ('Hikaye')
INSERT INTO Turler(TurIsim) VALUES ('Roman')
INSERT INTO Turler(TurIsim) VALUES ('Manga')
INSERT INTO Turler(TurIsim) VALUES ('Biyografi')
INSERT INTO Turler(TurIsim) VALUES ('Ders Kitab�')
INSERT INTO Turler(TurIsim) VALUES ('�iir Kitab�')
INSERT INTO Turler(TurIsim) VALUES ('An� K�tab�')

SELECT * FROM Basimevleri
INSERT INTO Basimevleri(Bas�mEvi_Isim,Bas�mEvi_Adres) VALUES('KAPRA YAYINCILIK', 'hayda')
INSERT INTO Basimevleri(Bas�mEvi_Isim,Bas�mEvi_Adres) VALUES('Yap� Kredi Yay�nlar�', '�stiklal Caddesi No: 161 34433, Beyo�lu / �stanbul')

SELECT * FROM Kitaplar
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Ka�a��', 1,1,1,0,'T�RK�E')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Lord of the Rings', 3,2,2,1,'�NG�L�ZCE')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Su� ve Ceza', 2,2,2,1,'RUS�A')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Diyet', 1,1,1,1,'T�RK�E')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Sprited Away', 4,1,3,1,'JAPONCA')

SELECT * FROM Bagiscilar
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Samet', 'Kapar', '04/09/2024', 1004, 'JAPONCA')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Samet', 'Kapar', '04/09/2024', 1000, 'T�RK�E')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Mevl�t', 'Koyuncu', '04/09/2024', 1001, '�NG�L�ZCE')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Alp', 'Sar�k��la', '04/09/2024', 1002, 'T�RK�E')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Mevl�t', 'Koyuncu', '04/09/2024', 1003, 'RUS�A')

SELECT*FROM Kiracilar

INSERT INTO Kiracilar(KiraciIsim,KiraciSoyisim,KiralamaTarihi,SonTeslimTarihi, Kitap, Dil) VALUES ('Burak', 'Salcan', '04/09/2024', '04/10/2024', 1002, 'T�RK�E')
INSERT INTO Kiracilar(KiraciIsim,KiraciSoyisim,KiralamaTarihi,SonTeslimTarihi, Kitap, Dil) VALUES ('Burak', 'Salcan', '04/09/2024', '04/10/2024', 1003, 'RUS�A')

SELECT * FROM Diller
INSERT INTO Diller(Dil) VALUES ('T�RK�E')
INSERT INTO Diller(Dil) VALUES ('�NG�L�ZCE')
INSERT INTO Diller(Dil) VALUES ('RUS�A')
INSERT INTO Diller(Dil) VALUES ('�TALYANCA')
INSERT INTO Diller(Dil) VALUES ('FRANSIZCA')
INSERT INTO Diller(Dil) VALUES ('JAPONCA')


SELECT * FROM CevrilenDiller
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1000,'T�RK�E','FRANSIZCA')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1000,'T�RK�E','�NG�L�ZCE')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1000,'T�RK�E','RUS�A')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1001,'�NG�L�ZCE','T�RK�E')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1001,'�NG�L�ZCE','FRANSIZCA')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1004,'JAPONCA','T�RK�E')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1004,'JAPONCA','�NG�LZCE')

SELECT * FROM Kitaplar
SELECT * FROM Cevirmenler

INSERT INTO Cevirmenler(CevirmenIsim,CevirmenSoysimi,Kitap,Dil) VALUES ('Murtaza', '�uayipo�lu', 1000, 'T�RK�E')
INSERT INTO Cevirmenler(CevirmenIsim,CevirmenSoysimi,Kitap,Dil) VALUES ('Murtaza', '�uayipo�lu', 1002, 'T�RK�E')
