SELECT * FROM Yazarlar
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('Ömer' , 'Seyfettin')
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('Fyodor', 'Dostoyevski')
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('Jhon R.R.', 'Tolkein')
INSERT INTO Yazarlar(YazarIsim,YazarSoyIsim) VALUES ('Hayao', 'Miyazaki')

SELECT * FROM Turler
INSERT INTO Turler(TurIsim) VALUES ('Hikaye')
INSERT INTO Turler(TurIsim) VALUES ('Roman')
INSERT INTO Turler(TurIsim) VALUES ('Manga')
INSERT INTO Turler(TurIsim) VALUES ('Biyografi')
INSERT INTO Turler(TurIsim) VALUES ('Ders Kitabý')
INSERT INTO Turler(TurIsim) VALUES ('Þiir Kitabý')
INSERT INTO Turler(TurIsim) VALUES ('Aný KÝtabý')

SELECT * FROM Basimevleri
INSERT INTO Basimevleri(BasýmEvi_Isim,BasýmEvi_Adres) VALUES('KAPRA YAYINCILIK', 'hayda')
INSERT INTO Basimevleri(BasýmEvi_Isim,BasýmEvi_Adres) VALUES('Yapý Kredi Yayýnlarý', 'Ýstiklal Caddesi No: 161 34433, Beyoðlu / Ýstanbul')

SELECT * FROM Kitaplar
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Kaþaðý', 1,1,1,0,'TÜRKÇE')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Lord of the Rings', 3,2,2,1,'ÝNGÝLÝZCE')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Suç ve Ceza', 2,2,2,1,'RUSÇA')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Diyet', 1,1,1,1,'TÜRKÇE')
INSERT INTO Kitaplar(KitapIsmi,Yazar,BasimEvi,Tur,Kiralanabilirlik,OrjinalDil) VALUES ('Sprited Away', 4,1,3,1,'JAPONCA')

SELECT * FROM Bagiscilar
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Samet', 'Kapar', '04/09/2024', 1004, 'JAPONCA')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Samet', 'Kapar', '04/09/2024', 1000, 'TÜRKÇE')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Mevlüt', 'Koyuncu', '04/09/2024', 1001, 'ÝNGÝLÝZCE')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Alp', 'Sarýkýþla', '04/09/2024', 1002, 'TÜRKÇE')
INSERT INTO Bagiscilar(BagisciIsim, BagisciSoyisim, BagisTarihi, Kitap, Dil) VALUES ('Mevlüt', 'Koyuncu', '04/09/2024', 1003, 'RUSÇA')

SELECT*FROM Kiracilar

INSERT INTO Kiracilar(KiraciIsim,KiraciSoyisim,KiralamaTarihi,SonTeslimTarihi, Kitap, Dil) VALUES ('Burak', 'Salcan', '04/09/2024', '04/10/2024', 1002, 'TÜRKÇE')
INSERT INTO Kiracilar(KiraciIsim,KiraciSoyisim,KiralamaTarihi,SonTeslimTarihi, Kitap, Dil) VALUES ('Burak', 'Salcan', '04/09/2024', '04/10/2024', 1003, 'RUSÇA')

SELECT * FROM Diller
INSERT INTO Diller(Dil) VALUES ('TÜRKÇE')
INSERT INTO Diller(Dil) VALUES ('ÝNGÝLÝZCE')
INSERT INTO Diller(Dil) VALUES ('RUSÇA')
INSERT INTO Diller(Dil) VALUES ('ÝTALYANCA')
INSERT INTO Diller(Dil) VALUES ('FRANSIZCA')
INSERT INTO Diller(Dil) VALUES ('JAPONCA')


SELECT * FROM CevrilenDiller
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1000,'TÜRKÇE','FRANSIZCA')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1000,'TÜRKÇE','ÝNGÝLÝZCE')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1000,'TÜRKÇE','RUSÇA')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1001,'ÝNGÝLÝZCE','TÜRKÇE')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1001,'ÝNGÝLÝZCE','FRANSIZCA')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1004,'JAPONCA','TÜRKÇE')
INSERT INTO CevrilenDiller(Kitap,Dil,CevrilenDiller) VALUES (1004,'JAPONCA','ÝNGÝLZCE')

SELECT * FROM Kitaplar
SELECT * FROM Cevirmenler

INSERT INTO Cevirmenler(CevirmenIsim,CevirmenSoysimi,Kitap,Dil) VALUES ('Murtaza', 'Þuayipoðlu', 1000, 'TÜRKÇE')
INSERT INTO Cevirmenler(CevirmenIsim,CevirmenSoysimi,Kitap,Dil) VALUES ('Murtaza', 'Þuayipoðlu', 1002, 'TÜRKÇE')
